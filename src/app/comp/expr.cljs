
(ns app.comp.expr
  (:require [hsl.core :refer [hsl]]
            [verbosely.core :refer [verbosely!]]
            [respo-ui.style :as ui]
            [respo.macros :refer [defcomp <> list-> div button span input pre]]
            [respo.comp.space :refer [=<]]))

(defcomp
 comp-expr
 (expr last?)
 (list->
  :div
  {:style (merge
           {:background-color (hsl 300 0 94),
            :border (str "1px solid " (hsl 0 0 70)),
            :border-width "0 0 0 1px",
            :color :black,
            :padding "2px 16px",
            :font-family "Source Code Pro, menlo",
            :line-height "16px",
            :margin-bottom 2,
            :vertical-align :top,
            :min-height 16,
            :min-width 32,
            :font-size 13}
           (if last?
             {:display :inline-block}
             (if (every? (fn [entry] (= :leaf (:type (val entry)))) (:data expr))
               {:display :inline-block, :border-width "0 0 1px 0", :margin "0 4px"})))}
  (->> (:data expr)
       (sort-by first)
       (map-indexed
        (fn [idx entry]
          (let [[k child] entry]
            [k
             (if (= :expr (:type child))
               (comp-expr child (= idx (dec (count (:data expr)))))
               (<> span (:text child) {:margin-right 8}))]))))))
