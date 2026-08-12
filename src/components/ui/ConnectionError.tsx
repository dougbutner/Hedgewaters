import { useState, type ReactNode } from "react";
import { FLEXLOANS_ACCOUNT } from "@/lib/chain/accounts";

export function ConnectionError({
  error,
  onRetry,
  contract = FLEXLOANS_ACCOUNT,
}: {
  error: string;
  onRetry?: () => void;
  contract?: string;
}) {
  const [open, setOpen] = useState(false);

  return (
    <div className="panel">
      <div className="flex flex-wrap items-start justify-between gap-3 px-5 py-4">
        <div>
          <p className="text-sm font-medium text-foreground">Markets temporarily unavailable</p>
          <p className="mt-1 text-xs text-muted-foreground">
            We couldn&apos;t retrieve market data from XPR Network.
          </p>
        </div>
        {onRetry && (
          <button type="button" className="btn btn-outline btn-sm" onClick={onRetry}>
            Retry
          </button>
        )}
      </div>
      <div className="border-t border-border px-5 py-2">
        <button
          type="button"
          className="text-[11px] font-medium text-muted-foreground hover:text-foreground"
          onClick={() => setOpen((v) => !v)}
        >
          Technical details {open ? "▴" : "▾"}
        </button>
        {open && (
          <pre className="mt-2 overflow-x-auto rounded bg-background p-3 font-mono text-[11px] text-muted-foreground">
            {`RPC request failed: ${error}
Contract: ${contract}
${
  import.meta.env.VITE_FLEXLOANS_ACCOUNT
    ? `VITE_FLEXLOANS_ACCOUNT=${import.meta.env.VITE_FLEXLOANS_ACCOUNT}`
    : "VITE_FLEXLOANS_ACCOUNT not set (using default account name)"
}`}
          </pre>
        )}
      </div>
    </div>
  );
}

export function CompactEmpty({
  title,
  children,
  action,
}: {
  title: string;
  children?: ReactNode;
  action?: ReactNode;
}) {
  return (
    <div className="panel px-5 py-4">
      <div className="flex flex-wrap items-center justify-between gap-3">
        <div>
          <p className="text-sm font-medium text-foreground">{title}</p>
          {children && <p className="mt-1 text-xs text-muted-foreground">{children}</p>}
        </div>
        {action}
      </div>
    </div>
  );
}
