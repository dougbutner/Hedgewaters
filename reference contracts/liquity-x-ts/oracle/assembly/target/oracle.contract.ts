import * as _chain from "as-chain";
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



export class OraclePriceDB extends _chain.MultiIndex<OraclePrice> {

}

@table("oracles", nocodegen)

export class OraclePrice implements _chain.MultiIndexValue {
    
  constructor(
    public market: u64 = 0,
    public price: u64 = 0,
    public timestamp: u64 = 0,
    public confidence: u64 = 0,
    public twap: u64 = 0
  ) {
    
  }

  @primary
  get primary(): u64 {
    return this.market;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.market);
        enc.packNumber<u64>(this.price);
        enc.packNumber<u64>(this.timestamp);
        enc.packNumber<u64>(this.confidence);
        enc.packNumber<u64>(this.twap);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.market = dec.unpackNumber<u64>();
        this.price = dec.unpackNumber<u64>();
        this.timestamp = dec.unpackNumber<u64>();
        this.confidence = dec.unpackNumber<u64>();
        this.twap = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xA5CC88AB00000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return OraclePrice.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return OraclePrice.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.primary
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): OraclePriceDB {
        return new OraclePriceDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}



export class OracleConfigDB extends _chain.MultiIndex<OracleConfig> {

}

@table("oconfig", singleton, nocodegen)

export class OracleConfig implements _chain.MultiIndexValue {
    
  constructor(public admin: Name = EMPTY_NAME) {
    
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.admin);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.admin = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.admin.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xA22935B980000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return OracleConfig.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return OracleConfig.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return _chain.Name.fromU64(0xA22935B980000000).N;
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name = _chain.EMPTY_NAME): _chain.Singleton<OracleConfig> {
        return new _chain.Singleton<OracleConfig>(code, scope, this.tableName);
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


class initAction implements _chain.Packer {
    constructor (
        public admin: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.admin!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.admin! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.admin!.getSize();
        return size;
    }
}

class setPriceAction implements _chain.Packer {
    constructor (
        public market: u64 = 0,
        public price: u64 = 0,
        public confidence: u64 = 0,
        public twap: u64 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.market);
        enc.packNumber<u64>(this.price);
        enc.packNumber<u64>(this.confidence);
        enc.packNumber<u64>(this.twap);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.market = dec.unpackNumber<u64>();
        this.price = dec.unpackNumber<u64>();
        this.confidence = dec.unpackNumber<u64>();
        this.twap = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        return size;
    }
}

export function apply(receiver: u64, firstReceiver: u64, action: u64): void {
	const _receiver = new _chain.Name(receiver);
	const _firstReceiver = new _chain.Name(firstReceiver);
	const _action = new _chain.Name(action);

	const mycontract = new OracleContract(_receiver, _firstReceiver, _action);
	const actionData = _chain.readActionData();

	if (receiver == firstReceiver) {
		if (action == 0x74DD900000000000) {//init
            const args = new initAction();
            args.unpack(actionData);
            mycontract.init(args.admin!);
        }
		if (action == 0xC2B35BB90A000000) {//setprice
            const args = new setPriceAction();
            args.unpack(actionData);
            mycontract.setPrice(args.market,args.price,args.confidence,args.twap);
        }
	}
  
	if (receiver != firstReceiver) {
		
	}
	return;
}
