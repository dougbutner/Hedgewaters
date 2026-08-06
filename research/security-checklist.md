# Liquity-X Security Checklist

Use before every merge that touches `contracts/`.

## Accounting

- [ ] No `get_balance` / balance-of used to set `total_*`, `deposit`, `debt`, or indices after init  
- [ ] Every total field has an explicit increment/decrement at the write site  
- [ ] Mint/burn amounts match table deltas in the same action  

## Action shape

- [ ] Order is always: auth → snapshot → validate → write → external → done  
- [ ] No `update` / `sync` / `reconcile` action exists  
- [ ] Withdraw/redeem write tables before outbound transfer  

## Notifications

- [ ] `firstReceiver` checked against allowlist  
- [ ] `to == self` and ignore self-sends  
- [ ] Notify does not call oracle, interest accrue, mint, liquidate, or redeem  
- [ ] Memo parsing is strict; unknown memo rejects  

## Cross-contract

- [ ] One writer per table family  
- [ ] Liquidation settles from queue snapshots only  
- [ ] Oracle read once per action into locals; never re-read after writes  
- [ ] No action A inline-calls action B that mutates overlapping economic state recursively  

## State machine

- [ ] Position status transitions are explicit and checked  
- [ ] Closed positions have zero collateral and zero debt  

## Build / deploy

- [ ] Table schemas unchanged if live rows exist (see `skill/safety-guidelines.md`)  
- [ ] Testnet first; Node 18–20 for `proton-asc`  
- [ ] Malicious-notify integration test passes for withdraw/redeem paths  
