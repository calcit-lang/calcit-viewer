// Contract with the `program-ir.cirru` file that `calcit ir --sources-only` writes.
// The fixture is real Calcit output; regenerate it with scripts/gen-contract-ir.mjs
// when the IR format changes.

import assert from 'node:assert/strict';
import test from 'node:test';
import { readFileSync } from 'node:fs';
import * as clt from '../js-out/calcit.core.mjs';
import { store, updater } from '../js-out/app.updater.mjs';
import { parse_program, lookup_def } from '../js-out/app.program.mjs';
import { load_text_$x_ } from '../js-out/app.loader.mjs';
import { comp_container } from '../js-out/app.comp.container.mjs';
import { make_string } from '../js-out/respo.render.html.mjs';

const t = clt.init_tags(['package', 'calcit-version', 'format', 'init-fn', 'entries', 'namespaces', 'users', 'origin', 'defs', 'kind', 'head', 'doc', 'types', 'deps', 'tests', 'name', 'type', 'schema', 'source', 'ir', 'project', 'core', 'some', 'program']);
const text = readFileSync(new URL('./fixtures/contract-ir.cirru', import.meta.url), 'utf8');
const program = parse_program(clt.parse_cirru_edn(text));

const field = (v, k) => clt.option_$o_unwrap(clt.get(v, k));
const toArray = xs => { const out = []; for (let i = 0; i < clt.count(xs); i++) out.push(clt.option_$o_unwrap(clt.get(xs, i))); return out; };
const def = id => clt.option_$o_unwrap(lookup_def(program, id));
const option = v => (clt._$n_enum_$o_nth(v, 0) === t.some ? clt.option_$o_unwrap(v) : null);

test('program metadata and entries come from :meta', () => {
  assert.equal(field(program, t.package), 'app');
  assert.equal(field(program, t.format), t.ir);
  assert.equal(field(program, t['init-fn']), 'app.main/main!');
  // A second entry whose init-fn differs from `:configs`, so the fallback to `:configs` cannot pass this.
  const entries = toArray(field(program, t.entries));
  assert.deepEqual(entries.map(e => field(e, t.name)), ['default', 'bench']);
  assert.deepEqual(entries.map(e => field(e, t['init-fn'])), ['app.main/main!', 'app.main/bench!']);
});

test('namespaces keep their origin, including ones without definitions', () => {
  const namespaces = field(program, t.namespaces);
  assert.equal(field(field(namespaces, 'app.empty'), t.origin), t.project);
  assert.equal(field(field(namespaces, 'calcit.core'), t.origin), t.core);
});

test('definitions carry source, schema, inferred types, deps and tests', () => {
  const double = def('app.main/double');
  assert.equal(field(double, t.head), 'defn');
  assert.equal(field(double, t.kind), 'fn');
  assert.equal(field(double, t.doc), 'Twice the input');
  assert.equal(option(field(double, t.schema)), 'Fn Number $ -> Number');
  const types = field(double, t.types);
  assert.equal(field(types, '3.1.0.0'), 'Number');
  assert.match(field(types, '3.1.0.1.0'), /^Fn Number/);
  assert.deepEqual(toArray(field(double, t.deps)), ['calcit.core/*']);
  assert.deepEqual(toArray(field(double, t.tests)).map(test => field(test, t.name)), ['doubles']);
});

test('users are derived from deps', () => {
  assert.deepEqual(toArray(field(field(program, t.users), 'app.main/double')).sort(), ['app.main/bench!', 'app.main/main!']);
});

test('every :deps entry resolves to a definition in the fixture', () => {
  const deps = [...text.matchAll(/:deps \$ \[\]((?: \|[^\s()]+)+)/g)].flatMap(m => m[1].trim().split(' ').map(dep => dep.slice(1)));
  assert.ok(deps.length > 0);
  for (const dep of new Set(deps)) assert.ok(option(lookup_def(program, dep)) != null, `unresolved dependency ${dep}`);
});

test('core syntax is marked as syntax', () => {
  assert.equal(field(def('calcit.core/defn'), t.kind), 'syntax');
});

test('loading the IR opens the entry with call-head types on hover', () => {
  let current = store;
  load_text_$x_(text, 'program-ir.cirru', op => { current = updater(current, op); });
  const html = make_string(comp_container(current));
  // `(double 21)` in main! shows the callee type on hover.
  assert.match(html, /data-tip="app\.main\/double · Fn Number \$ -&gt; Number"/);
  assert.match(html, /main!/);
});
