
(ns app.comp.viewer
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core :refer [defcomp <> div list-> button span input]]
            [respo.comp.space :refer [=<]]
            [cljs.reader :refer [read-string]]
            [app.comp.file :refer [comp-file]]))

(defcomp
 comp-viewer
 (calcit)
 (let [ir (:ir calcit)]
   (div
    {}
    (div {} (<> "Namespace:") (=< 8 nil) (<> (:package ir)))
    (div {} (<> "Users:") (=< 8 nil) (<> (:users calcit)))
    (div {} (<> "Configs:") (=< 8 nil) (<> (:configs calcit)))
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
