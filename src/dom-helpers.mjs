// Small DOM effects the Respo views need after a render.
// Export names use snake_case so Calcit `:refer` names resolve to them.

/** Scroll the panel at `idx` into view once the browser has painted it. */
export function reveal_panel(idx) {
  requestAnimationFrame(() => {
    const panel = document.querySelectorAll("[data-panel]")[idx];
    panel?.scrollIntoView({ behavior: "smooth", block: "nearest", inline: "nearest" });
  });
}

/** Call `onEscape()` when Escape is pressed outside text fields. */
export function listen_escape(onEscape) {
  document.addEventListener("keydown", (event) => {
    if (event.key !== "Escape") return;
    const tag = event.target?.tagName;
    if (tag === "INPUT" || tag === "TEXTAREA") return;
    onEscape();
  });
}
