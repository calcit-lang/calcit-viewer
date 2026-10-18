import assert from 'node:assert/strict';
import test from 'node:test';
import { readFileSync } from 'node:fs';
import * as clt from '../js-out/calcit.core.mjs';
import { store } from '../js-out/app.schema.mjs';
import { updater } from '../js-out/app.updater.mjs';
import { comp_entry, comp_text_area, on_file_change } from '../js-out/app.comp.container.mjs';
import * as action from '../js-out/respo-message.action.mjs';
import { component_$q_, component_tree, render_node_value } from '../js-out/respo.util.detect.mjs';
import { make_string } from '../js-out/respo.render.html.mjs';
import { comp_viewer } from '../js-out/app.comp.viewer.mjs';

const t = clt.init_tags(['click', 'input', 'event', 'children', 'node', 'some', 'none', 'text', 'page', 'about', 'input', 'upload', 'states', 'graph', 'data', 'value', 'error', 'messages', 'token', 'load/calcit', 'calcit', 'viewer']);
const map = clt._$n__$M_, list = clt._$L_, op = clt._$o__$o_;
const field = (v, k) => clt.option_$o_unwrap(clt.get(v, k));
const nth = (v, i) => clt.option_$o_unwrap(clt.nth(v, i));
const none = field(store, t.error);
const source = readFileSync(new URL('../calcit.cirru', import.meta.url), 'utf8');
const snapshot = clt.parse_cirru_edn(source);
function fileEvent(name) {
  const event = new Event('change');
  Object.defineProperty(event, 'target', { value: { files: { item: () => ({ name }) } } });
  return map(t.event, event);
}
function handler(node, tag) {
  if (component_$q_(node)) return handler(clt.option_$o_unwrap(component_tree(node)), tag);
  const event = clt.get(node, t.event);
  if (clt._$n_enum_$o_nth(event, 0) === t.some) {
    const h = clt.get(clt.option_$o_unwrap(event), tag);
    if (clt._$n_enum_$o_nth(h, 0) === t.some) return clt.option_$o_unwrap(h);
  }
  const children = clt.get(node, t.children);
  if (clt._$n_enum_$o_nth(children, 0) === t.some) {
    const pairs = clt.option_$o_unwrap(children);
    for (let i = 0; i < clt.count(pairs); i++) {
      const child = field(nth(pairs, i), t.node);
      if (clt._$n_enum_$o_nth(child, 0) === t.none) continue;
      const h = handler(render_node_value(clt.option_$o_unwrap(child)), tag);
      if (h) return h;
    }
  }
}
const dispatchTo = (initial, capture) => (...args) => {
  assert.equal(args.length, 1);
  capture(updater(initial, args[0], 'event', 1));
};

test('navigation dispatch round-trips through the Enum updater', () => {
  let next;
  handler(comp_entry(t.upload, t.about, t.input), t.click)(null, dispatchTo(store, v => { next = v; }));
  assert.equal(field(next, t.page), t.about);
});
test('text input and valid import dispatch one Enum', () => {
  let next;
  handler(comp_text_area('', none), t.input)(map(t.value, 'source'), dispatchTo(store, v => { next = v; }));
  assert.equal(field(next, t.text), 'source');
  handler(comp_text_area(source, none), t.click)(null, dispatchTo(store, v => { next = v; }));
  assert.equal(field(next, t.page), t.viewer);
  assert.equal(clt._$n__$e_(clt.option_$o_unwrap(field(next, t.calcit)), snapshot), true);
  assert.match(make_string(comp_viewer(snapshot)), /app.main/);
});
test('invalid text dispatches an error without changing the page', () => {
  let next;
  handler(comp_text_area('not valid cirru edn', none), t.click)(null, dispatchTo(store, v => { next = v; }));
  assert.equal(typeof clt.option_$o_unwrap(field(next, t.error)), 'string');
  assert.equal(field(next, t.page), t.input);
});
test('message create and payload-free clear use Enum tag/payload, not List Option', () => {
  const created = updater(store, op(action.create, map(t.text, 'fixture', t.token, 'token')), 'create', 1);
  assert.equal(clt.count(field(created, t.messages)), 1);
  const cleared = updater(created, op(action.clear), 'clear', 2);
  assert.equal(clt.count(field(cleared, t.messages)), 0);
});
test('state operation keeps exactly one store wrapper', () => {
  const next = updater(store, op(t.states, list(t.graph), map(t.text, 'state')), 'state', 1);
  assert.equal(field(field(field(field(next, t.states), t.graph), t.data), t.text), 'state');
  assert.equal(clt.contains_$q_(field(next, t.states), t.states), false);
});
test('wrong filename dispatches one error Enum', () => {
  let next;
  on_file_change(fileEvent('wrong.txt'), dispatchTo(store, v => { next = v; }));
  assert.match(clt.option_$o_unwrap(field(next, t.error)), /Expected calcit.cirru/);
});

for (const mode of ['load', 'missing-result', 'error']) {
  test(`FileReader ${mode} dispatches one Enum`, () => {
    const saved = Object.getOwnPropertyDescriptor(globalThis, 'FileReader');
    let next;
    try {
      globalThis.FileReader = class {
        constructor() {
          this.result = null;
          this.onload = null;
          this.onerror = null;
        }
        readAsText() {
          if (mode === 'error') return this.onerror(new Event('error'));
          this.result = mode === 'load' ? source : null;
          this.onload(new Event('load'));
        }
      };
      on_file_change(fileEvent('calcit.cirru'), dispatchTo(store, v => { next = v; }));
      if (mode === 'load') {
        assert.equal(field(next, t.page), t.viewer);
        assert.equal(clt._$n__$e_(clt.option_$o_unwrap(field(next, t.calcit)), snapshot), true);
      } else assert.match(clt.option_$o_unwrap(field(next, t.error)), /Failed to read/);
    } finally {
      if (saved) Object.defineProperty(globalThis, 'FileReader', saved);
      else delete globalThis.FileReader;
    }
  });
}
