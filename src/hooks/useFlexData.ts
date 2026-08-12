import { useCallback, useEffect, useState } from "react";
import {
  fetchFlexConfig,
  fetchFlexFeeState,
  fetchFlexMarkets,
  fetchFlexPositions,
  fetchFlexSpDeposits,
  fetchFlexStabpools,
  fetchFlexSurpluses,
  type FlexConfig,
  type FlexFeeState,
  type FlexMarket,
  type FlexPosition,
  type FlexSpDeposit,
  type FlexStabpool,
  type FlexSurplus,
  POS_CLOSED,
} from "@/lib/chain/flexloans";

export function useFlexData(actor: string | null) {
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [config, setConfig] = useState<FlexConfig | null>(null);
  const [feeState, setFeeState] = useState<FlexFeeState | null>(null);
  const [markets, setMarkets] = useState<FlexMarket[]>([]);
  const [pools, setPools] = useState<FlexStabpool[]>([]);
  const [positions, setPositions] = useState<FlexPosition[]>([]);
  const [spDeposits, setSpDeposits] = useState<FlexSpDeposit[]>([]);
  const [surpluses, setSurpluses] = useState<FlexSurplus[]>([]);

  const reload = useCallback(async () => {
    setLoading(true);
    setError(null);
    try {
      const [cfg, fees, mkt, sp, pos, dep, sur] = await Promise.all([
        fetchFlexConfig(),
        fetchFlexFeeState(),
        fetchFlexMarkets(),
        fetchFlexStabpools(),
        fetchFlexPositions(),
        fetchFlexSpDeposits(),
        fetchFlexSurpluses(),
      ]);
      setConfig(cfg);
      setFeeState(fees);
      setMarkets(mkt);
      setPools(sp);
      setPositions(pos.filter((p) => Number(p.status) !== POS_CLOSED));
      setSpDeposits(dep);
      setSurpluses(sur);
    } catch (err) {
      setError(err instanceof Error ? err.message : "Failed to load flexloans");
      setConfig(null);
      setMarkets([]);
      setPools([]);
      setPositions([]);
      setSpDeposits([]);
      setSurpluses([]);
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    void reload();
  }, [reload]);

  const myPositions = actor
    ? positions.filter((p) => p.owner === actor)
    : [];
  const mySp = actor ? spDeposits.filter((d) => d.owner === actor) : [];
  const mySurplus = actor ? surpluses.filter((s) => s.owner === actor) : [];

  return {
    loading,
    error,
    config,
    feeState,
    markets,
    pools,
    positions,
    spDeposits,
    surpluses,
    myPositions,
    mySp,
    mySurplus,
    reload,
  };
}
