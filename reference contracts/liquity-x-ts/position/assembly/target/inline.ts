import * as _chain from "as-chain";
/**
 * Inline token helpers matching proton-tsc ActionData patterns.
 */
import {
  Name,
  Asset,
  PermissionLevel,
  InlineAction,
  ActionData,
  EMPTY_NAME,
} from "proton-tsc";


@packer(nocodegen)
export class TransferAction implements _chain.Packer {
    
  constructor(
    public from: Name = EMPTY_NAME,
    public to: Name = EMPTY_NAME,
    public quantity: Asset = new Asset(),
    public memo: string = ""
  ) {
    
  }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.from);
        enc.pack(this.to);
        enc.pack(this.quantity);
        enc.packString(this.memo);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.from = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.to = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.quantity = obj;
        }
        this.memo = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.from.getSize();
        size += this.to.getSize();
        size += this.quantity.getSize();
        size += _chain.Utils.calcPackedStringLength(this.memo);
        return size;
    }
}


@packer(nocodegen)
export class IssueAction implements _chain.Packer {
    
  constructor(
    public to: Name = EMPTY_NAME,
    public quantity: Asset = new Asset(),
    public memo: string = ""
  ) {
    
  }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.to);
        enc.pack(this.quantity);
        enc.packString(this.memo);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.to = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.quantity = obj;
        }
        this.memo = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.to.getSize();
        size += this.quantity.getSize();
        size += _chain.Utils.calcPackedStringLength(this.memo);
        return size;
    }
}


@packer(nocodegen)
export class RetireAction implements _chain.Packer {
    
  constructor(
    public quantity: Asset = new Asset(),
    public memo: string = ""
  ) {
    
  }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.quantity);
        enc.packString(this.memo);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.quantity = obj;
        }
        this.memo = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.quantity.getSize();
        size += _chain.Utils.calcPackedStringLength(this.memo);
        return size;
    }
}


@packer(nocodegen)
export class AbsorbAction implements _chain.Packer {
    
  constructor(
    public market: u64 = 0,
    public debt_paid: u64 = 0,
    public coll_gain: u64 = 0
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

export function sendTransfer(
  tokenContract: Name,
  from: Name,
  to: Name,
  quantity: Asset,
  memo: string
): void {
  const TRANSFER = new InlineAction<TransferAction>("transfer");
  const action = TRANSFER.act(tokenContract, new PermissionLevel(from));
  action.send(new TransferAction(from, to, quantity, memo));
}

export function sendIssue(
  tokenContract: Name,
  issuer: Name,
  to: Name,
  quantity: Asset,
  memo: string
): void {
  const ISSUE = new InlineAction<IssueAction>("issue");
  const action = ISSUE.act(tokenContract, new PermissionLevel(issuer));
  action.send(new IssueAction(to, quantity, memo));
}

export function sendRetire(
  tokenContract: Name,
  retiree: Name,
  quantity: Asset,
  memo: string
): void {
  const RETIRE = new InlineAction<RetireAction>("retire");
  const action = RETIRE.act(tokenContract, new PermissionLevel(retiree));
  action.send(new RetireAction(quantity, memo));
}

export function sendAbsorb(
  stabilityContract: Name,
  caller: Name,
  market: u64,
  debt_paid: u64,
  coll_gain: u64
): void {
  const ABSORB = new InlineAction<AbsorbAction>("absorb");
  const action = ABSORB.act(stabilityContract, new PermissionLevel(caller));
  action.send(new AbsorbAction(market, debt_paid, coll_gain));
}
