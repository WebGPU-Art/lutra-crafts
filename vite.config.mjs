import glsl from "vite-plugin-glsl";
import { defineConfig } from "vite";

export default defineConfig({
  plugins: [
    glsl({
      // include: /wgsl/i,
    }),
  ],
  build: {
    minify: false,
    rollupOptions: {
      treeshake: false,
      treeShaking: false,
    },
  },
  optimizeDeps: {
    exclude: ["@triadica/lagopus"],
    esbuildOptions: {
      treeShaking: false,
    },
  },
});
