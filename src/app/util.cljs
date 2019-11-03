
(ns app.util )

(defn tree->cirru [x]
  (if (= :leaf (:type x))
    (:text x)
    (->> (:data x) (sort-by first) (map (fn [[k v]] (tree->cirru v))) (vec))))
