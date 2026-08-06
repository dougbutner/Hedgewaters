/**
 * oracle.xpr — price feed only.
 *
 * Writes: oracles table.
 * Forbidden: interest, mint, liquidation, balance sync.
 * Research: research/liquity-v2-mapping.md (PriceFeed → oracle)
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
  EMPTY_NAME,
} from "proton-tsc";

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

@table("oconfig", singleton)
export class OracleConfig extends Table {
  constructor(public admin: Name = EMPTY_NAME) {
    super();
  }
}

@contract
class OracleContract extends Contract {
  prices: TableStore<OraclePrice> = new TableStore<OraclePrice>(this.receiver);
  configSingleton: Singleton<OracleConfig> = new Singleton<OracleConfig>(this.receiver);

  @action("init")
  init(admin: Name): void {
    requireAuth(admin);
    check(this.configSingleton.get().admin.N == 0, "liquity-x: oracle already init");
    this.configSingleton.set(new OracleConfig(admin), this.receiver);
  }

  /** Push price; Risk Engine validates freshness later (once per action). */
  @action("setprice")
  setPrice(market: u64, price: u64, confidence: u64, twap: u64): void {
    requireAuth(this.configSingleton.get().admin);
    check(market > 0 && price > 0, "liquity-x: price args");

    const ts = currentTimeSec();
    const row = this.prices.get(market);
    if (row) {
      row.price = price;
      row.timestamp = ts;
      row.confidence = confidence;
      row.twap = twap;
      this.prices.update(row, this.receiver);
    } else {
      this.prices.store(new OraclePrice(market, price, ts, confidence, twap), this.receiver);
    }
  }
}
