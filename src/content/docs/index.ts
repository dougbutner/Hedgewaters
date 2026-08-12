import { OverviewDoc } from "./overview";
import { FlexloansDoc } from "./flexloans";
import { EasyloanDoc } from "./easyloan";
import { FlashloanDoc } from "./flashloan";
import type { ComponentType } from "react";

export type DocMeta = {
  slug: string;
  title: string;
  summary: string;
  Component: ComponentType;
};

export const DOCS: DocMeta[] = [
  {
    slug: "overview",
    title: "Overview",
    summary: "Three on-chain products on XPR: Hedge CDP, EASY half-loan, and same-tx flash.",
    Component: OverviewDoc,
  },
  {
    slug: "flexloans",
    title: "Hedge CDP (flexloans)",
    summary: "Memos, actions, rate buckets, Stability Pool, liquidations, and redemptions.",
    Component: FlexloansDoc,
  },
  {
    slug: "easyloan",
    title: "EASY half-loan",
    summary: "50/50 Alcor sell, stacked EASY, reflections, and the 2% pool cap.",
    Component: EasyloanDoc,
  },
  {
    slug: "flashloan",
    title: "Flashloan",
    summary: "Modes, fees, callback/checkbalance, and integrator notes.",
    Component: FlashloanDoc,
  },
];

export function getDoc(slug: string): DocMeta | undefined {
  return DOCS.find((d) => d.slug === slug);
}
