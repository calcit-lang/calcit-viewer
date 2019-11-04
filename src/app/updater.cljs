
(ns app.updater
  (:require [respo.cursor :refer [mutate]]
            [respo-message.action :as action]
            [respo-message.updater :refer [update-messages]]))

(defn updater [store op op-data]
  (case op
    :states (update store :states (mutate op-data))
    :load/calcit (-> store (assoc :calcit op-data) (assoc :error nil) (assoc :page :viewer))
    :text (assoc store :text op-data)
    :error (assoc store :error op-data)
    :page (assoc store :page op-data)
    (let [op-time (.now js/Date), op-id (.random js/Math)]
      (cond
        (action/message-action? op)
          (update store :messages #(update-messages % op op-data op-id op-time))
        :else (do (println "Unknown op:" op) store)))))
