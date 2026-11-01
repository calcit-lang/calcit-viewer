// Regenerate scripts/fixtures/contract-ir.cirru from contract-app.cirru with a
// Calcit that emits `:sources` (`calcit ir --sources-only`). Library namespaces
// keep only the definitions the fixture's own code depends on, so the file stays small.
// Usage: node scripts/gen-contract-ir.mjs [path/to/calcit]

import { execFileSync } from 'node:child_process';
import { mkdtempSync, readFileSync, writeFileSync } from 'node:fs';
import { tmpdir } from 'node:os';
import { join, resolve } from 'node:path';

const calcit = process.argv[2] ? resolve(process.argv[2]) : 'calcit';
const fixtures = new URL('./fixtures/', import.meta.url);
const out = mkdtempSync(join(tmpdir(), 'contract-ir-'));
// Run from the fixtures folder so `:meta :snapshot` is a relative path.
execFileSync(calcit, ['contract-app.cirru', '--emit-path', out, 'ir', '--sources-only'], { cwd: fixtures, stdio: 'inherit' });

const lines = readFileSync(join(out, 'program-ir.cirru'), 'utf8').split('\n');
const indent = line => line.length - line.trimStart().length;
// Definitions referenced from project namespaces, e.g. `calcit.core/*`.
const firstLibrary = lines.findIndex(line => indent(line) === 4 && line.trimStart().startsWith('|calcit.'));
const projectText = lines.slice(0, firstLibrary).join('\n');
const kept = new Set(projectText.match(/\|calcit\.[\w.]+\/[^\s()]+/g)?.map(dep => dep.slice(1)) ?? []);
kept.add('calcit.core/defn'); // checked as core syntax

const result = [];
let ns = null;
let skipping = false;
for (const line of lines) {
  const depth = indent(line);
  if (depth === 4 && line.trimStart().startsWith('|')) ns = line.trim().slice(1).split(' ')[0];
  if (depth <= 8) skipping = false;
  if (depth === 8 && ns?.startsWith('calcit.') && line.trimStart().startsWith('|')) {
    const name = line.trim().slice(1).split(' ')[0];
    skipping = !kept.has(`${ns}/${name}`);
  }
  if (depth === 2 && line.trimStart().startsWith(':meta')) {
    // Keep the output stable between runs.
    result.push(line.replace(/\(:generated-at \d+\)/, '(:generated-at 0)'));
    continue;
  }
  if (!skipping) result.push(line);
}
writeFileSync(new URL('contract-ir.cirru', fixtures), result.join('\n'));
console.log(`kept ${kept.size} library definitions`);
