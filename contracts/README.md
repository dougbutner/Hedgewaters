# Hedgewaters contracts

**C++ / Antelope CDT only.**

| Product | Files | Role |
|---------|-------|------|
| A — Hedge CDP | `flexloans.*` | Liquity-inspired CDP (HXUSD via external token issuer) |
| B — EASY Half-Loan | `easyloan.*` | EASY 50/50 Alcor + reflections |

See **`../project directive.md`**.

## Build

```bash
cd contracts
eosio-cpp -abigen -I. -contract flexloans -o flexloans.wasm flexloans.cpp
eosio-cpp -abigen -I. -contract easyloan  -o easyloan.wasm  easyloan.cpp
```

Style: ups.hpp tables + invitono.cpp sections.
