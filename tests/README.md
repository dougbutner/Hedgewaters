# Hedgewaters tests

**All tests live here.** Do not add tests under `contracts/`, `src/`, or elsewhere (`project directive.md` §0b).

```bash
npm test
npm run build:contracts   # optional; also exercised by compile smoke when eosio-cpp is present
```

| File | Covers |
|------|--------|
| `flexloans-sp-math.test.ts` | Liquity Product-Sum (matches `flexloans` SP) |
| `flexloans-icr.test.ts` | ICR / CCR / rate buckets / interest |
| `easyloan-math.test.ts` | 50/50 split + 2% pool cap |
| `flashloan-math.test.ts` | Flash fee / mode pick / repay invariant |
| `contracts-abi.test.ts` | ABI actions/tables + compile smoke |
