import { useMemo, useState } from "react";
import {
  ALCOR_TABS,
  alcorSwap,
  type AlcorTabId,
} from "@/lib/alcor/urls";

/**
 * Full-viewport Alcor (one embed at a time).
 * Defaults always point at EASY@mon3y — new swap buys EASY.
 */
export default function Trade() {
  const [tab, setTab] = useState<AlcorTabId>("swap");

  const active = useMemo(() => ALCOR_TABS.find((t) => t.id === tab) ?? ALCOR_TABS[0], [tab]);
  const src = active.href();
  const openExternal = tab === "swap" ? alcorSwap({ widget: false }) : src;

  return (
    <div className="terminal-shell page-enter">
      <div className="flex h-10 shrink-0 items-center gap-2 overflow-x-auto border-b border-white/5 bg-[hsl(var(--glass)/0.45)] px-2 backdrop-blur-md md:px-3">
        <p className="hidden shrink-0 text-[10px] font-semibold uppercase tracking-[0.12em] text-muted-foreground sm:block">
          Alcor
        </p>
        <div className="flex min-w-0 flex-1 items-center gap-1">
          {ALCOR_TABS.map((t) => (
            <button
              key={t.id}
              type="button"
              className={`btn btn-sm shrink-0 ${tab === t.id ? "btn-primary" : "btn-ghost"}`}
              onClick={() => setTab(t.id)}
            >
              {t.label}
            </button>
          ))}
        </div>
        <a
          href={openExternal}
          target="_blank"
          rel="noopener noreferrer"
          className="btn btn-outline btn-sm shrink-0"
        >
          Open ↗
        </a>
      </div>

      <iframe
        key={tab}
        title={`Alcor ${active.label}`}
        src={src}
        className="terminal-frame"
        allow="clipboard-write"
        loading="eager"
      />
    </div>
  );
}
