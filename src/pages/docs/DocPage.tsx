import { Link, Navigate, useParams } from "react-router-dom";
import { getDoc } from "@/content/docs";

export default function DocPage() {
  const { slug } = useParams<{ slug: string }>();
  const doc = slug ? getDoc(slug) : undefined;
  if (!doc) return <Navigate to="/docs" replace />;

  const Body = doc.Component;

  return (
    <div className="space-y-3">
      <p className="text-xs text-muted-foreground">
        <Link to="/docs" className="hover:text-primary">
          Docs
        </Link>{" "}
        / <span className="text-foreground">{doc.title}</span>
      </p>
      <Body />
    </div>
  );
}
