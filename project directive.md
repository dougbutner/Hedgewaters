# Hedgewaters — Project Directive

**Chain:** XPR Network (Antelope)  
**Language:** **C++ / Antelope CDT only** (`eosio-cpp`). No TypeScript on-chain.  
**Style:** `reference contracts/legacy-xpr/ups.hpp` + `invitono.cpp`  
**Architect:** Cogo  

---

## 0. Two products

| # | Product | Contract | What |
|---|---------|----------|------|
| **A** | **Hedge CDP** | `flexloans` | Liquity-inspired multi-collateral CDP → mint HXUSD |
| **B** | **EASY Half-Loan** | `easyloan` | EASY@mon3y 50/50 Alcor + reflections |

Separate tables and debt. Shared Vaults.sx rules. C++ only.

```text
contracts/
  flexloans.hpp / flexloans.cpp   # Product A
  easyloan.hpp / easyloan.cpp     # Product B
  README.md
```

HXUSD = external `eosio.token` (or equivalent); `flexloans` is issuer (`issue` / `retire`).

---

## 1. Shared Antelope rules

1. Never `get_balance` → overwrite accounting  
2. Validate → write tables → transfer/mint  
3. No `update()` / balance sync  
4. Notify = deposit accept only (+ narrow memos)  
5. Fixed-point math only  

---

## 2. Build

```bash
cd contracts
eosio-cpp -abigen -I. -contract flexloans -o flexloans.wasm flexloans.cpp
eosio-cpp -abigen -I. -contract easyloan  -o easyloan.wasm  easyloan.cpp
```

---

# PRODUCT A — flexloans

## Mission

Borrow against allowlisted collateral, mint **HXUSD**, pick a **rate bucket**, earn via **Stability Pool**, liquidate below MCR, redeem for peg (lowest rate first).

## In scope

Multi-collateral markets · open/add/withdraw coll · borrow/repay/close · rate buckets · interest→SP · borrow fee · SP provide/withdraw/claim · liquidate + SP offset + redistribution · surplus · redeem + zombies · MCR/CCR · basic oracle

## Out of scope

Delegation/batches · NFT · SP stash · gas pools · continuous SortedTroves · PIL/gov · zappers · separate pool contracts

## User memos (transfer → flexloans)

| Memo | Token | Effect |
|------|-------|--------|
| `open#<marketId>#<rateBps>` | coll | Open position |
| `addcoll#<posId>` | coll | Add collateral |
| `repay#<posId>` | HXUSD | Repay debt |
| `sp#<marketId>` | HXUSD | Deposit to SP |
| `redeem#<marketId>` | HXUSD | Redeem for coll |

Actions: `borrow`, `withdrawcoll`, `setrate`, `closepos`, `withdrawsp`, `claimsp`, `liquidate`, `claimsurplus`, admin/oracle.

Detail: header comment in `contracts/flexloans.hpp` + `research/liquity-v2-feature-checklist.md`.

---

# PRODUCT B — easyloan

See `research/easy-half-loan.md` and `contracts/easyloan.*`. Not a Liquity trove.

---

## Source of truth

1. This directive  
2. `contracts/flexloans.*` / `easyloan.*`  
3. `research/liquity-v2-feature-checklist.md`  
4. `research/vaults-sx-breach.md`  
5. Liquity docs — economics reference only  
