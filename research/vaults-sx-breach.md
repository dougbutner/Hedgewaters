# Vaults.sx Breach Analysis (EOS, May 2021)

**Status:** Research complete — drives Liquity-X security rules  
**Loss:** ~1,180,142.5653 EOS + ~461,796.8968 USDT (~$13M at the time)  
**Contracts:** `vaults.sx`, `flash.sx`, `token.sx`  
**Attacker account (historical):** `potghpfcmocs` / funds later held / BP-intervened  

## Primary sources

1. [cmichel — EOS vaults.sx hack](https://cmichel.io/eos-vault-sx-hack/)
2. [EOS Costa Rica — vulnerability analysis](https://eoscostarica.medium.com/analysis-of-the-vulnerability-found-in-the-vaults-sx-smart-contract-445c8c968b5f)
3. [cc32d9 — EOSIO contract security cookbook](https://cc32d9.medium.com/eosio-contract-security-cookbook-20210527-69797efe9c96)
4. Vulnerable source (vendored): [`reference contracts/sx.vaults/`](../reference%20contracts/sx.vaults/)

---

## 1. What Vaults.sx did

Yield aggregator:

- Deposit EOS/USDT → receive SXEOS/SXUSDT share tokens  
- Shares redeemable for pro-rata underlying + accrued fees  
- Underlying often parked at `flash.sx` for flash-loan liquidity  
- `update(symbol)` **reread on-chain token balances** and overwrote `vault.deposit`

Share math (retire):

```text
payout = payment * deposit / supply
```

So any inflated `deposit` with a not-yet-reduced `supply` overpays redeemers.

---

## 2. Antelope execution order (the real bug class)

`eosio.token::transfer` calls `require_recipient(from)` and `require_recipient(to)`.

**Actual order:**

1. All notification handlers run first (sender, then receiver — both see the same transfer)  
2. Inline actions queued during those notifications run afterward (depth-first)  
3. Therefore: a sender can queue `update` + a second redeem **before** the vault’s redeem outbound transfer executes

This is **not** classic EVM re-entrancy (external call before state write).  
It is often the **opposite**: state is written first, then a deferred balance sync **overwrites** that write while the outbound transfer is still pending.

EOS Costa Rica: audits missed it because reviewers looked for “checks-effects-interactions” EVM patterns, not Antelope notify/inline interleaving.

---

## 3. Exploit chronology (simplified)

```text
A. Deposit → receive SX shares (normal)

B. Start redeem of half SX → token.sx notifies attacker FIRST
   attacker on_notify queues:
     1) tiny flash.sx borrow (triggers vaults.sx::update)
     2) second redeem of remaining SX

C. vaults.sx on_notify (first redeem):
     calculate_retire(fair)
     deposit -= out; supply -= sx   ← CORRECT internal write
     queue inline: pull from flash + transfer out to attacker

D. Attacker's queued update runs NOW:
     balance = get_balance(flash)   ← STILL OLD (outbound not executed)
     deposit = balance              ← OVERWRITES step C

E. Second redeem runs against inflated deposit / stale supply ratio
     → oversized payout

F. Repeat until drained
```

Critical vulnerable snippet (`update`):

```cpp
const asset balance = eosio::token::get_balance(contract, account, sym.code());
_vault.modify(vault, get_self(), [&](auto& row) {
    row.deposit.quantity = balance + staked;  // overwrites accounting
});
```

Critical redeem path correctly adjusted tables, then queued transfers — correct until `update` clobbered them.

---

## 4. Root causes (ranked)

| # | Cause | Severity |
|---|--------|----------|
| 1 | Protocol truth derived from `get_balance` after init | Critical |
| 2 | Generic `update()` callable in the middle of another economic flow | Critical |
| 3 | Redeem logic inside `on_notify` that queues outbound value transfers | High |
| 4 | Cross-contract custody (`flash.sx`) whose balance lags internal books | High |
| 5 | Share math trusts a single mutable `deposit` field anyone can resync | High |
| 6 | Attacker as `from` is notified before vault and can inject inlines | Medium (platform fact) |

---

## 5. Misnomers

| Label used in press | Accurate framing |
|---------------------|------------------|
| “Re-entrancy” | Notify/inline **ordering** + **balance-resync overwrite** |
| “flash.sx bug” | Flash loan was the **trigger** for `update`; vault accounting was the flaw |
| “Need CEI like Solidity” | CEI alone is insufficient; **never resync from balances** |

---

## 6. Liquity-X must-nots (derived)

1. **No `get_balance` → overwrite accounting** after vault/market init  
2. **No `update()` / sync / reconcile** actions that rewrite economic totals from chain balances  
3. **Notify handlers:** accept deposits only — verify `firstReceiver`, credit internal amount, finish  
4. **Withdraw/redeem/borrow:** snapshot → validate → write tables → then transfer/mint  
5. **Liquidations:** settle from **frozen snapshots**, never live balances mid-queue  
6. **One writer** per table family; no shared mutable deposit field across contracts  
7. **No recursive** deposit→borrow→withdraw chains inside one notify  

---

## 7. Outcome note

BPs later intervened; funds returned to depositors. That is **not** a protocol safety property. Liquity-X must be safe without social recovery.

---

## 8. Reference tree

```text
reference contracts/sx.vaults/     vulnerable vault + update()
reference contracts/sx.flash/      flash loan trigger (if vendored)
research/antelope-execution-model.md
```
