export function StatSkeleton({ className = "" }: { className?: string }) {
  return (
    <div className={`panel animate-pulse p-4 ${className}`}>
      <div className="h-2.5 w-16 rounded bg-secondary" />
      <div className="mt-3 h-5 w-24 rounded bg-secondary" />
    </div>
  );
}

export function TableSkeleton({ rows = 3 }: { rows?: number }) {
  return (
    <div className="panel overflow-hidden">
      <div className="animate-pulse space-y-2.5 p-4">
        <div className="h-2.5 w-32 rounded bg-secondary" />
        {Array.from({ length: rows }).map((_, i) => (
          <div key={i} className="flex items-center gap-3">
            <div className="h-6 w-6 rounded-full bg-secondary" />
            <div className="h-3 flex-1 rounded bg-muted" />
            <div className="h-3 w-12 rounded bg-muted" />
          </div>
        ))}
      </div>
    </div>
  );
}
