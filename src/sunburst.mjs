// Canvas sunburst for the structure view. Calcit renders a host element carrying
// the tree as JSON in `data-sunburst`; this module draws it, owns zoom and hover
// state, and shows a corner card whose "Open code" link calls back into Calcit.
// Tree nodes: { n: name, i: id, s: own size, t: type, k: kind, c: [children] }.
// Export names use snake_case so Calcit `:refer` names resolve to them.

const TAU = Math.PI * 2;
const RING = 64;
const MIN_RING = 28;
const CENTER = 54;

let onOpen = () => {};

function css(name) {
  return getComputedStyle(document.documentElement).getPropertyValue(name).trim();
}

function total(node) {
  if (node.v != null) return node.v;
  node.v = Math.max(1, node.s || 1) + (node.c || []).reduce((sum, child) => sum + total(child), 0);
  return node.v;
}

function link(node, parent) {
  node.p = parent;
  (node.c || []).forEach((child) => link(child, node));
}

/** Angles relative to the focused node, `depth` counted from it. */
function layout(focus, maxDepth) {
  const arcs = [];
  const walk = (node, a0, a1, depth) => {
    if (depth > maxDepth) return;
    arcs.push({ node, a0, a1, depth });
    const span = a1 - a0;
    // The node's own size is split evenly before and after its children.
    let start = a0 + (span * Math.max(1, node.s || 1)) / total(node) / 2;
    for (const child of node.c || []) {
      const width = (span * total(child)) / total(node);
      walk(child, start, start + width, depth + 1);
      start += width;
    }
  };
  walk(focus, 0, TAU, 0);
  return arcs;
}

/** Package and namespace nodes group definitions and have no code to open. */
function isDef(node) {
  return node.k !== "package" && node.k !== "namespace";
}

function hue(node) {
  let h = 0;
  for (const ch of (node.i || node.n).split("/")[0]) h = (h * 31 + ch.charCodeAt(0)) % 360;
  return h;
}

function draw(state) {
  const { canvas, focus, hover, maxDepth } = state;
  const dpr = window.devicePixelRatio || 1;
  const size = Math.min(canvas.parentElement.clientWidth, canvas.parentElement.clientHeight);
  canvas.style.width = canvas.style.height = `${size}px`;
  canvas.width = canvas.height = size * dpr;
  const ctx = canvas.getContext("2d");
  ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
  ctx.clearRect(0, 0, size, size);
  const cx = size / 2;
  // Show fewer rings rather than letting the outer ones leave the canvas.
  const room = Math.max(MIN_RING, size / 2 - CENTER - 8);
  const depth = Math.max(1, Math.min(maxDepth, Math.floor(room / MIN_RING)));
  const ring = Math.min(RING, room / depth);
  state.ring = ring;
  state.arcs = layout(focus, depth);
  const dark = matchMedia("(prefers-color-scheme: dark)").matches;
  for (const arc of state.arcs) {
    if (arc.depth === 0) continue;
    const r0 = CENTER + (arc.depth - 1) * ring;
    const r1 = r0 + ring - 1.5;
    if (arc.a1 - arc.a0 < 0.004) continue;
    ctx.beginPath();
    ctx.arc(cx, cx, r1, arc.a0 - Math.PI / 2, arc.a1 - Math.PI / 2);
    ctx.arc(cx, cx, r0, arc.a1 - Math.PI / 2, arc.a0 - Math.PI / 2, true);
    ctx.closePath();
    const light = dark ? 30 + 6 * arc.depth : 78 - 5 * arc.depth;
    const active = hover && (arc.node === hover || isAncestor(arc.node, hover));
    ctx.fillStyle = `hsl(${hue(arc.node)} ${dark ? 35 : 55}% ${light}% / ${hover && !active ? 0.45 : 1})`;
    ctx.fill();
    ctx.strokeStyle = css("--surface") || "#fff";
    ctx.lineWidth = 1;
    ctx.stroke();
    const mid = (arc.a0 + arc.a1) / 2 - Math.PI / 2;
    const radius = (r0 + r1) / 2;
    const room = (arc.a1 - arc.a0) * radius;
    if (room > 46) {
      ctx.save();
      ctx.translate(cx + Math.cos(mid) * radius, cx + Math.sin(mid) * radius);
      let angle = mid + Math.PI / 2;
      if (Math.sin(mid) > 0) angle += Math.PI;
      ctx.rotate(room > ring * 1.4 ? angle : mid + (Math.cos(mid) < 0 ? Math.PI : 0));
      ctx.fillStyle = dark ? "#e6e9ef" : "#1d2330";
      ctx.font = `11px ${css("--font-code") || "monospace"}`;
      ctx.textAlign = "center";
      ctx.textBaseline = "middle";
      const max = Math.min(room, ring * 2) - 8;
      let label = arc.node.n;
      while (label.length > 2 && ctx.measureText(label).width > max) label = label.slice(0, -2);
      if (label !== arc.node.n) label += "…";
      ctx.fillText(label, 0, 0);
      ctx.restore();
    }
  }
  ctx.beginPath();
  ctx.arc(cx, cx, CENTER - 4, 0, TAU);
  ctx.fillStyle = css("--surface-2") || "#eee";
  ctx.fill();
  ctx.fillStyle = css("--text") || "#000";
  ctx.font = `600 12px ${css("--font-code") || "monospace"}`;
  ctx.textAlign = "center";
  ctx.textBaseline = "middle";
  let name = focus.n;
  while (name.length > 2 && ctx.measureText(name).width > (CENTER - 10) * 2) name = name.slice(0, -2);
  ctx.fillText(name === focus.n ? name : `${name}…`, cx, focus.p ? cx - 7 : cx);
  if (focus.p) {
    ctx.font = `11px ${css("--font-ui") || "sans-serif"}`;
    ctx.fillStyle = css("--text-3") || "#888";
    ctx.fillText("↑ up", cx, cx + 9);
  }
}

