
(ns app.comp.expr
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core :refer [defcomp <> list-> div button span input pre]]
            [respo.comp.space :refer [=<]]
            [app.util :refer [tree->cirru]]
            ["copy-to-clipboard" :as copy!]
            [respo-message.action :as action]))

(def style-expr
  {:background-color (hsl 300 0 94),
   :border (str "1px solid " (hsl 0 0 70)),
   :border-width "0 0 0 1px",
   :padding "2px 16px",
   :font-family "Source Code Pro, menlo",
   :line-height "16px",
   :margin-bottom 2,
   :vertical-align :top,
   :min-height 16,
   :min-width 32,
   :font-size 13,
   :cursor :pointer})

(defcomp
 comp-expr
 (expr last?)
 (list->
  :div
  {:style (merge
           style-expr
           (if last?
             {:display :inline-block}
             (if (every? (fn [entry] (= :leaf (:type (val entry)))) (:data expr))
               {:display :inline-block, :border-width "0 0 1px 0", :margin "0 4px"}))),
   :title "Click to copy.",
   :class-name "comp-expr",
   :on-click (fn [e d! m!]
     (let [code (pr-str (tree->cirru expr))]
       (copy! code)
       (d! action/create {:text (str "Copied! " code), :token code})))}
  (->> (:data expr)
       (sort-by first)
       (map-indexed
        (fn [idx entry]
          (let [[k child] entry]
            [k
             (if (= :expr (:type child))
               (comp-expr child (= idx (dec (count (:data expr)))))
               (<> span (:text child) {:margin-right 8}))]))))))
