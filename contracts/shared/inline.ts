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

@packer
export class TransferAction extends ActionData {
  constructor(
    public from: Name = EMPTY_NAME,
    public to: Name = EMPTY_NAME,
    public quantity: Asset = new Asset(),
    public memo: string = ""
  ) {
    super();
  }
}

@packer
export class IssueAction extends ActionData {
  constructor(
    public to: Name = EMPTY_NAME,
    public quantity: Asset = new Asset(),
    public memo: string = ""
  ) {
    super();
  }
}

@packer
export class RetireAction extends ActionData {
  constructor(
    public quantity: Asset = new Asset(),
    public memo: string = ""
  ) {
    super();
  }
}

@packer
export class AbsorbAction extends ActionData {
  constructor(
    public market: u64 = 0,
    public debt_paid: u64 = 0,
    public coll_gain: u64 = 0
  ) {
    super();
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
