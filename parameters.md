programming_languages: C++ (Antelope CDT) for all contracts; TypeScript/React only for Vite UI
purpose: Hedgewaters — (A) flexloans CDP financial core; (B) easyloan EASY half-loan
functionality: Two on-chain products, separate accounts/tables; Vaults.sx-safe execution
inputs: Collateral/HXUSD transfers + borrower/SP/liq/redeem actions (A); EASY loan flows (B)
outputs: HXUSD issue/retire; Alcor out-tokens (B); WASM/ABI
libraries_frameworks: eosio-cpp; Vite React in src/; vitest tests in tests/ only
coding_style_conventions: ups.hpp + invitono.cpp; NEVER TypeScript on-chain; NEVER tests outside tests/
error_handling: check() prefixes flexloans:/easyloan:
comments_documentation: project directive.md; research/liquity-v2-feature-checklist.md; research/easy-half-loan.md; research/vaults-sx-breach.md
performance_considerations: Index/bucket accounting; capped redeem hits; one Alcor inflight on easyloan
architecture_directive: Product A = flexloans; Product B = easyloan; all tests under tests/; no balance-sync update()
