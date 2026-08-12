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
| `mock-chain.test.ts` | SQL mock chain: seed / snapshot / restore market data |

## Mock chain (local market data)

When live XPR RPC cannot return markets, use the SQL-backed mock under `tests/mock-chain/`:

```bash
npm run mock:seed   # refresh data/seed-snapshot.sqlite
npm test
```

```ts
import { openMockChain, writeSeedSnapshot } from "./mock-chain";

// Ephemeral seeded DB
const chain = openMockChain({ dbPath: ":memory:", seed: true });
chain.rpc.get_table_rows({ code: "flexloans", table: "markets" });

// Persist + restore
chain.snapshot(); // → data/seed-snapshot.sqlite by default
chain.restore();

// Route src/lib/chain/rpc fetchers through the mock (uses CHAIN_ENDPOINTS)
const uninstall = chain.installFetch();
```

| Path | Role |
|------|------|
| `mock-chain/store.ts` | SQLite store (`chain_rows`, `balances`, snapshot/restore) |
| `mock-chain/seed.ts` | Default flexloans config / markets / SP fixtures |
| `mock-chain/rpc.ts` | `get_table_rows` + fetch shim |
| `mock-chain/data/seed-snapshot.sqlite` | Restorable snapshot (`npm run mock:seed`) |
| `mock-chain/data/chain.sqlite` | Local working DB (gitignored) |
