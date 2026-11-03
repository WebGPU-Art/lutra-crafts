## Lutra Crafts

WebGPU 几何与动画示例：[原 Demo](https://r.tiye.me/Triadica/lutra-crafts)。

使用者影响：CLI / `@calcit/procs` 配对正式 **0.34.3**，需要重新安装依赖并构建。
原场景、几何公式、shader、随机取样顺序和 `hud!` 页面错误提示保留。
本次用官方 formatter 迁移类型标注存储语法；124 个完整定义视图规范化前后完全一致，
没有改变执行代码、schema、测试或其他元数据。

模块配对精确正式 Lagopus 0.5.16、Memof 0.0.44、Quaternion 0.2.20、JS-FFI 0.2.10、
Respo 0.19.1、UI 0.14.0；UI 传递的 Router 0.11.1 沿用其已发布图。
源码仅 `calcit.cirru` / `deps.cirru`，生成 js-out/dist 与旧 compact/package Snapshot 不入库。
`@calcit/std` 仍由真实随机数适配层使用，保留现有返回值检查，不机械替换随机数实现。

前次迁移已把 Ball 生成原点下移一个 unit（800），使主体落入默认视野；本次保持这个
位置、分支、递归深度、线宽和相对形状，不修改全局相机，也不降低复杂度绕过耗时。

### 开发

使用 Node.js 24、Yarn 4.18.0、Caps 0.1.1：

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
calcit fix --workflow strict --verify
calcit test --require-match
calcit js
yarn vite
```

需要实时编译时另开终端运行 `calcit js -w`。

### 迁移验收

正式 0.32.1 的 Caps 七模块 strict／toolchain、immutable 安装、406/406 全定义（含依赖）、
27 个项目命名空间 124/124、完整 strict passed / diagnostics=[]、原三项几何附加测试、
原 CDN 前缀构建与 canonical 幂等通过。deprecated-call、dynamic-method、应用 unsafe 为零；
这不代表依赖中的宿主信任边界清零。没有放宽门禁、原断言或基线。

实际默认 Concenytic、Cube、Fireworks、Prime Walk 与 Ball 已显示；正常刷新回原默认场景。
Ball 的 `?tab=flower-ball` 直接启动及刷新仍可见，控制台 warn/error 为空。
Fireworks 与 Ball 切换各出现一次自动化点击超时，随后确认实际选择和绘制已成功；
Ball 仍需数秒构造，不把局部成功写成所有场景均流畅或问题 #27 全部解决。
未做全部场景、物理 gamepad 或 remote-control 验收，不以画面代替几何正确性证明。

性能与可见性继续跟踪 [问题 #27](https://github.com/WebGPU-Art/lutra-crafts/issues/27)。
该问题属于应用场景构造／绘制路径；本轮无新增编译器缺陷，不追加下游专用 fix/proof。
新解析候选 npm 版本包龄设为 60 分钟，无单包例外；正常 lock 复用不重新等待。
lock 仅更新 procs 并固定原触控版本的选择器，不混入其他 npm 版本升级。

### 前端部署

CI 使用 `https://cos-sh.tiye.me/` 下的仓库前缀。上传仅包含 `dist/`，
通过 COS action 自带的 `public-base-url` 校验，不另加验证脚本。
同仓库 PR 使用独立 PR/run/attempt 前缀；fork 和 Dependabot 仍检查构建，但不使用普通部署 secrets 上传预览。生产页面仍使用原 rsync 目录。
需要 `COS_BUCKET`、`COS_SECRET_ID`、`COS_SECRET_KEY` 及原 `rsync_private_key`。

npm renderer 的触控 API 仍来自 `@triadica/touch-control@0.0.4-a1`，本轮固定原版本，
不再使用浮动 alpha 范围；未经验收不能换成 CSS 包、其他旧稳定版或同名 Calcit 模块。
本轮只提交 PR，不合并或部署前端，服务器路径和其他服务保持。

### Workflow

https://github.com/Triadica/lagopus-workflow

### License

MIT
