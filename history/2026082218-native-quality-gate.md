# 2026-08-22 18:00 — Use Calcit's native quality gate

- Replaced the project-local Node.js baseline checker with `calcit analyze quality --baseline`.
- Removed the generated JSON sidecars and the custom script from the workflow.
- Verified snapshot formatting, default entry check-only, native quality baseline, JS generation, and Vite production build.
- The existing quality baseline still records the project's reviewed static-analysis debt, including the current unsafe-coerce report behavior.
