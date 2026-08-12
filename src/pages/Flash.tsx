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
    <div className="space-y-4">
      <p className="text-xs text-muted-foreground">
        Product C — same-tx flash.{" "}
        <Link to="/docs/flashloan" className="text-primary hover:underline">
          Full reference
        </Link>
      </p>
      <FlashOverview config={config} routes={routes} />
    </div>
  );
}
