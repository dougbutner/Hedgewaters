import { defineConfig } from "vitest/config";
import path from "path";

export default defineConfig({
  test: {
    // Directive: all tests live under tests/ only — nowhere else
    include: ["tests/**/*.{test,spec}.{ts,tsx,js}"],
    exclude: ["**/node_modules/**", "**/reference contracts/**", "src/**"],
  },
  resolve: {
    alias: { "@": path.resolve(__dirname, "./src") },
  },
});
