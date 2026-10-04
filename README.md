
Calcit Viewer
----

> a simple viewer to read `calcit.cirru`.

Demo http://repo.calcit-lang.org/calcit-viewer/ .

### 开发与部署

当前使用正式 Calcit/procs 0.27.0 和 `calcit.cirru` / `deps.cirru`。
运行 `yarn release` 先生成 JS 再构建前端；`VITE_BASE_URL` 决定资源地址。
CI 保留 canonical source、严格入口、全部项目公开定义、零动态方法门禁、
原质量预算及 Enum dispatch 回归；不依赖固定编译器改写 workflow，
不重复输出无失败条件的类型清单。

前端 `dist` 使用 COS Action 1.2.0 的 `public-base-url` 内置校验，
没有额外 CDN 校验脚本。PR 按 number/run/attempt 隔离上传资源、各自排队，
不取消正在上传的任务。生产 COS 前缀和原服务器 `dist/*` →
`/web-assets/repo/${repository}` 保持不变，PR 不执行生产服务器同步。

现有 Caps 兼容版本冲突选择策略保留；本次发布配置整理不代表
正式 Calcit 0.28.0 的源码与完整依赖类型迁移已经完成。

### Workflow

Workflow https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
