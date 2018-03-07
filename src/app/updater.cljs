
(ns app.updater (:require [respo.cursor :refer [mutate]]))

(defn updater [store op op-data]
  (case op
    :states (update store :states (mutate op-data))
    :load/coir (-> store (assoc :coir op-data) (assoc :error nil) (assoc :page :viewer))
    :text (assoc store :text op-data)
    :error (assoc store :error op-data)
    :page (assoc store :page op-data)
    store))
