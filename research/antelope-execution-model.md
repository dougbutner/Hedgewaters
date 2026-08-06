# Antelope / XPR Execution Model (for DeFi)

## Notify vs inline

```text
User signs transfer(A → B)

1. token.transfer @ token
2. on_notify @ A          ⎫ all notifications
3. on_notify @ B          ⎭ before any queued inlines from those notifies
4. inlines queued by A (depth-first)
5. inlines queued by B (depth-first)
6. further nested inlines…
```

Implications:

- After B’s notify returns, B’s outbound `transfer` inline has **not** run yet if A also queued inlines.
- Token balances of B still look “pre-payout” while B’s tables may already show post-payout.
- Any code that then sets `table.deposit = get_balance(B)` restores the pre-payout world and breaks invariants.

## Safe patterns

### Deposit notify (allowed)

```text
on_notify(transfer):
  if to != self: return
  if firstReceiver != allowed_token: reject
  credit internal collateral += quantity.amount
  return
  // no oracle, interest, mint, liquidate, withdraw
```

### Withdraw / redeem / borrow (explicit actions)

```text
action:
  load + snapshot locals
  validate (health, caps, auth)
  mutate tables (sole source of truth)
  send inline transfer / mint / burn
  return
```

### Forbidden

```text
action update():
  deposit = get_balance(...)   // NEVER
```

```text
on_notify:
  price = oracle.read()
  mint / liquidate / redeem    // NEVER
```

## Testing the ordering assumption

Any integration test for withdraw/redeem must include a malicious `from` contract that, on notify, calls a forbidden sync or a second economic action before the protocol’s outbound transfer runs. Protocol must remain correct.
