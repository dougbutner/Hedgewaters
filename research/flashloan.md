# Product C — flashloan (notes)

## Mechanism

Antelope same-tx flash (sx.flash / Titan style):

1. Optional DEX conversion of other reserves → loan token  
2. Snapshot loan-token balance + fee  
3. Transfer principal to receiver  
4. `callback` → borrower notifier  
5. `checkbalance` — unpaid ⇒ revert entire transaction  

## Modes

| Action | Behavior |
|--------|----------|
| `reserveflash` | Own loan-token reserves only |
| `convflash` | `swap.alcor` (`swapexactout`) or `proton.swaps` then lend |
| `flash` | Prefer reserve; else cheapest admin `routes` row + caller `pay` |

Default action is **`flash`** (not `flashloan`) — CDT forbids an action named like the contract class.

## Fees

- Default **3 bps (0.03%)**  
- **0 bps** for EASY@mon3y, WON@w3won, MEME@m3m3, GRAMS@gold.mon3y  

## Deploy

Opt flash account out of Flex transfer tax before lending those tokens.

## Design refs

`reference contracts/flash-loans/` (ERC-3156, Maker, Uni V3, Balancer, Aave, Titan) + `reference contracts/sx.flash/`.
