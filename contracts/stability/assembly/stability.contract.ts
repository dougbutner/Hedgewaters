/**
 * stability.xpr — stability pool via reward/loss indices (no depositor loops).
 *
 * Deposit notify: credit known amount only.
 * absorb(): called by liquidation with SNAPSHOT amounts — never live balances.
 * Research: research/liquity-v2-mapping.md (StabilityPool); vaults-sx-breach.md Rule 1
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
  EMPTY_NAME,
} from "proton-tsc";
import { INDEX_SCALE, nextId } from "../../shared/constants";
import { parseU64 } from "../../shared/parse";

@table("stabpool")
export class StabilityPool extends Table {
  constructor(
    public market: u64 = 0,
    public total_deposit: u64 = 0,
    public reward_index: u64 = 0,
    public loss_index: u64 = 0,
    public last_update: u64 = 0
  ) {
    super();
  }

  @primary
  get primary(): u64 {
    return this.market;
  }
}

@table("spdeposit")
export class StabilityDeposit extends Table {
  constructor(
    public id: u64 = 0,
    public owner: Name = EMPTY_NAME,
    public market: u64 = 0,
    public deposit: u64 = 0,
    public reward_snapshot: u64 = 0,
    public loss_snapshot: u64 = 0
  ) {
    super();
  }

  @primary
  get primary(): u64 {
    return this.id;
  }
}

@table("sconfig", singleton)
export class StabilityConfig extends Table {
  constructor(
    public admin: Name = EMPTY_NAME,
    public allowed_token: Name = EMPTY_NAME,
    public liquidation_contract: Name = EMPTY_NAME
  ) {
    super();
  }
}

@contract
class StabilityContract extends Contract {
  pools: TableStore<StabilityPool> = new TableStore<StabilityPool>(this.receiver);
  deposits: TableStore<StabilityDeposit> = new TableStore<StabilityDeposit>(this.receiver);
  configSingleton: Singleton<StabilityConfig> = new Singleton<StabilityConfig>(this.receiver);

  @action("init")
  init(admin: Name, allowed_token: Name, liquidation_contract: Name): void {
    requireAuth(admin);
    check(this.configSingleton.get().admin.N == 0, "liquity-x: stability already init");
    this.configSingleton.set(
      new StabilityConfig(admin, allowed_token, liquidation_contract),
      this.receiver
    );
  }

  @action("initpool")
  initPool(market: u64): void {
    requireAuth(this.configSingleton.get().admin);
    check(!this.pools.exists(market), "liquity-x: pool exists");
    this.pools.store(
      new StabilityPool(market, 0, INDEX_SCALE, INDEX_SCALE, currentTimeSec()),
      this.receiver
    );
  }

  /** memo: sp:<market_id> */
  @action("transfer", notify)
  onTransfer(from: Name, to: Name, quantity: Asset, memo: string): void {
    if (to != this.receiver || from == this.receiver) return;

    const cfg = this.configSingleton.get();
    check(this.firstReceiver == cfg.allowed_token, "liquity-x: bad token");
    check(memo.startsWith("sp:"), "liquity-x: memo");
    check(quantity.amount > 0, "liquity-x: amount");

    const market = parseU64(memo.substring(3));
    const pool = this.pools.requireGet(market, "liquity-x: stab pool");
    pool.total_deposit += quantity.amount;
    pool.last_update = currentTimeSec();
    this.pools.update(pool, this.receiver);

    this.deposits.store(
      new StabilityDeposit(
        nextId(this.deposits.availablePrimaryKey),
        from,
        market,
        quantity.amount,
        pool.reward_index,
        pool.loss_index
      ),
      this.receiver
    );
  }

  /** Liquidation engine only — amounts are queue snapshots. */
  @action("absorb")
  absorb(market: u64, debt_paid: u64, coll_gain: u64): void {
    requireAuth(this.configSingleton.get().liquidation_contract);
    const pool = this.pools.requireGet(market, "liquity-x: stab pool");
    check(pool.total_deposit > 0, "liquity-x: empty sp");

    if (debt_paid > 0) {
      pool.total_deposit =
        pool.total_deposit > debt_paid ? pool.total_deposit - debt_paid : 0;
    }
    if (coll_gain > 0) {
      pool.reward_index += 1; // P6: precise index math
    }
    pool.last_update = currentTimeSec();
    this.pools.update(pool, this.receiver);
  }
}
