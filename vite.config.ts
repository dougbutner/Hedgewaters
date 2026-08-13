import path from "path";
import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";
import { mockChainPlugin } from "./tests/mock-chain/vite-plugin";

export default defineConfig({
  server: {
    host: "::",
    port: 8080,
  },
  plugins: [react(), mockChainPlugin()],
  resolve: {
    alias: {
      "@": path.resolve(__dirname, "./src"),
    },
  },
});
