import * as _chain from "as-chain";
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



export class PositionDB extends _chain.MultiIndex<Position> {

}

@table("positions", nocodegen)

export class Position implements _chain.MultiIndexValue {
    
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
    
  }

  @primary
  get primary(): u64 {
    return this.position_id;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.position_id);
        enc.pack(this.owner);
        enc.packNumber<u64>(this.market);
        enc.packNumber<u64>(this.collateral);
        enc.packNumber<u64>(this.debt);
        enc.packNumber<u64>(this.interest_index);
        enc.packNumber<u16>(this.chosen_rate);
        enc.packNumber<u8>(this.status);
        enc.packNumber<u64>(this.last_update);
        enc.packNumber<u64>(this.bucket_seq);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.position_id = dec.unpackNumber<u64>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.owner = obj;
        }
        this.market = dec.unpackNumber<u64>();
        this.collateral = dec.unpackNumber<u64>();
        this.debt = dec.unpackNumber<u64>();
        this.interest_index = dec.unpackNumber<u64>();
        this.chosen_rate = dec.unpackNumber<u16>();
        this.status = dec.unpackNumber<u8>();
        this.last_update = dec.unpackNumber<u64>();
        this.bucket_seq = dec.unpackNumber<u64>();
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
        size += sizeof<u16>();
        size += sizeof<u8>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xAD30ECBA93C00000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return Position.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return Position.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): PositionDB {
        return new PositionDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}



export class CollateralPoolDB extends _chain.MultiIndex<CollateralPool> {

}

@table("collpool", nocodegen)

export class CollateralPool implements _chain.MultiIndexValue {
    
  constructor(
    public market: u64 = 0,
    public total_collateral: u64 = 0,
    public reserved_collateral: u64 = 0,
    public liquidating_collateral: u64 = 0,
    public fees_collected: u64 = 0
  ) {
    
  }

  @primary
  get primary(): u64 {
    return this.market;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.market);
        enc.packNumber<u64>(this.total_collateral);
        enc.packNumber<u64>(this.reserved_collateral);
        enc.packNumber<u64>(this.liquidating_collateral);
        enc.packNumber<u64>(this.fees_collected);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.market = dec.unpackNumber<u64>();
        this.total_collateral = dec.unpackNumber<u64>();
        this.reserved_collateral = dec.unpackNumber<u64>();
        this.liquidating_collateral = dec.unpackNumber<u64>();
        this.fees_collected = dec.unpackNumber<u64>();
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
        return _chain.Name.fromU64(0x45231AD291000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return CollateralPool.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return CollateralPool.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): CollateralPoolDB {
        return new CollateralPoolDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}



export class PositionConfigDB extends _chain.MultiIndex<PositionConfig> {

}

@table("pconfig", singleton, nocodegen)

export class PositionConfig implements _chain.MultiIndexValue {
    
  constructor(
    public admin: Name = EMPTY_NAME,
    public market_contract: Name = EMPTY_NAME,
    public debt_contract: Name = EMPTY_NAME,
    public allowed_token: Name = EMPTY_NAME
  ) {
    
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.admin);
        enc.pack(this.market_contract);
        enc.pack(this.debt_contract);
        enc.pack(this.allowed_token);
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
            this.market_contract = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.debt_contract = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.allowed_token = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.admin.getSize();
        size += this.market_contract.getSize();
        size += this.debt_contract.getSize();
        size += this.allowed_token.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xAA2935B980000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return PositionConfig.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return PositionConfig.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return _chain.Name.fromU64(0xAA2935B980000000).N;
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name = _chain.EMPTY_NAME): _chain.Singleton<PositionConfig> {
        return new _chain.Singleton<PositionConfig>(code, scope, this.tableName);
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


class initAction implements _chain.Packer {
    constructor (
        public admin: _chain.Name | null = null,
        public market_contract: _chain.Name | null = null,
        public debt_contract: _chain.Name | null = null,
        public allowed_token: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.admin!);
        enc.pack(this.market_contract!);
        enc.pack(this.debt_contract!);
        enc.pack(this.allowed_token!);
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
            this.market_contract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.debt_contract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.allowed_token! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.admin!.getSize();
        size += this.market_contract!.getSize();
        size += this.debt_contract!.getSize();
        size += this.allowed_token!.getSize();
        return size;
    }
}

class openPositionAction implements _chain.Packer {
    constructor (
        public owner: _chain.Name | null = null,
        public market: u64 = 0,
        public chosen_rate: u16 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.owner!);
        enc.packNumber<u64>(this.market);
        enc.packNumber<u16>(this.chosen_rate);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.owner! = obj;
        }
        this.market = dec.unpackNumber<u64>();
        this.chosen_rate = dec.unpackNumber<u16>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.owner!.getSize();
        size += sizeof<u64>();
        size += sizeof<u16>();
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

class withdrawAction implements _chain.Packer {
    constructor (
        public owner: _chain.Name | null = null,
        public position_id: u64 = 0,
        public amount: u64 = 0,
        public token: _chain.Name | null = null,
        public quantity: _chain.Asset | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.owner!);
        enc.packNumber<u64>(this.position_id);
        enc.packNumber<u64>(this.amount);
        enc.pack(this.token!);
        enc.pack(this.quantity!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.owner! = obj;
        }
        this.position_id = dec.unpackNumber<u64>();
        this.amount = dec.unpackNumber<u64>();
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.token! = obj;
        }
        
        {
            let obj = new _chain.Asset();
            dec.unpack(obj);
            this.quantity! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.owner!.getSize();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += this.token!.getSize();
        size += this.quantity!.getSize();
        return size;
    }
}

class closePositionAction implements _chain.Packer {
    constructor (
        public owner: _chain.Name | null = null,
        public position_id: u64 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.owner!);
        enc.packNumber<u64>(this.position_id);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.owner! = obj;
        }
        this.position_id = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.owner!.getSize();
        size += sizeof<u64>();
        return size;
    }
}

export function apply(receiver: u64, firstReceiver: u64, action: u64): void {
	const _receiver = new _chain.Name(receiver);
	const _firstReceiver = new _chain.Name(firstReceiver);
	const _action = new _chain.Name(action);

	const mycontract = new PositionContract(_receiver, _firstReceiver, _action);
	const actionData = _chain.readActionData();

	if (receiver == firstReceiver) {
		if (action == 0x74DD900000000000) {//init
            const args = new initAction();
            args.unpack(actionData);
            mycontract.init(args.admin!,args.market_contract!,args.debt_contract!,args.allowed_token!);
        }
		if (action == 0xA5553AD300000000) {//openpos
            const args = new openPositionAction();
            args.unpack(actionData);
            mycontract.openPosition(args.owner!,args.market,args.chosen_rate);
        }
		
		if (action == 0xE3B2D4DCDC000000) {//withdraw
            const args = new withdrawAction();
            args.unpack(actionData);
            mycontract.withdraw(args.owner!,args.position_id,args.amount,args.token!,args.quantity!);
        }
		if (action == 0x4469855698000000) {//closepos
            const args = new closePositionAction();
            args.unpack(actionData);
            mycontract.closePosition(args.owner!,args.position_id);
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
