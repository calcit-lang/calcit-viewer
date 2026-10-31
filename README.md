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
- Clicking a definition opens it as a panel. Clicking a linked symbol inside its source opens that definition in the next panel to the right; panels further right are replaced.
- Hover a node to see its inferred type, or turn on "Inline types".
- "Uses" and "Used by" list the definitions in both directions.
- "Call tree" expands callees from the first open panel; a definition already on the path is marked instead of expanded again.
- "Sunburst" shows namespaces (inner ring) and definitions (outer ring) sized by source and coloured by Dynamic share. Click a namespace to zoom in, the centre to zoom out, a definition to read it.
- "Watch file…" (Chrome and Edge) reloads the file whenever it changes on disk, for example with `calcit calcit.cirru ir --sources-only -w` or after rerunning `calcit ir`. Open panels stay, changed definitions are marked "updated" and highlighted in the list. A later visit offers "Resume watching" for the same file.
- "Prompt…" opens a drawer: write a question and "Copy prompt" puts a Markdown prompt on the clipboard with the project, the open panels (signature, doc, spots typed `Dynamic`, optionally source) and `calcit query` commands to continue with. Nothing is sent anywhere by the viewer.
- The last opened file and the open panels are kept in localStorage.

### Workflow

```bash
caps --strict --ci
yarn install
yarn compile
yarn dev
```

### License

MIT
