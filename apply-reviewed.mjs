import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync,mkdirSync} from 'node:fs';
assert.equal(process.env.GITHUB_ACTIONS,'true');
assert.equal(process.platform,'linux');
assert.equal(execFileSync('calcit',['-v'],{encoding:'utf8'}).trim(),'0.30.1');
const run=(...a)=>execFileSync('calcit',['calcit.cirru',...a],{encoding:'utf8',maxBuffer:32e6});
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):norm(x)])):v;
const q=(...a)=>norm(JSON.parse(run('query',...a,'--format','json')).data);
const blob=()=>execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}).trim();
const input=norm(JSON.parse(readFileSync('reviewed.json','utf8')));
const before=input.before, expected=structuredClone(before), sites=[];
const isViewer=input.snapshotBlob==='4c44d9df05c7df23a8b98d8b2a424dc2e9832f32';
assert.ok(isViewer||input.snapshotBlob==='55d9a085856eb306f632d307346bdddfdf1f142d');
assert.equal(blob(),input.snapshotBlob);
assert.equal(before.defs.length,isViewer?44:29);
assert.equal(before.namespaces.length,isViewer?11:6);
assert.equal(before.defs.reduce((n,d)=>n+d.tests.length,0),isViewer?5:6);
assert.deepEqual(q('config'),before.config);
assert.deepEqual(q('ns').namespaces.map(ns=>q('ns',ns)),before.namespaces);
for(const d of before.defs)assert.deepEqual(q('def',d.id),d);
function replace(id,path,old,value){
  assert.deepEqual(JSON.parse(run('tree','show',id,'--path',path,'--format','json')).tree,old);
  const code=expected.defs.find(d=>d.id===id).code,indices=path.slice(1).split('.').map(Number),index=indices.pop();
  const parent=indices.reduce((node,i)=>node[i],code);
  assert.deepEqual(parent[index],old);parent[index]=structuredClone(value);
  sites.push({id,path,before:old,after:value});
}
if(isViewer){
  replace('app.ast/parse-rule','@3.2.1.2.0','count','.len');
  replace('app.comp.expr/comp-expr','@3.2.2.2.2.2.2.2.1.0','count','.len');
}else{
  const d=before.defs.find(d=>d.id==='app.comp.container/comp-json-block'),old=d.code[3][2];
  assert.equal(old[0],'case-default');
  assert.deepEqual(old.slice(3).map(c=>c[0]),['|object','|array','|string','|number','|integer','|boolean']);
  replace(d.id,'@3.2',old,['match',old[1],...old.slice(3),['_',old[2]]]);
}
assert.deepEqual(sites,input.sites);assert.deepEqual(expected,input.expected);
const ops=sites.map(s=>['tree','replace',s.id,'--path',s.path,'--input-format','json-ast','--code',JSON.stringify(s.after)]);
assert.equal(ops.length,isViewer?2:1);
mkdirSync('acceptance',{recursive:true});
for(const[name,value]of Object.entries({before,expected,sites,operations:ops}))writeFileSync('acceptance/'+name+'.json',JSON.stringify(value,null,2));
const txn=['edit','transaction','--file','acceptance/operations.json','--format','json'];
const preview=JSON.parse(run(...txn,'--dry-run'));assert.ok(preview.scoped_revision);
writeFileSync('acceptance/preview.json',JSON.stringify(preview,null,2));
writeFileSync('acceptance/applied.json',run(...txn,'--expect-revision',preview.scoped_revision));
const after={config:q('config'),namespaces:q('ns').namespaces.map(ns=>q('ns',ns)),defs:before.defs.map(d=>q('def',d.id))};
assert.deepEqual(after,expected);
writeFileSync('acceptance/after.json',JSON.stringify(after,null,2));
writeFileSync('acceptance/snapshot-after-blob.txt',blob());
