
(ns app.updater.core (:require [respo.cursor :refer [mutate]]))

(defn updater [store op op-data]
  (case op
    :states (update store :states (mutate op-data))
    :load/coir (-> store (assoc :coir op-data) (assoc :error nil))
    :error (assoc store :error op-data)
    store))
