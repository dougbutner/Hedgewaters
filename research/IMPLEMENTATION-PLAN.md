# Implementation plan

## Product A — Hedge CDP (core finance)

1. `hxusd`  
2. `hedgecdp` markets + oracle  
3. Borrow loop (open/coll/borrow/repay/close)  
4. Rate buckets + interest → SP  
5. Stability Pool  
6. Liquidations + surplus  
7. Redemptions + zombies  

Acceptance: MUST rows in `liquity-v2-feature-checklist.md`.

## Product B — easyloan

Keep/test separately.

## Language

C++ CDT only.
