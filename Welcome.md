# Welcome — Liquity-X

Use this at the start of a session (human or AI).

---

## Script

> Build **Liquity-X**: Liquity V2 economics redesigned for **Antelope / XPR**.  
> Read **`research/`** before changing contracts (Vaults.sx breach is the threat model).  
> Code: **`contracts/`**. References: **`reference contracts/`**. Rules: **`project directive.md`**.  
> Overarching rule: **never derive protocol state from token balances after initialization.**

---

## Scope questions

1. Which phase in `research/IMPLEMENTATION-PLAN.md` (P2–P9)?
2. Testnet account names for the eight contracts?
3. First collateral market (symbol + token contract)?
4. UI this session, contracts, or both?

---

## After answers

- Prefer Antelope execution rules over Liquity Solidity patterns.
- Keep `src/services/*` and `useProton` unless fixing a wallet bug.
- Contracts → `.agents/skills/smart-contracts/SKILL.md` + `skill/safety-guidelines.md`.
- Never alter deployed table schemas that already hold rows.
