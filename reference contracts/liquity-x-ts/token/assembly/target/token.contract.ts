import * as _chain from "as-chain";
/**
 * token.xpr — protocol stablecoin (BOLD-like).
 *
 * Supply is an explicit table field. debt.xpr must NEVER set debt_pool from supply.
 * Contrast: sx.vaults update() read balances into accounting — banned here.
 * Research: research/vaults-sx-breach.md §6; liquity-v2-mapping.md (BOLDToken)
 */
import {
  Contract,
  Name,
  Table,
  TableStore,
  Singleton,
  Asset,
  check,
  requireAuth,
  hasAuth,
  EMPTY_NAME,
} from "proton-tsc";



export class AccountDB extends _chain.MultiIndex<Account> {

}

@table("accounts", nocodegen)

export class Account implements _chain.MultiIndexValue {
    
  constructor(public balance: Asset = new Asset()) {
    
  }

  @primary
  get primary(): u64 {
    return this.balance.symbol.code();
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.balance);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.balance = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.balance.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x32114D4F38000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return Account.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return Account.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): AccountDB {
        return new AccountDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}



export class CurrencyStatsDB extends _chain.MultiIndex<CurrencyStats> {

}

@table("stat", nocodegen)

export class CurrencyStats implements _chain.MultiIndexValue {
    
  constructor(
    public supply: Asset = new Asset(),
    public max_supply: Asset = new Asset(),
    public issuer: Name = EMPTY_NAME
  ) {
    
  }

  @primary
  get primary(): u64 {
    return this.supply.symbol.code();
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.supply);
        enc.pack(this.max_supply);
        enc.pack(this.issuer);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.supply = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.max_supply = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.issuer = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.supply.getSize();
        size += this.max_supply.getSize();
        size += this.issuer.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xC64D900000000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return CurrencyStats.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return CurrencyStats.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): CurrencyStatsDB {
        return new CurrencyStatsDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}



export class TokenConfigDB extends _chain.MultiIndex<TokenConfig> {

}

@table("tconfig", singleton, nocodegen)

export class TokenConfig implements _chain.MultiIndexValue {
    
  constructor(
    public admin: Name = EMPTY_NAME,
    public debt_contract: Name = EMPTY_NAME
  ) {
    
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.admin);
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
            this.debt_contract = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.admin.getSize();
        size += this.debt_contract.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xCA2935B980000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return TokenConfig.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return TokenConfig.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return _chain.Name.fromU64(0xCA2935B980000000).N;
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name = _chain.EMPTY_NAME): _chain.Singleton<TokenConfig> {
        return new _chain.Singleton<TokenConfig>(code, scope, this.tableName);
    }
}

@contract
class TokenContract extends Contract {
  stats: TableStore<CurrencyStats> = new TableStore<CurrencyStats>(this.receiver);
  configSingleton: Singleton<TokenConfig> = new Singleton<TokenConfig>(this.receiver);

  @action("init")
  init(admin: Name, debt_contract: Name): void {
    requireAuth(admin);
    check(this.configSingleton.get().admin.N == 0, "liquity-x: token already init");
    this.configSingleton.set(new TokenConfig(admin, debt_contract), this.receiver);
  }

  @action("create")
  create(issuer: Name, max_supply: Asset): void {
    const cfg = this.configSingleton.get();
    requireAuth(cfg.admin);
    requireAuth(issuer);
    check(max_supply.amount > 0, "liquity-x: max_supply");
    check(!this.stats.exists(max_supply.symbol.code()), "liquity-x: exists");
    this.stats.store(
      new CurrencyStats(new Asset(0, max_supply.symbol), max_supply, issuer),
      this.receiver
    );
  }

  /** Mint: auth debt|admin → bump supply table → credit account. */
  @action("issue")
  issue(to: Name, quantity: Asset, memo: string): void {
    check(quantity.amount > 0, "liquity-x: amount");
    const cfg = this.configSingleton.get();
    check(hasAuth(cfg.debt_contract) || hasAuth(cfg.admin), "liquity-x: issue auth");

    const st = this.stats.requireGet(quantity.symbol.code(), "liquity-x: symbol");
    check(quantity.symbol == st.supply.symbol, "liquity-x: symbol");
    st.supply.amount += quantity.amount;
    check(st.supply.amount <= st.max_supply.amount, "liquity-x: max");
    this.stats.update(st, this.receiver);
    this.addBalance(to, quantity);
  }

