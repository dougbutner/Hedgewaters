/**
 * market.xpr — collateral market params.
 *
 * Writes: markets. No token custody. No balance reads.
 * Research: research/liquity-v2-mapping.md (CollateralRegistry → market)
 */
import {
  Contract,
  Name,
  Symbol,
  Table,
  TableStore,
  Singleton,
  check,
  requireAuth,
  EMPTY_NAME,
} from "proton-tsc";
import { nextId } from "../../shared/constants";

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

@table("mconfig", singleton)
export class MarketConfig extends Table {
  constructor(public admin: Name = EMPTY_NAME) {
    super();
  }
}

@contract
class MarketContract extends Contract {
  markets: TableStore<Market> = new TableStore<Market>(this.receiver);
  configSingleton: Singleton<MarketConfig> = new Singleton<MarketConfig>(this.receiver);

  @action("init")
  init(admin: Name): void {
    requireAuth(admin);
    check(this.configSingleton.get().admin.N == 0, "liquity-x: market already init");
    this.configSingleton.set(new MarketConfig(admin), this.receiver);
  }

  @action("createmkt")
  createMarket(
    symbol: Symbol,
    collateral_contract: Name,
    oracle: Name,
    mcr: u64,
    ccr: u64,
    mint_cap: u64,
    interest_model: u8,
    liquidation_bonus: u64
  ): void {
    requireAuth(this.configSingleton.get().admin);
    check(mcr > 0 && ccr >= mcr, "liquity-x: bad ratios");
    check(collateral_contract.N != 0 && oracle.N != 0, "liquity-x: accounts");

    const marketId = nextId(this.markets.availablePrimaryKey);
    this.markets.store(
      new Market(
        marketId,
        symbol,
        collateral_contract,
        oracle,
        mcr,
        ccr,
        mint_cap,
        interest_model,
        false,
        liquidation_bonus
      ),
      this.receiver
    );
  }

  @action("setpaused")
  setPaused(market_id: u64, paused: boolean): void {
    requireAuth(this.configSingleton.get().admin);
    const m = this.markets.requireGet(market_id, "liquity-x: market");
    m.paused = paused;
    this.markets.update(m, this.receiver);
  }

  @action("setcap")
  setCap(market_id: u64, mint_cap: u64): void {
    requireAuth(this.configSingleton.get().admin);
    const m = this.markets.requireGet(market_id, "liquity-x: market");
    m.mint_cap = mint_cap;
    this.markets.update(m, this.receiver);
  }
}
