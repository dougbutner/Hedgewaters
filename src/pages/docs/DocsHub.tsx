import { Link } from "react-router-dom";
import { DOCS } from "@/content/docs";

export default function DocsHub() {
  return (
    <div className="grid gap-3 sm:grid-cols-2">
      {DOCS.map((d) => (
        <Link key={d.slug} to={`/docs/${d.slug}`} className="panel p-4">
          <h2 className="relative z-[1] text-sm font-semibold">{d.title}</h2>
          <p className="relative z-[1] mt-1.5 text-xs text-muted-foreground">{d.summary}</p>
        </Link>
      ))}
    </div>
  );
}
