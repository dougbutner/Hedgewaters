import * as _chain from "as-chain";
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



export class LiquidationQueueDB extends _chain.MultiIndex<LiquidationQueue> {

}

@table("liqqueue", nocodegen)

export class LiquidationQueue implements _chain.MultiIndexValue {
    
  constructor(
    public id: u64 = 0,
    public position_id: u64 = 0,
    public market: u64 = 0,
    public snap_debt: u64 = 0,
    public snap_collateral: u64 = 0,
    public status: u8 = 0
  ) {
    
  }

  @primary
  get primary(): u64 {
    return this.id;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.id);
        enc.packNumber<u64>(this.position_id);
        enc.packNumber<u64>(this.market);
        enc.packNumber<u64>(this.snap_debt);
        enc.packNumber<u64>(this.snap_collateral);
        enc.packNumber<u8>(this.status);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.id = dec.unpackNumber<u64>();
        this.position_id = dec.unpackNumber<u64>();
        this.market = dec.unpackNumber<u64>();
        this.snap_debt = dec.unpackNumber<u64>();
        this.snap_collateral = dec.unpackNumber<u64>();
        this.status = dec.unpackNumber<u8>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u8>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x8BAD6D2B4A000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return LiquidationQueue.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return LiquidationQueue.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): LiquidationQueueDB {
        return new LiquidationQueueDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}



export class LiqConfigDB extends _chain.MultiIndex<LiqConfig> {

}

@table("lconfig", singleton, nocodegen)

export class LiqConfig implements _chain.MultiIndexValue {
    
  constructor(
    public admin: Name = EMPTY_NAME,
    public position_contract: Name = EMPTY_NAME,
    public stability_contract: Name = EMPTY_NAME,
    public debt_contract: Name = EMPTY_NAME
  ) {
    
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.admin);
        enc.pack(this.position_contract);
        enc.pack(this.stability_contract);
        enc.pack(this.debt_contract);
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
            this.stability_contract = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.debt_contract = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.admin.getSize();
        size += this.position_contract.getSize();
        size += this.stability_contract.getSize();
        size += this.debt_contract.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x8A2935B980000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return LiqConfig.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return LiqConfig.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return _chain.Name.fromU64(0x8A2935B980000000).N;
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name = _chain.EMPTY_NAME): _chain.Singleton<LiqConfig> {
        return new _chain.Singleton<LiqConfig>(code, scope, this.tableName);
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


class initAction implements _chain.Packer {
    constructor (
        public admin: _chain.Name | null = null,
        public position_contract: _chain.Name | null = null,
        public stability_contract: _chain.Name | null = null,
        public debt_contract: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.admin!);
        enc.pack(this.position_contract!);
        enc.pack(this.stability_contract!);
        enc.pack(this.debt_contract!);
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
            this.stability_contract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.debt_contract! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.admin!.getSize();
        size += this.position_contract!.getSize();
        size += this.stability_contract!.getSize();
        size += this.debt_contract!.getSize();
        return size;
    }
}

class enqueueAction implements _chain.Packer {
    constructor (
        public caller: _chain.Name | null = null,
        public position_id: u64 = 0,
        public market: u64 = 0,
        public snap_debt: u64 = 0,
        public snap_collateral: u64 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.caller!);
        enc.packNumber<u64>(this.position_id);
        enc.packNumber<u64>(this.market);
        enc.packNumber<u64>(this.snap_debt);
        enc.packNumber<u64>(this.snap_collateral);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.caller! = obj;
        }
        this.position_id = dec.unpackNumber<u64>();
        this.market = dec.unpackNumber<u64>();
        this.snap_debt = dec.unpackNumber<u64>();
        this.snap_collateral = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.caller!.getSize();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        return size;
    }
}

class absorbAction implements _chain.Packer {
    constructor (
        public queue_id: u64 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.queue_id);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.queue_id = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        return size;
    }
}

export function apply(receiver: u64, firstReceiver: u64, action: u64): void {
	const _receiver = new _chain.Name(receiver);
	const _firstReceiver = new _chain.Name(firstReceiver);
	const _action = new _chain.Name(action);

	const mycontract = new LiquidationContract(_receiver, _firstReceiver, _action);
	const actionData = _chain.readActionData();

	if (receiver == firstReceiver) {
		if (action == 0x74DD900000000000) {//init
            const args = new initAction();
            args.unpack(actionData);
            mycontract.init(args.admin!,args.position_contract!,args.stability_contract!,args.debt_contract!);
        }
		if (action == 0x54EDA56940000000) {//enqueue
            const args = new enqueueAction();
            args.unpack(actionData);
            mycontract.enqueue(args.caller!,args.position_id,args.market,args.snap_debt,args.snap_collateral);
        }
		if (action == 0x31F14B9C00000000) {//absorb
            const args = new absorbAction();
            args.unpack(actionData);
            mycontract.absorb(args.queue_id);
        }
	}
  
	if (receiver != firstReceiver) {
		
	}
	return;
}
