
{}
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
  :meta $ {} (:calcit-version |0.32.1) (:generated-at 0) (:package |app) (:schema-version 1) (:snapshot |contract-app.cirru)
    :entries $ {} $ |default
      {} (:description |) (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
  :sources $ {}
    |app.empty $ {} (:ns-doc "|Namespace without definitions") (:origin :project)
      :defs $ {}
      :ns-code $ quote $ ns app.empty
    |app.macros $ {} (:ns-doc |) (:origin :project)
      :defs $ {} $ |twice
        {} (:doc |) (:hash |md5:28832a0634d33d2bda08c477454c121a) (:head |defmacro) (:kind :macro) (:schema |Dynamic) (:type |Dynamic)
          :deps $ []
          :source $ quote $ defmacro twice (x)
            quasiquote $ &+ ~x ~x
          :types $ [] ([] | |Fn) ([] |2.0 |Dynamic) ([] |3.1.1 |Dynamic) ([] |3.1.2 |Dynamic)
      :ns-code $ quote $ ns app.macros
    |app.main $ {} (:ns-doc "|Viewer contract fixture") (:origin :project)
      :defs $ {}
        |Point $ {} (:doc |) (:hash |md5:58578ea7418f9e5e2afbc129b8cb3a99) (:head |defstruct) (:kind :lazy-value) (:schema |StructDef) (:type |StructDef)
          :deps $ []
          :source $ quote $ defstruct Point (:x 'Number)
          :types $ [] $ [] | |StructDef
        |double $ {} (:doc "|Twice the input") (:hash |md5:6879a396aa93fe07184dd6a058b31974) (:head |defn) (:kind :fn) (:schema "|Fn Number $ -> Number") (:type "|Fn Number $ -> Number")
          :deps $ [] |calcit.core/*
          :source $ quote $ defn double (n)
            let
                twice $ * n 2
              , twice
          :tests $ [] $ {} (:name |doubles)
            :code $ quote $ assert= 42 (double 21)
          :types $ [] ([] | "|Fn Number $ -> Number") ([] |2.0 |Number) ([] |3 |Number) ([] |3.1.0.0 |Number) ([] |3.1.0.1 |Number) ([] |3.1.0.1.0 "|Fn Number & Number $ -> Number") ([] |3.1.0.1.1 |Number) ([] |3.2 |Number)
        |main! $ {} (:doc |) (:hash |md5:afc22b95cee6e8ca7afada992f5e6914) (:head |defn) (:kind :fn) (:schema "|Fn $ -> Number") (:type "|Fn $ -> Number")
          :deps $ [] |app.main/double
          :source $ quote $ defn main! () (double 21)
          :types $ [] ([] | "|Fn $ -> Number") ([] |3 |Number) ([] |3.0 "|Fn Number $ -> Number")
        |notice $ {} (:doc "|A multi-line string leaf") (:hash |md5:c58625622e924deb241cddcc88589c39) (:head |def) (:kind :lazy-value) (:schema |String) (:type |String)
          :deps $ []
          :source $ quote $ def notice "|first line\nsecond line"
          :types $ [] $ [] | |String
        |qualified-macro $ {} (:doc |) (:hash |md5:3b0c228d3ab6ebf0b24dc27a346d3aa9) (:head |defn) (:kind :fn) (:schema "|Fn $ -> Number") (:type "|Fn $ -> Number")
          :deps $ []
          :source $ quote $ defn qualified-macro () (app.macros/twice 1)
          :types $ [] ([] | "|Fn $ -> Number") ([] |3 |Number)
        |read-point $ {} (:doc |) (:hash |md5:a83d96e7eb60d3bb52ef5df7f99a8153) (:head |defn) (:kind :fn) (:schema "|Fn Dynamic $ -> app.main/Point") (:type "|Fn Dynamic $ -> app.main/Point")
          :deps $ [] |app.main/Point
          :source $ quote $ defn read-point (raw) (decode-map-as raw 'app.main/Point)
          :types $ [] ([] | "|Fn Dynamic $ -> app.main/Point") ([] |2.0 |Dynamic) ([] |3 |app.main/Point) ([] |3.1 |Dynamic)
        |reload! $ {} (:doc |) (:hash |md5:3e6723d922d2dbbcf6b309b7ab591412) (:head |defn) (:kind :fn) (:schema "|Fn $ -> Unit") (:type "|Fn $ -> Unit")
          :deps $ []
          :source $ quote $ defn reload! () &unit
          :types $ [] $ [] | "|Fn $ -> Unit"
        |unused $ {} (:doc |) (:hash |md5:9b4d63c75a652923baeb7c7023d1d0db) (:head |defn) (:kind :fn) (:schema "|Fn String $ -> String") (:type "|Fn String $ -> String")
          :deps $ [] |calcit.core/str
          :source $ quote $ defn unused (s) (str s |!)
          :types $ [] ([] | "|Fn String $ -> String") ([] |2.0 |String) ([] |3 |String) ([] |3.0 "|Fn Dynamic & Dynamic $ -> String") ([] |3.1 |String)
      :ns-code $ quote $ ns app.main (:require)
    |calcit.core $ {} (:ns-doc "|built-in function and macros in `calcit.core`") (:origin :core)
      :defs $ {}
        |* $ {} (:doc "|Multiply numbers together") (:hash |md5:86c4822e8b4c958d8cb849b2f2a8c770) (:head |defn) (:kind :fn) (:schema "|Fn Number & Number $ -> Number") (:type "|Fn Number & Number $ -> Number")
          :deps $ [] |calcit.core/reduce
          :source $ quote $ defn * (x & ys) (reduce ys x &*)
          :tests $ [] $ {} (:name |multiplies-variadic-numbers)
            :code $ quote $ assert= 24 (* 1 2 3 4)
          :types $ []
        |defn $ {}
          :doc "|internal syntax for defining functions\nSyntax: (defn name [args] body)\nParams: name (symbol), args (list of symbols), body (expression)\nReturns: function definition\nDefines a named function with parameters and body expression"
          :hash |md5:d7901242d6fafab03730780f36418155
          :head nil
          :kind :syntax
          :schema "|Fn Dynamic Dynamic Dynamic $ -> Dynamic"
          :type "|Fn Dynamic Dynamic Dynamic $ -> Dynamic"
          :deps $ []
          :source $ quote &runtime-implementation
          :types $ []
        |str $ {} (:doc "|converts values to string and concatenates them") (:hash |md5:bab2ea666d32da202e4c38caa4a980cf) (:head |defn) (:kind :fn) (:schema "|Fn Dynamic & Dynamic $ -> String") (:type "|Fn Dynamic & Dynamic $ -> String")
          :deps $ []
          :source $ quote $ defn str (x0 & xs)
            if (&list:empty? xs) (&str x0)
              &str:concat x0 $ str (&list:nth xs 0) & $ &list:rest xs
          :tests $ []
            {} (:name |concats-dynamic-values)
              :code $ quote $ do
                assert= |abc $ str |a |b |c
                assert= |123 $ str 1 2 3
            {} (:name |omits-nil-and-renders-enums)
              :code $ quote $ do
                assert= |ac $ str |a nil |c
                assert= "|(%:: _ :a |世界 \"|海 洋\")" $ str $ :: :a "|世界" "|海 洋"
            {} (:name |formats-numbers-like-to-string)
              :code $ quote $ do
                assert= |inf $ str $ &/ 1 0
                assert= |-0 $ str $ &* -1 0
                assert= |1000000000000000000000 $ str 1e21
                assert= |0.0000001 $ str 1e-7
          :types $ []
      :ns-code $ quote $ ns calcit.core
        :require $ calcit.internal :as internal
    |calcit.internal $ {} (:ns-doc "|internal function and macros for `calcit.core`") (:origin :core)
      :defs $ {}
      :ns-code $ quote $ ns calcit.internal (:require)
    |calcit.test $ {}
      :ns-doc "|Built-in assertions for definition-attached tests run by `calcit test`."
      :origin :core
      :defs $ {}
      :ns-code $ quote $ ns calcit.test
