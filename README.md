## Lutra Crafts

WebGPU 几何与动画示例：[原 Demo](https://r.tiye.me/Triadica/lutra-crafts)。

使用者影响：本迁移候选使用正式 Calcit / `@calcit/procs` **0.31.0**，
并保留原场景、shader、随机取样顺序及 `hud!` 页面错误提示。
Ball 的生成原点沿 Y 轴下移一个 `unit`（800），让原先在视口上方的球体主体
落入默认视野；分支、递归深度、线宽和相对形状不变，也不修改全局相机。
JS 随机数现在经过 Number 检查；非法宿主结果会更早报错。
导航隐藏时不产生子节点，未选中标签使用空样式。

源码只使用 `calcit.cirru` 与 `deps.cirru`，不再维护 `compact.cirru` 或
`package.cirru`。模块使用实际发布的精确 tag，包括 Lagopus 0.5.13、
Memof 0.0.41、Quaternion 0.2.17、JS-FFI 0.2.7；Respo/UI 的配套版本
仍带 alpha 标记，不表示所有依赖都是稳定版。

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

正式 0.31.0 的完整 strict、406 个定义、原三个几何测试及 Vite 构建通过。
随机函数只在集中适配层检查返回值，writer 使用实际回调合同；固定三维坐标直接传入
`v3`，没有添加 unsafe 强转或放宽类型门禁。

浏览器已观察到 Cube、Fireworks、Snowing、Cubes tree、Prime Walk 及默认场景的渲染。
Ball 已在原生产构建中通过直接打开、Cube→Ball 切换及刷新验收，控制台无警告或错误。
空白原因和定位证据见 [问题 #27](https://github.com/WebGPU-Art/lutra-crafts/issues/27)。
完整运行验收尚未完成：Ball 仍需数秒构造，切换曾导致自动化点击超时，随后页面正常显示；
尚未优化这项性能限制。Triangles 的暗色来自原 shader 的半透明黑色输出，shader
与原 main 相同。上述局部验收不代表所有场景、控制设备或后端已完成验收。

### 前端部署

CI 使用 `https://cos-sh.tiye.me/` 下的仓库前缀。上传仅包含 `dist/`，
通过 COS action 自带的 `public-base-url` 校验，不另加验证脚本。
同仓库 PR 使用独立 PR/run/attempt 前缀；生产页面仍使用原 rsync 目录。
需要 `COS_BUCKET`、`COS_SECRET_ID`、`COS_SECRET_KEY` 及原 `rsync_private_key`。

npm renderer 仍要求 `@triadica/touch-control` 的 `^0.0.4-a1` 范围；不能未经
renderer/controller 兼容验收就换成范围之外的旧稳定版或另一个 Calcit 模块。

### Workflow

https://github.com/Triadica/lagopus-workflow

### License

MIT
