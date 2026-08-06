# Vaults.sx — annotated vulnerable lines

Vendored file: [`reference contracts/sx.vaults/vaults.sx.cpp`](../reference%20contracts/sx.vaults/vaults.sx.cpp)

## Smoking gun: `update()` balance overwrite

```cpp
// vaults.sx.cpp — update()
const asset balance = eosio::token::get_balance( contract, account, sym.code() );
_vault.modify( vault, get_self(), [&]( auto& row ) {
    row.deposit.quantity = balance + staked;  // OVERWRITES prior redeem accounting
});
```

Callable while a redeem’s outbound transfer is still queued → stale balance restores inflated `deposit`.

## Redeem writes correctly — then queues transfer

```cpp
// on_transfer redeem branch
_vault_by_supply.modify( supply_itr, get_self(), [&]( auto& row ) {
    row.deposit -= out;
    row.supply.quantity -= quantity;
});
transfer( account, get_self(), out, ... );  // inline — may not run yet
transfer( get_self(), from, out, ... );
```

Tables are right until `update()` clobbers them.

## Liquity-X countermeasure

There is **no** equivalent of `update()`. Totals only move by explicit `+=` / `-=` of the known `quantity` in the originating action.
