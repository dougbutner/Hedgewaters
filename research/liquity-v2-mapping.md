# Liquity V2 (BOLD) → Liquity-X Mapping

**Reference:** [`reference contracts/liquity-bold/`](../reference%20contracts/liquity-bold/) ([github.com/liquity/bold](https://github.com/liquity/bold))  
**Whitepaper:** [Liquity V2](https://liquity.gitbook.io/v2-whitepaper)

## Keep (economics)

| Liquity V2 | Liquity-X |
|------------|-----------|
| User-chosen interest rates | Discrete rate buckets (bps): 50,100,200,400,600,1000 |
| Isolated collateral branches | Per-market debt / SP / liq queue |
| Stability Pool liquidations | `stability` + `liquidation` queue |
| Adaptive redemptions by rate | Bucket + oldest-first (`redbucket`) |
| BOLD stablecoin | `token` contract |
| Index-style SP accounting | `reward_index` / `loss_index` |

## Reject (EVM assumptions)

| Liquity V2 / EVM | Why rejected on Antelope |
|------------------|--------------------------|
| Port Solidity 1:1 | Different call/notify semantics |
| Pool contracts as balance oracles | Vaults.sx class of bug |
| Reentrancy guards as primary defense | Wrong threat model |
| External balance sync helpers | Explicitly banned |
| Iterate all troves in one tx | Use indices + buckets |

## Contract mapping

| Liquity V2 | Liquity-X |
|------------|-----------|
| PriceFeed / Oracle | `oracle` |
| CollateralRegistry + branch params | `market` + `governance` |
| BorrowerOperations + TroveManager (state) | `position` |
| ActivePool debt / interest | `debt` |
| StabilityPool | `stability` |
| TroveManager liquidate/redeem | `liquidation` (+ redemption in later phase) |
| BOLDToken | `token` |
| SortedTroves | `redbucket` ordered sets (no global scan) |

## Design rule

> Liquity V2 is an **economic** reference. Vaults.sx research is the **execution** reference. When they conflict, Antelope execution rules win.
