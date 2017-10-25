
(ns app.comp.container
  (:require [hsl.core :refer [hsl]]
            [verbosely.core :refer [verbosely!]]
            [respo-ui.style :as ui]
            [respo.macros :refer [defcomp <> div button span input]]
            [respo.comp.space :refer [=<]]
            [reel.comp.reel :refer [comp-reel]]
            [cljs.reader :refer [read-string]]
            [app.comp.viewer :refer [comp-viewer]]))

(defn on-file-change [e d! m!]
  (let [file (-> (:event e) .-target .-files (aget 0)), filename (.-name file)]
    (if (not= filename "coir.edn")
      (do (d! :error (str "Expected coir.edn , but got " filename)))
      (let [fr (js/FileReader.)]
        (set! fr.onload (fn [event] (d! :load/coir (read-string event.target.result))))
        (.readAsText fr file)))))

(defcomp
 comp-container
 (reel)
 (let [store (:store reel)]
   (div
    {:style (merge ui/global)}
    (div
     {:style {:padding 16}}
     (<> "Pick coir.edn to view:")
     (=< 8 nil)
     (input {:type "file", :accept ".edn", :on {:change on-file-change}}))
    (div
     {:style {:padding 16}}
     (if (some? (:error store))
       (<> span (:error store) {:color :red})
       (if (some? (:coir store)) (comp-viewer (:coir store)) (<> "Nothing"))))
    (comp-reel reel {}))))
