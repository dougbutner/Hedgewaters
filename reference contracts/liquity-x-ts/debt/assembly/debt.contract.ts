/**
 * debt.xpr — interest index, mint, burn.
 *
 * Order: accrue → write debt_pool → mint/burn. Never mint first.
 * total_debt is explicit; never derived from token supply/balances.
 * Research: research/vaults-sx-breach.md Rule 1; antelope-execution-model.md
 */
import {
  Contract,
  Name,
  Table,
  TableStore,
  Singleton,
  check,
  requireAuth,
  currentTimeSec,
  Asset,
  Symbol,
  EMPTY_NAME,
} from "proton-tsc";
import { INDEX_SCALE } from "../../shared/constants";
import { accrueBorrowIndex, currentDebt } from "../../shared/math";
import { sendIssue, sendRetire } from "../../shared/inline";

@table("debtpool")
export class DebtPool extends Table {
  constructor(
    public market: u64 = 0,
    public total_debt: u64 = 0,
    public borrow_index: u64 = 0,
    public interest_accumulator: u64 = 0,
    public protocol_revenue: u64 = 0,
    public last_interest_update: u64 = 0
  ) {
    super();
  }

  @primary
  get primary(): u64 {
    return this.market;
  }
}

@table("dconfig", singleton)
export class DebtConfig extends Table {
  constructor(
    public admin: Name = EMPTY_NAME,
    public position_contract: Name = EMPTY_NAME,
    public token_contract: Name = EMPTY_NAME,
    public stable_symbol: Symbol = new Symbol()
  ) {
    super();
  }
}

@contract
class DebtContract extends Contract {
  pools: TableStore<DebtPool> = new TableStore<DebtPool>(this.receiver);
  configSingleton: Singleton<DebtConfig> = new Singleton<DebtConfig>(this.receiver);

  @action("init")
  init(admin: Name, position_contract: Name, token_contract: Name, stable_symbol: Symbol): void {
    requireAuth(admin);
    check(this.configSingleton.get().admin.N == 0, "liquity-x: debt already init");
    this.configSingleton.set(
      new DebtConfig(admin, position_contract, token_contract, stable_symbol),
      this.receiver
    );
  }

  @action("initpool")
  initPool(market: u64): void {
    requireAuth(this.configSingleton.get().admin);
    check(!this.pools.exists(market), "liquity-x: pool exists");
    this.pools.store(
      new DebtPool(market, 0, INDEX_SCALE, 0, 0, currentTimeSec()),
      this.receiver
    );
  }

  @action("borrow")
  borrow(
    borrower: Name,
    market: u64,
    stored_debt: u64,
    position_index: u64,
    chosen_rate: u64,
    mint_amount: u64
  ): void {
    requireAuth(borrower);
    check(mint_amount > 0, "liquity-x: amount");

    let pool = this.pools.requireGet(market, "liquity-x: debt pool");
    pool = this.accrue(pool, chosen_rate);

    const idx = position_index > 0 ? position_index : INDEX_SCALE;
    // Keep index math wired for P3/P4 position sync (health uses indexed debt).
    check(currentDebt(stored_debt, pool.borrow_index, idx) <= pool.total_debt + mint_amount, "liquity-x: debt math");

    // WRITE totals first
    pool.total_debt += mint_amount;
    this.pools.update(pool, this.receiver);

    const cfg = this.configSingleton.get();
    sendIssue(
      cfg.token_contract,
      this.receiver,
      borrower,
      new Asset(mint_amount, cfg.stable_symbol),
      "liquity-x borrow"
    );
  }

  @action("repay")
  repay(borrower: Name, market: u64, burn_amount: u64, chosen_rate: u64): void {
    requireAuth(borrower);
    check(burn_amount > 0, "liquity-x: amount");

    let pool = this.pools.requireGet(market, "liquity-x: debt pool");
    pool = this.accrue(pool, chosen_rate);
    check(pool.total_debt >= burn_amount, "liquity-x: total debt");

    pool.total_debt -= burn_amount;
    this.pools.update(pool, this.receiver);

    const cfg = this.configSingleton.get();
    sendRetire(
      cfg.token_contract,
      this.receiver,
      new Asset(burn_amount, cfg.stable_symbol),
      "liquity-x repay"
    );
  }

  accrue(pool: DebtPool, rateBps: u64): DebtPool {
    const now = currentTimeSec();
    const elapsed = now - pool.last_interest_update;
    if (elapsed > 0) {
      pool.borrow_index = accrueBorrowIndex(pool.borrow_index, rateBps, elapsed);
      pool.last_interest_update = now;
    }
    return pool;
  }
}
