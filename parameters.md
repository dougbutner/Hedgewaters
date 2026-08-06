programming_languages: TypeScript, React JSX, CSS (Tailwind utilities), AssemblyScript (proton-tsc contracts)
purpose: Liquity-X — Liquity V2 economics redesigned for Antelope/XPR (CDP / stablecoin protocol + Vite dApp)
functionality: Multi-contract on-chain protocol (oracle, market, position, debt, stability, liquidation, governance, token); WebAuth + Anchor wallet UI for markets, positions, stability pool, redemptions
inputs: Wallet connect, collateral deposits, borrow/repay/withdraw, stability deposits, oracle feeds, governance params, RPC reads
outputs: Signed transactions on XPR, internal accounting tables as sole protocol state, WASM/ABI builds, static Vite build
libraries_frameworks: Vite, React 18, react-router-dom, Tailwind (utility classes), @proton/web-sdk, @proton/link, WharfKit (Anchor), proton-tsc / proton-asc
coding_style_conventions: Prefer native HTML + Tailwind component classes (.btn .input .card); no UI kit; keep wallet services intact; least lines; follow project directive.md security rules; contracts own accounting — never balance()-sync
error_handling: Surface wallet/tx errors as plain text; fail soft on restore; contracts use check() with liquity-x: prefixes; reject unsafe health before state mutation
comments_documentation: project directive.md = architecture + security; contracts/README.md = build; skill/ for chain depth
performance_considerations: Index-based interest/rewards (no global iteration); dynamic-import Proton SDK; no unused UI layers
architecture_directive: Never derive protocol state from token balances after init; validate → write tables → transfer; no update(); notify = deposit accept only; one writer per table family
