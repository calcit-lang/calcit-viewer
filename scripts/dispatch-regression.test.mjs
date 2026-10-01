import assert from 'node:assert/strict';
import test from 'node:test';
import * as clt from '../js-out/calcit.core.mjs';
import { store } from '../js-out/app.schema.mjs';
import { updater } from '../js-out/app.updater.mjs';
import { comp_entry, comp_text_area, on_file_change } from '../js-out/app.comp.container.mjs';
import * as action from '../js-out/respo-message.action.mjs';
import { component_$q_, component_tree } from '../js-out/respo.util.detect.mjs';

const t = clt.init_tags(['click', 'input', 'event', 'children', 'some', 'text', 'page', 'about', 'input', 'upload', 'states', 'graph', 'data', 'value', 'error', 'messages', 'token', 'load/calcit', 'calcit', 'viewer']);
const map = clt._$n__$M_, list = clt._$L_, op = clt._$o__$o_;
const field = (v, k) => clt.option_$o_unwrap(clt.get(v, k));
const nth = (v, i) => clt.option_$o_unwrap(clt.nth(v, i));
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
      const h = handler(nth(nth(pairs, i), 1), tag);
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
  handler(comp_text_area('', null), t.input)(map(t.value, 'source'), dispatchTo(store, v => { next = v; }));
  assert.equal(field(next, t.text), 'source');
  const source = clt.format_cirru_edn(map());
  handler(comp_text_area(source, null), t.click)(null, dispatchTo(store, v => { next = v; }));
  assert.equal(field(next, t.page), t.viewer);
});
test('invalid text dispatches an error without changing the page', () => {
  let next;
  handler(comp_text_area('not valid cirru edn', null), t.click)(null, dispatchTo(store, v => { next = v; }));
  assert.equal(typeof field(next, t.error), 'string');
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
  on_file_change(map(t.event, { target: { files: { item: () => ({ name: 'wrong.txt' }) } } }), dispatchTo(store, v => { next = v; }));
  assert.match(field(next, t.error), /Expected calcit.cirru/);
});

for (const successful of [true, false]) {
  test(`FileReader ${successful ? 'load' : 'missing-result'} dispatches one Enum`, () => {
    const saved = Object.getOwnPropertyDescriptor(globalThis, 'FileReader');
    let next;
    try {
      globalThis.FileReader = class {
        readAsText() {
          this.result = successful ? clt.format_cirru_edn(map()) : null;
          this.onload({ target: this });
        }
      };
      on_file_change(map(t.event, { target: { files: { item: () => ({ name: 'calcit.cirru' }) } } }), dispatchTo(store, v => { next = v; }));
      if (successful) {
        assert.equal(field(next, t.page), t.viewer);
        assert.equal(clt.count(field(next, t.calcit)), 0);
      } else assert.match(field(next, t.error), /Failed to read/);
    } finally {
      if (saved) Object.defineProperty(globalThis, 'FileReader', saved);
      else delete globalThis.FileReader;
    }
  });
}
