# Liquity-X — Project Directive

**Codename:** Liquity-X  
**Tagline:** Liquity V2 economics, redesigned for Antelope / XPR execution.  
**Status:** Architecture locked · Research complete · Code in `contracts/`  
**Research:** `research/` · **References:** `reference contracts/`  
**Architect:** Cogo  

---

## 1. Mission

Build a collateralized debt protocol (CDP) that preserves Liquity V2’s economic ideas—user-selected interest rates, isolated collateral markets, stability-pool liquidations, and adaptive redemptions—while **never pretending EOSIO behaves like the EVM**.

Primary failure mode to avoid: the Vaults.sx class of bugs, where protocol accounting was derived from (or overwritten by) token balances under Antelope’s notify-before-inline ordering.

Reference:

- [EOS vaults.sx hack (cmichel)](https://cmichel.io/eos-vault-sx-hack/)
- [Liquity V2 Whitepaper](https://liquity.gitbook.io/v2-whitepaper)

---

## 2. Overarching Rule

> **Never derive protocol state from token balances after initialization.**

The contract owns its accounting. Token balances validate deposits/withdrawals only. They are never the source of truth.

---

## 3. High-Level Architecture

```
                +----------------+
                |    Oracle      |
                +----------------+
                        |
                +----------------+
                | Risk Engine    |
                +----------------+
                   |         |
          +--------+---------+
          |                  |
   +--------------+   +--------------+
   | Collateral   |   | Debt Engine  |
   +--------------+   +--------------+
          |                  |
          +--------+---------+
                   |
             Position Manager
                   |
         +---------+----------+
         |                    |
 Stability Pool        Liquidation Engine
         |
 Interest Distribution
         |
      Governance
```

**No central Pool contract.** Everything operates through immutable accounting tables.

---

## 4. Contract Split (one concern each)

| Account (logical) | Path | Writes | Responsibility |
|-------------------|------|--------|----------------|
| `oracle.xpr` | `contracts/oracle/` | prices | Price, TWAP, confidence, timestamp |
| `market.xpr` | `contracts/market/` | markets | Market create / pause / caps |
| `position.xpr` | `contracts/position/` | positions, collateral_pool | Deposit, withdraw, position lifecycle |
| `debt.xpr` | `contracts/debt/` | debt_pool | Interest index, mint, burn, borrow/repay |
| `stability.xpr` | `contracts/stability/` | stability_pool | Stability deposits, reward/loss indices |
| `liquidation.xpr` | `contracts/liquidation/` | liq queue | Freeze → queue → SP absorption |
| `governance.xpr` | `contracts/governance/` | params | Parameters, pause, role wiring |
| `token.xpr` | `contracts/token/` | balances | Stablecoin (BOLD-like) |

Deployed account names are configured in `contracts/shared/constants.ts` and may differ on testnet.

---

## 5. Core Tables

### markets

| Field | Type | Notes |
|-------|------|-------|
| market_id | u64 | PK |
| symbol | Symbol | Collateral symbol |
| collateral_contract | Name | Token contract for collateral |
| oracle | Name | Oracle account |
| mcr | u64 | Minimum collateral ratio (bps) |
| ccr | u64 | Critical collateral ratio (bps) |
| mint_cap | u64 | Max debt for market |
| interest_model | u8 | Model id |
| paused | bool | Market halt |
| liquidation_bonus | u64 | Bonus bps |

### positions

| Field | Type | Notes |
|-------|------|-------|
| position_id | u64 | PK |
| owner | Name | Borrower |
| market | u64 | market_id |
| collateral | u64 | Internal units |
| debt | u64 | Stored debt (pre-index) |
| interest_index | u64 | Snapshot of borrowIndex |
| chosen_rate | u16 | Bucket: 50,100,200,400,600,1000 (bps) |
| status | u8 | Active / Frozen / Liquidating / Closed |
| last_update | u64 | unix sec |
| bucket_seq | u64 | Insertion order within rate bucket |

Unlike Liquity V2 on Ethereum: **multiple positions, multiple rates, multiple collateral branches** per account—no need for multiple EOAs.

### stability_pool

| Field | Type | Notes |
|-------|------|-------|
| market | u64 | PK = market_id |
| total_deposit | u64 | Explicit |
| reward_index | u64 | Index only |
| loss_index | u64 | Index only |
| last_update | u64 | |

### collateral_pool

| Field | Type | Notes |
|-------|------|-------|
| market | u64 | PK |
| total_collateral | u64 | |
| reserved_collateral | u64 | |
| liquidating_collateral | u64 | |
| fees_collected | u64 | |

### debt_pool

| Field | Type | Notes |
|-------|------|-------|
| market | u64 | PK |
| total_debt | u64 | |
| borrow_index | u64 | Scaled 1e18 |
| interest_accumulator | u64 | |
| protocol_revenue | u64 | |
| last_interest_update | u64 | |

### redemption_bucket (secondary ordering)

| Field | Type | Notes |
|-------|------|-------|
| id | u64 | PK |
| market | u64 | |
| rate_bps | u16 | Interest bucket |
| position_id | u64 | |
| seq | u64 | Oldest first |

### liquidation_queue

| Field | Type | Notes |
|-------|------|-------|
| id | u64 | PK |
| position_id | u64 | |
| market | u64 | |
| snap_debt | u64 | Snapshot at freeze |
| snap_collateral | u64 | Snapshot at freeze |
| status | u8 | Queued / Absorbing / Done |

### oracle_prices

| Field | Type | Notes |
|-------|------|-------|
| market | u64 | PK |
| price | u64 | Fixed-point |
| timestamp | u64 | |
| confidence | u64 | |
| twap | u64 | |

**Never compute totals from balances. Everything is explicit.**

---

## 6. Action Flows

### Deposit

```
deposit / on_notify(transfer)
  verify token transfer (firstReceiver + to + amount)
  → increase internal collateral
  → save position + collateral_pool
  → finish
```

- NO inline actions  
- NO callbacks  
- NO `update()`  

Notify handlers may **only**: accept deposit → verify sender → record amount → finish.

### Withdraw

```
withdraw
  load position
  → accrue interest (touch market)
  → simulate health
  → reject if unhealthy
  → decrease collateral (state FIRST)
  → save state
  → inline transfer()
  → finish
```

**State changes before transfer.** This eliminates an enormous attack surface.

### Borrow

```
borrow
  load position
  → calculate debt (index)
  → health check
  → reject if unsafe
  → increase debt + total debt
  → mint stablecoin
  → finish
```

Never mint first and update later.

### Repay

```
repay (burn path)
  burn / receive stablecoin
  → decrease debt
  → update interest indices
  → finish
```

### Liquidation

```
unhealthy position
  → freeze position (status machine)
  → snapshot debt + collateral
  → enqueue
  → stability pool pays debt
  → SP receives collateral
  → position closed
```

Never liquidate “directly from position.” Always through the queue.

### Redemption

```
user burns stablecoin
  → lowest interest bucket
  → oldest position (seq)
  → repay debt / remove collateral
  → repeat within action gas budget
```

Buckets: `0.5% | 1% | 2% | 4% | 6% | 10%` (stored as bps: 50, 100, 200, 400, 600, 1000).  
No floating point. No global iteration over all positions.

---

## 7. Interest Engine

Maintain per market:

- `borrow_index`
- `interest_accumulator`
- `last_interest_update`

On any market touch:

```
elapsed → interest → update borrow_index → save
```

Position debt:

```
currentDebt = storedDebt × borrow_index / position.interest_index
```

One multiplication/division. No loops over borrowers.

Borrowers pick a discrete rate; lower rate ⇒ higher redemption priority; higher rate ⇒ protected longer.

---

## 8. Risk Engine

Single pure function used everywhere:

```
health(position, price, market) → health_ratio
```

Inputs: collateral value, debt (indexed), MCR/CCR, fees.  
Callers: borrow, withdraw, liquidate, redeem.

Oracle rules (Risk Engine rejects):

- stale timestamp  
- negative / zero price  
- future timestamp  
- confidence too low  

**Never query oracle mid-liquidation.** Read once, cache in action locals, continue.

---

## 9. Stability Pool

Deposit → receive sBOLD-like shares (index-based) → earn:

- interest share  
- liquidation collateral rewards  
- fees  

Distribution via `reward_index` + `loss_index` only. No iteration over depositors in a single action beyond the caller’s own claim.

---

## 10. Security Rules (non-negotiable)

| # | Rule |
|---|------|
| 1 | Never `balance()` → overwrite accounting |
| 2 | No deferred accounting: Validate → Modify tables → Send tokens → Done |
| 3 | No generic `update()` action. Ever. |
| 4 | No accounting from notifications beyond deposit accept |
| 5 | One writer per table family (see contract split) |
| 6 | No recursive actions (`deposit` ↛ `borrow` ↛ `withdraw`) |
| 7 | Every action: snapshot → validate → write → external transfer → finish |

Forbidden pattern:

```
write → recalculate from balances → overwrite
```

---

## 11. Position State Machine

```
Active → Frozen → Liquidating → Closed
```

Transitions only inside the originating authorized action. Race prevention is structural, not advisory.

---

## 12. XPR-Specific Improvements vs Liquity V2

1. Persistent multi-index tables as sole source of truth  
2. One-action atomic transitions (validate → mutate → transfer)  
3. Per-market isolation (debt, SP, liq queue contained per branch)  
4. Explicit position state machine  
5. Deterministic redemption queues (rate bucket + insertion order)  
6. Index-based accounting (borrow / reward / loss)  
7. No `update()`, no deferred accounting, no external balance sync  

---

## 13. Frontend Scope (this repo)

Vite + React + WebAuth/Anchor stays. Product UI should expose:

- Markets / oracle status  
- Open / manage positions (deposit, borrow, repay, withdraw)  
- Stability pool deposit / claim  
- Liquidation queue visibility  
- Redemption entry  

Keep wallet services in `src/services/*` and `useProton`. Theme: existing black/gold unless product owner changes it.

---

## 14. Build & Deploy Discipline

1. Follow `skill/smart-contracts.md` + `skill/safety-guidelines.md`  
2. **Never change deployed table schemas with live rows** — add new tables instead  
3. Testnet first; mainnet is high risk  
4. Enable inline actions only on contracts that send tokens (`position`, `debt`, `stability`, `liquidation`, `token`)  
5. Build: `cd contracts && npm run build`  

---

## 15. Implementation Phases

| Phase | Deliverable |
|-------|-------------|
| P0 | This directive + contract scaffold + shared math/constants |
| P1 | `token` + `oracle` + `governance` + `market` (params only) |
| P2 | `position` deposit/withdraw (internal accounting) |
| P3 | `debt` borrow/repay + interest index |
| P4 | Risk engine wiring + health gates |
| P5 | `stability` pool indices |
| P6 | `liquidation` queue + SP absorption |
| P7 | Redemption buckets |
| P8 | Frontend market/position UI |
| P9 | Testnet audit checklist + invariants tests |

---

## 16. Invariants (must hold after every action)

1. `sum(positions.collateral where Active*) ≤ collateral_pool.total_collateral`  
2. `sum(indexed debts) ≤ debt_pool.total_debt` (within dust policy)  
3. Stablecoin `supply` == sum of minted − burned tracked by `debt`/`token`  
4. No position in `Closed` retains collateral or debt  
5. Liquidation snapshots never re-read live balances for settlement amounts  
6. Oracle used in an action is a local snapshot; not re-fetched after state writes  

---

## 17. Out of Scope (explicit)

- Porting Liquity V2 Solidity verbatim  
- EVM-style reentrancy guards as the primary security model  
- Generic “sync balances” / `update()` maintenance actions  
- Cross-market shared debt pool  
- Floating-point interest math  

---

## 18. Source of Truth Order

1. `research/` — breach analysis & finished plan (`IMPLEMENTATION-PLAN.md`)  
2. This file — product & security architecture  
3. `parameters.md` — repo coding parameters  
4. `contracts/` — Liquity-X implementation  
5. `reference contracts/` — read-only (sx.vaults, liquity-bold, legacy)  
6. `skill/safety-guidelines.md` — deploy safety  
7. Liquity V2 whitepaper — economics inspiration only  

When Antelope execution conflicts with Liquity V2 Ethereum patterns, **this directive wins**.
