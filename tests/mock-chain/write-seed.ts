/** One-shot: refresh tests/mock-chain/data/seed-snapshot.sqlite */
import { writeSeedSnapshot, defaultSnapshotPath } from "./index";

const dest = writeSeedSnapshot();
console.log(`Wrote seed snapshot → ${dest}`);
console.log(`(canonical path ${defaultSnapshotPath()})`);
