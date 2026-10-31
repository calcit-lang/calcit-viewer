import assert from 'node:assert/strict';
import test from 'node:test';
import { readFileSync } from 'node:fs';
import * as clt from '../js-out/calcit.core.mjs';
import { store, updater } from '../js-out/app.updater.mjs';
import { parse_program, lookup_def, sample_ir } from '../js-out/app.program.mjs';
import { on_file_change, load_text_$x_ } from '../js-out/app.loader.mjs';
import { comp_container } from '../js-out/app.comp.container.mjs';
import { comp_nav_def } from '../js-out/app.comp.nav.mjs';
import { component_$q_, component_tree, render_node_value } from '../js-out/respo.util.detect.mjs';
import { make_string } from '../js-out/respo.render.html.mjs';

const t = clt.init_tags(['click', 'event', 'children', 'node', 'some', 'none', 'error', 'program', 'prefs', 'stack', 'file-name']);
const map = clt._$n__$M_;
const field = (v, k) => clt.option_$o_unwrap(clt.get(v, k));
const toArray = xs => { const out = []; for (let i = 0; i < clt.count(xs); i++) out.push(clt.option_$o_unwrap(clt.nth(xs, i))); return out; };
const source = readFileSync(new URL('../calcit.cirru', import.meta.url), 'utf8');


function collect(initial) {
  const ops = [];
  let current = initial;
  const d = (...args) => {
    assert.equal(args.length, 1);
    ops.push(args[0]);
    current = updater(current, args[0]);
  };
  return { d, ops, get: () => current };
}
function handler(node, tag) {
  if (component_$q_(node)) return handler(clt.option_$o_unwrap(component_tree(node)), tag);
  const event = clt.get(node, t.event);
  if (clt._$n_enum_$o_nth(event, 0) === t.some) {
    const h = clt.get(clt.option_$o_unwrap(event), tag);
    if (clt._$n_enum_$o_nth(h, 0) === t.some) return clt.option_$o_unwrap(h);
  }
  return null;
}
function fileEvent(name) {
  const event = new Event('change');
  Object.defineProperty(event, 'target', { value: { files: { item: () => ({ name }) } } });
  return map(t.event, event);
}

test('loading the own Snapshot opens the entry and renders the panel stack', () => {
  const run = collect(store);
  load_text_$x_(source, 'calcit.cirru', run.d);
  assert.equal(run.ops.length, 1);
  assert.deepEqual(toArray(field(field(run.get(), t.prefs), t.stack)), ['app.main/main!']);
  const html = make_string(comp_container(run.get()));
  assert.match(html, /render-app!/);
  assert.match(html, /app\.comp\.container/);
});

test('clicking a definition in the navigation opens it as the first panel', () => {
  const program = parse_program(clt.parse_cirru_edn(sample_ir));
  const run = collect(store);
  const info = clt.option_$o_unwrap(lookup_def(program, 'app.main/double'));
  handler(comp_nav_def(info, false), t.click)(null, run.d);
  assert.deepEqual(toArray(field(field(run.get(), t.prefs), t.stack)), ['app.main/double']);
});

test('unreadable text dispatches one error', () => {
  const run = collect(store);
  load_text_$x_('not valid cirru edn (', 'broken.cirru', run.d);
  assert.equal(run.ops.length, 1);
  assert.equal(typeof clt.option_$o_unwrap(field(run.get(), t.error)), 'string');
});

for (const mode of ['load', 'missing-result', 'error']) {
  test(`FileReader ${mode} dispatches one operation`, () => {
    const saved = Object.getOwnPropertyDescriptor(globalThis, 'FileReader');
    const run = collect(store);
    try {
      globalThis.FileReader = class {
        constructor() {
          this.result = null;
          this.onload = null;
          this.onerror = null;
        }
        readAsText() {
          if (mode === 'error') return this.onerror(new Event('error'));
          this.result = mode === 'load' ? sample_ir : null;
          this.onload(new Event('load'));
        }
      };
      on_file_change(fileEvent('program-ir.cirru'), run.d);
      assert.equal(run.ops.length, 1);
      if (mode === 'load') {
        assert.equal(field(run.get(), t['file-name']), 'program-ir.cirru');
        assert.deepEqual(toArray(field(field(run.get(), t.prefs), t.stack)), ['app.main/main!']);
      } else assert.match(clt.option_$o_unwrap(field(run.get(), t.error)), /Failed to read program-ir.cirru/);
    } finally {
      if (saved) Object.defineProperty(globalThis, 'FileReader', saved);
      else delete globalThis.FileReader;
    }
  });
}
