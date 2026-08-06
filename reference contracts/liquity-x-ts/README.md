# Liquity-X contracts

Liquity V2 economics, redesigned for Antelope/XPR.

| Doc | Role |
|-----|------|
| [`../project directive.md`](../project%20directive.md) | Architecture + security rules |
| [`../research/`](../research/) | Vaults.sx breach analysis (read first) |
| [`../research/IMPLEMENTATION-PLAN.md`](../research/IMPLEMENTATION-PLAN.md) | Phased build plan |
| [`../reference contracts/`](../reference%20contracts/) | sx.vaults, Liquity BOLD (read-only) |

## Layout

```text
shared/           constants, math, risk, parse, inline helpers
oracle/           prices only
market/           market create / pause / caps
position/         positions + collateral_pool
debt/             debt_pool, interest index, mint/burn
stability/        stability pool indices
liquidation/      queue + absorb
governance/       params + wiring
token/            stablecoin
```

## Setup

**Node 18–20** required (`proton-asc` breaks on Node 24).

```bash
cd contracts
nvm use        # reads .nvmrc → 20
npm install
npm run build
```

From repo root: `npm run build:contracts`

## Hard rules (from research)

1. Never `get_balance` → overwrite accounting ([vaults-sx-breach](../research/vaults-sx-breach.md))  
2. Validate → write tables → transfer → done  
3. No `update()` / sync / reconcile actions  
4. Notify = deposit accept only  
5. One writer per table family  
6. Liquidations settle from snapshots only  
