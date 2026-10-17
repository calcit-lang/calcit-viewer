
Calcit Viewer
----

> a simple viewer to read `calcit.cirru`.

Demo http://repo.calcit-lang.org/calcit-viewer/ .

### 开发与部署

本分支正在迁移到 Calcit/procs `0.30.1-alpha.4`（预发布版），仍使用
`calcit.cirru` / `deps.cirru`。尚未完成全应用验收，不是可部署版本。
运行 `yarn release` 先生成 JS 再构建前端；`VITE_BASE_URL` 决定资源地址。
CI 保留 canonical source、严格入口、全部项目公开定义、零动态方法门禁、
原质量预算及 Enum dispatch 回归；不依赖固定编译器改写 workflow，
不重复输出无失败条件的类型清单。

前端 `dist` 使用 COS Action 1.2.0 的 `public-base-url` 内置校验，
没有额外 CDN 校验脚本。PR 按 number/run/attempt 隔离上传资源、各自排队，
不取消正在上传的任务。生产 COS 前缀和原服务器 `dist/*` →
`/web-assets/repo/${repository}` 保持不变，PR 不执行生产服务器同步。

现有 Caps 冲突选择策略和质量预算暂未改变；类型检查没有通过前不以放宽预算代替迁移。

### 0.30.1 源码迁移进行中

用户需要注意：目标输入是当前 canonical Snapshot 的 FileEntry/NsEntry/CodeEntry
和 quoted AST，不再把代码当作旧编辑器的带时间戳 Leaf/Expr 树。当前格式没有逐叶
编辑时间，表达式展示不再伪造该日期。原复制表达式和消息操作保留。

已将表达式输入改为受检 CirruQuote → List，namespace/定义的 Symbol 名称转换为
展示用 String，文件渲染不再通过 `get-in` 穿透 Struct 字段。没有新增并行启动器、
测试框架或 COS 校验脚本。

原配对 0.27.0 的 8 项 dispatch 回归通过，但真实加载当前仓库的 Snapshot 会在
渲染阶段失败；空 Map 导入测试不能证明现代 Snapshot 可用。新分支的表达式、文件
和 schema 范围 15 个公开定义已通过严格检查；完整应用仍有 8 个失败定义，依赖图、
import 规则分析、状态/宿主边界及完整运行时验收尚未完成，不声称修复已经闭环。

### Workflow

Workflow https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
