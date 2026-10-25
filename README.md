
Calcit Viewer
----

> a simple viewer to read `calcit.cirru`.

Demo http://repo.calcit-lang.org/calcit-viewer/ .

### 本轮使用者影响

继续使用配对正式 Calcit/procs 0.30.1，本轮依赖图不变。仅将 import rule 与表达式列表的
两处 `count` 改为已知 List 的 `.len`；引用分析、渲染顺序、复制行为、存档保护和实际 `hud!`
均不改变。原 5 项原生／9 项 JS 测试及质量预算保留，不增加验证脚本，不合并或部署。

### 开发与部署（既有迁移记录）

本分支正在从 `0.30.1-alpha.4` 迁移到配对的正式 Calcit/procs `0.30.1`，
仍使用 `calcit.cirru` / `deps.cirru`。本地完整类型、业务测试和基础浏览器验收已通过；
前述验收属于旧 alpha 候选，不等于本轮正式图验收。正式 CI、原测试与浏览器需重新确认，
不以版本声明或旧绿色检查代替；本轮尚未合并或部署。
运行 `yarn release` 先生成 JS 再构建前端；`VITE_BASE_URL` 决定资源地址。
CI 检查 canonical source、全部定义、完整 strict、零动态方法/弃用调用、
收紧后的既有质量预算、原生附着测试及 Enum dispatch 回归。
不新增改写规则、证明特性或验证框架，不重复输出无失败条件的类型清单。

前端 `dist` 使用 COS Action 1.2.0 的 `public-base-url` 内置校验，
没有额外 CDN 校验脚本。PR 按 number/run/attempt 隔离上传资源、各自排队，
fork 与 Dependabot PR 保留完整门禁和构建，但不上传 COS 预览；不为上传扩大密钥权限。
不取消正在上传的任务。生产 COS 前缀和原服务器 `dist/*` →
`/web-assets/repo/${repository}` 保持不变，PR 不执行生产服务器同步。

正式图使用严格 Caps 安装及工具链检查；Actions 保留精确正式 tag，接受 tag 可移动风险。
只有 4 个逐项审阅并获得授权的真实入口迁移边界预算；其余定义只收紧、不放宽。

正式依赖图采用 Reel 0.6.42、Feather 0.4.31、Markdown 0.4.60、Message 0.0.39、
UI 0.8.1、Respo 0.16.126 和 js-ffi 0.2.6。不是从较新 0.31 main 取源码或回退它们。
Node 24 / Yarn 4.18 / Vite 8.3.3；移除旧 alpha 的包预批准，不增加新的安装例外。
本地仅允许官方只读 query/tree 视图；不执行 Caps 或编译器 check/build/codegen/源码写入。
源码变更和完整门禁由官方 Linux 0.30.1 CI 执行，保留真实 `hud!` 和全部原测试。

### 0.30.1 源码迁移进行中

用户需要注意：目标输入是当前 canonical Snapshot 的 FileEntry/NsEntry/CodeEntry
和 quoted AST，不再把代码当作旧编辑器的带时间戳 Leaf/Expr 树。当前格式没有逐叶
编辑时间，表达式展示不再伪造该日期。原复制表达式和消息操作保留。

已将表达式输入改为受检 CirruQuote → List，namespace/定义的 Symbol 名称转换为
展示用 String，文件渲染不再通过 `get-in` 穿透 Struct 字段。没有新增并行启动器、
测试框架或 COS 校验脚本。

原配对 0.27.0 的 8 项 dispatch 回归通过，但真实加载当前仓库的 Snapshot 会在
渲染阶段失败；空 Map 导入测试不能证明现代 Snapshot 可用。本轮保留原业务断言，
改用真实 canonical Snapshot 和原生 Event fixture，并补齐既有 FileReader 测试组的
error 分支，共 9 项通过；Calcit 自带 5 项附着测试覆盖 import/引用分析和旧存档/当前
Snapshot 往返，没有新增独立验证脚本或框架。

图已改读 `entries.default.init-fn`，修正 alias 查错字典、Option 泄漏和定义名未拆分
的问题；用 ImportRule/Reference Enum 表达真实关系，保留循环标记。旧 `unify-rule`
桥梁和数字正则过滤已删除：数字不会解析成合法定义引用，无需 JS RegExp 宿主。
依赖图仍是源码 token 引用图，不宣称等同编译器消除遮蔽/quote 后的精确调用图。

Store 使用真实 Struct 与 Option，Reel 使用 typed API。当前 Snapshot 原始元数据完整
保留，Symbol→String helper 的值类型 V 真实透传，不用自由泛型掩盖异构数据。
FileReader 按真实可空宿主结果检查 String，读取/解析失败显示错误。

升级后请完整刷新页面，不跨热重载保留旧回调或 Store。继续使用原 `calcit-viewer`
存储键：旧 nil 的 error/calcit 转为 Option；保留草稿、页面和自定义入口，只移除派生
图缓存以重新计算。不能恢复的原始存档保留为草稿并提示先备份，不静默丢弃。

本轮修复恢复失败后的离页保存风险：先恢复再首次渲染，失败仍显示原文草稿和错误，
但不启用该会话的自动保存，避免原始存档在离页或刷新时被改写。该会话的新编辑也不会
自动保存，请先备份原文后重新载入；不自动清空存档，不宣称提供完整恢复/重置 UI。
正常恢复或原本没有存档时，保留原保存逻辑及派生图缓存清理格式。隔离坏存档验收仍待授权。

[正式准备 CI 40121545917](https://github.com/calcit-lang/calcit-viewer/actions/runs/40121545917)
已通过严格依赖安装/工具链配对、全定义检查、完整 strict（诊断为空）、零动态方法/弃用调用、
原质量预算及修改前后各 5/5 原生、9/9 JS 原测试和构建。44 个本地定义和全部附着断言、
元数据与配置逐项受保护；真实 HUD 和存档输出格式未改。最终 PR CI/COS、正式图浏览器导入、
图展示/刷新恢复及坏存档专项验收仍须分别确认，准备 CI 不替代这些证据。

此前 alpha.4 的全部 345 个定义、完整 strict、5/5 原生测试、9/9 JS 业务测试和生产构建通过。
当时真实浏览器通过文件选择导入本仓库 calcit.cirru、源码展示、依赖图/循环、自定义入口、
刷新恢复（保留入口和 Snapshot、清除派生缓存）。这不是所有历史格式的完整兼容承诺。

基线按授权全局收紧：unsafe/typeNone/deprecated 为 0；typeNotFull 29→15、
schemaDynamic 39→20、unresolved 55→29、codeNil 16→9。四个边界是图 UI 状态、
Snapshot 校验、存档恢复与派生缓存清理；外部 Snapshot/异构 UI 数据仍如实保留 Dynamic。
既有质量基线仅作过渡门禁，不扩展编译器硬编码迁移系统。

发现并反馈上游 [JS 保留字绑定](https://github.com/calcit-lang/calcit/issues/2156) 和
[时钟后端支持合同](https://github.com/calcit-lang/calcit/issues/2159)。消费者局部变量
使用合法名称；操作时间使用正式 js-ffi DateSnapshot.timestamp，保留 epoch 毫秒语义，
不改成单调时钟或伪造 0/nil。根 npm dayjs 仍被正式 respo-ui 使用，不能因删除本项目
旧日期展示而误删；lock 同步到兼容范围内正式 patch。

### Workflow

Workflow https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
