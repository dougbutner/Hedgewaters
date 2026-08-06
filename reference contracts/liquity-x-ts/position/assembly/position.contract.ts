/**
 * position.xpr — borrower positions + collateral_pool.
 *
 * Vaults.sx lesson (research/vaults-sx-breach.md):
 *  - Deposit notify: credit known quantity only — never get_balance overwrite
 *  - Withdraw: write tables BEFORE outbound transfer (state-before-transfer)
 *  - No update() / reconcile action
 *
 * Notify may NOT: oracle, interest, mint, liquidate, redeem.
 */
import {
  Contract,
  Name,
  Asset,
  Table,
  TableStore,
  Singleton,
  check,
  requireAuth,
  currentTimeSec,
  EMPTY_NAME,
} from "proton-tsc";
import { POS_ACTIVE, POS_CLOSED, isRateBucket, nextId } from "../../shared/constants";
import { parseU64 } from "../../shared/parse";
import { sendTransfer } from "../../shared/inline";

@table("positions")
export class Position extends Table {
  constructor(
    public position_id: u64 = 0,
    public owner: Name = EMPTY_NAME,
    public market: u64 = 0,
    public collateral: u64 = 0,
    public debt: u64 = 0,
    public interest_index: u64 = 0,
    public chosen_rate: u16 = 0,
    public status: u8 = 0,
    public last_update: u64 = 0,
    public bucket_seq: u64 = 0
  ) {
    super();
  }

  @primary
  get primary(): u64 {
    return this.position_id;
  }
}

@table("collpool")
export class CollateralPool extends Table {
  constructor(
    public market: u64 = 0,
    public total_collateral: u64 = 0,
    public reserved_collateral: u64 = 0,
    public liquidating_collateral: u64 = 0,
    public fees_collected: u64 = 0
  ) {
    super();
  }

  @primary
  get primary(): u64 {
    return this.market;
  }
}

@table("pconfig", singleton)
export class PositionConfig extends Table {
  constructor(
    public admin: Name = EMPTY_NAME,
    public market_contract: Name = EMPTY_NAME,
    public debt_contract: Name = EMPTY_NAME,
    public allowed_token: Name = EMPTY_NAME
  ) {
    super();
  }
}

@contract
class PositionContract extends Contract {
  positions: TableStore<Position> = new TableStore<Position>(this.receiver);
  collPool: TableStore<CollateralPool> = new TableStore<CollateralPool>(this.receiver);
  configSingleton: Singleton<PositionConfig> = new Singleton<PositionConfig>(this.receiver);

  @action("init")
  init(admin: Name, market_contract: Name, debt_contract: Name, allowed_token: Name): void {
    requireAuth(admin);
    check(this.configSingleton.get().admin.N == 0, "liquity-x: position already init");
    this.configSingleton.set(
      new PositionConfig(admin, market_contract, debt_contract, allowed_token),
      this.receiver
    );
  }

  @action("openpos")
  openPosition(owner: Name, market: u64, chosen_rate: u16): void {
    requireAuth(owner);
    check(isRateBucket(chosen_rate), "liquity-x: rate bucket");
    check(market > 0, "liquity-x: market");

    const positionId = nextId(this.positions.availablePrimaryKey);
    this.positions.store(
      new Position(
        positionId,
        owner,
        market,
        0,
        0,
        0,
        chosen_rate,
        POS_ACTIVE,
        currentTimeSec(),
        0
      ),
      this.receiver
    );
  }

  /**
   * Deposit accept only.
   * memo: deposit:<position_id>
   */
  @action("transfer", notify)
  onTransfer(from: Name, to: Name, quantity: Asset, memo: string): void {
    if (to != this.receiver || from == this.receiver) return;

    const cfg = this.configSingleton.get();
    check(this.firstReceiver == cfg.allowed_token, "liquity-x: bad token");
    check(quantity.amount > 0, "liquity-x: amount");
    check(memo.startsWith("deposit:"), "liquity-x: memo");

    const pos = this.positions.requireGet(parseU64(memo.substring(8)), "liquity-x: position");
    check(pos.owner == from && pos.status == POS_ACTIVE, "liquity-x: owner/status");

    // Explicit credit — NEVER row.collateral = get_balance(...)
    pos.collateral += quantity.amount;
    pos.last_update = currentTimeSec();
    this.positions.update(pos, this.receiver);

    let pool = this.collPool.get(pos.market);
    if (!pool) {
      this.collPool.store(
        new CollateralPool(pos.market, quantity.amount, 0, 0, 0),
        this.receiver
      );
    } else {
      pool.total_collateral += quantity.amount;
      this.collPool.update(pool, this.receiver);
    }
  }

  /** State BEFORE transfer. P4 will replace debt==0 gate with health(). */
  @action("withdraw")
  withdraw(owner: Name, position_id: u64, amount: u64, token: Name, quantity: Asset): void {
    requireAuth(owner);
    check(amount > 0 && quantity.amount == amount, "liquity-x: amount");

    const pos = this.positions.requireGet(position_id, "liquity-x: position");
    check(pos.owner == owner && pos.status == POS_ACTIVE, "liquity-x: owner/status");
    check(pos.collateral >= amount, "liquity-x: collateral");
    check(pos.debt == 0, "liquity-x: repay debt first");

    pos.collateral -= amount;
    pos.last_update = currentTimeSec();
    this.positions.update(pos, this.receiver);

    const pool = this.collPool.requireGet(pos.market, "liquity-x: coll pool");
    check(pool.total_collateral >= amount, "liquity-x: pool");
    pool.total_collateral -= amount;
    this.collPool.update(pool, this.receiver);

    sendTransfer(token, this.receiver, owner, quantity, "liquity-x withdraw");
  }

  @action("closepos")
  closePosition(owner: Name, position_id: u64): void {
    requireAuth(owner);
    const pos = this.positions.requireGet(position_id, "liquity-x: position");
    check(pos.owner == owner, "liquity-x: not owner");
    check(pos.collateral == 0 && pos.debt == 0, "liquity-x: not empty");
    pos.status = POS_CLOSED;
    pos.last_update = currentTimeSec();
    this.positions.update(pos, this.receiver);
  }
}
