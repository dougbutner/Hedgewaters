import * as _chain from "as-chain";
/**
 * governance.xpr — pause flag + contract wiring.
 *
 * Sole writer of gconfig. Never reads token balances.
 * Research: research/security-checklist.md (one writer / wiring)
 */
import {
  Contract,
  Name,
  Table,
  Singleton,
  check,
  requireAuth,
  EMPTY_NAME,
} from "proton-tsc";



export class GovConfigDB extends _chain.MultiIndex<GovConfig> {

}

@table("gconfig", singleton, nocodegen)

export class GovConfig implements _chain.MultiIndexValue {
    
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
    
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.admin);
        enc.packNumber<boolean>(this.paused);
        enc.pack(this.oracle_contract);
        enc.pack(this.market_contract);
        enc.pack(this.position_contract);
        enc.pack(this.debt_contract);
        enc.pack(this.stability_contract);
        enc.pack(this.liquidation_contract);
        enc.pack(this.token_contract);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.admin = obj;
        }
        this.paused = dec.unpackNumber<boolean>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.oracle_contract = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.market_contract = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.position_contract = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.debt_contract = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.stability_contract = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.liquidation_contract = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.token_contract = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.admin.getSize();
        size += sizeof<boolean>();
        size += this.oracle_contract.getSize();
        size += this.market_contract.getSize();
        size += this.position_contract.getSize();
        size += this.debt_contract.getSize();
        size += this.stability_contract.getSize();
        size += this.liquidation_contract.getSize();
        size += this.token_contract.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x622935B980000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return GovConfig.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return GovConfig.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return _chain.Name.fromU64(0x622935B980000000).N;
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name = _chain.EMPTY_NAME): _chain.Singleton<GovConfig> {
        return new _chain.Singleton<GovConfig>(code, scope, this.tableName);
    }
}

@contract
class GovernanceContract extends Contract {
  configSingleton: Singleton<GovConfig> = new Singleton<GovConfig>(this.receiver);

  @action("init")
  init(
    admin: Name,
    oracle_contract: Name,
    market_contract: Name,
    position_contract: Name,
    debt_contract: Name,
    stability_contract: Name,
    liquidation_contract: Name,
    token_contract: Name
  ): void {
    requireAuth(admin);
    check(this.configSingleton.get().admin.N == 0, "liquity-x: gov already init");
    this.configSingleton.set(
      new GovConfig(
        admin,
        false,
        oracle_contract,
        market_contract,
        position_contract,
        debt_contract,
        stability_contract,
        liquidation_contract,
        token_contract
      ),
      this.receiver
    );
  }

  @action("setpaused")
  setPaused(paused: boolean): void {
    const cfg = this.configSingleton.get();
    requireAuth(cfg.admin);
    cfg.paused = paused;
    this.configSingleton.set(cfg, this.receiver);
  }

  @action("setadmin")
  setAdmin(new_admin: Name): void {
    const cfg = this.configSingleton.get();
    requireAuth(cfg.admin);
    check(new_admin.N != 0, "liquity-x: admin");
    cfg.admin = new_admin;
    this.configSingleton.set(cfg, this.receiver);
  }

  @action("setwires")
  setWires(
    oracle_contract: Name,
    market_contract: Name,
    position_contract: Name,
    debt_contract: Name,
    stability_contract: Name,
    liquidation_contract: Name,
    token_contract: Name
  ): void {
    const cfg = this.configSingleton.get();
    requireAuth(cfg.admin);
    cfg.oracle_contract = oracle_contract;
    cfg.market_contract = market_contract;
    cfg.position_contract = position_contract;
    cfg.debt_contract = debt_contract;
    cfg.stability_contract = stability_contract;
    cfg.liquidation_contract = liquidation_contract;
    cfg.token_contract = token_contract;
    this.configSingleton.set(cfg, this.receiver);
  }
}


