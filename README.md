## Lutra Crafts

WebGPU 几何与动画示例：[原 Demo](https://r.tiye.me/Triadica/lutra-crafts)。

### Calcit 0.41.0 使用者影响

使用配对的 Calcit 和 `@calcit/procs` 0.41.0 重新安装依赖并构建。普通折线和带标记折线使用各自的顶点与断点 union，
位置专用顶点使用独立的名义类型。直接接收这些 writer 数据的调用方需使用对应类型。
原场景、几何公式、shader、随机取样顺序和 `hud!` 页面错误提示保持。

模块配对 Lagopus 0.5.17、Memof 0.0.47、Quaternion 0.2.23、JS-FFI 0.2.13、
Respo 0.19.5、UI 0.15.2，传递 Router 0.12.2。
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

Calcit 0.38.0 下，Caps 校验了七个正式模块。不可变安装、418 个定义、完整 strict、
原三项几何测试、CDN 构建和 canonical 检查均通过。

隔离 Chrome 验证默认 Concenytic、点击 Cube，以及直接打开 Ball 后实际绘制，页面无异常。
其余场景、物理手柄及远程控制未在本轮验收。Ball 场景构造耗时仍见下方跟踪。

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
