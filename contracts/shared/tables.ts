/**
 * Canonical Liquity-X table schemas (reference).
 * Owning contracts define live @table classes — keep field order in sync.
 * Secondary indexes deferred until proton-tsc idx API is wired (P6/P7).
 */
import { Table, Name, Symbol, EMPTY_NAME } from "proton-tsc";

@table("markets")
export class Market extends Table {
  constructor(
    public market_id: u64 = 0,
    public symbol: Symbol = new Symbol(),
    public collateral_contract: Name = EMPTY_NAME,
    public oracle: Name = EMPTY_NAME,
    public mcr: u64 = 0,
    public ccr: u64 = 0,
    public mint_cap: u64 = 0,
    public interest_model: u8 = 0,
    public paused: boolean = false,
    public liquidation_bonus: u64 = 0
  ) {
    super();
  }

  @primary
  get primary(): u64 {
    return this.market_id;
  }
}

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

@table("oracles")
export class OraclePrice extends Table {
  constructor(
    public market: u64 = 0,
    public price: u64 = 0,
    public timestamp: u64 = 0,
    public confidence: u64 = 0,
    public twap: u64 = 0
  ) {
    super();
  }

  @primary
  get primary(): u64 {
    return this.market;
  }
}

@table("redbucket")
export class RedemptionBucket extends Table {
  constructor(
    public id: u64 = 0,
    public market: u64 = 0,
    public rate_bps: u16 = 0,
    public position_id: u64 = 0,
    public seq: u64 = 0
  ) {
    super();
  }

  @primary
  get primary(): u64 {
    return this.id;
  }
}

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

@table("gconfig", singleton)
export class GovConfig extends Table {
  constructor(
    public admin: Name = EMPTY_NAME,
    public paused: boolean = false,
    public oracle_contract: Name = EMPTY_NAME,
    public market_contract: Name = EMPTY_NAME,
    public position_contract: Name = EMPTY_NAME,
    public debt_contract: Name = EMPTY_NAME,
    public stability_contract: Name = EMPTY_NAME,
    public liquidation_contract: Name = EMPTY_NAME,
    public token_contract: Name = EMPTY_NAME
  ) {
    super();
  }
}
