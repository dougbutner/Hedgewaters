# EASY Half-Loan — Alcor research

## Collateral

- **Only** `EASY` on contract **`mon3y`** (takeiteasy reflections token).

## Price / liquidity source

No Delphi/`oracles` feed required for the core loop.

Read **`swap.alcor` / `pools`** on-chain:

| Field | Use |
|-------|-----|
| `tokenA` / `tokenB` | Identify EASY side + **reserve amount** for 2% cap |
| `liquidity` | In-range L (secondary signal) |
| `currSlot.sqrtPriceX64` | Optional spot (UI / future TWAP) |
| `active` | Must be true |

Off-chain helpers: [alcor pool price gist](https://gist.github.com/avral/239e31232eb9a173b77c56dc537ddb6d), [alcor-oracle-price](https://github.com/alcorexchange/alcor-oracle-price) for TWAP — **not required** for the 2% sell guard.

### 2% rule

```text
easy_reserve = pool.tokenA or tokenB where symbol == EASY
max_sell     = easy_reserve.amount * max_pool_bps / 10000   // default 200
require sell_amount <= max_sell
```

## Swap memo (tigers.cpp pattern)

```text
swapexactin#<poolId>#<recipient>#<minQuantity SYM@contract>#0
```

Example (harvest / loan sell to self):

```text
swapexactin#4512#easyloanacct#0.0001 XPR@eosio.token#0
```

## Example EASY pools (Proton / XPR)

| pool_id | Pair |
|---------|------|
| 4512 | XPR ↔ EASY |
| 4065 | EASY ↔ XUSDC |
| 4066 | EASY ↔ XUSDT |
| 5926 | EASY ↔ METAL |
| 5837 | EASY ↔ XXRP |

Confirm live ABI/reserves on explorer before mainnet allowlist.

## Reflections

`takeiteasy` (`mon3y`) reflects EASY to holders. Contract balance grows via normal transfers — tag non-`loan#` inbound EASY as `reflection_pool` (explicit +=), never `vault = get_balance`.

## Relation to Vaults.sx

Same ban: never `deposit = get_balance`. See `vaults-sx-breach.md`.
