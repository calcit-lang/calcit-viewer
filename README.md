Calcit Viewer
----

> Read a Calcit program with its source, inferred types and definition relations.

Demo http://repo.calcit-lang.org/calcit-viewer/ .

### Usage

Generate the reader data in your project with a Calcit release that includes `ir --sources-only` ([calcit#2500](https://github.com/calcit-lang/calcit/pull/2500)):

```bash
calcit calcit.cirru ir --sources-only
```

Then open `js-out/program-ir.cirru` with "Open file…". A `calcit.cirru` Snapshot can be opened too; it shows source and declared schemas, without inferred types.

- The left panel lists namespaces and definitions. The dot shows how much of a definition's recorded types still mention `Dynamic` (green none, yellow some, orange more, gray nothing recorded).
- Namespaces fold by clicking their header; library namespaces start folded. Each definition shows its kind (`fn`, `comp`, `css`, `macro`, `type`, `val`).
- Clicking a definition opens it as a panel. Clicking a linked symbol inside its source opens that definition in the next panel to the right and scrolls it into view; panels further right are replaced. Escape closes the last panel.
- Hover a symbol to see its inferred type (and its definition for links) right away, or turn on "Inline types".
- "Uses" and "Used by" list the definitions in both directions.
- "Call tree" starts from a root you pick (an entry or the first open panel). Click a row to expand its callees or use "Expand 3 levels"; ↗ opens the code. A definition already on the path is marked instead of expanded again.
- "Sunburst" draws the calls from the same root on a canvas, one ring per depth and sized by source (or "Namespaces" for namespaces and their definitions). Click a ring to zoom in and the centre to go up; the corner card shows the definition and links to its code.
- "Watch file…" (Chrome and Edge) reloads the file whenever it changes on disk, for example with `calcit calcit.cirru ir --sources-only -w` or after rerunning `calcit ir`. Open panels stay, changed definitions are marked "updated" and highlighted in the list; click the "updated" count to clear the marks. A later visit offers "Resume watching" for the same file.
- "Prompt…" opens a drawer: write a question and "Copy prompt" puts a Markdown prompt on the clipboard with the project, the open panels (signature, doc, spots typed `Dynamic`, optionally source) and `calcit query` commands to continue with. Nothing is sent anywhere by the viewer.
- The last opened file and the open panels are kept in localStorage.

### Shortcuts

| Key | Action |
| --- | --- |
| ⌘K / Ctrl+K or `/` | Quick open: fuzzy search definitions; Enter opens, Shift+Enter adds to the right |
| Esc | Close quick open, otherwise close the last panel |
| Alt+← / Alt+→ | Back / forward through panel history |
| `[` / `]` | Previous / next panel |
| ⌘B / Ctrl+B | Toggle the sidebar |
| `1` `2` `3` | Code / Call tree / Sunburst |
| `T` | Inline types |

The toolbar breadcrumb shows the open panels; click a step to close the panels after it. The ⇤ button folds a panel into a narrow strip. Colours follow the system light or dark setting; design tokens live in `assets/main.css`.

### Workflow

```bash
caps --strict --ci
yarn install
yarn compile
yarn dev
```

### License

MIT