  /** Burn from this contract’s balance (debt engine retires after table write). */
  @action("retire")
  retire(quantity: Asset, memo: string): void {
    check(quantity.amount > 0, "liquity-x: amount");
    const cfg = this.configSingleton.get();
    check(hasAuth(cfg.debt_contract) || hasAuth(cfg.admin), "liquity-x: retire auth");

    const st = this.stats.requireGet(quantity.symbol.code(), "liquity-x: symbol");
    check(st.supply.amount >= quantity.amount, "liquity-x: supply");
    this.subBalance(this.receiver, quantity);
    st.supply.amount -= quantity.amount;
    this.stats.update(st, this.receiver);
  }

  @action("transfer")
  transfer(from: Name, to: Name, quantity: Asset, memo: string): void {
    requireAuth(from);
    check(from != to, "liquity-x: to self");
    check(quantity.amount > 0, "liquity-x: amount");
    check(memo.length <= 256, "liquity-x: memo");
    this.subBalance(from, quantity);
    this.addBalance(to, quantity);
  }

  addBalance(owner: Name, quantity: Asset): void {
    const store = new TableStore<Account>(this.receiver, owner);
    const row = store.get(quantity.symbol.code());
    if (!row) {
      store.store(new Account(quantity), this.receiver);
    } else {
      check(row.balance.symbol == quantity.symbol, "liquity-x: symbol");
      row.balance.amount += quantity.amount;
      store.update(row, this.receiver);
    }
  }

  subBalance(owner: Name, quantity: Asset): void {
    const store = new TableStore<Account>(this.receiver, owner);
    const row = store.requireGet(quantity.symbol.code(), "liquity-x: balance");
    check(row.balance.amount >= quantity.amount, "liquity-x: overdraw");
    row.balance.amount -= quantity.amount;
    store.update(row, this.receiver);
  }
}


class initAction implements _chain.Packer {
    constructor (
        public admin: _chain.Name | null = null,
        public debt_contract: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.admin!);
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
            this.debt_contract! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.admin!.getSize();
        size += this.debt_contract!.getSize();
        return size;
    }
}

class createAction implements _chain.Packer {
    constructor (
        public issuer: _chain.Name | null = null,
        public max_supply: _chain.Asset | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.issuer!);
        enc.pack(this.max_supply!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.issuer! = obj;
        }
        
        {
            let obj = new _chain.Asset();
            dec.unpack(obj);
            this.max_supply! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.issuer!.getSize();
        size += this.max_supply!.getSize();
        return size;
    }
}

class issueAction implements _chain.Packer {
    constructor (
        public to: _chain.Name | null = null,
        public quantity: _chain.Asset | null = null,
        public memo: string = "",
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
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
        size += this.to!.getSize();
        size += this.quantity!.getSize();
        size += _chain.Utils.calcPackedStringLength(this.memo);
        return size;
    }
}

class retireAction implements _chain.Packer {
    constructor (
        public quantity: _chain.Asset | null = null,
        public memo: string = "",
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.quantity!);
        enc.packString(this.memo);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
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
        size += this.quantity!.getSize();
        size += _chain.Utils.calcPackedStringLength(this.memo);
        return size;
    }
}

class transferAction implements _chain.Packer {
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

export function apply(receiver: u64, firstReceiver: u64, action: u64): void {
	const _receiver = new _chain.Name(receiver);
	const _firstReceiver = new _chain.Name(firstReceiver);
	const _action = new _chain.Name(action);

	const mycontract = new TokenContract(_receiver, _firstReceiver, _action);
	const actionData = _chain.readActionData();

	if (receiver == firstReceiver) {
		if (action == 0x74DD900000000000) {//init
            const args = new initAction();
            args.unpack(actionData);
            mycontract.init(args.admin!,args.debt_contract!);
        }
		if (action == 0x45D46CA800000000) {//create
            const args = new createAction();
            args.unpack(actionData);
            mycontract.create(args.issuer!,args.max_supply!);
        }
		if (action == 0x7631A50000000000) {//issue
            const args = new issueAction();
            args.unpack(actionData);
            mycontract.issue(args.to!,args.quantity!,args.memo);
        }
		if (action == 0xBAB2EBA800000000) {//retire
            const args = new retireAction();
            args.unpack(actionData);
            mycontract.retire(args.quantity!,args.memo);
        }
		if (action == 0xCDCD3C2D57000000) {//transfer
            const args = new transferAction();
            args.unpack(actionData);
            mycontract.transfer(args.from!,args.to!,args.quantity!,args.memo);
        }
	}
  
	if (receiver != firstReceiver) {
		
	}
	return;
}
