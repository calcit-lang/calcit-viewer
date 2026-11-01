// Regenerate scripts/fixtures/contract-ir.cirru from contract-app.cirru with a
// Calcit that emits `:sources` (`calcit ir --sources-only`). Library namespaces
// keep only the definitions the fixture's own code depends on (directly or through other
// retained definitions), so the file stays small and every `:deps` entry resolves.
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
const isNs = line => indent(line) === 4 && line.trimStart().startsWith('|');
const isDef = line => indent(line) === 8 && line.trimStart().startsWith('|');
const head = line => line.trim().slice(1).split(' ')[0];
// `:deps` of every definition, read from the `:deps` line and its continuation lines.
const depsOf = new Map();
const onlyDefs = new Set(); // kept as is, since the filter below works per definition line
{
  let ns = null, id = null;
  for (let i = 0; i < lines.length; i++) {
    const line = lines[i];
    if (isNs(line)) { ns = head(line); id = null; }
    if (isDef(line)) { id = `${ns}/${head(line)}`; depsOf.set(id, []); }
    // A namespace with a single definition puts its name on the `:defs` line.
    const only = line.match(/^ {6}:defs \$ \{\} \$ \|(\S+)/);
    if (only) { id = `${ns}/${only[1]}`; depsOf.set(id, []); onlyDefs.add(id); }
    if (id && line.trimStart().startsWith(':deps')) {
      let text = line;
      for (let j = i + 1; j < lines.length && indent(lines[j]) > indent(line); j++) text += '\n' + lines[j];
      depsOf.set(id, [...text.matchAll(/\|([^\s()|]+\/[^\s()]+)/g)].map(m => m[1]));
    }
  }
}
const isLibrary = id => id.startsWith('calcit.');
// Library definitions the project code depends on, plus their own dependencies.
const kept = new Set(['calcit.core/defn', ...[...onlyDefs].filter(isLibrary)]); // defn: checked as core syntax
for (const [id, deps] of depsOf) if (!isLibrary(id)) deps.filter(isLibrary).forEach(dep => kept.add(dep));
for (const queue = [...kept]; queue.length;) {
  for (const dep of depsOf.get(queue.pop()) ?? []) if (!kept.has(dep)) { kept.add(dep); queue.push(dep); }
}
// Every dependency of a retained definition must resolve to a retained definition.
const dangling = [...depsOf].filter(([id]) => !isLibrary(id) || kept.has(id)).flatMap(([id, deps]) => deps.filter(dep => !depsOf.has(dep)).map(dep => `${id} -> ${dep}`));
const missing = [...kept].filter(id => !depsOf.has(id));
if (dangling.length || missing.length) throw new Error(`unresolved dependencies:\n${[...dangling, ...missing.map(id => `kept ${id}`)].join('\n')}`);

const result = [];
let ns = null;
let skipping = false;
for (const line of lines) {
  const depth = indent(line);
  if (isNs(line)) ns = head(line);
  if (depth <= 8) skipping = false;
  if (isDef(line) && isLibrary(`${ns}/`)) skipping = !kept.has(`${ns}/${head(line)}`);
  if (depth === 2 && line.trimStart().startsWith(':meta')) {
    // Keep the output stable between runs.
    result.push(line.replace(/\(:generated-at \d+\)/, '(:generated-at 0)'));
    continue;
  }
  if (!skipping) result.push(line);
}
writeFileSync(new URL('contract-ir.cirru', fixtures), result.join('\n'));
console.log(`kept ${kept.size} library definitions`);
