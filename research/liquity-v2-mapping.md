# Liquity V2 → Hedge CDP mapping

**Standard:** Pragmatic Liquity V2 **financial core** (not exact EVM clone).  
**Checklist:** [`liquity-v2-feature-checklist.md`](./liquity-v2-feature-checklist.md)  
**Code ref:** `reference contracts/liquity-bold/`  
**Product B:** `easyloan` — separate.

## Keep

Isolated collateral branches, HXUSD, full borrower loop, **rate buckets**, interest→SP, SP Earn, liquidations + redistribution, redemptions (lowest rate / zombies), MCR/CCR, simple oracle.

## Skip

Delegation, batches, managers, Trove NFT, SP stash, gas pools, continuous SortedTroves/hints, PIL/gov staking, worst-price feeds, zappers, separate EVM pool contracts, SCR/urgent redeem (v1).

## Language

**C++ Antelope CDT only.**
