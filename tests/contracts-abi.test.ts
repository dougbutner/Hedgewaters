import { describe, it, expect } from "vitest";
import { readFileSync, existsSync } from "fs";
import { join, dirname } from "path";
import { fileURLToPath } from "url";
import { execSync } from "child_process";

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = join(__dirname, "..");
const contractsDir = join(root, "contracts");

function loadAbi(name: string): Record<string, unknown> {
  const path = join(contractsDir, `${name}.abi`);
  expect(existsSync(path), `${name}.abi missing — run build:contracts`).toBe(true);
  return JSON.parse(readFileSync(path, "utf8"));
}

function actionNames(abi: Record<string, unknown>): string[] {
  return ((abi.actions as { name: string }[]) || []).map((a) => a.name).sort();
}

function tableNames(abi: Record<string, unknown>): string[] {
  return ((abi.tables as { name: string }[]) || []).map((t) => t.name).sort();
}

describe("contract ABI surface", () => {
  it("flexloans exposes borrower / SP / liq actions", () => {
    const abi = loadAbi("flexloans");
    const actions = actionNames(abi);
    for (const a of [
      "setconfig",
      "addmarket",
      "setprice",
      "borrow",
      "withdrawcoll",
      "setrate",
      "closepos",
      "withdrawsp",
      "claimsp",
      "liquidate",
      "claimsurplus",
    ]) {
      expect(actions).toContain(a);
    }
    const tables = tableNames(abi);
    for (const t of ["markets", "positions", "stabpools", "spdeposits", "surpluses", "config"]) {
      expect(tables).toContain(t);
    }
  });

  it("easyloan exposes loan lifecycle actions", () => {
    const abi = loadAbi("easyloan");
    const actions = actionNames(abi);
    for (const a of ["setconfig", "addmarket", "harvest", "applycredit", "withdraw", "pause"]) {
      expect(actions).toContain(a);
    }
    const tables = tableNames(abi);
    for (const t of ["config", "vault", "inflight", "markets", "loans"]) {
      expect(tables).toContain(t);
    }
  });

  it("flashloan exposes flash modes + admin", () => {
    const abi = loadAbi("flashloan");
    const actions = actionNames(abi);
    for (const a of [
      "setconfig",
      "pause",
      "setroute",
      "delroute",
      "addzerofee",
      "withdraw",
      "reserveflash",
      "convflash",
      "flash",
      "callback",
      "checkbalance",
    ]) {
      expect(actions).toContain(a);
    }
    const tables = tableNames(abi);
    for (const t of ["config", "state", "routes", "zerofee"]) {
      expect(tables).toContain(t);
    }
  });

  it("wasm artifacts exist and are non-trivial", () => {
    for (const name of ["flexloans", "easyloan", "flashloan"]) {
      const wasm = join(contractsDir, `${name}.wasm`);
      expect(existsSync(wasm)).toBe(true);
      const buf = readFileSync(wasm);
      expect(buf.byteLength).toBeGreaterThan(1000);
      expect(buf.subarray(0, 4).toString()).toBe("\0asm");
    }
  });
});

describe("contract compile smoke", () => {
  it("eosio-cpp rebuilds all contracts", () => {
    let hasCpp = true;
    try {
      execSync("which eosio-cpp", { stdio: "pipe" });
    } catch {
      hasCpp = false;
    }
    if (!hasCpp) {
      console.warn("eosio-cpp not on PATH — skipping compile smoke");
      return;
    }
    execSync(
      "eosio-cpp -abigen -I. -contract flexloans -o flexloans.wasm flexloans.cpp",
      { cwd: contractsDir, stdio: "pipe", timeout: 120_000 }
    );
    execSync(
      "eosio-cpp -abigen -I. -contract easyloan -o easyloan.wasm easyloan.cpp",
      { cwd: contractsDir, stdio: "pipe", timeout: 120_000 }
    );
    execSync(
      "eosio-cpp -abigen -I. -contract flashloan -o flashloan.wasm flashloan.cpp",
      { cwd: contractsDir, stdio: "pipe", timeout: 120_000 }
    );
    expect(existsSync(join(contractsDir, "flexloans.wasm"))).toBe(true);
    expect(existsSync(join(contractsDir, "easyloan.wasm"))).toBe(true);
    expect(existsSync(join(contractsDir, "flashloan.wasm"))).toBe(true);
  }, 180_000);
});
