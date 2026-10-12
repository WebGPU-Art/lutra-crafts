## Lutra Crafts

Demo https://r.tiye.me/Triadica/lutra-crafts .

Requires Calcit 0.29.1, Caps 0.1.1, Node.js 24 and Yarn 4.18.0.
`deps.cirru` pins the formal Calcit module releases.

```sh
caps --strict
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
calcit test
calcit js
yarn vite
```

CI builds frontend assets with the repository's `https://cos-sh.tiye.me/`
prefix. Main-branch deployment uses `COS_BUCKET`, `COS_SECRET_ID`,
`COS_SECRET_KEY` and the existing `rsync_private_key`. The COS action itself
verifies uploaded files through `public-base-url`; no extra verification
script is needed. The original server destination is unchanged, and PR
checks do not upload or deploy.

### Workflow

https://github.com/Triadica/lagopus-workflow

### License

MIT
