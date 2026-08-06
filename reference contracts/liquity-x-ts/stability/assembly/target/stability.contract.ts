import * as _chain from "as-chain";
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



export class StabilityPoolDB extends _chain.MultiIndex<StabilityPool> {

}

@table("stabpool", nocodegen)

export class StabilityPool implements _chain.MultiIndexValue {
    
  constructor(
    public market: u64 = 0,
    public total_deposit: u64 = 0,
    public reward_index: u64 = 0,
    public loss_index: u64 = 0,
    public last_update: u64 = 0
  ) {
    
  }

  @primary
  get primary(): u64 {
    return this.market;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.market);
        enc.packNumber<u64>(this.total_deposit);
        enc.packNumber<u64>(this.reward_index);
        enc.packNumber<u64>(this.loss_index);
        enc.packNumber<u64>(this.last_update);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.market = dec.unpackNumber<u64>();
        this.total_deposit = dec.unpackNumber<u64>();
        this.reward_index = dec.unpackNumber<u64>();
        this.loss_index = dec.unpackNumber<u64>();
        this.last_update = dec.unpackNumber<u64>();
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
        return _chain.Name.fromU64(0xC64C7AD291000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return StabilityPool.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return StabilityPool.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): StabilityPoolDB {
        return new StabilityPoolDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}



export class StabilityDepositDB extends _chain.MultiIndex<StabilityDeposit> {

}

@table("spdeposit", nocodegen)

export class StabilityDeposit implements _chain.MultiIndexValue {
    
  constructor(
    public id: u64 = 0,
    public owner: Name = EMPTY_NAME,
    public market: u64 = 0,
    public deposit: u64 = 0,
    public reward_snapshot: u64 = 0,
    public loss_snapshot: u64 = 0
  ) {
    
  }

  @primary
  get primary(): u64 {
    return this.id;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.id);
        enc.pack(this.owner);
        enc.packNumber<u64>(this.market);
        enc.packNumber<u64>(this.deposit);
        enc.packNumber<u64>(this.reward_snapshot);
        enc.packNumber<u64>(this.loss_snapshot);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.id = dec.unpackNumber<u64>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.owner = obj;
        }
        this.market = dec.unpackNumber<u64>();
        this.deposit = dec.unpackNumber<u64>();
        this.reward_snapshot = dec.unpackNumber<u64>();
        this.loss_snapshot = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += this.owner.getSize();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xC552AAD30EC80000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return StabilityDeposit.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return StabilityDeposit.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): StabilityDepositDB {
        return new StabilityDepositDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}



export class StabilityConfigDB extends _chain.MultiIndex<StabilityConfig> {

}

@table("sconfig", singleton, nocodegen)

export class StabilityConfig implements _chain.MultiIndexValue {
    
  constructor(
    public admin: Name = EMPTY_NAME,
    public allowed_token: Name = EMPTY_NAME,
    public liquidation_contract: Name = EMPTY_NAME
  ) {
    
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.admin);
        enc.pack(this.allowed_token);
        enc.pack(this.liquidation_contract);
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
            this.allowed_token = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.liquidation_contract = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.admin.getSize();
        size += this.allowed_token.getSize();
        size += this.liquidation_contract.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xC22935B980000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return StabilityConfig.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return StabilityConfig.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return _chain.Name.fromU64(0xC22935B980000000).N;
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name = _chain.EMPTY_NAME): _chain.Singleton<StabilityConfig> {
        return new _chain.Singleton<StabilityConfig>(code, scope, this.tableName);
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


class initAction implements _chain.Packer {
    constructor (
        public admin: _chain.Name | null = null,
        public allowed_token: _chain.Name | null = null,
        public liquidation_contract: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.admin!);
        enc.pack(this.allowed_token!);
        enc.pack(this.liquidation_contract!);
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
            this.allowed_token! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.liquidation_contract! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.admin!.getSize();
        size += this.allowed_token!.getSize();
        size += this.liquidation_contract!.getSize();
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

class onTransferAction implements _chain.Packer {
    constructor (
        public from: _chain.Name | null = null,
        public to: _chain.Name | null = null,
        public quantity: _chain.Asset | null = null,
        public memo: string = "",
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.from!);
        enc.pack(this.to!);
        enc.pack(this.quantity!);
        enc.packString(this.memo);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.from! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.to! = obj;
        }
        
        {
            let obj = new _chain.Asset();
            dec.unpack(obj);
            this.quantity! = obj;
        }
        this.memo = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.from!.getSize();
        size += this.to!.getSize();
        size += this.quantity!.getSize();
        size += _chain.Utils.calcPackedStringLength(this.memo);
        return size;
    }
}

class absorbAction implements _chain.Packer {
    constructor (
        public market: u64 = 0,
        public debt_paid: u64 = 0,
        public coll_gain: u64 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.market);
        enc.packNumber<u64>(this.debt_paid);
        enc.packNumber<u64>(this.coll_gain);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.market = dec.unpackNumber<u64>();
        this.debt_paid = dec.unpackNumber<u64>();
        this.coll_gain = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
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

	const mycontract = new StabilityContract(_receiver, _firstReceiver, _action);
	const actionData = _chain.readActionData();

	if (receiver == firstReceiver) {
		if (action == 0x74DD900000000000) {//init
            const args = new initAction();
            args.unpack(actionData);
            mycontract.init(args.admin!,args.allowed_token!,args.liquidation_contract!);
        }
		if (action == 0x74DD9AD291000000) {//initpool
            const args = new initPoolAction();
            args.unpack(actionData);
            mycontract.initPool(args.market);
        }
		
		if (action == 0x31F14B9C00000000) {//absorb
            const args = new absorbAction();
            args.unpack(actionData);
            mycontract.absorb(args.market,args.debt_paid,args.coll_gain);
        }
	}
  
	if (receiver != firstReceiver) {
		if (action == 0xCDCD3C2D57000000) {//transfer
            const args = new onTransferAction();
            args.unpack(actionData);
            mycontract.onTransfer(args.from!,args.to!,args.quantity!,args.memo);
        }
	}
	return;
}
