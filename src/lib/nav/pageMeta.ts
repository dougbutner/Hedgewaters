import { getDoc } from "@/content/docs";

export type PageMeta = {
  title: string;
  subtitle: string;
};

/** Match longest prefix first. */
const PAGES: { match: (path: string) => boolean; meta: PageMeta }[] = [
  {
    match: (p) => p === "/" || p === "/borrow",
    meta: {
      title: "Borrow HXUSD",
      subtitle: "Open a Hedge CDP against allowlisted collateral",
    },
  },
  {
    match: (p) => p.startsWith("/markets"),
    meta: {
      title: "Markets",
      subtitle: "Isolated collateral branches for Hedge CDP",
    },
  },
  {
    match: (p) => p.startsWith("/earn"),
    meta: {
      title: "Stability Pool",
      subtitle: "Deposit HXUSD to absorb liquidations and earn interest",
    },
  },
  {
    match: (p) => p.startsWith("/positions"),
    meta: {
      title: "Positions",
      subtitle: "Adjust collateral, repay debt, or close positions",
    },
  },
  {
    match: (p) => p.startsWith("/trade"),
    meta: {
      title: "Alcor",
      subtitle: "Trade and buy EASY on Alcor Exchange",
    },
  },
  {
    match: (p) => p.startsWith("/redeem"),
    meta: {
      title: "Redeem",
      subtitle: "Swap HXUSD for collateral at the peg",
    },
  },
  {
    match: (p) => p.startsWith("/easy"),
    meta: {
      title: "EASY Half-Loan",
      subtitle: "50/50 Alcor sell plus stacked EASY reflections",
    },
  },
  {
    match: (p) => p.startsWith("/flash"),
    meta: {
      title: "Flash Loans",
      subtitle: "Same-transaction flash lending on XPR",
    },
  },
  {
    match: (p) => p === "/docs",
    meta: {
      title: "Docs",
      subtitle: "Protocol reference for flexloans, easyloan, and flashloan",
    },
  },
];

export function getPageMeta(pathname: string): PageMeta {
  const docMatch = pathname.match(/^\/docs\/([^/]+)/);
  if (docMatch) {
    const doc = getDoc(docMatch[1]);
    if (doc) return { title: doc.title, subtitle: doc.summary };
  }
  for (const entry of PAGES) {
    if (entry.match(pathname)) return entry.meta;
  }
  return { title: "Hedgewaters", subtitle: "XPR Network" };
}
