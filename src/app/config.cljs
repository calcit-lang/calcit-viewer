
(ns app.config (:require [app.util :refer [get-env!]]))

(def bundle-builds #{"release" "local-bundle"})

(def dev?
  (if (exists? js/window)
    (do ^boolean js/goog.DEBUG)
    (not (contains? bundle-builds (get-env! "mode")))))

(def site
  {:storage "calcit-viewer",
   :dev-ui "http://localhost:8100/main.css",
   :release-ui "http://cdn.tiye.me/favored-fonts/main.css",
   :cdn-url "http://cdn.tiye.me/calcit-viewer/",
   :cdn-folder "tiye.me:cdn/calcit-viewer",
   :title "Calcit Viewer",
   :icon "http://cdn.tiye.me/logo/cirru.png",
   :upload-folder "tiye.me:repo/Cirru/calcit-viewer/"})
