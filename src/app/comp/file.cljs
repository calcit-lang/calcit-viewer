
(ns app.comp.file
  (:require [hsl.core :refer [hsl]]
            [verbosely.core :refer [verbosely!]]
            [respo-ui.style :as ui]
            [respo.macros :refer [defcomp <> list-> div button span input pre]]
            [respo.comp.space :refer [=<]]
            [app.comp.expr :refer [comp-expr]]))

(defcomp
 comp-file
 (filename file-info)
 (div
  {:style (merge ui/row {:border-left (str "1px solid " (hsl 0 0 70)), :padding-left 16})}
  (<> filename nil)
  (=< 16 nil)
  (div
   {}
   (div {:style ui/row} (<> "ns" nil) (=< 16 nil) (comp-expr (:ns file-info)))
   (div
    {:style ui/row}
    (<> "defs" nil)
    (=< 16 nil)
    (list->
     :div
     {:style {:border-left (str "1px solid " (hsl 0 0 70)),
              :padding-left 16,
              :margin-bottom 2}}
     (->> (:defs file-info)
          (map
           (fn [entry]
             (let [[def-name def-info] entry]
               [def-name
                (div
                 {:style ui/row}
                 (<> def-name {:white-space :nowrap})
                 (=< 8 nil)
                 (comp-expr def-info))]))))))
   (div {:style ui/row} (<> "proc" nil) (=< 16 nil) (comp-expr (:proc file-info))))))
