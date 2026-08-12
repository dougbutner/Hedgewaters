import type { ReactNode } from "react";

export function EmptyState({
  title,
  children,
}: {
  title: string;
  children?: ReactNode;
}) {
  return (
    <div className="card px-6 py-10 text-center">
      <h2 className="font-display text-2xl tracking-wide">{title}</h2>
      {children && <p className="mx-auto mt-2 max-w-md text-sm text-muted-foreground">{children}</p>}
    </div>
  );
}
