/**
 * liquidation.xpr — freeze → queue snapshots → SP absorb.
 *
 * Never settle from live position/token balances mid-flow.
 * Research: research/vaults-sx-breach.md §6.5; security-checklist.md
 */
import {
  Contract,
  Name,
  Table,
  TableStore,
  Singleton,
  check,
  requireAuth,
  EMPTY_NAME,
} from "proton-tsc";
import { LIQ_QUEUED, LIQ_ABSORBING, LIQ_DONE, nextId } from "../../shared/constants";
import { sendAbsorb } from "../../shared/inline";

@table("liqqueue")
export class LiquidationQueue extends Table {
  constructor(
    public id: u64 = 0,
    public position_id: u64 = 0,
    public market: u64 = 0,
    public snap_debt: u64 = 0,
    public snap_collateral: u64 = 0,
    public status: u8 = 0
  ) {
    super();
  }

  @primary
  get primary(): u64 {
    return this.id;
  }
}

@table("lconfig", singleton)
export class LiqConfig extends Table {
  constructor(
    public admin: Name = EMPTY_NAME,
    public position_contract: Name = EMPTY_NAME,
    public stability_contract: Name = EMPTY_NAME,
    public debt_contract: Name = EMPTY_NAME
  ) {
    super();
  }
}

@contract
class LiquidationContract extends Contract {
  queue: TableStore<LiquidationQueue> = new TableStore<LiquidationQueue>(this.receiver);
  configSingleton: Singleton<LiqConfig> = new Singleton<LiqConfig>(this.receiver);

  @action("init")
  init(
    admin: Name,
    position_contract: Name,
    stability_contract: Name,
    debt_contract: Name
  ): void {
    requireAuth(admin);
    check(this.configSingleton.get().admin.N == 0, "liquity-x: liq already init");
    this.configSingleton.set(
      new LiqConfig(admin, position_contract, stability_contract, debt_contract),
      this.receiver
    );
  }

  /** Caller supplies snapshots from a prior risk check in the same tx flow. */
  @action("enqueue")
  enqueue(
    caller: Name,
    position_id: u64,
    market: u64,
    snap_debt: u64,
    snap_collateral: u64
  ): void {
    requireAuth(caller);
    check(snap_debt > 0 && snap_collateral > 0, "liquity-x: snaps");

    this.queue.store(
      new LiquidationQueue(
        nextId(this.queue.availablePrimaryKey),
        position_id,
        market,
        snap_debt,
        snap_collateral,
        LIQ_QUEUED
      ),
      this.receiver
    );
  }

  @action("absorb")
  absorb(queue_id: u64): void {
    const item = this.queue.requireGet(queue_id, "liquity-x: queue");
    check(item.status == LIQ_QUEUED, "liquity-x: not queued");

    item.status = LIQ_ABSORBING;
    this.queue.update(item, this.receiver);

    sendAbsorb(
      this.configSingleton.get().stability_contract,
      this.receiver,
      item.market,
      item.snap_debt,
      item.snap_collateral
    );

    item.status = LIQ_DONE;
    this.queue.update(item, this.receiver);
  }
}
