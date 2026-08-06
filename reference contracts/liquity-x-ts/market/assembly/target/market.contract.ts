import * as _chain from "as-chain";
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



export class MarketDB extends _chain.MultiIndex<Market> {

}

@table("markets", nocodegen)

export class Market implements _chain.MultiIndexValue {
    
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
    
  }

  @primary
  get primary(): u64 {
    return this.market_id;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.market_id);
        enc.pack(this.symbol);
        enc.pack(this.collateral_contract);
        enc.pack(this.oracle);
        enc.packNumber<u64>(this.mcr);
        enc.packNumber<u64>(this.ccr);
        enc.packNumber<u64>(this.mint_cap);
        enc.packNumber<u8>(this.interest_model);
        enc.packNumber<boolean>(this.paused);
        enc.packNumber<u64>(this.liquidation_bonus);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.market_id = dec.unpackNumber<u64>();
        
        {
            let obj = new Symbol();
            dec.unpack(obj);
            this.symbol = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.collateral_contract = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.oracle = obj;
        }
        this.mcr = dec.unpackNumber<u64>();
        this.ccr = dec.unpackNumber<u64>();
        this.mint_cap = dec.unpackNumber<u64>();
        this.interest_model = dec.unpackNumber<u8>();
        this.paused = dec.unpackNumber<boolean>();
        this.liquidation_bonus = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += this.symbol.getSize();
        size += this.collateral_contract.getSize();
        size += this.oracle.getSize();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u8>();
        size += sizeof<boolean>();
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x91AF056700000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return Market.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return Market.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): MarketDB {
        return new MarketDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}



export class MarketConfigDB extends _chain.MultiIndex<MarketConfig> {

}

@table("mconfig", singleton, nocodegen)

export class MarketConfig implements _chain.MultiIndexValue {
    
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
        return _chain.Name.fromU64(0x922935B980000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return MarketConfig.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return MarketConfig.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return _chain.Name.fromU64(0x922935B980000000).N;
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name = _chain.EMPTY_NAME): _chain.Singleton<MarketConfig> {
        return new _chain.Singleton<MarketConfig>(code, scope, this.tableName);
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

class createMarketAction implements _chain.Packer {
    constructor (
        public symbol: _chain.Symbol | null = null,
        public collateral_contract: _chain.Name | null = null,
        public oracle: _chain.Name | null = null,
        public mcr: u64 = 0,
        public ccr: u64 = 0,
        public mint_cap: u64 = 0,
        public interest_model: u8 = 0,
        public liquidation_bonus: u64 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.symbol!);
        enc.pack(this.collateral_contract!);
        enc.pack(this.oracle!);
        enc.packNumber<u64>(this.mcr);
        enc.packNumber<u64>(this.ccr);
        enc.packNumber<u64>(this.mint_cap);
        enc.packNumber<u8>(this.interest_model);
        enc.packNumber<u64>(this.liquidation_bonus);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Symbol();
            dec.unpack(obj);
            this.symbol! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.collateral_contract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.oracle! = obj;
        }
        this.mcr = dec.unpackNumber<u64>();
        this.ccr = dec.unpackNumber<u64>();
        this.mint_cap = dec.unpackNumber<u64>();
        this.interest_model = dec.unpackNumber<u8>();
        this.liquidation_bonus = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.symbol!.getSize();
        size += this.collateral_contract!.getSize();
        size += this.oracle!.getSize();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u8>();
        size += sizeof<u64>();
        return size;
    }
}

class setPausedAction implements _chain.Packer {
    constructor (
        public market_id: u64 = 0,
        public paused: boolean = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.market_id);
        enc.packNumber<boolean>(this.paused);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.market_id = dec.unpackNumber<u64>();
        this.paused = dec.unpackNumber<boolean>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<boolean>();
        return size;
    }
}

class setCapAction implements _chain.Packer {
    constructor (
        public market_id: u64 = 0,
        public mint_cap: u64 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.market_id);
        enc.packNumber<u64>(this.mint_cap);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.market_id = dec.unpackNumber<u64>();
        this.mint_cap = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<u64>();
        return size;
    }
}

export function apply(receiver: u64, firstReceiver: u64, action: u64): void {
	const _receiver = new _chain.Name(receiver);
	const _firstReceiver = new _chain.Name(firstReceiver);
	const _action = new _chain.Name(action);

	const mycontract = new MarketContract(_receiver, _firstReceiver, _action);
	const actionData = _chain.readActionData();

	if (receiver == firstReceiver) {
		if (action == 0x74DD900000000000) {//init
            const args = new initAction();
            args.unpack(actionData);
            mycontract.init(args.admin!);
        }
		if (action == 0x45D46CAA50C80000) {//createmkt
            const args = new createMarketAction();
            args.unpack(actionData);
            mycontract.createMarket(args.symbol!,args.collateral_contract!,args.oracle!,args.mcr,args.ccr,args.mint_cap,args.interest_model,args.liquidation_bonus);
        }
		if (action == 0xC2B3536B0A480000) {//setpaused
            const args = new setPausedAction();
            args.unpack(actionData);
            mycontract.setPaused(args.market_id,args.paused);
        }
		if (action == 0xC2B2835400000000) {//setcap
            const args = new setCapAction();
            args.unpack(actionData);
            mycontract.setCap(args.market_id,args.mint_cap);
        }
	}
  
	if (receiver != firstReceiver) {
		
	}
	return;
}
