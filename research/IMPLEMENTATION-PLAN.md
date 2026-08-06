# Liquity-X — Finished Implementation Plan

**Depends on:** research in this folder + sources in `reference contracts/`  
**Product rules:** `project directive.md`  
**Code root:** `contracts/` (Liquity-X only)

---

## Goal

Ship an Antelope-native CDP (Liquity-X) that keeps Liquity V2 economics while structurally eliminating the Vaults.sx failure mode: **accounting overwritten from token balances under notify/inline reordering**.

---

## Repository layout (locked)

```text
research/                 ← breach analysis, mapping, checklist, THIS plan
reference contracts/      ← sx.vaults, sx.flash, liquity-bold, legacy-xpr
contracts/                ← Liquity-X only (proton-tsc)
  shared/
  oracle|market|position|debt|stability|liquidation|governance|token/
project directive.md      ← architecture + security rules
src/                      ← Vite dApp (later phases)
```

---

## Phase plan

### P0 — Foundation (done)

- [x] Project directive  
- [x] Research folder (Vaults.sx + execution model + V2 mapping + checklist)  
- [x] Reference contracts vendored  
- [x] Folder split: references cold, Liquity-X in `contracts/`  
- [x] Scaffold builds on Node 20  

### P1 — Immutable core surfaces (done)

- [x] `token` / `oracle` / `governance` / `market` documented against research  
- [x] No `update`/balance sync; init guarded  
- [x] Remaining contracts carry Vaults.sx-aware headers + safe ordering stubs

### P2 — Collateral accounting

`position`: openpos, deposit notify, withdraw (state→transfer), closepos, collpool  

**Exit:** malicious-notify cannot inflate collateral; withdraw refuses when debt>0 until P4 health exists.

### P3 — Debt + interest

`debt`: initpool, accrue-on-touch, borrow (tables→mint), repay (tables→burn)  
Wire position.debt + interest_index on borrow/repay.

**Exit:** `currentDebt = stored * borrowIndex / positionIndex`; totals explicit.

### P4 — Risk engine

`shared/risk.ts` used by withdraw/borrow; oracle snapshot once per action.  

**Exit:** unhealthy withdraw/borrow rejected; liquidatable iff health < MCR.

### P5 — Stability pool

Deposit notify (`sp:<market>`), indices only, claim path for caller only.

### P6 — Liquidation queue

Freeze → enqueue snapshots → absorb via SP; never settle from live balances.

### P7 — Redemption buckets

Lowest rate → oldest seq; burn stable → reduce debt/collateral; no global scan.

### P8 — Frontend

Markets, positions, SP, queue visibility via existing wallet stack.

### P9 — Invariants + testnet

Checklist in `security-checklist.md`; adversarial notify tests; testnet deploy.

---

## Coding standards (from research)

1. Concise, documented at file header + dangerous lines only  
2. Error strings: `liquity-x: …`  
3. Fixed-point only (`shared/math.ts`)  
4. Notify = deposit accept only  
5. Never add `update`/`sync`/`reconcile`  
6. Prefer extending existing actions over new cross-cutting ones  

---

## Explicit non-goals

- Porting Liquity V2 Solidity  
- Deploying anything from `reference contracts/`  
- Social recovery / BP intervention as a safety assumption  

---

## Immediate next execution step

Complete **P1**: tighten `token`, `oracle`, `governance`, `market` with research-linked file headers and remove any residual unsafe patterns; keep builds green.
