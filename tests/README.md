# Hedgewaters tests

**All tests live here.** Do not add tests under `contracts/`, `src/`, or elsewhere (`project directive.md` §0b).

```bash
npm test
npm run build:contracts   # optional; also exercised by compile smoke when eosio-cpp is present
```

| File | Covers |
|------|--------|
| `flexloans-sp-math.test.ts` | Liquity Product-Sum (matches `flexloans` SP) |
| `flexloans-icr.test.ts` | ICR / CCR / rate buckets / interest |
| `easyloan-math.test.ts` | 50/50 split + 2% pool cap |
| `flashloan-math.test.ts` | Flash fee / mode pick / repay invariant |
| `contracts-abi.test.ts` | ABI actions/tables + compile smoke |
| `ui-math.test.ts` | Asset parse + ICR / redeem estimate used by the UI |
| `mock-chain.test.ts` | SQL mock chain: seed / snapshot / restore / action sim |

## Live UI test mode (mock chain)

Least-code path: Vite serves Antelope-shaped `/v1/chain/*` from the SQL mock under `tests/mock-chain/` (no separate RPC process).

```bash
npm run mock:seed   # refresh data/seed-snapshot.sqlite (optional)
npm run dev:mock    # site + mock fixtures on :8080
```

- Yellow **TEST MODE** banner appears in the shell.
- Reads (`get_table_rows`, `get_currency_balance`) hit local SQLite seed (markets, SP, positions for `alice` / `bob` / `guda`).
- Writes: with a wallet connected, UI `transact()` posts `{ actions }` to `/v1/chain/push_transaction`; memos `open#` / `repay#` / `addcoll#` / `sp#` update the mock store (demo-accurate, not full WASM).
- Seed actor **`guda`** has a position + SP deposit + balances so a connected `guda` session shows made-up data immediately.

```ts
import { openMockChain, writeSeedSnapshot } from "./mock-chain";

const chain = openMockChain({ dbPath: ":memory:", seed: true });
chain.rpc.get_table_rows({ code: "flexloans", table: "markets" });
chain.snapshot(); // → data/seed-snapshot.sqlite by default
```

| Path | Role |
|------|------|
| `mock-chain/store.ts` | SQLite store (`chain_rows`, `balances`, snapshot/restore) |
| `mock-chain/seed.ts` | Default flexloans config / markets / SP / demo actors |
| `mock-chain/rpc.ts` | `get_table_rows` + `push_transaction` + fetch shim |
| `mock-chain/actions.ts` | Transfer-memo simulator for live UI |
| `mock-chain/vite-plugin.ts` | Vite middleware for `npm run dev:mock` |
| `mock-chain/data/seed-snapshot.sqlite` | Restorable snapshot (`npm run mock:seed`) |
| `mock-chain/data/chain.sqlite` | Local working DB (gitignored) |
