/**
 * token.xpr — protocol stablecoin (BOLD-like).
 *
 * Supply is an explicit table field. debt.xpr must NEVER set debt_pool from supply.
 * Contrast: sx.vaults update() read balances into accounting — banned here.
 * Research: research/vaults-sx-breach.md §6; liquity-v2-mapping.md (BOLDToken)
 */
import {
  Contract,
  Name,
  Table,
  TableStore,
  Singleton,
  Asset,
  check,
  requireAuth,
  hasAuth,
  EMPTY_NAME,
} from "proton-tsc";

@table("accounts")
export class Account extends Table {
  constructor(public balance: Asset = new Asset()) {
    super();
  }

  @primary
  get primary(): u64 {
    return this.balance.symbol.code();
  }
}

@table("stat")
export class CurrencyStats extends Table {
  constructor(
    public supply: Asset = new Asset(),
    public max_supply: Asset = new Asset(),
    public issuer: Name = EMPTY_NAME
  ) {
    super();
  }

  @primary
  get primary(): u64 {
    return this.supply.symbol.code();
  }
}

@table("tconfig", singleton)
export class TokenConfig extends Table {
  constructor(
    public admin: Name = EMPTY_NAME,
    public debt_contract: Name = EMPTY_NAME
  ) {
    super();
  }
}

@contract
class TokenContract extends Contract {
  stats: TableStore<CurrencyStats> = new TableStore<CurrencyStats>(this.receiver);
  configSingleton: Singleton<TokenConfig> = new Singleton<TokenConfig>(this.receiver);

  @action("init")
  init(admin: Name, debt_contract: Name): void {
    requireAuth(admin);
    check(this.configSingleton.get().admin.N == 0, "liquity-x: token already init");
    this.configSingleton.set(new TokenConfig(admin, debt_contract), this.receiver);
  }

  @action("create")
  create(issuer: Name, max_supply: Asset): void {
    const cfg = this.configSingleton.get();
    requireAuth(cfg.admin);
    requireAuth(issuer);
    check(max_supply.amount > 0, "liquity-x: max_supply");
    check(!this.stats.exists(max_supply.symbol.code()), "liquity-x: exists");
    this.stats.store(
      new CurrencyStats(new Asset(0, max_supply.symbol), max_supply, issuer),
      this.receiver
    );
  }

  /** Mint: auth debt|admin → bump supply table → credit account. */
  @action("issue")
  issue(to: Name, quantity: Asset, memo: string): void {
    check(quantity.amount > 0, "liquity-x: amount");
    const cfg = this.configSingleton.get();
    check(hasAuth(cfg.debt_contract) || hasAuth(cfg.admin), "liquity-x: issue auth");

    const st = this.stats.requireGet(quantity.symbol.code(), "liquity-x: symbol");
    check(quantity.symbol == st.supply.symbol, "liquity-x: symbol");
    st.supply.amount += quantity.amount;
    check(st.supply.amount <= st.max_supply.amount, "liquity-x: max");
    this.stats.update(st, this.receiver);
    this.addBalance(to, quantity);
  }

  /** Burn from this contract’s balance (debt engine retires after table write). */
  @action("retire")
  retire(quantity: Asset, memo: string): void {
    check(quantity.amount > 0, "liquity-x: amount");
    const cfg = this.configSingleton.get();
    check(hasAuth(cfg.debt_contract) || hasAuth(cfg.admin), "liquity-x: retire auth");

    const st = this.stats.requireGet(quantity.symbol.code(), "liquity-x: symbol");
    check(st.supply.amount >= quantity.amount, "liquity-x: supply");
    this.subBalance(this.receiver, quantity);
    st.supply.amount -= quantity.amount;
    this.stats.update(st, this.receiver);
  }

  @action("transfer")
  transfer(from: Name, to: Name, quantity: Asset, memo: string): void {
    requireAuth(from);
    check(from != to, "liquity-x: to self");
    check(quantity.amount > 0, "liquity-x: amount");
    check(memo.length <= 256, "liquity-x: memo");
    this.subBalance(from, quantity);
    this.addBalance(to, quantity);
  }

  addBalance(owner: Name, quantity: Asset): void {
    const store = new TableStore<Account>(this.receiver, owner);
    const row = store.get(quantity.symbol.code());
    if (!row) {
      store.store(new Account(quantity), this.receiver);
    } else {
      check(row.balance.symbol == quantity.symbol, "liquity-x: symbol");
      row.balance.amount += quantity.amount;
      store.update(row, this.receiver);
    }
  }

  subBalance(owner: Name, quantity: Asset): void {
    const store = new TableStore<Account>(this.receiver, owner);
    const row = store.requireGet(quantity.symbol.code(), "liquity-x: balance");
    check(row.balance.amount >= quantity.amount, "liquity-x: overdraw");
    row.balance.amount -= quantity.amount;
    store.update(row, this.receiver);
  }
}