function isAncestor(node, of) {
  for (let p = of.p; p; p = p.p) if (p === node) return true;
  return false;
}

function hit(state, x, y) {
  const size = state.canvas.clientWidth;
  const dx = x - size / 2;
  const dy = y - size / 2;
  const r = Math.hypot(dx, dy);
  if (r < CENTER - 4) return "center";
  let a = Math.atan2(dy, dx) + Math.PI / 2;
  if (a < 0) a += TAU;
  const depth = Math.floor((r - CENTER) / state.ring) + 1;
  return state.arcs.find((arc) => arc.depth === depth && a >= arc.a0 && a < arc.a1)?.node ?? null;
}

function card(state, node) {
  const el = state.card;
  if (!node) {
    el.hidden = true;
    return;
  }
  el.hidden = false;
  const childCount = (node.c || []).length;
  el.innerHTML = "";
  const ns = document.createElement("div");
  ns.className = "viewer-sun-ns";
  ns.textContent = node.i.includes("/") ? node.i.split("/")[0] : "";
  const name = document.createElement("div");
  name.className = "viewer-sun-name";
  name.textContent = node.n;
  const meta = document.createElement("div");
  meta.className = "viewer-sun-meta";
  meta.textContent = `${node.k || "definition"} · size ${Math.max(1, node.s || 1)} · ${childCount} callee${childCount === 1 ? "" : "s"} shown`;
  el.append(ns, name, meta);
  if (node.t) {
    const type = document.createElement("div");
    type.className = "viewer-sun-type";
    type.textContent = node.t;
    el.append(type);
  }
  const actions = document.createElement("div");
  actions.className = "viewer-sun-actions";
  if (isDef(node)) {
    const open = document.createElement("button");
    open.textContent = "Open code →";
    open.onclick = () => onOpen(node.i);
    actions.append(open);
  }
  if (childCount > 0 && node !== state.focus) {
    const zoom = document.createElement("button");
    zoom.textContent = "Zoom in";
    zoom.onclick = () => {
      state.focus = node;
      draw(state);
      card(state, node);
    };
    actions.append(zoom);
  }
  el.append(actions);
}

function mount(host) {
  const json = host.getAttribute("data-sunburst");
  if (host.__sun && host.__sun.json === json) {
    draw(host.__sun);
    return;
  }
  host.innerHTML = "";
  const root = JSON.parse(json);
  link(root, null);
  const canvas = document.createElement("canvas");
  const cardEl = document.createElement("div");
  cardEl.className = "viewer-sun-card";
  cardEl.setAttribute("aria-live", "polite");
  canvas.tabIndex = 0;
  canvas.setAttribute("role", "application");
  canvas.setAttribute("aria-label", "Sunburst. Arrow keys move between nodes, Enter zooms in, O opens code, Backspace goes up.");
  host.append(canvas, cardEl);
  const state = { json, root, focus: root, hover: null, canvas, card: cardEl, maxDepth: Number(host.getAttribute("data-depth") || 5) };
  host.__sun = state;
  card(state, root);
  canvas.onmousemove = (event) => {
    const target = hit(state, event.offsetX, event.offsetY);
    const node = target === "center" ? state.focus : target;
    canvas.style.cursor = target ? "pointer" : "default";
    if (node !== state.hover) {
      state.hover = node;
      draw(state);
      if (node) card(state, node);
    }
  };
  canvas.onmouseleave = () => {
    state.hover = null;
    draw(state);
  };
  canvas.onclick = (event) => {
    const target = hit(state, event.offsetX, event.offsetY);
    if (target === "center") {
      if (state.focus.p) state.focus = state.focus.p;
      card(state, state.focus);
    } else if (target) {
      if ((target.c || []).length > 0) state.focus = target;
      card(state, target);
    }
    draw(state);
  };
  canvas.onkeydown = (event) => {
    const current = state.hover || state.focus;
    const siblings = current.p && current !== state.focus ? current.p.c : [current];
    const index = siblings.indexOf(current);
    let next = null;
    if (event.key === "ArrowDown") next = (current.c || [])[0] || null;
    else if (event.key === "ArrowUp") next = current === state.focus ? null : current.p;
    else if (event.key === "ArrowRight") next = siblings[(index + 1) % siblings.length];
    else if (event.key === "ArrowLeft") next = siblings[(index - 1 + siblings.length) % siblings.length];
    else if (event.key === "Enter") {
      if ((current.c || []).length > 0) state.focus = current;
      next = current;
    } else if (event.key === "Backspace") {
      if (state.focus.p) state.focus = state.focus.p;
      next = state.focus;
    } else if (event.key === "o" || event.key === "O") {
      if (isDef(current)) onOpen(current.i);
    } else return;
    event.preventDefault();
    if (next) {
      state.hover = next === state.focus ? null : next;
      card(state, next);
    }
    draw(state);
  };
  draw(state);
}

/** Draw every `[data-sunburst]` host now and whenever one appears or changes; `open(id)` opens code. */
export function install_sunburst(open) {
  onOpen = open;
  const scan = () => document.querySelectorAll("[data-sunburst]").forEach(mount);
  new MutationObserver(scan).observe(document.body, { childList: true, subtree: true, attributes: true, attributeFilter: ["data-sunburst", "data-depth"] });
  window.addEventListener("resize", scan);
  matchMedia("(prefers-color-scheme: dark)").addEventListener("change", scan);
  scan();
}
