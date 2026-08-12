/**
 * Local SQL-backed mock chain store.
 * Persists Antelope table rows so market data can be restored without live RPC.
 */
import fs from "node:fs";
import path from "node:path";
import { DatabaseSync } from "node:sqlite";

const SCHEMA = `
CREATE TABLE IF NOT EXISTS chain_rows (
  code TEXT NOT NULL,
  scope TEXT NOT NULL,
  table_name TEXT NOT NULL,
  primary_key TEXT NOT NULL,
  payload TEXT NOT NULL,
  PRIMARY KEY (code, scope, table_name, primary_key)
);

CREATE TABLE IF NOT EXISTS balances (
  code TEXT NOT NULL,
  account TEXT NOT NULL,
  symbol TEXT NOT NULL,
  balance TEXT NOT NULL,
  PRIMARY KEY (code, account, symbol)
);

CREATE TABLE IF NOT EXISTS meta (
  key TEXT PRIMARY KEY,
  value TEXT NOT NULL
);
`;

export type TableRowPayload = Record<string, unknown>;

export type UpsertRowInput = {
  code: string;
  table: string;
  scope?: string;
  primaryKey: string | number;
  payload: TableRowPayload;
};

export type MockChainOptions = {
  /** SQLite file path, or omit / use ":memory:" for ephemeral. */
  dbPath?: string;
};

export class MockChainStore {
  readonly dbPath: string;
  private db: DatabaseSync;

  constructor(opts: MockChainOptions = {}) {
    this.dbPath = opts.dbPath ?? ":memory:";
    if (this.dbPath !== ":memory:") {
      fs.mkdirSync(path.dirname(this.dbPath), { recursive: true });
    }
    this.db = new DatabaseSync(this.dbPath);
    this.db.exec(SCHEMA);
  }

  /** Replace all rows with contents of another SQLite snapshot file. */
  restore(snapshotPath: string): void {
    if (!fs.existsSync(snapshotPath)) {
      throw new Error(`Snapshot not found: ${snapshotPath}`);
    }
    this.db.exec("DELETE FROM chain_rows; DELETE FROM balances; DELETE FROM meta;");
    const src = new DatabaseSync(snapshotPath, { readOnly: true });
    try {
      const rows = src.prepare("SELECT code, scope, table_name, primary_key, payload FROM chain_rows").all() as {
        code: string;
        scope: string;
        table_name: string;
        primary_key: string;
        payload: string;
      }[];
      const insert = this.db.prepare(
        `INSERT INTO chain_rows (code, scope, table_name, primary_key, payload)
         VALUES (?, ?, ?, ?, ?)`
      );
      this.db.exec("BEGIN");
      for (const r of rows) {
        insert.run(r.code, r.scope, r.table_name, r.primary_key, r.payload);
      }
      const bals = src.prepare("SELECT code, account, symbol, balance FROM balances").all() as {
        code: string;
        account: string;
        symbol: string;
        balance: string;
      }[];
      const insertBal = this.db.prepare(
        `INSERT INTO balances (code, account, symbol, balance) VALUES (?, ?, ?, ?)`
      );
      for (const b of bals) {
        insertBal.run(b.code, b.account, b.symbol, b.balance);
      }
      const metas = src.prepare("SELECT key, value FROM meta").all() as { key: string; value: string }[];
      const insertMeta = this.db.prepare(`INSERT INTO meta (key, value) VALUES (?, ?)`);
      for (const m of metas) {
        insertMeta.run(m.key, m.value);
      }
      this.setMeta("restored_from", snapshotPath);
      this.setMeta("restored_at", new Date().toISOString());
      this.db.exec("COMMIT");
    } catch (err) {
      this.db.exec("ROLLBACK");
      throw err;
    } finally {
      src.close();
    }
  }

  /** Write a portable SQLite snapshot (can later call restore). */
  snapshot(destPath: string): void {
    fs.mkdirSync(path.dirname(destPath), { recursive: true });
    if (fs.existsSync(destPath)) fs.unlinkSync(destPath);
    const dest = new DatabaseSync(destPath);
    dest.exec(SCHEMA);
    try {
      const rows = this.db
        .prepare("SELECT code, scope, table_name, primary_key, payload FROM chain_rows")
        .all() as {
        code: string;
        scope: string;
        table_name: string;
        primary_key: string;
        payload: string;
      }[];
      const insert = dest.prepare(
        `INSERT INTO chain_rows (code, scope, table_name, primary_key, payload)
         VALUES (?, ?, ?, ?, ?)`
      );
      dest.exec("BEGIN");
      for (const r of rows) {
        insert.run(r.code, r.scope, r.table_name, r.primary_key, r.payload);
      }
      const bals = this.db.prepare("SELECT code, account, symbol, balance FROM balances").all() as {
        code: string;
        account: string;
        symbol: string;
        balance: string;
      }[];
      const insertBal = dest.prepare(
        `INSERT INTO balances (code, account, symbol, balance) VALUES (?, ?, ?, ?)`
      );
      for (const b of bals) {
        insertBal.run(b.code, b.account, b.symbol, b.balance);
      }
      const metas = this.db.prepare("SELECT key, value FROM meta").all() as {
        key: string;
        value: string;
      }[];
      const insertMeta = dest.prepare(
        `INSERT INTO meta (key, value) VALUES (?, ?)
         ON CONFLICT(key) DO UPDATE SET value = excluded.value`
      );
      for (const m of metas) {
        insertMeta.run(m.key, m.value);
      }
      insertMeta.run("snapshotted_at", new Date().toISOString());
      dest.exec("COMMIT");
    } catch (err) {
      dest.exec("ROLLBACK");
      throw err;
    } finally {
      dest.close();
    }
  }

