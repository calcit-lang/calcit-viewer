
(ns app.comp.viewer
  (:require [hsl.core :refer [hsl]]
            [verbosely.core :refer [verbosely!]]
            [respo-ui.style :as ui]
            [respo.macros :refer [defcomp <> div button span input]]
            [respo.comp.space :refer [=<]]
            [cljs.reader :refer [read-string]]))

(defcomp
 comp-viewer
 (coir)
 (let [ir (:ir coir)]
   (div
    {}
    (div {} (<> "Namespace:") (=< 8 nil) (<> (:package ir)))
    (div {} (<> "Users:") (=< 8 nil) (<> (:users coir)))
    (div {} (<> "Configs:") (=< 8 nil) (<> (:configs coir)))
    (div {} (<> "Files:") (=< 8 nil) (<> (keys (:files ir)))))))
