import { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import { FlashOverview } from "@/components/flash/FlashOverview";
import { fetchFlashConfig, fetchFlashRoutes, type FlashConfig, type FlashRoute } from "@/lib/chain/flashloan";

export default function Flash() {
  const [config, setConfig] = useState<FlashConfig | null>(null);
  const [routes, setRoutes] = useState<FlashRoute[]>([]);

  useEffect(() => {
    let cancelled = false;
    Promise.all([fetchFlashConfig(), fetchFlashRoutes()])
      .then(([c, r]) => {
        if (cancelled) return;
        setConfig(c);
        setRoutes(r.filter((x) => x.active !== false));
      })
      .catch(() => {
        if (!cancelled) {
          setConfig(null);
          setRoutes([]);
        }
      });
    return () => {
      cancelled = true;
    };
  }, []);

  return (
    <div className="space-y-6">
      <div>
        <h1 className="page-title">Same-tx flash loans on XPR</h1>
        <p className="mt-2 max-w-2xl text-muted-foreground">
          Product C — borrow from protocol reserves in one transaction. Repay principal + fee inside the same
          tx or everything reverts.{" "}
          <Link to="/docs/flashloan" className="text-primary hover:underline">
            Full reference
          </Link>
        </p>
      </div>
      <FlashOverview config={config} routes={routes} />
    </div>
  );
}
