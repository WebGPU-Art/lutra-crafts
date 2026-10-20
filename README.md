## Lutra Crafts

Demo https://r.tiye.me/Triadica/lutra-crafts .

使用者影响：此候选正在配对迁移到已发布的 Calcit / `@calcit/procs`
`0.30.1-alpha.5`，保留 Caps 0.1.1、Node24/Yarn4.18。0.30.1 正式 CLI/npm
尚未配对发布。Memof、Quaternion、Respo/UI 使用精确正式 tag，不把未发布的
Lagopus 候选当作可安装依赖；现有画面、资源和原部署目录没有在本阶段改动。

本阶段仅不可变安装及原三个几何测试通过，完整迁移尚未完成。正式 Lagopus 0.5.12
仍将已变为 Option 的低层 Map 读取当原值处理，使整体验收失败；其未发布候选已修复
一部分问题，但完整 strict 仍有 V3 名义类型边界。跟踪
https://github.com/WebGPU-Art/lagopus/issues/32 与
https://github.com/calcit-lang/calcit/issues/2154。
alpha.5 的现有 decoder 在 native 保留 V3 身份，在 JS 复制对象；不能靠先解码再强转原对象
绕过门禁。公开 typed options/载荷的 API 选择尚待确认，不在此候选擅自修改消费者合同。

原候选曾通过 0.30.0 下的普通检查和构建；这些旧结果不作为当前 0.30.1 整体验收证据。
本阶段未推送 PR、发版或部署，`deps.cirru` 仍只引用正式 Calcit 模块 tag。

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit calcit.cirru --check-only --all-defs
calcit calcit.cirru test --require-match
calcit calcit.cirru js
yarn vite
```

CI builds frontend assets with the repository's `https://cos-sh.tiye.me/`
prefix. Main-branch deployment uses `COS_BUCKET`, `COS_SECRET_ID`,
`COS_SECRET_KEY` and the existing `rsync_private_key`. The COS action itself
verifies uploaded files through `public-base-url`; no extra verification
script is needed. The original server destination is unchanged. Same-repository
PRs upload only to isolated PR/run/attempt prefixes; PRs never publish the
production page.

`calcit.cirru` is the only source snapshot; the unused `compact.cirru` is retired.
Current APIs replace `defatom`, Option helper constructors, identity logging
wrappers, `range-bothway` and literal `apply-args` loops without changing the
original loop initializers, shader math or clock/random evaluation counts.

The npm renderer itself still declares `@triadica/touch-control` ^0.0.4-a1.
The registry's newest stable controller is 0.0.3, outside that declared range;
compatibility with this older release has not been established. Replacing this
alpha dependency needs renderer/controller compatibility verification rather than
an unverified downgrade or a swap to the separate Calcit module.

### Workflow

https://github.com/Triadica/lagopus-workflow

### License

MIT
