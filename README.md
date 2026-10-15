## Lutra Crafts

Demo https://r.tiye.me/Triadica/lutra-crafts .

This migration candidate requires the matched Calcit / `@calcit/procs` 0.30.0 pair,
Caps 0.1.1, Node.js 24 and Yarn 4.18.0. The official pair is published; local
immutable installation, JS compilation and production build pass. Full strict
workflow acceptance is still blocked by the Lagopus options boundary tracked in
https://github.com/WebGPU-Art/lagopus/issues/32, so this candidate is not a
completed application migration or a claim of 0.30.1 compatibility.
`deps.cirru` pins the formal Calcit module releases.

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
