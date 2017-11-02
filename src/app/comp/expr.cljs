
(ns app.comp.expr
  (:require [hsl.core :refer [hsl]]
            [verbosely.core :refer [verbosely!]]
            [respo-ui.style :as ui]
            [respo.macros :refer [defcomp <> list-> div button span input pre]]
            [respo.comp.space :refer [=<]]))

(defcomp
 comp-expr
 (expr)
 (div
  {:style {:background-color (hsl 300 0 94),
           :border-left (str "1px solid " (hsl 0 0 70)),
           :color :black,
           :padding "2px 16px",
           :font-family "Source Code Pro, menlo",
           :line-height "16px",
           :margin-bottom 2}}
  (list->
   :div
   {}
   (->> (:data expr)
        (sort-by first)
        (map
         (fn [entry]
           (let [[k child] entry]
             [k
              (if (= :expr (:type child))
                (comp-expr child)
                (<> span (:text child) {:margin-right 8}))])))))))
