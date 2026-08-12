import type { ReactNode } from "react";

export function EmptyState({
  title,
  children,
}: {
  title: string;
  children?: ReactNode;
}) {
  return (
    <div className="panel px-5 py-6 text-center">
      <h2 className="text-sm font-semibold">{title}</h2>
      {children && <p className="mx-auto mt-1.5 max-w-md text-xs text-muted-foreground">{children}</p>}
    </div>
  );
}
