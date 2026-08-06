import * as _chain from "as-chain";
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



export class DebtPoolDB extends _chain.MultiIndex<DebtPool> {

}

@table("debtpool", nocodegen)

export class DebtPool implements _chain.MultiIndexValue {
    
  constructor(
    public market: u64 = 0,
    public total_debt: u64 = 0,
    public borrow_index: u64 = 0,
    public interest_accumulator: u64 = 0,
    public protocol_revenue: u64 = 0,
    public last_interest_update: u64 = 0
  ) {
    
  }

  @primary
  get primary(): u64 {
    return this.market;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.market);
        enc.packNumber<u64>(this.total_debt);
        enc.packNumber<u64>(this.borrow_index);
        enc.packNumber<u64>(this.interest_accumulator);
        enc.packNumber<u64>(this.protocol_revenue);
        enc.packNumber<u64>(this.last_interest_update);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.market = dec.unpackNumber<u64>();
        this.total_debt = dec.unpackNumber<u64>();
        this.borrow_index = dec.unpackNumber<u64>();
        this.interest_accumulator = dec.unpackNumber<u64>();
        this.protocol_revenue = dec.unpackNumber<u64>();
        this.last_interest_update = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x4A8F9AD291000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return DebtPool.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return DebtPool.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): DebtPoolDB {
        return new DebtPoolDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}



export class DebtConfigDB extends _chain.MultiIndex<DebtConfig> {

}

@table("dconfig", singleton, nocodegen)

export class DebtConfig implements _chain.MultiIndexValue {
    
  constructor(
    public admin: Name = EMPTY_NAME,
    public position_contract: Name = EMPTY_NAME,
    public token_contract: Name = EMPTY_NAME,
    public stable_symbol: Symbol = new Symbol()
  ) {
    
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.admin);
        enc.pack(this.position_contract);
        enc.pack(this.token_contract);
        enc.pack(this.stable_symbol);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.admin = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.position_contract = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.token_contract = obj;
        }
        
        {
            let obj = new Symbol();
            dec.unpack(obj);
            this.stable_symbol = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.admin.getSize();
        size += this.position_contract.getSize();
        size += this.token_contract.getSize();
        size += this.stable_symbol.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x4A2935B980000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return DebtConfig.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return DebtConfig.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return _chain.Name.fromU64(0x4A2935B980000000).N;
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name = _chain.EMPTY_NAME): _chain.Singleton<DebtConfig> {
        return new _chain.Singleton<DebtConfig>(code, scope, this.tableName);
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


class initAction implements _chain.Packer {
    constructor (
        public admin: _chain.Name | null = null,
        public position_contract: _chain.Name | null = null,
        public token_contract: _chain.Name | null = null,
        public stable_symbol: _chain.Symbol | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.admin!);
        enc.pack(this.position_contract!);
        enc.pack(this.token_contract!);
        enc.pack(this.stable_symbol!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.admin! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.position_contract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.token_contract! = obj;
        }
        
        {
            let obj = new _chain.Symbol();
            dec.unpack(obj);
            this.stable_symbol! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.admin!.getSize();
        size += this.position_contract!.getSize();
        size += this.token_contract!.getSize();
        size += this.stable_symbol!.getSize();
        return size;
    }
}

class initPoolAction implements _chain.Packer {
    constructor (
        public market: u64 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.market);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.market = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        return size;
    }
}

class borrowAction implements _chain.Packer {
    constructor (
        public borrower: _chain.Name | null = null,
        public market: u64 = 0,
        public stored_debt: u64 = 0,
        public position_index: u64 = 0,
        public chosen_rate: u64 = 0,
        public mint_amount: u64 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.borrower!);
        enc.packNumber<u64>(this.market);
        enc.packNumber<u64>(this.stored_debt);
        enc.packNumber<u64>(this.position_index);
        enc.packNumber<u64>(this.chosen_rate);
        enc.packNumber<u64>(this.mint_amount);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.borrower! = obj;
        }
        this.market = dec.unpackNumber<u64>();
        this.stored_debt = dec.unpackNumber<u64>();
        this.position_index = dec.unpackNumber<u64>();
        this.chosen_rate = dec.unpackNumber<u64>();
        this.mint_amount = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.borrower!.getSize();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        return size;
    }
}

class repayAction implements _chain.Packer {
    constructor (
        public borrower: _chain.Name | null = null,
        public market: u64 = 0,
        public burn_amount: u64 = 0,
        public chosen_rate: u64 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.borrower!);
        enc.packNumber<u64>(this.market);
        enc.packNumber<u64>(this.burn_amount);
        enc.packNumber<u64>(this.chosen_rate);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.borrower! = obj;
        }
        this.market = dec.unpackNumber<u64>();
        this.burn_amount = dec.unpackNumber<u64>();
        this.chosen_rate = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.borrower!.getSize();
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

	const mycontract = new DebtContract(_receiver, _firstReceiver, _action);
	const actionData = _chain.readActionData();

	if (receiver == firstReceiver) {
		if (action == 0x74DD900000000000) {//init
            const args = new initAction();
            args.unpack(actionData);
            mycontract.init(args.admin!,args.position_contract!,args.token_contract!,args.stable_symbol!);
        }
		if (action == 0x74DD9AD291000000) {//initpool
            const args = new initPoolAction();
            args.unpack(actionData);
            mycontract.initPool(args.market);
        }
		if (action == 0x3D2F7A7000000000) {//borrow
            const args = new borrowAction();
            args.unpack(actionData);
            mycontract.borrow(args.borrower!,args.market,args.stored_debt,args.position_index,args.chosen_rate,args.mint_amount);
        }
		if (action == 0xBAAA6F0000000000) {//repay
            const args = new repayAction();
            args.unpack(actionData);
            mycontract.repay(args.borrower!,args.market,args.burn_amount,args.chosen_rate);
        }
	}
  
	if (receiver != firstReceiver) {
		
	}
	return;
}
