# Flash loan design references

Vendored **upstream interfaces / flash modules** for study. Not for deploy. Hedgewaters Product C (`contracts/flashloan.*`) follows the **EOSIO same-tx balance check** model (`sx.flash` + Titan), not EVM callback approvals.

Also see sibling trees:

| Path | Role |
|------|------|
| [`../sx.flash/`](../sx.flash/) | StableEx EOSIO flash lender (primary Antelope pattern) |
| [`../liquity-bold/.../FlashLoans/`](../liquity-bold/contracts/src/Zappers/Modules/FlashLoans/) | Liquity V2 Balancer zapper flash adapter |

## Ranking used for Hedgewaters design

1. **ERC-3156** — cleanest generic lender/borrower interface  
2. **Maker `dss-flash`** — mint → callback → repay/burn (not used: no HEDGE flash-mint in Product C)  
3. **Uniswap V3 `flash`** — pool callback + repay principal + fee  
4. **Balancer V2 Vault** — multi-asset vault flash  
5. **Aave V3 `flashLoanSimple`** — production pool flash  
6. **EOS Titan / sx.flash** — Antelope inline-action + end-balance invariant

## Layout

| Dir | Origin | Files |
|-----|--------|-------|
| `erc3156/` | OpenZeppelin v4.9.6 | `IERC3156FlashLender.sol`, `IERC3156FlashBorrower.sol`, `IERC3156.sol` |
| `maker-dss-flash/` | makerdao/dss-flash | `flash.sol`, `IERC3156FlashLender.sol`, `IERC3156FlashBorrower.sol` |
| `uniswap-v3/` | Uniswap v3-core | `IUniswapV3PoolActions.sol`, `IUniswapV3FlashCallback.sol` |
| `balancer-v2/` | balancer-v2-monorepo + Liquity adapter | `IVault.sol`, `IFlashLoanRecipient.sol`, `BalancerFlashLoan.sol`, `IFlashLoanProvider.sol` |
| `aave-v3/` | aave-v3-core | `IFlashLoanSimpleReceiver.sol`, `FlashLoanSimpleReceiverBase.sol`, `IPool.sol` |
| `eos-titan/` | CryptoMechanics/flashloans | `flashloans.hpp`, `flashloans.cpp` |

## Shared invariant (all designs)

```text
END_BALANCE >= START_BALANCE + FEE
```

Unpaid flash ⇒ revert entire transaction.

## License

Upstream licenses remain with their authors. Vendored for private study inside this project.
