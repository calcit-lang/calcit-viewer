
(ns app.comp.file
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core :refer [defcomp <> list-> div button span input pre]]
            [respo.comp.space :refer [=<]]
            [app.comp.expr :refer [comp-expr]]))

(defcomp
 comp-file
 (filename file-info)
 (div
  {:style (merge
           ui/row
           {:border-left (str "1px solid " (hsl 0 0 70)),
            :padding-left 8,
            :font-family "Source Code Pro, menlo"})}
  (<> filename)
  (=< 16 nil)
  (div
   {}
   (div
    {:style (merge
             ui/column
             {:border-left (str "1px solid " (hsl 0 0 80)), :padding-left 8})}
    (<> :ns {:color (hsl 0 0 70)})
    (comp-expr (:ns file-info) false))
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
                {:style ui/column}
                (<> def-name {:white-space :nowrap, :color (hsl 0 0 70)})
                (comp-expr def-info false))])))))
   (div
    {:style (merge
             ui/column
             {:border-left (str "1px solid " (hsl 0 0 80)), :padding-left 8})}
    (<> :proc {:color (hsl 0 0 70)})
    (comp-expr (:proc file-info) false)))))
