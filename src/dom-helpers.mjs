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
