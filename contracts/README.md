# Hedgewaters contracts

**C++ / Antelope CDT only.**

| Product | Files | Role |
|---------|-------|------|
| A — Hedge CDP | `flexloans.*` | Liquity-inspired CDP (HXUSD via external token issuer) |
| B — EASY Half-Loan | `easyloan.*` | EASY 50/50 Alcor + reflections |
| C — Flash loans | `flashloan.*` | Reserve / conversion / smart same-tx flash |

See **`../project directive.md`**. Tests: **`../tests/`** only (`npm test`).

## Build

```bash
cd contracts
eosio-cpp -abigen -I. -contract flexloans -o flexloans.wasm flexloans.cpp
eosio-cpp -abigen -I. -contract easyloan  -o easyloan.wasm  easyloan.cpp
eosio-cpp -abigen -I. -contract flashloan -o flashloan.wasm flashloan.cpp
```

Style: ups.hpp tables + invitono.cpp sections.

## flashloan deploy notes

1. Opt the flash account out of Flex transfer tax on `mon3y` / `w3won` / `m3m3` / `gold.mon3y` (`noflexzone` / `optoutoftax`) or repayments under-deliver and `checkbalance` reverts.
2. Fund reserves by transferring tokens to the contract (idle). Admin `withdraw` to pull.
3. `setconfig` with `swap.alcor` + `proton.swaps`, then `setroute` for conversion pairs.
4. Default smart action is **`flash`** (not `flashloan` — C++ class name collision). Modes: `reserveflash`, `convflash`, `flash`.
