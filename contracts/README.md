# Hedgewaters contracts

**C++ / Antelope CDT only.** No TypeScript on-chain code.

| Product | Files | Role |
|---------|-------|------|
| A — Hedge CDP | `hxusd.*`, `hedgecdp.*` | Liquity-inspired CDP (HXUSD, rates, SP, liq, redeem) |
| B — EASY Half-Loan | `easyloan.*` | EASY 50/50 Alcor + reflections |

See **`../project directive.md`** and **`../research/liquity-v2-feature-checklist.md`**.

## Build

```bash
cd contracts
eosio-cpp -abigen -I. -contract easyloan -o easyloan.wasm easyloan.cpp
# when added:
# eosio-cpp -abigen -I. -contract hxusd    -o hxusd.wasm    hxusd.cpp
# eosio-cpp -abigen -I. -contract hedgecdp -o hedgecdp.wasm hedgecdp.cpp
```

Style: `reference contracts/legacy-xpr/ups.hpp` + `invitono.cpp`.
