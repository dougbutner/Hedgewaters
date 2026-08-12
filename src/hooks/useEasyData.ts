import { useCallback, useEffect, useState } from "react";
import {
  fetchEasyConfig,
  fetchEasyLoans,
  fetchEasyMarkets,
  fetchEasyVault,
  type EasyConfig,
  type EasyLoan,
  type EasyMarket,
  type EasyVault,
  LOAN_CLOSED,
} from "@/lib/chain/easyloan";

export function useEasyData(actor: string | null) {
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [config, setConfig] = useState<EasyConfig | null>(null);
  const [vault, setVault] = useState<EasyVault | null>(null);
  const [markets, setMarkets] = useState<EasyMarket[]>([]);
  const [loans, setLoans] = useState<EasyLoan[]>([]);

  const reload = useCallback(async () => {
    setLoading(true);
    setError(null);
    try {
      const [cfg, v, mkt, ln] = await Promise.all([
        fetchEasyConfig(),
        fetchEasyVault(),
        fetchEasyMarkets(),
        fetchEasyLoans(),
      ]);
      setConfig(cfg);
      setVault(v);
      setMarkets(mkt);
      setLoans(ln.filter((l) => Number(l.status) !== LOAN_CLOSED));
    } catch (err) {
      setError(err instanceof Error ? err.message : "Failed to load easyloan");
      setConfig(null);
      setVault(null);
      setMarkets([]);
      setLoans([]);
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    void reload();
  }, [reload]);

  const myLoans = actor ? loans.filter((l) => l.owner === actor) : [];

  return { loading, error, config, vault, markets, loans, myLoans, reload };
}
