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

@table("gconfig", singleton)
export class GovConfig extends Table {
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
    super();
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
