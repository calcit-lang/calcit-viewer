
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
  {:style {:background-color (hsl 300 80 20),
           :color :white,
           :padding "2px 8px",
           :font-family "Source Code Pro, menlo",
           :line-height "16px"}}
  (<> "expr" nil)))
