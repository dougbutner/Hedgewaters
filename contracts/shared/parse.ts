import { check } from "proton-tsc";

export function parseU64(s: string): u64 {
  check(s.length > 0, "liquity-x: parse");
  let n: u64 = 0;
  for (let i = 0; i < s.length; i++) {
    const c = s.charCodeAt(i);
    check(c >= 48 && c <= 57, "liquity-x: digit");
    n = n * 10 + <u64>(c - 48);
  }
  return n;
}
