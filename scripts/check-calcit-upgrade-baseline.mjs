import fs from "node:fs";

const read = (name) => {
  const path = `.calcit/${name}.json`
  let parsed
  try { parsed = JSON.parse(fs.readFileSync(path, "utf8")) }
  catch (error) { throw new Error(`Unable to read ${path}: ${error.message}`) }
  if (!parsed?.data?.summary) throw new Error(`Missing data.summary in ${path}`)
  return parsed.data.summary
}
const types = read("check-types");
const weak = read("weak-types");
const deprecated = read("deprecated");
const actual = {
  typeNone: types.levels.none,
  typeNotFull: types.levels.none + types.levels.partial,
  schemaDynamic: weak.kinds["schema-dynamic"] ?? 0,
  codeDynamic: weak.kinds["code-dynamic"] ?? 0,
  codeNil: weak.kinds["code-nil"] ?? 0,
  unresolved: weak.intents.unresolved ?? 0,
  declaredOptional: weak.intents["declared-optional"] ?? 0,
  deprecatedCalls: deprecated.calls,
};
const baseline = JSON.parse(fs.readFileSync("config/calcit-upgrade-baseline.json", "utf8"));
const failures = [];
for (const key of Object.keys(actual)) {
  const value = actual[key];
  const limit = baseline[key];
  if (!(key in baseline)) failures.push(`${key}: missing baseline metric`);
  else if (!Number.isFinite(value)) failures.push(`${key}: report value is missing or not numeric`);
  else if (!Number.isFinite(limit)) failures.push(`${key}: baseline must be a finite number`);
  else if (value > limit) failures.push(`${key}: ${value} > ${limit}`);
}
for (const key of Object.keys(baseline)) if (!(key in actual)) failures.push(`${key}: unknown baseline metric`);
if (failures.length) {
  console.error("Calcit upgrade baseline exceeded:");
  failures.forEach((failure) => console.error(`- ${failure}`));
  process.exit(1);
}
console.log("Calcit upgrade baseline passed", actual);
