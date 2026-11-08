Calcit Viewer
----

> Read a Calcit program with its source, inferred types and definition relations.

Demo http://repo.calcit-lang.org/calcit-viewer/ .

### 当前工具链与使用者影响

CLI 与 `@calcit/procs` 使用正式 **0.38.0**。升级后重新安装依赖并编译。已发布模块为 Respo **0.19.5**、UI **0.15.2**、Markdown **0.8.2**、Feather **0.6.3** 和 JS FFI **0.2.13**，传递 Router 为 **0.12.2**。现有 IR 和 Snapshot 打开方式沿用。

导航、调用树和视图选项使用 Respo 的具名 `ChildPair`，保留原键与顺序。快速搜索用具名结构保留分数和定义 ID，沿用原排名规则。程序入口名称在读取原始 Map 后仍按 `String | Tag | Symbol` 校验。

#### 0.34.2 迁移记录

源码树经公开 CirruQuote API 受检收敛为递归 `SourceTree = String | List SourceTree`，遍历和布局函数用穷尽匹配，渲染采用 typed keyed children。41 个 DOM 回调及文件读取入口采用真实 RespoEvent，根渲染接入现代 memo 生命周期；Snapshot / IR 其他原始字段仍由原入口受检解码，不伪称任意 EDN 已闭合。

同时修复刷新后偏好丢失：保存的 Prefs Struct 按 wire 数据转为 Map、完整校验字段，再重建本地 Prefs，保留已有序列化格式；名称不作为名义身份或授权。原错误处理、HUD、存储键及服务器路径保持。导入 union 简名的来源归一问题见 [calcit#2577](https://github.com/calcit-lang/calcit/issues/2577)，当前使用同一类型的全限定名，不放宽门禁或增加强转。

本地通过 556 个全定义、完整 strict（diagnostics 为空）、19 项 native 测试、14 项 Node 回归和构建。实际隔离 Chrome 验证官方 0.34.2 IR / 本项目 Snapshot 导入、源码链接、搜索、关系图、合成问题输入及刷新恢复；未验收 Watch 文件权限或系统剪贴板。PR 仅沿用原 dist 隔离 COS 预览，使用 action 内置 verify，不合并部署或发布 tag/npm。

### Usage

Generate the reader data in your project with a Calcit release that includes `ir --sources-only` ([calcit#2500](https://github.com/calcit-lang/calcit/pull/2500)):

```bash
calcit calcit.cirru ir --sources-only
```

Then open `js-out/program-ir.cirru` with "Open file…". A `calcit.cirru` Snapshot can be opened too; it shows source and declared schemas, without inferred types.

- The left panel lists namespaces and definitions. The dot shows how much of a definition's recorded types still mention `Dynamic` (green none, yellow some, orange more, gray nothing recorded).
- The sidebar is a call tree from each program entry: init and reload start open, ▸ opens callees, a name opens the definition. Typing in the search box switches to matching definitions grouped by namespace.
- Clicking a definition opens it as a panel. Clicking a linked symbol inside its source opens that definition in the next panel to the right and scrolls it into view; panels further right are replaced. Escape closes the last panel.
- Hover a symbol to see its inferred type (and its definition for links) right away, or turn on "Inline types".
- "Uses" and "Used by" list the definitions in both directions.
- "Call tree" starts from a root you pick (an entry or the first open panel). Click a row to expand its callees or use "Expand 3 levels"; ↗ opens the code. A definition already on the path is marked instead of expanded again.
- "Sunburst" draws the calls from the same root on a canvas, one ring per depth and sized by source (or "Namespaces" for namespaces and their definitions). Click a ring to zoom in and the centre to go up; the corner card shows the definition and links to its code.
- "Watch file…" (Chrome and Edge) reloads the file whenever it changes on disk, for example with `calcit calcit.cirru ir --sources-only -w` or after rerunning `calcit ir`. Open panels stay, changed definitions are marked "updated" and highlighted in the list; click the "updated" count to clear the marks. A later visit offers "Resume watching" for the same file.
- "Prompt…" opens a drawer: write a question and "Copy prompt" puts a Markdown prompt on the clipboard with the project, the open panels (signature, doc, spots typed `Dynamic`, optionally source) and `calcit query` commands to continue with. Nothing is sent anywhere by the viewer.
- Open panels and preferences are kept in localStorage. File caching retains the existing 4,000,000-character limit and browser-quota limits; uncached files must be selected again after reload.

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
| Arrows / Enter / Backspace / `O` | In the focused sunburst: move between nodes, zoom in, go up, open code |

The toolbar breadcrumb shows the open panels; click a step to close the panels after it. The ⇤ button folds a panel into a narrow strip. Colours follow the system light or dark setting; design tokens live in `assets/main.css`.

### Workflow

```bash
caps --strict --ci
yarn install --immutable
caps verify --toolchain
yarn compile
yarn dev
```

`node --test scripts/*.test.mjs` runs the regression and IR contract tests against `js-out/`. `scripts/fixtures/contract-ir.cirru` is real `calcit ir --sources-only` output for `scripts/fixtures/contract-app.cirru`; when the IR format changes, regenerate it with `node scripts/gen-contract-ir.mjs [path/to/calcit]`.

### License

MIT
