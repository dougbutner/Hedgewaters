import { Link } from "react-router-dom";
import { DOCS } from "@/content/docs";

export default function DocsHub() {
  return (
    <div className="space-y-6">
      <div>
        <h1 className="page-title">Docs</h1>
        <p className="mt-2 text-muted-foreground">
          Protocol reference for Hedgewaters — flexloans, easyloan, and flashloan.
        </p>
      </div>
      <div className="grid gap-4 sm:grid-cols-2">
        {DOCS.map((d) => (
          <Link key={d.slug} to={`/docs/${d.slug}`} className="card p-5 transition-colors hover:border-primary">
            <h2 className="font-display text-2xl tracking-wide">{d.title}</h2>
            <p className="mt-2 text-sm text-muted-foreground">{d.summary}</p>
          </Link>
        ))}
      </div>
    </div>
  );
}
