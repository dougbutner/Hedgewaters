# Hedgewaters — Project Directive

**Chain:** XPR Network (Antelope)  
**Language:** **C++ / Antelope CDT only** (`eosio-cpp` / `cdt-cpp`). No TypeScript on-chain.  
**Style:** `reference contracts/legacy-xpr/ups.hpp` + `invitono.cpp`  
**Architect:** Cogo  

---

## 0. Two products

| # | Product | Contracts | What |
|---|---------|-----------|------|
| **A** | **Hedge CDP** | `hxusd` + `hedgecdp` | Liquity V2–**inspired** multi-collateral CDP: mint HXUSD, rates, SP, liq, redeem |
| **B** | **EASY Half-Loan** | `easyloan` | EASY@mon3y 50/50 Alcor + reflections (separate economics) |

Separate tables and debt. Shared Vaults.sx execution rules. C++ only.

```text
contracts/
  hxusd.hpp / hxusd.cpp
  hedgecdp.hpp / hedgecdp.cpp
  easyloan.hpp / easyloan.cpp
  README.md
```

---

## 1. Shared Antelope rules

1. Never `get_balance` → overwrite accounting after init  
2. Validate → write tables → transfer/mint → done  
3. No `update()` / balance sync  
4. Notify = deposit accept (+ narrow fill paths) only  
5. Liquidations via snapshots / clear status  
6. Fixed-point math only  

---

## 2. Language

On-chain = **C++ CDT**. UI may use TS in `src/`.

```bash
eosio-cpp -abigen -I. -contract hedgecdp -o hedgecdp.wasm hedgecdp.cpp
eosio-cpp -abigen -I. -contract hxusd    -o hxusd.wasm    hxusd.cpp
eosio-cpp -abigen -I. -contract easyloan -o easyloan.wasm easyloan.cpp
```

---

# PRODUCT A — Hedge CDP (core Liquity finance)

## A1. Mission

Borrow against **any allowlisted collateral**, mint **HXUSD** (~$1), choose an interest **rate bucket**, earn/liquidate via a **Stability Pool**, and keep the peg with **rate-ordered redemptions**.

Inspired by Liquity V2 ([docs](https://docs.liquity.org/), [bold](https://github.com/liquity/bold)) — **financial core only**, trimmed for Antelope.

Detail checklist: `research/liquity-v2-feature-checklist.md`

## A2. In scope (the money loop)

| Feature | Why it matters |
|---------|----------------|
| Multi-collateral **isolated branches** | Risk containment; list XPR, METAL, XUSDC, … |
| **HXUSD** mint/burn/transfer | Protocol stable |
| Open / add-withdraw coll / borrow / repay / adjust / close | Full borrower loop |
| Multiple positions per account | `position_id` (no NFT) |
| **User interest rate buckets** | `0.5 / 1 / 2 / 4 / 6 / 10%` — redemption priority |
| Interest accrues on touch; debt index | Sustainable SP yield |
| **Upfront borrow fee** (simple) | Anti-spam / revenue |
| **Stability Pool** deposit/withdraw + claim coll & HXUSD yield | Earn + backstop |
| Index-based SP (no iterate-all) | Antelope CPU/RAM |
| Liquidate if ICR **< MCR** | No Recovery Mode (like V2) |
| SP offset, then **redistribution** if needed | Bad-debt handling |
| Coll surplus reclaim after liq | Fair to liquidated borrowers |
| **Redeem** HXUSD → $1 coll − fee, **lowest rate first** | Peg floor |
| **Zombie** positions if debt < MIN_DEBT after redeem | Same as V2 redemption safety |
| Per-branch **MCR / CCR**; CCR borrow gates | Safety mode |
| Oracle price + **basic** stale/zero reject | Enough to price ICR |
| Interest yield → **SP** (100% of protocol interest for v1) | Simple Earn |

## A3. Out of scope (skip on purpose)

| Skipped | Reason |
|---------|--------|
| Interest delegation / batch managers | Ops complexity, not core finance |
| Add/remove managers | Same |
| Trove NFT transferability | Use `position_id` + owner |
| SP stash / `claimAllCollGains` split | Claim-to-wallet is enough |
| Gas compensation pools | Optional flat liq bounty later |
| Continuous SortedTroves + HintHelpers | **Buckets** are enough |
| 25% InterestRouter / PIL / gov staking / votes | Not needed for CDP loop |
| Worst-price / composite LST feed gymnastics | Simple feed + stale check |
| Zappers / 1-click multiply | Frontend or later |
| Separate Active/Default/Surplus/Gas contracts | Tables inside `hedgecdp` |
| Branch SCR shutdown + urgent redeem | Add later if needed |
| Premature rate-change fee / EIP-2612 | Optional polish |

## A4. Contracts

| Contract | Role |
|----------|------|
| `hxusd` | Stablecoin; only `hedgecdp` mints/burns |
| `hedgecdp` | Markets, positions, interest, SP, liq, redeem, oracle reads |

## A5. Tables (sketch)

- **markets** — coll token, oracle, MCR, CCR, mint_cap, paused  
- **positions** — owner, market, coll, debt, rate_bps, interest_index, status (Active/Zombie/Closed), seq  
- **debtpool** — total_debt, borrow_index, last_update, protocol/SP revenue books  
- **stabpool** / **spdeposit** — totals + reward/loss (or P/S) indices  
- **ratequeue** — market + rate_bps + seq → position (redemption order)  
- **surplus** — claimable coll after liq  
- **feestate** — redemption baseRate + last update  

All totals **explicit** — never from balances.

## A6. Main flows

```text
open → deposit coll → borrow HXUSD (fee + health)
repay / withdraw coll (health)
SP: deposit HXUSD → earn interest share + liq coll
liquidate unhealthy → SP offset → else redistribute → surplus claimable
redeem HXUSD → hit lowest rate bucket / oldest seq → pay coll − fee
```

---

# PRODUCT B — EASY Half-Loan

## B1. Mission

Deposit **EASY@mon3y** → ~50% out-token via Alcor (≤2% pool EASY reserve) → stack other 50% for reflections → repay out-token or wait for harvest credits → withdraw stacked EASY.

## B2. Spec

See `research/easy-half-loan.md` and `contracts/easyloan.*`.

Not a Liquity trove. No HXUSD. No SP.

---

## 3. Build order

1. `easyloan` — keep building / testnet  
2. `hxusd`  
3. `hedgecdp`: markets+oracle → borrow loop → interest → SP → liquidate → redeem  
4. UI  

## 4. Source of truth

1. **This directive**  
2. `research/liquity-v2-feature-checklist.md` (trimmed MUST list)  
3. `research/easy-half-loan.md`  
4. `research/vaults-sx-breach.md`  
5. `contracts/*.hpp|*.cpp`  
6. Liquity docs/bold — economics reference only  

Antelope execution rules win over EVM patterns.
