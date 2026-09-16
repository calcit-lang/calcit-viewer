
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :native) (:reload-fn 'app.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-feather.calcit/ |respo-message.calcit/ |cumulo-util.calcit/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    'app.ast $ %{} 'FileEntry
      :defs $ {}
        'RegExpHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait RegExpHost
            .test! $ :: 'Fn $ {}
              :args $ [] 'app.ast/RegExpHost 'String
              :return 'Bool
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :test! |test
          :schema $ :: 'Trait
        'build-deps-graph $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn build-deps-graph (entry-ns entry-def files pkg) (; println entry-ns entry-def pkg) (; js/console.log files)
            let
                ns-deps-map $ -> files $ filter-map-kv
                  fn (ns' file)
                    hint-fn $ {}
                      :args $ [] 'String 'Dynamic
                      :return $ :: 'MapEntryDecision 'String 'Dynamic
                    let
                        ns-form $ tree->cirru $ get-in file ([] :ns :code)
                        rules $ if
                          = 3 $ count ns-form
                          slice
                            option:unwrap-or (nth ns-form 2) ([])
                            , 1
                          []
                        defs $ schema/as-string-map $ reel.schema/read-field file :defs
                      ; js/console.log |entry ns' ns-form
                      %:: MapEntryDecision :keep ns' $ let
                          results $ map rules $ fn (rule)
                            parse-rule $ unify-rule rule
                          ns-dict $ merge ({}) & $ -> results
                            filter $ fn (paired)
                              = :ns $ option:unwrap-or (get paired 0) :none
                            map last
                          defs-dict $ merge ({}) & $ -> results
                            filter $ fn (paired)
                              = :def $ option:unwrap-or (get paired 0) :none
                            map last
                          defaults-dict $ merge ({}) & $ -> results
                            filter $ fn (paired)
                              = :default $ option:unwrap-or (get paired 0) :none
                            map last
                          defs-deps $ -> defs $ filter-map-kv
                            fn (k entry)
                              hint-fn $ {}
                                :args $ [] 'String 'Dynamic
                                :return $ :: 'MapEntryDecision 'String 'Dynamic
                              %:: MapEntryDecision :keep k $ match-references
                                tree->cirru $ reel.schema/read-field entry :code
                                , ns-dict defs-dict defaults-dict (keys defs) ns'
                        , defs-deps
              , ns-deps-map
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String 'String (:: 'Map 'String 'Dynamic) 'String
            :return $ :: 'Map 'String 'Dynamic
        'flatten-form $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn flatten-form (xs)
            if (list? xs) (mapcat xs flatten-form) ([] xs)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'List 'Dynamic
        'match-references $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn match-references (form ns-dict defs-dict defaults-dict current-defs current-ns)
            let
                tokens $ -> form (slice 2) (flatten-form)
                  filter $ fn (x)
                    cond
                        starts-with? x |:
                        , false
                      (starts-with? x |.) false
                      (starts-with? x ||) false
                      (starts-with? x "|\"") false
                      (number-token? x) false
                      true true
                  map $ fn (x)
                    -> x (strip-prefix |~@) (strip-prefix |~) (strip-prefix |@)
                  distinct
                  map $ fn (x)
                    cond
                        contains? current-defs x
                        {} (:kind :def) (:ns current-ns) (:def x)
                      (contains? defs-dict x) (get defs-dict x)
                      (contains? defaults-dict x) (get defaults-dict x)
                      (includes? x |/)
                        let[] (ns-part def-part) (split x |/)
                          if (contains? defs-dict ns-part)
                            {} (:kind :def)
                              :ns $ reel.schema/read-field (get ns-dict ns-part) :ns
                              :def x
                      true nil
                  filter some?
              ; js/console.log |tokens tokens
              , tokens
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic (:: 'Map 'String 'Dynamic) (:: 'Map 'String 'Dynamic) (:: 'Map 'String 'Dynamic) (:: 'Set 'String) 'String
            :return $ :: 'List 'Dynamic
        'number-token? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn number-token? (x)
            let
                pattern $ unsafe-coerce pattern-number 'app.ast/RegExpHost
              .test! pattern x
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'parse-rule $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-rule (rule) (; println |rule rule)
            case-default
              option:unwrap-or (nth rule 1) |:unknown
              , nil
                |:as $ [] :ns $ {}
                    nth rule 2
                    {} (:kind :ns)
                      :alias $ nth rule 2
                      :ns $ nth rule 0
                |:refer $ [] :def $ ->
                  option:unwrap-or (nth rule 2) ([])
                  map $ fn (def-name)
                    [] def-name $ {} (:kind :def) (:def def-name)
                      :ns $ nth rule 0
                  pairs-map
                |:default $ [] :default $ &{} (nth rule 2)
                  {} (:kind :default)
                    :package $ nth rule 0
                    :alias $ nth rule 2
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic
        'pattern-number $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def pattern-number (new js/RegExp "|^\\d+(\\.\\d+)?$")
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'tree->cirru $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn tree->cirru (x)
            if (&struct:matches? x schema/CirruLeaf) (reel.schema/read-field x :text)
              ->
                schema/as-string-map $ reel.schema/read-field x :data
                &map:to-list
                schema/sort-string-map-entries
                map $ fn (entry)
                  tree->cirru $ last entry
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Dynamic
        'unify-rule $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn unify-rule (rule)
            -> rule
              filter $ fn (x) (not= x |[])
              map $ fn (x)
                if (list? x) (unify-rule x) x
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.ast
          :require (app.schema :as schema) (reel.schema :as reel-schema)
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'FileHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FileHost (:name 'String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'FileInputHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FileInputHost (:files 'app.comp.container/FileListHost)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'FileListHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FileListHost
            .item! $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/FileListHost 'Number
              :return $ :: 'JsNullish 'app.comp.container/FileHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :item! |item
          :schema $ :: 'Trait
        'FileReaderHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FileReaderHost
            :result $ :: 'JsNullish 'String
            :onload 'Dynamic
            .read-as-text! $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/FileReaderHost 'app.comp.container/FileHost
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :read-as-text! |readAsText
            :writable $ #{} :onload
          :schema $ :: 'Trait
        'comp-about $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-about ()
            div
              {} $ :style $ {} (:padding 8)
              comp-md "|Calcit Viewer is a tool for reading calcit.cirru files. Read more on https://github.com/calcit-lang/calcit-viewer ." $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ reel.schema/read-field reel :store
                states $ reel.schema/read-field store :states
              div
                {} $ :class-name $ str-spaced css/global css/fullscreen css/row
                let
                    page $ reel.schema/read-field store :page
                  div
                    {} $ :style $ {}
                      :background-color $ hsl 200 30 24
                      :color :white
                    comp-entry :upload :input page
                    comp-entry :edit :textarea page
                    comp-entry :monitor :viewer page
                    comp-entry :info :about page
                    comp-entry :map :graph page
                case-default (reel.schema/read-field store :page) (<> "|Unknown route")
                  :viewer $ div
                    {} (:class-name css/expand)
                      :style $ {} (:padding 16) (:overflow :auto)
                    if
                      some? $ reel.schema/read-field store :error
                      <> (reel.schema/read-field store :error)
                        {} $ :color :red
                      if
                        some? $ reel.schema/read-field store :calcit
                        comp-viewer $ reel.schema/read-field store :calcit
                        <> |Nothing
                  :textarea $ comp-text-area (reel.schema/read-field store :text) (reel.schema/read-field store :error)
                  :input $ comp-file-input $ reel.schema/read-field store :error
                  :about $ comp-about
                  :graph $ comp-graph (>> states :graph) (reel.schema/read-field store :calcit)
                comp-messages
                  w-js-log $ reel.schema/read-field store :messages
                  {}
                  fn (info d!) (d! action/clear nil)
                if config/dev? $ comp-inspect :store store $ {} (:bottom 0) (:right 8)
                comp-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
        'comp-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-entry (icon page current-page)
            div
              {}
                :class-name $ str-spaced css/center style-entry
                :style $ if (= page current-page)
                  {} $ :color :white
                :on-click $ fn (e d!) (d! :page page)
              comp-i icon 14 $ hsl 200 80 80
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'Dynamic 'Dynamic
        'comp-file-input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-file-input (error)
            div
              {} $ :style $ {} (:padding 16)
              <> "|Pick calcit.cirru to view:"
              =< 8 nil
              input $ {} (:type |file) (:on-change on-file-change)
              div
                {} $ :style $ {} (:color :red)
                <> error
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
        'comp-text-area $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-text-area (text error)
            div
              {} $ :class-name $ str-spaced css/row css/flex
              textarea $ {}
                :class-name $ str-spaced css/textarea css/flex css/font-code!
                :style $ {} (:width |100%) (:font-size 12) (:line-height |1.4em)
                :value text
                :placeholder "|Paste calcit.cirru content here..."
                :on-input $ fn (e d!)
                  d! :text $ option:unwrap $ get e :value
              div
                {} $ :style $ {} (:padding 8)
                button
                  {} (:class-name css/button)
                    :on-click $ fn (e d!)
                      try
                        d! :load/calcit $ parse-cirru-edn text
                        fn (error)
                          d! :error $ str error
                  <> |Parse
                div
                  {} $ :style $ {} (:color :red)
                  <> error
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'Dynamic
        'on-file-change $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-file-change (e d!)
            let
                event-host $ unsafe-coerce
                  option:unwrap $ get e :event
                  , 'js-ffi.browser/EventHost
                target $ unsafe-coerce (.-target event-host) 'app.comp.container/FileInputHost
                files $ .-files target
                maybe-file $ .item! files 0
              if (js-present? maybe-file)
                let
                    file $ unsafe-coerce maybe-file 'app.comp.container/FileHost
                    filename $ .-name file
                  if (not= filename |calcit.cirru)
                    do
                      d! :error $ str "|Expected calcit.cirru , but got " filename
                      , &unit
                    let
                        reader $ unsafe-coerce (new js/FileReader) 'app.comp.container/FileReaderHost
                        on-load $ fn (event)
                          hint-fn $ {}
                            :args $ [] 'js-ffi.browser/EventHost
                            :return 'Unit
                            :features $ #{} :js-ffi
                          let
                              event-reader $ unsafe-coerce (.-target event) 'app.comp.container/FileReaderHost
                              result $ .-result event-reader
                            if (js-present? result)
                              do
                                d! :load/calcit $ parse-cirru-edn (unsafe-coerce result 'String)
                                  {} (:CodeEntry schema/CodeEntry) (:Leaf schema/CirruLeaf) (:Expr schema/CirruExpr)
                                , &unit
                              do (d! :error "|Failed to read calcit.cirru") &unit
                      js-set reader :onload on-load
                      .read-as-text! reader file
                      , &unit
                , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
        'style-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-entry
            {} $ |& $ {} (:font-size 28) (:width 48) (:height 48)
              :color $ hsl 0 0 60
              :cursor :pointer
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> <> div button textarea span input pre
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
            reel.schema :as reel-schema
            app.comp.viewer :refer $ comp-viewer
            respo-md.comp.md :refer $ comp-md
            feather.core :refer $ comp-i
            respo.comp.inspect :refer $ comp-inspect
            respo-message.action :as action
            respo-message.comp.messages :refer $ comp-messages
            app.config :as config
            app.comp.graph :refer $ comp-graph
            app.schema :as schema
            respo-ui.css :as css
            respo.css :refer $ defstyle
            js-ffi.browser :as browser
    'app.comp.expr $ %{} 'FileEntry
      :defs $ {}
        'DayjsHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DayjsHost
            .format! $ :: 'Fn $ {}
              :args $ [] 'app.comp.expr/DayjsHost 'String
              :return 'String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :format! |format
          :schema $ :: 'Trait
        'comp-expr $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-expr (expr last?)
            list->
              {}
                :class-name $ str-spaced style-expr |comp-expr
                :style $ if last?
                  {} $ :display :inline-block
                  if
                    every?
                      ->
                        schema/as-string-map $ reel.schema/read-field expr :data
                        &map:to-list
                      fn (entry)
                        if-let
                          node $ last entry
                          &struct:matches? node schema/CirruLeaf
                          , false
                    {} (:display :inline-block) (:border-width "|0 0 1px 0") (:margin "|0 4px")
                :on-click $ fn (e d!)
                  let
                      code $ format-cirru $ [] (tree->cirru expr)
                    copy! code
                    d! action/create $ {}
                      :text $ str "|Copied! " code
                      :token code
              ->
                schema/as-string-map $ reel.schema/read-field expr :data
                &map:to-list
                schema/sort-string-map-entries
                map-indexed $ fn (idx entry)
                  let-sugar
                        [] k child
                        , entry
                    [] k $ if (&struct:matches? child schema/CirruExpr)
                      comp-expr child $ = idx $ dec
                        count $ reel.schema/read-field expr :data
                      div
                        {} $ :class-name $ str-spaced css/column style-leaf
                        <> $ reel.schema/read-field child :text
                        <>
                          str $ format-time $ reel.schema/read-field child :at
                          str-spaced style-date-hint css/font-normal!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'Bool
        'format-time $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn format-time (value)
            ->
              unsafe-coerce (dayjs value) 'app.comp.expr/DayjsHost
              .format! "|YY MM-DD"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'style-date-hint $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-date-hint
            {} $ |& $ {} (:font-size 12) (:white-space :nowrap)
              :color $ hsl 0 0 60
          :examples $ []
          :schema $ :: 'Dynamic
        'style-expr $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-expr
            {}
              |& $ {} (:padding "|2px 16px") (:font-family "|Source Code Pro, menlo") (:line-height |16px) (:margin-bottom 2) (:vertical-align :top) (:min-height 16) (:min-width 32) (:font-size 13) (:cursor :pointer) (:border-radius |8px) (:border-style :solid)
                :border-color $ hsl 0 0 70
                :border-width "|0 0 0 1px"
                :background-color $ hsl 300 0 98
              |&:hover $ {}
                ; :background-color $ hsl 300 0 92
                :outline $ str "|2px solid " $ hsl 200 90 70 (%some 0.5)
              "|&:has(.comp-expr:hover):hover" $ {}
                :background-color $ hsl 300 0 98
                :outline :none
          :examples $ []
          :schema $ :: 'Dynamic
        'style-leaf $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-leaf
            {} $ |& $ {} (:display :inline-flex) (:margin-right 8)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.expr
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> list-> div button span input pre
            respo.comp.space :refer $ =<
            app.ast :refer $ tree->cirru
            reel.schema :as reel-schema
            |copy-to-clipboard :default copy!
            respo-message.action :as action
            app.schema :as schema
            respo.css :refer $ defstyle
            respo-ui.css :as css
            |dayjs :default dayjs
    'app.comp.file $ %{} 'FileEntry
      :defs $ {}
        'comp-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-file (filename file-info)
            div
              {} $ :class-name $ str-spaced css/row style-file
              <> filename
              =< 16 nil
              div ({})
                div
                  {} (:class-name css/column)
                    :style $ {}
                      :border-left $ str "|1px solid " $ hsl 0 0 80
                      :padding-left 8
                  div
                    {} $ :class-name css/row
                    <> |ns $ {} $ :color (hsl 0 0 70)
                    =< 8 nil
                    comp-md-block
                      option:unwrap-or
                        get-in file-info $ [] :ns :doc
                        , |
                      {} $ :class-name css/font-normal
                  comp-expr
                    get-in file-info $ [] :ns :code
                    , false
                list->
                  {} $ :style $ {}
                    :border-left $ str "|1px solid " $ hsl 0 0 70
                    :padding-left 16
                    :margin-bottom 2
                  ->
                    schema/as-string-map $ reel.schema/read-field file-info :defs
                    &map:to-list
                    map $ fn (entry)
                      let-sugar
                            [] def-name def-info
                            , entry
                        [] def-name $ div
                          {} $ :class-name css/column
                          div
                            {} $ :class-name css/row
                            <> def-name $ {} (:white-space :nowrap)
                              :color $ hsl 0 0 70
                            =< 8 nil
                            comp-md-block (reel.schema/read-field def-info :doc)
                              {} $ :class-name css/font-normal
                          comp-expr (reel.schema/read-field def-info :code) false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String 'Dynamic
        'style-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-file
            {} $ |& $ {}
              :border-left $ str "|1px solid " $ hsl 0 0 70
              :padding-left 8
              :font-family "|Source Code Pro, menlo"
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.file
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> list-> div button span input pre
            respo.comp.space :refer $ =<
            app.comp.expr :refer $ comp-expr
            reel.schema :as reel-schema
            respo-ui.css :as css
            respo.css :refer $ defstyle
            respo-md.comp.md :refer $ comp-md-block
            app.schema :as schema
    'app.comp.graph $ %{} 'FileEntry
      :defs $ {}
        'comp-graph $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-graph (states snapshot)
            let
                cursor $ reel.schema/read-field states :cursor
                configs $ reel.schema/read-field snapshot :configs
                state $ or (reel.schema/read-field states :data)
                  {} (:graph nil)
                    :init-fn $ reel.schema/read-field configs :init-fn
                entry $ split
                  assert-type (reel.schema/read-field state :init-fn) 'String
                  , |/
              div
                {} $ :class-name $ str-spaced css/expand css/column
                div
                  {} $ :style $ {}
                    :border-bottom $ str "|1px solid " $ hsl 0 0 90
                    :padding "|8px 4px"
                  button $ {} (:class-name css/button) (:inner-text |Button)
                    :on-click $ fn (e d!) (; js/console.log snapshot)
                      d! cursor $ assoc state :graph $ build-deps-graph
                        option:unwrap-or (nth entry 0) |
                        option:unwrap-or (nth entry 1) |
                        reel.schema/read-field snapshot :files
                        reel.schema/read-field snapshot :package
                  =< 8 nil
                  input $ {}
                    :value $ reel.schema/read-field state :init-fn
                    :class-name css/input
                    :on-input $ fn (e d!)
                      d! cursor $ assoc state :init-fn $ assert-type
                        option:unwrap $ get e :value
                        , 'String
                div
                  {} (:class-name css/expand)
                    :style $ {} $ :padding |8px
                  if
                    some? $ reel.schema/read-field state :graph
                    comp-graph-tree
                      option:unwrap-or (nth entry 0) |
                      option:unwrap-or (nth entry 1) |
                      reel.schema/read-field state :graph
                      #{}
                      reel.schema/read-field snapshot :files
                    <> "|no graph"
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-graph-tree $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-graph-tree (ns' def' dict footprints files)
            let
                path $ str ns' |/ def'
              div
                {} $ :class-name css/row
                div
                  {} $ :class-name css/column
                  div
                    {} $ :style $ {} (:margin "|0px 0") (:line-height |20px)
                    <> (str ns' |/)
                      {}
                        :color $ hsl 0 0 70
                        :line-height |14px
                        :font-size |12px
                    <> def' $ {} (:line-height |20px) (:font-family ui/font-normal)
                  if-let
                    doc $ get-in files $ [] ns' :defs def' :doc
                    comp-md-block doc $ {} (:class-name css/font-normal)
                      :style $ {} $ :color (hsl 0 0 50)
                    comp-md-block | $ {}
                if (contains? footprints path)
                  <> |Looped $ {} (:display :inline-block) (:margin "|0 4px")
                    :background-color $ hsl 40 80 60
                    :padding "|0 6px"
                    :color :white
                    :border-radius |8px
                  let
                      deps $ get-in dict $ [] ns' def'
                    if (list? deps)
                      div
                        {} $ :style $ {}
                          :border-left $ str "|1px solid " $ hsl 0 0 90
                          :padding "|0 8px"
                          :margin "|0 8px"
                        , & $ -> deps $ map
                          fn (dep)
                            if
                              = :default $ reel.schema/read-field dep :kind
                              div
                                {} $ :style $ {}
                                  :color $ hsl 200 80 60
                                  :line-height |20px
                                  :text-decoration :underline
                                <> $ reel.schema/read-field dep :package
                              comp-graph-tree (reel.schema/read-field dep :ns) (reel.schema/read-field dep :def) dict (include footprints path) files
                      div
                        {} $ :style $ {} (:padding "|0 8px") (:line-height |20px)
                        <> |- $ {} $ :color (hsl 0 0 80)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String 'String (:: 'Map 'String 'Dynamic) (:: 'Set 'String) (:: 'Map 'String 'Dynamic)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.graph
          :require
            respo-ui.core :refer $ hsl
            respo.core :refer $ defcomp <> list-> div button span input pre
            respo.comp.space :refer $ =<
            app.ast :refer $ build-deps-graph
            reel.schema :as reel-schema
            respo-ui.css :as css
            respo.css :refer $ defstyle
            respo-md.comp.md :refer $ comp-md-block
            respo-ui.core :as ui
    'app.comp.viewer $ %{} 'FileEntry
      :defs $ {} $ 'comp-viewer
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-viewer (calcit)
            div ({})
              div ({}) (<> |Namespace:) (=< 8 nil)
                <> $ reel.schema/read-field calcit :package
              div ({}) (<> |Users:) (=< 8 nil)
                <> $ reel.schema/read-field calcit :users
              div ({}) (<> |Configs:) (=< 8 nil)
                <> $ reel.schema/read-field calcit :configs
              div
                {} $ :style ui/row
                <> |Files:
                =< 16 nil
                list-> ({})
                  ->
                    schema/as-string-map $ reel.schema/read-field calcit :files
                    &map:to-list
                    map $ fn (entry)
                      let-sugar
                            [] filename file-info
                            , entry
                        [] filename $ comp-file filename file-info
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.viewer
          :require
            hsl.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> div list-> button span input
            respo.comp.space :refer $ =<
            app.comp.file :refer $ comp-file
            reel.schema :as reel-schema
            app.schema :as schema
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main.css) (:title "|Calcit Viewer") (:icon |http://cdn.tiye.me/logo/cirru.png) (:storage-key |calcit-viewer)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel
            -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Tag 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            reset! *reel $ reel-updater updater @*reel op
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch *reel :changes $ fn (r p) (render-app!)
            listen-devtools! |k dispatch!
            js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
            js/window.addEventListener |visibilitychange $ fn (event)
              if
                = |hidden $ unsafe-coerce js/document.visibilityState 'String
                persist-storage!
            let
                raw $ js/localStorage.getItem $ reel-schema/read-field config/site :storage-key
              when (js-present? raw)
                dispatch! $ :: :hydrate-storage $ parse-cirru-edn (unsafe-coerce raw 'String)
            println "|App started."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            option:unwrap $ query-selector |.app
          :examples $ []
          :schema $ :: 'js-ffi.browser/DomElementHost
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            println "|Saved at" $ reel-schema/read-field (js-shared/date-now-snapshot) :iso
            js/localStorage.setItem (reel-schema/read-field config/site :storage-key)
              format-cirru-edn $ reel-schema/read-field @*reel :store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ unsafe-coerce (refresh-reel @*reel schema/store updater) (:: 'Map 'Tag 'Dynamic)
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            js-ffi.browser :refer $ query-selector
            js-ffi.shared :as js-shared
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'CirruExpr $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct CirruExpr (:by 'Dynamic) (:at 'Dynamic) (:data 'Dynamic)
          :examples $ []
          :schema $ :: 'Enum
        'CirruLeaf $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct CirruLeaf (:at 'Dynamic) (:by 'Dynamic) (:text 'Dynamic)
          :examples $ []
          :schema $ :: 'Enum
        'CodeEntry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct CodeEntry (:doc 'Dynamic) (:code 'Dynamic)
          :examples $ []
          :schema $ :: 'Enum
        'StoreData $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct StoreData
            :states $ :: 'Map 'Dynamic 'Dynamic
            :error 'Dynamic
            :calcit 'Dynamic
            :page 'Tag
            :text 'String
            :messages $ :: 'Map 'Dynamic 'Dynamic
          :examples $ []
          :schema $ :: 'Enum
        'as-string-map $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn as-string-map (x)
            unsafe-coerce x $ :: 'Map 'String 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
            :return $ :: 'Map 'String 'Dynamic
        'sort-string-map-entries $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sort-string-map-entries (xs)
            sort xs $ fn (a b)
              hint-fn $ {}
                :args $ [] (:: List Dynamic) (:: List Dynamic)
                :return Number
              &compare
                option:unwrap $ first a
                option:unwrap $ first b
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'List (:: 'List 'Dynamic)
            :return $ :: 'List $ :: 'List 'Dynamic
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            StoreData :states ({}) :error nil :calcit nil :page :input :text | :messages $ {}
          :examples $ []
          :schema $ :: 'app.schema/StoreData
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            if
              action/message-action? $ nth op 0
              assoc store :messages $ update-messages (reel-schema/read-field store :messages) (nth op 0) (nth op 1) op-id op-time
              match op
                (:states cursor s) (update-states store cursor s)
                (:load/calcit data)
                  -> store (assoc :calcit data) (assoc :error nil) (assoc :page :viewer)
                (:text t) (assoc store :text t)
                (:error e) (assoc store :error e)
                (:page p) (assoc store :page p)
                (:hydrate-storage d) d
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/StoreData)
            :args $ [] 'app.schema/StoreData 'Dynamic 'Dynamic 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require
            respo.cursor :refer $ update-states
            respo-message.action :as action
            respo-message.updater :refer $ update-messages
            reel.schema :as reel-schema
