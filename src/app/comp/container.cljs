
(ns app.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core :refer [defcomp cursor-> <> div button textarea span input pre]]
            [respo.comp.space :refer [=<]]
            [reel.comp.reel :refer [comp-reel]]
            [cljs.reader :refer [read-string]]
            [app.comp.viewer :refer [comp-viewer]]
            [respo-md.comp.md :refer [comp-md]]
            [feather.core :refer [comp-i]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo-message.action :as action]
            [respo-message.comp.messages :refer [comp-messages]]))

(defcomp
 comp-about
 ()
 (div
  {:style {:padding 8}}
  (comp-md
   "Calcit Viewer is a tool for reading calcit.edn files. Read more on https://github.com/Cirru/calcit-viewer .")))

(defcomp
 comp-entry
 (icon page current-page)
 (div
  {:style (merge
           ui/center
           {:font-size 28, :width 48, :height 48, :color (hsl 0 0 60), :cursor :pointer}
           (if (= page current-page) {:color :white})),
   :on-click (fn [e d! m!] (d! :page page))}
  (comp-i icon 14 (hsl 200 80 80))))

(defn on-file-change [e d! m!]
  (let [file (-> (:event e) .-target .-files (aget 0))]
    (if (some? file)
      (if (not= (.-name file) "calcit.edn")
        (do (d! :error (str "Expected calcit.edn , but got " (.-name file))))
        (let [fr (js/FileReader.)]
          (set! fr.onload (fn [event] (d! :load/calcit (read-string event.target.result))))
          (.readAsText fr file))))))

(defcomp
 comp-file-input
 (error)
 (div
  {:style {:padding 16}}
  (<> "Pick calcit.edn to view:")
  (=< 8 nil)
  (input {:type "file", :accept ".edn", :on {:change on-file-change}})
  (div {:style {:color :red}} (<> error))))

(defcomp
 comp-text-area
 (text error)
 (div
  {:style (merge ui/row ui/flex)}
  (textarea
   {:style (merge
            ui/textarea
            ui/flex
            {:width "100%", :font-family ui/font-code, :font-size 12, :line-height "1.4em"}),
    :value text,
    :placeholder "Paste calcit.edn content here...",
    :on-input (fn [e d! m!] (d! :text (:value e)))})
  (div
   {:style {:padding 8}}
   (button
    {:style ui/button,
     :on-click (fn [e d! m!]
       (try
        (d! :load/calcit (read-string text))
        (catch js/Error error (d! :error (str error)))))}
    (<> "Parse"))
   (div {:style {:color :red}} (<> error)))))

(defcomp
 comp-container
 (reel)
 (let [store (:store reel), states (:states store)]
   (div
    {:style (merge ui/global ui/fullscreen ui/row)}
    (let [page (:page store)]
      (div
       {:style {:background-color (hsl 200 30 24), :color :white}}
       (comp-entry :upload :input page)
       (comp-entry :edit :textarea page)
       (comp-entry :monitor :viewer page)
       (comp-entry :info :about page)))
    (case (:page store)
      :viewer
        (div
         {:style (merge ui/expand {:padding 16, :overflow :auto})}
         (if (some? (:error store))
           (<> span (:error store) {:color :red})
           (if (some? (:calcit store)) (comp-viewer (:calcit store)) (<> "Nothing"))))
      :textarea (comp-text-area (:text store) (:error store))
      :input (comp-file-input (:error store))
      :about (comp-about)
      (<> "Unknown route"))
    (comp-messages (:messages store) {} (fn [info d! m!] (d! action/clear nil)))
    (comp-inspect :store store {:bottom 0, :right 8})
    (cursor-> :reel comp-reel states reel {}))))
