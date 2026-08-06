# Liquity V2 → Hedge CDP feature checklist (pragmatic)

**Goal:** Core **financial** Liquity V2 features on Antelope — not an exact EVM clone.  
**Sources:** [docs.liquity.org](https://docs.liquity.org/), [liquity/bold](https://github.com/liquity/bold), whitepaper.  
**Product B (`easyloan`):** separate; not listed here.

## Legend

| Tag | Meaning |
|-----|---------|
| **MUST** | Ship in Hedge CDP |
| **SKIP** | Intentionally omitted (complexity / not needed on Antelope) |

---

## MUST — financial core

| Feature | Notes |
|---------|--------|
| Multi-collateral isolated branches | Per-market debt + SP |
| HXUSD mint/burn/transfer | BOLD analogue |
| open / addColl / withdrawColl | Health-gated |
| borrow / repay / adjust / close | |
| Multiple positions per owner | `position_id`, no NFT |
| User-set **rate buckets** | 50–1000 bps; redemption order |
| Interest accrue on touch | Index or pending |
| Interest revenue → **SP** | 100% to SP in v1 |
| Upfront borrow fee | Simple |
| MIN_DEBT | |
| SP provide / withdraw | |
| SP claim coll + HXUSD yield | Direct claim (no stash) |
| Index-based SP math | No full depositor loops |
| Liquidate ICR < MCR | No Recovery Mode |
| SP offset then redistribution | |
| Coll surplus claim | After liq |
| Redeem → $1 coll − fee | Peg floor |
| Redeem lowest rate first | Bucket + oldest seq |
| Zombie if debt < MIN_DEBT | |
| MCR + CCR (+ borrow gates) | |
| Oracle price; reject stale/zero | Basic |

---

## SKIP

| Feature | Why skip |
|---------|----------|
| Interest delegates / batch managers | Not needed for core loop |
| Add/remove managers | Same |
| Trove NFT transferability | position_id enough |
| SP stash / claimAllCollGains | Claim-to-wallet enough |
| Gas compensation / GasPool | Optional later bounty |
| Continuous SortedTroves + HintHelpers | Buckets preferred on Antelope |
| 25% InterestRouter / PIL / LQTY voting | Governance bloat |
| Worst-price / composite LST oracle rules | Simple feed OK |
| Zappers / multiply | Later / frontend |
| Separate Active/Default/Surplus/Gas contracts | Tables in `hedgecdp` |
| SCR shutdown + urgent redemption | Later |
| Premature rate-change fee | Later polish |
| EIP-2612 permit | N/A |

---

## Verdict

Hedge CDP = **Liquity money machine** (borrow, rates, SP, liquidate, redeem) without delegation, governance gauges, NFTs, zappers, or EVM pool sprawl.
