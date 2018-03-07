
(ns app.comp.viewer
  (:require [hsl.core :refer [hsl]]
            [verbosely.core :refer [verbosely!]]
            [respo-ui.core :as ui]
            [respo.macros :refer [defcomp <> div list-> button span input]]
            [respo.comp.space :refer [=<]]
            [cljs.reader :refer [read-string]]
            [app.comp.file :refer [comp-file]]))

(defcomp
 comp-viewer
 (coir)
 (let [ir (:ir coir)]
   (div
    {}
    (div {} (<> "Namespace:") (=< 8 nil) (<> (:package ir)))
    (div {} (<> "Users:") (=< 8 nil) (<> (:users coir)))
    (div {} (<> "Configs:") (=< 8 nil) (<> (:configs coir)))
    (div
     {:style ui/row}
     (<> "Files:")
     (=< 16 nil)
     (list->
      :div
      {}
      (->> (:files ir)
           (map
            (fn [entry]
              (let [[filename file-info] entry] [filename (comp-file filename file-info)])))))))))
