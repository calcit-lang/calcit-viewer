// Watches one local file through the File System Access API (Chromium browsers).
// The handle is kept in IndexedDB so a later visit can resume after one click.
// Export names use snake_case so Calcit `:refer` names such as `stop-watch` resolve to them.

const DB_NAME = "calcit-viewer";
const STORE = "handles";
const KEY = "watched";
const INTERVAL_MS = 1000;

let timer = null;

function openDb() {
  return new Promise((resolve, reject) => {
    const request = indexedDB.open(DB_NAME, 1);
    request.onupgradeneeded = () => request.result.createObjectStore(STORE);
    request.onsuccess = () => resolve(request.result);
    request.onerror = () => reject(request.error);
  });
}

async function storeHandle(handle) {
  const db = await openDb();
  await new Promise((resolve, reject) => {
    const tx = db.transaction(STORE, "readwrite");
    tx.objectStore(STORE).put(handle, KEY);
    tx.oncomplete = resolve;
    tx.onerror = () => reject(tx.error);
  });
}

async function loadHandle() {
  const db = await openDb();
  return new Promise((resolve, reject) => {
    const request = db.transaction(STORE, "readonly").objectStore(STORE).get(KEY);
    request.onsuccess = () => resolve(request.result ?? null);
    request.onerror = () => reject(request.error);
  });
}

function start(handle, onText, onError) {
  stop_watch();
  let last = -1;
  const tick = async () => {
    try {
      const file = await handle.getFile();
      if (file.lastModified !== last) {
        last = file.lastModified;
        onText(await file.text(), file.name);
      }
    } catch (error) {
      onError(String(error?.message ?? error));
    }
  };
  tick();
  timer = setInterval(tick, INTERVAL_MS);
}

export function supports_watch() {
  return typeof window !== "undefined" && "showOpenFilePicker" in window;
}

export function stop_watch() {
  if (timer != null) clearInterval(timer);
  timer = null;
}

/** Ask for a file, call onStarted(name), then onText(text, name) now and after every change. */
export function pick_and_watch(onText, onError, onStarted) {
  (async () => {
    const [handle] = await window.showOpenFilePicker({
      types: [{ description: "Calcit program", accept: { "text/plain": [".cirru"] } }],
    });
    await storeHandle(handle).catch(() => {});
    onStarted(handle.name);
    start(handle, onText, onError);
  })().catch((error) => {
    if (error?.name !== "AbortError") onError(String(error?.message ?? error));
  });
}

/** Call onName with the file watched in an earlier visit; skipped when there is none. */
export function stored_name(onName) {
  if (!supports_watch()) return;
  loadHandle()
    .then((handle) => handle && onName(handle.name))
    .catch(() => {});
}

/** Resume the stored file; the browser asks for read permission again. */
export function resume_watch(onText, onError, onStarted) {
  (async () => {
    const handle = await loadHandle();
    if (!handle) return;
    if ((await handle.requestPermission({ mode: "read" })) !== "granted") return;
    onStarted(handle.name);
    start(handle, onText, onError);
  })().catch((error) => onError(String(error?.message ?? error)));
}
