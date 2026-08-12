export function StatSkeleton({ className = "" }: { className?: string }) {
  return (
    <div className={`card animate-pulse p-5 ${className}`}>
      <div className="h-3 w-20 rounded bg-secondary" />
      <div className="mt-4 h-8 w-32 rounded bg-secondary" />
      <div className="mt-3 h-3 w-24 rounded bg-muted" />
    </div>
  );
}

export function TableSkeleton({ rows = 3 }: { rows?: number }) {
  return (
    <div className="card overflow-hidden">
      <div className="animate-pulse space-y-3 p-5">
        <div className="h-3 w-40 rounded bg-secondary" />
        {Array.from({ length: rows }).map((_, i) => (
          <div key={i} className="flex items-center gap-4">
            <div className="h-8 w-8 rounded-full bg-secondary" />
            <div className="h-4 flex-1 rounded bg-muted" />
            <div className="h-4 w-16 rounded bg-muted" />
          </div>
        ))}
      </div>
    </div>
  );
}