class initAction implements _chain.Packer {
    constructor (
        public admin: _chain.Name | null = null,
        public oracle_contract: _chain.Name | null = null,
        public market_contract: _chain.Name | null = null,
        public position_contract: _chain.Name | null = null,
        public debt_contract: _chain.Name | null = null,
        public stability_contract: _chain.Name | null = null,
        public liquidation_contract: _chain.Name | null = null,
        public token_contract: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.admin!);
        enc.pack(this.oracle_contract!);
        enc.pack(this.market_contract!);
        enc.pack(this.position_contract!);
        enc.pack(this.debt_contract!);
        enc.pack(this.stability_contract!);
        enc.pack(this.liquidation_contract!);
        enc.pack(this.token_contract!);
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
            this.oracle_contract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.market_contract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.position_contract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.debt_contract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.stability_contract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.liquidation_contract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.token_contract! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.admin!.getSize();
        size += this.oracle_contract!.getSize();
        size += this.market_contract!.getSize();
        size += this.position_contract!.getSize();
        size += this.debt_contract!.getSize();
        size += this.stability_contract!.getSize();
        size += this.liquidation_contract!.getSize();
        size += this.token_contract!.getSize();
        return size;
    }
}

class setPausedAction implements _chain.Packer {
    constructor (
        public paused: boolean = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<boolean>(this.paused);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.paused = dec.unpackNumber<boolean>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<boolean>();
        return size;
    }
}

class setAdminAction implements _chain.Packer {
    constructor (
        public new_admin: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.new_admin!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.new_admin! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.new_admin!.getSize();
        return size;
    }
}

class setWiresAction implements _chain.Packer {
    constructor (
        public oracle_contract: _chain.Name | null = null,
        public market_contract: _chain.Name | null = null,
        public position_contract: _chain.Name | null = null,
        public debt_contract: _chain.Name | null = null,
        public stability_contract: _chain.Name | null = null,
        public liquidation_contract: _chain.Name | null = null,
        public token_contract: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.oracle_contract!);
        enc.pack(this.market_contract!);
        enc.pack(this.position_contract!);
        enc.pack(this.debt_contract!);
        enc.pack(this.stability_contract!);
        enc.pack(this.liquidation_contract!);
        enc.pack(this.token_contract!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.oracle_contract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.market_contract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.position_contract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.debt_contract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.stability_contract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.liquidation_contract! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.token_contract! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.oracle_contract!.getSize();
        size += this.market_contract!.getSize();
        size += this.position_contract!.getSize();
        size += this.debt_contract!.getSize();
        size += this.stability_contract!.getSize();
        size += this.liquidation_contract!.getSize();
        size += this.token_contract!.getSize();
        return size;
    }
}

export function apply(receiver: u64, firstReceiver: u64, action: u64): void {
	const _receiver = new _chain.Name(receiver);
	const _firstReceiver = new _chain.Name(firstReceiver);
	const _action = new _chain.Name(action);

	const mycontract = new GovernanceContract(_receiver, _firstReceiver, _action);
	const actionData = _chain.readActionData();

	if (receiver == firstReceiver) {
		if (action == 0x74DD900000000000) {//init
            const args = new initAction();
            args.unpack(actionData);
            mycontract.init(args.admin!,args.oracle_contract!,args.market_contract!,args.position_contract!,args.debt_contract!,args.stability_contract!,args.liquidation_contract!,args.token_contract!);
        }
		if (action == 0xC2B3536B0A480000) {//setpaused
            const args = new setPausedAction();
            args.unpack(actionData);
            mycontract.setPaused(args.paused);
        }
		if (action == 0xC2B264C9D3000000) {//setadmin
            const args = new setAdminAction();
            args.unpack(actionData);
            mycontract.setAdmin(args.new_admin!);
        }
		if (action == 0xC2B3C75D58000000) {//setwires
            const args = new setWiresAction();
            args.unpack(actionData);
            mycontract.setWires(args.oracle_contract!,args.market_contract!,args.position_contract!,args.debt_contract!,args.stability_contract!,args.liquidation_contract!,args.token_contract!);
        }
	}
  
	if (receiver != firstReceiver) {
		
	}
	return;
}