  clear(): void {
    this.db.exec("DELETE FROM chain_rows; DELETE FROM balances;");
  }

  setMeta(key: string, value: string): void {
    this.db.prepare(
      `INSERT INTO meta (key, value) VALUES (?, ?)
       ON CONFLICT(key) DO UPDATE SET value = excluded.value`
    ).run(key, value);
  }

  getMeta(key: string): string | null {
    const row = this.db.prepare("SELECT value FROM meta WHERE key = ?").get(key) as
      | { value: string }
      | undefined;
    return row?.value ?? null;
  }

  upsertRow(input: UpsertRowInput): void {
    const scope = input.scope ?? input.code;
    this.db
      .prepare(
        `INSERT INTO chain_rows (code, scope, table_name, primary_key, payload)
         VALUES (?, ?, ?, ?, ?)
         ON CONFLICT(code, scope, table_name, primary_key)
         DO UPDATE SET payload = excluded.payload`
      )
      .run(input.code, scope, input.table, String(input.primaryKey), JSON.stringify(input.payload));
  }

  upsertRows(rows: UpsertRowInput[]): void {
    this.db.exec("BEGIN");
    try {
      for (const r of rows) this.upsertRow(r);
      this.db.exec("COMMIT");
    } catch (err) {
      this.db.exec("ROLLBACK");
      throw err;
    }
  }

  setBalance(code: string, account: string, balance: string): void {
    const symbol = balance.trim().split(/\s+/).pop() ?? "";
    this.db
      .prepare(
        `INSERT INTO balances (code, account, symbol, balance)
         VALUES (?, ?, ?, ?)
         ON CONFLICT(code, account, symbol) DO UPDATE SET balance = excluded.balance`
      )
      .run(code, account, symbol, balance);
  }

  listRows(code: string, table: string, scope?: string): TableRowPayload[] {
    const sc = scope ?? code;
    const rows = this.db
      .prepare(
        `SELECT payload FROM chain_rows
         WHERE code = ? AND scope = ? AND table_name = ?
         ORDER BY CAST(primary_key AS INTEGER), primary_key`
      )
      .all(code, sc, table) as { payload: string }[];
    return rows.map((r) => JSON.parse(r.payload) as TableRowPayload);
  }

  queryTableRows(opts: {
    code: string;
    table: string;
    scope?: string;
    limit?: number;
    lower_bound?: string | number;
    upper_bound?: string | number;
    reverse?: boolean;
  }): { rows: TableRowPayload[]; more: boolean } {
    const scope = opts.scope ?? opts.code;
    const limit = opts.limit ?? 200;
    const order = opts.reverse ? "DESC" : "ASC";

    let sql = `SELECT primary_key, payload FROM chain_rows
               WHERE code = ? AND scope = ? AND table_name = ?`;
    const params: (string | number)[] = [opts.code, scope, opts.table];

    if (opts.lower_bound !== undefined && opts.lower_bound !== "") {
      sql += ` AND CAST(primary_key AS INTEGER) >= CAST(? AS INTEGER)`;
      params.push(opts.lower_bound);
    }
    if (opts.upper_bound !== undefined && opts.upper_bound !== "") {
      sql += ` AND CAST(primary_key AS INTEGER) <= CAST(? AS INTEGER)`;
      params.push(opts.upper_bound);
    }

    sql += ` ORDER BY CAST(primary_key AS INTEGER) ${order}, primary_key ${order} LIMIT ?`;
    params.push(limit + 1);

    const found = this.db.prepare(sql).all(...params) as { primary_key: string; payload: string }[];
    const more = found.length > limit;
    const slice = more ? found.slice(0, limit) : found;
    return {
      rows: slice.map((r) => JSON.parse(r.payload) as TableRowPayload),
      more,
    };
  }

  getCurrencyBalance(code: string, account: string, symbol?: string): string[] {
    if (symbol) {
      const row = this.db
        .prepare(
          `SELECT balance FROM balances WHERE code = ? AND account = ? AND symbol = ?`
        )
        .get(code, account, symbol) as { balance: string } | undefined;
      return row ? [row.balance] : [];
    }
    const rows = this.db
      .prepare(`SELECT balance FROM balances WHERE code = ? AND account = ?`)
      .all(code, account) as { balance: string }[];
    return rows.map((r) => r.balance);
  }

  close(): void {
    this.db.close();
  }
}

/** Default on-disk path for local restore during UI/dev work. */
export function defaultDbPath(): string {
  return path.resolve(import.meta.dirname, "data", "chain.sqlite");
}

/** Canonical seed snapshot shipped with the repo (SQL dump via sqlite file). */
export function defaultSnapshotPath(): string {
  return path.resolve(import.meta.dirname, "data", "seed-snapshot.sqlite");
}
