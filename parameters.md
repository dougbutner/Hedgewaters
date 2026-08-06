programming_languages: C++ (Antelope CDT) for all contracts; TypeScript/React only for Vite UI
purpose: Hedgewaters — (A) Liquity-inspired CDP financial core (HXUSD, rates, SP, liq, redeem); (B) EASY@mon3y half-loan
functionality: Two on-chain products, separate accounts/tables; shared Vaults.sx-safe execution rules
inputs: Collateral transfers, borrows/repays, SP, liquidations, redemptions (A); EASY loan/harvest/repay (B)
outputs: HXUSD; out-tokens via Alcor (B); WASM/ABI
libraries_frameworks: eosio-cpp/cdt-cpp; Vite React wallets in src/
coding_style_conventions: ups.hpp + invitono.cpp; least C++ files per product; NEVER TypeScript/proton-tsc contracts
error_handling: check() prefixes hedgecdp:/hxusd:/easyloan:
comments_documentation: project directive.md; research/liquity-v2-feature-checklist.md; research/easy-half-loan.md; research/vaults-sx-breach.md
performance_considerations: Index/bucket accounting; capped batch liquidations; one Alcor inflight on easyloan
architecture_directive: Product A = Liquity money loop in C++ (no gov/zappers/NFT/delegation); Product B = EASY half-loan; no balance-sync update()
