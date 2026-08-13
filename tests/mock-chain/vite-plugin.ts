/**
 * Vite plugin: serve Antelope-shaped /v1/chain/* from tests/mock-chain SQLite.
 * Activate with `vite --mode mock` or VITE_USE_MOCK_CHAIN=1.
 *
 * Imports store/rpc/seed directly (not ./index) so vite.config does not load
 * browser env code from src/services/walletConstants.
 */
import type { Plugin, Connect } from "vite";
import { MockChainStore, defaultDbPath, defaultSnapshotPath } from "./store";
import { seedFlexloans } from "./seed";
import { MockChainRpc } from "./rpc";

function readBody(req: Connect.IncomingMessage): Promise<string> {
  return new Promise((resolve, reject) => {
    const chunks: Buffer[] = [];
    req.on("data", (c) => chunks.push(Buffer.isBuffer(c) ? c : Buffer.from(c)));
    req.on("end", () => resolve(Buffer.concat(chunks).toString("utf8")));
    req.on("error", reject);
  });
}

export function mockChainPlugin(): Plugin {
  let store: MockChainStore | null = null;
  let rpc: MockChainRpc | null = null;

  return {
    name: "hedgewaters-mock-chain",
    config(_cfg, { mode }) {
      const useMock = mode === "mock" || process.env.VITE_USE_MOCK_CHAIN === "1";
      if (!useMock) return;
      return {
        define: {
          "import.meta.env.VITE_USE_MOCK_CHAIN": JSON.stringify("1"),
        },
      };
    },
    configureServer(server) {
      const useMock =
        server.config.mode === "mock" || process.env.VITE_USE_MOCK_CHAIN === "1";
      if (!useMock) return;

      const snapshotPath = defaultSnapshotPath();
      store = new MockChainStore({ dbPath: defaultDbPath() });
      seedFlexloans(store);
      try {
        store.snapshot(snapshotPath);
      } catch {
        /* snapshot optional */
      }
      rpc = new MockChainRpc(store);

      server.httpServer?.once("close", () => {
        store?.close();
        store = null;
        rpc = null;
      });

      server.middlewares.use(async (req, res, next) => {
        const url = req.url ?? "";
        if (!url.includes("/v1/chain/")) return next();
        if (req.method !== "POST" && req.method !== "GET") return next();

        try {
          const pathname = url.split("?")[0] ?? url;
          let body: unknown = {};
          if (req.method === "POST") {
            const raw = await readBody(req);
            body = raw ? JSON.parse(raw) : {};
          }
          const result = rpc!.handleChainPath(pathname, body);
          if (result === null) {
            res.statusCode = 404;
            res.setHeader("Content-Type", "application/json");
            res.end(JSON.stringify({ error: "mock rpc: unknown path" }));
            return;
          }
          res.statusCode = 200;
          res.setHeader("Content-Type", "application/json");
          res.end(JSON.stringify(result));
        } catch (err) {
          res.statusCode = 400;
          res.setHeader("Content-Type", "application/json");
          res.end(JSON.stringify({ error: err instanceof Error ? err.message : "mock error" }));
        }
      });

      server.config.logger.info("\n  [mock-chain] SQL fixtures on /v1/chain/* (test mode)\n");
    },
  };
}
