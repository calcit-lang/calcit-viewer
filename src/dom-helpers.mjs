// Small DOM effects the Respo views need after a render.
// Export names use snake_case so Calcit `:refer` names resolve to them.

/** Scroll the panel at `idx` into view once the browser has painted it. */
export function reveal_panel(idx) {
  requestAnimationFrame(() => {
    const panel = document.querySelectorAll("[data-panel]")[idx];
    panel?.scrollIntoView({ behavior: "smooth", block: "nearest", inline: "nearest" });
  });
}

/** Focus the element matching `selector` after the next paint. */
export function focus_later(selector) {
  requestAnimationFrame(() => document.querySelector(selector)?.focus());
}

const PREVENTED = new Set(["mod+k", "mod+b", "/"]);

/**
 * Call `onKey(combo)` for global shortcuts, e.g. "mod+k", "alt+arrowleft", "escape", "[".
 * Keys typed into text fields are ignored, except Escape.
 */
export function listen_keys(onKey) {
  document.addEventListener("keydown", (event) => {
    const tag = event.target?.tagName;
    const typing = tag === "INPUT" || tag === "TEXTAREA";
    const key = event.key.toLowerCase();
    if (typing && key !== "escape") return;
    const parts = [];
    if (event.metaKey || event.ctrlKey) parts.push("mod");
    if (event.altKey) parts.push("alt");
    parts.push(key);
    const combo = parts.join("+");
    if (PREVENTED.has(combo)) event.preventDefault();
    onKey(combo);
  });
}

let tipEl = null;

/**
 * Show `data-tip` text in one floating element on <body>, so scroll containers
 * never clip it. It sits below the hovered element and flips above near the bottom edge.
 */
export function install_tooltips() {
  if (tipEl) return;
  tipEl = document.createElement("div");
  tipEl.className = "viewer-tip";
  document.body.appendChild(tipEl);
  const hide = () => tipEl.classList.remove("viewer-tip-on");
  document.addEventListener("mouseover", (event) => {
    const target = event.target instanceof Element ? event.target.closest("[data-tip]") : null;
    if (!target) return hide();
    tipEl.textContent = target.getAttribute("data-tip");
    const box = target.getBoundingClientRect();
    const tip = tipEl.getBoundingClientRect();
    const left = Math.max(8, Math.min(box.left, window.innerWidth - tip.width - 8));
    const below = box.bottom + 6;
    const top = below + tip.height > window.innerHeight - 8 ? box.top - tip.height - 6 : below;
    tipEl.style.left = `${left}px`;
    tipEl.style.top = `${top}px`;
    tipEl.classList.add("viewer-tip-on");
  });
  document.addEventListener("scroll", hide, true);
}
