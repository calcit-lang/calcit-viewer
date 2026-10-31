# Calcit Viewer

读取 canonical `calcit.cirru` 的源码与引用图。
Demo: http://repo.calcit-lang.org/calcit-viewer/ 。

### 使用者影响：Calcit 0.32.1

开发与 CI 配对正式 Calcit / `@calcit/procs` **0.32.1**，需要重新安装依赖、生成 JS 并刷新页面，不跨 HMR 保留旧 Store 或回调。使用实际已发布 Reel 0.7.0、Feather 0.5.0、Markdown 0.5.0、UI 0.9.0、Respo 0.17.1、JS-FFI 0.2.9；Message 仍为 0.1.0-alpha.4，传递 Router 为 0.9.0-alpha.4，如实保留尚无对应正式版的依赖。

项目版本保持 0.1.3，不发布 tag/npm，也不合并或部署生产。文本/文件导入、引用图、复制和真实 `hud!` 保留。源码数据仍为 FileEntry/NsEntry/CodeEntry 与 quoted AST；不伪造旧逐叶编辑时间，引用图仍是源码 token 图，不声称等同消除遮蔽/quote 后的编译器调用图。

### 迁移与存档合同

- 官方 formatter 转换 11 处旧类型形式。引用图的已知两层 Map 改为两次 `get` 与 Option 连接，避免把当前 `get-in` 的 Result 当作 Option；缺失引用继续显示占位，不以 Dynamic 掩盖 List 类型。
- 入口派发保留开放 Enum、原 `enum?` 守卫及 Reel control/业务处理；Fn 参数从 Dynamic 收紧为 Enum。现有 CLI 的 type-slot 需定义路径，因此显式 Enum schema 的 `DispatchOp` 代表值只用来绑定槽，不会被派发，也不是业务名义类型或默认事件。不使用 `:dynamic` 或新增强转。
- 旧 `StoreData` 存档按 wire 数据恢复：同名 Struct 先取字段，再经过原完整字段校验、嵌套 Snapshot 验证及派生缓存清理，构造本地 StoreData。名称仅作格式标记，不等同名义来源；错误名称、错误字段和坏 Snapshot 仍拒绝。原 Map 输入继续受检，不通过改写原测试为本地实例来掩盖兼容问题。
- 保留 `calcit-viewer` 存储键、草稿、页面与自定义入口；旧 nil 的 error/calcit 转为 Option，派生图缓存重算。恢复失败仍展示原文和错误，并暂停本会话自动保存，避免覆盖原档；新编辑也不会自动保存，请先备份。不会自动清空或删除存档。

### 开发与验证

使用 Node.js 24、Yarn 4.18.0、Caps 0.1.1。新解析出的 npm 版本须已发布至少 60 分钟，无单包例外；已有 immutable 锁版本不重新计算年龄。

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
calcit fix --workflow strict --verify --format edn
calcit analyze quality --baseline config/calcit-upgrade-baseline.json
calcit test --require-match
yarn release
node --test scripts/dispatch-regression.test.mjs
```

只维护 calcit.cirru/deps.cirru；不恢复 compact/package，不提交 js-out。原质量预算与全部断言保留，unsafe/typeNone/deprecated 上限仍为 0。原 5 项原生测试只同步当前 Result/get API，原 9 项 JS 测试保留并同步命名 Option 构造；评审指出负例不能证明恢复成功，因此在同一文件补 1 项真实序列化旧档往返，核对草稿/自定义入口保留及派生图缓存清理。合计 10 项，不新增测试框架或验证脚本。

外部 Snapshot/存档和异构 UI 状态仍有真实 Dynamic，不能把 unsafe=0 宣称为完全类型闭合。原生/Node 验收不代替真实浏览器导入、剪贴板或全部历史存档兼容验证。

### 前端部署

`VITE_BASE_URL` 指定资源地址。原 COS action v1.2.0 只上传 `dist/`，用 `public-base-url` 内置 verify，不加独立校验脚本。PR 使用 number/run/attempt 隔离前缀、分别排队；fork 与 Dependabot 仍检查构建但不上传。

原生产 COS 前缀、rsync 源 `dist/*` 与 `/web-assets/repo/${repository}` 目标不变，只有 main push 同步服务器，不部署后端。Actions 使用既有精确正式 tag，接受 tag 可移动风险，不增加忽略配置或密钥权限。

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

MIT
