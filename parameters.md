programming_languages: C++ (Antelope CDT) for all contracts; TypeScript/React only for Vite UI
purpose: Hedgewaters — (A) flexloans CDP; (B) easyloan EASY half-loan; (C) flashloan same-tx flash
functionality: Three on-chain products, separate accounts/tables; Vaults.sx-safe execution
inputs: Collateral/HXUSD transfers + borrower/SP/liq/redeem (A); EASY loan flows (B); flash borrow/callback/repay (C)
outputs: HXUSD issue/retire; Alcor out-tokens (B); flash fees to reserves (C); WASM/ABI
libraries_frameworks: eosio-cpp; Vite React in src/; vitest tests in tests/ only
coding_style_conventions: ups.hpp + invitono.cpp; NEVER TypeScript on-chain; NEVER tests outside tests/
error_handling: check() prefixes flexloans:/easyloan:/flashloan:
comments_documentation: project directive.md; research/*; reference contracts/flash-loans/
performance_considerations: Index/bucket accounting; capped redeem hits; one Alcor inflight on easyloan; one active flash on flashloan
architecture_directive: Product A = flexloans; Product B = easyloan; Product C = flashloan; all tests under tests/; no balance-sync update()
