
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-feather.calcit/ |respo-message.calcit/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    'app.ast $ %{} 'FileEntry
      :defs $ {}
        'ImportRule $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum ImportRule (:alias 'String 'String) (:refer 'String 'String) (:default 'String 'String)
          :examples $ []
          :schema $ :: 'EnumDef
        'Reference $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Reference (:def 'String 'String) (:default 'String)
          :examples $ []
          :schema $ :: 'EnumDef
        'build-deps-graph $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn build-deps-graph (entry-ns entry-def files pkg)
            filter-map-kv files $ fn (ns-name file)
              let
                  ns-info $ reel-schema/read-field file :ns
                  ns-form $ tree->cirru $ reel-schema/read-field ns-info :code
                  rules $ mapcat (slice ns-form 2)
                    fn (clause)
                      if (list? clause)
                        if
                          = |:require $ .unwrap-or (first clause) nil
                          slice clause 1
                          []
                        []
                  results $ mapcat rules $ fn (rule)
                    parse-rule $ decode-map-as rule $ :: 'List 'Dynamic
                  ns-dict $ fold results ({})
                    fn (dict rule)
                      hint-fn $ {}
                        :args $ [] (:: 'Map 'String 'String) 'app.ast/ImportRule
                        :return $ :: 'Map 'String 'String
                      match rule
                        (:alias namespace alias) (assoc dict alias namespace)
                        _ dict
                  defs-dict $ fold results ({})
                    fn (dict rule)
                      hint-fn $ {}
                        :args $ [] (:: 'Map 'String 'app.ast/Reference) 'app.ast/ImportRule
                        :return $ :: 'Map 'String 'app.ast/Reference
                      match rule
                        (:refer namespace name)
                          assoc dict name $ Reference :def namespace name
                        _ dict
                  defaults-dict $ fold results ({})
                    fn (dict rule)
                      hint-fn $ {}
                        :args $ [] (:: 'Map 'String 'app.ast/Reference) 'app.ast/ImportRule
                        :return $ :: 'Map 'String 'app.ast/Reference
                      match rule
                        (:default package alias)
                          assoc dict alias $ Reference :default package
                        _ dict
                  defs $ schema/as-string-map $ reel-schema/read-field file :defs
                MapEntryDecision :keep ns-name $ filter-map-kv defs $ fn (name entry)
                  MapEntryDecision :keep name $ match-references
                    tree->cirru $ reel-schema/read-field entry :code
                    , ns-dict defs-dict defaults-dict (keys defs) ns-name $ keys files
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String 'String (:: 'Map 'String 'Dynamic) 'String
            :return $ :: 'Map 'String $ :: 'Map 'String (:: 'List 'app.ast/Reference)
          :tests $ [] $ %{} 'TestEntry (:name |current-canonical-snapshot)
            :code $ quote $ let
                source $ match
                  .read-text $ fs:path |calcit.cirru
                  (:ok text) text
                  (:err message) (raise message)
                snapshot $ parse-cirru-edn source
                files $ schema/as-string-map $ reel-schema/read-field snapshot :files
                graph $ build-deps-graph |app.main |main! files |app
                dispatch-refs $ .unwrap $ get-in graph ([] |app.main |dispatch!)
                reel-refs $ .unwrap $ get-in graph ([] |app.main |*reel)
              assert= true $ contains? graph |app.ast
              assert= true $ .includes? dispatch-refs $ Reference :def |app.updater |updater
              assert= true $ .includes? reel-refs $ Reference :def |app.schema |store
        'flatten-form $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn flatten-form (xs)
            if (list? xs) (mapcat xs flatten-form)
              [] $ decode-map-as xs 'String
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'List 'String
        'match-references $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn match-references (form ns-dict defs-dict defaults-dict current-defs current-ns known-namespaces)
            -> form (slice 2) (flatten-form)
              filter $ fn (x)
                not $ or (starts-with? x |:) (starts-with? x |.) (starts-with? x ||) (starts-with? x "|\"")
              map $ fn (x)
                -> x (strip-prefix |~@) (strip-prefix |~) (strip-prefix |@)
              distinct
              mapcat $ fn (x)
                cond
                    contains? current-defs x
                    [] $ Reference :def current-ns x
                  (contains? defs-dict x)
                    [] $ .unwrap $ get defs-dict x
                  (contains? defaults-dict x)
                    [] $ .unwrap $ get defaults-dict x
                  (includes? x |/)
                    let
                        parts $ split x |/
                        ns-part $ .unwrap $ first parts
                        def-part $ .unwrap $ nth parts 1
                      match (get ns-dict ns-part)
                        (:some namespace)
                          [] $ Reference :def namespace def-part
                        (:none)
                          match (get defaults-dict ns-part)
                            (:some reference) ([] reference)
                            (:none)
                              if
                                or (contains? known-namespaces ns-part) (.contains-value? ns-dict ns-part)
                                [] $ Reference :def ns-part def-part
                                []
                  true $ []
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'Dynamic) (:: 'Map 'String 'String) (:: 'Map 'String 'app.ast/Reference) (:: 'Map 'String 'app.ast/Reference) (:: 'Set 'String) 'String $ :: 'Set 'String
            :return $ :: 'List 'app.ast/Reference
          :tests $ [] $ %{} 'TestEntry (:name |alias-refer-default-and-qualified)
            :code $ quote $ assert=
              [] (Reference :def |lib.core |run) (Reference :def |lib.core |picked) (Reference :default |dayjs) (Reference :def |app.main |local) (Reference :def |pkg.ns |direct)
              match-references
                [] |defn |start ([])
                  [] |alias/run |picked |day/format |local |pkg.ns/direct |42 |:tag ||text |missing
                {} $ |alias |lib.core
                {} $ |picked $ Reference :def |lib.core |picked
                {} $ |day $ Reference :default |dayjs
                #{} |local
                , |app.main $ #{} |pkg.ns
        'parse-rule $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-rule (rule)
            let
                module $ decode-map-as
                  .unwrap $ first rule
                  , 'String
                npm? $ starts-with? module ||
                source $ if npm? (strip-prefix module ||) module
              mapcat
                range 1 (count rule) 2
                fn (idx)
                  let
                      mode $ decode-map-as
                        .unwrap $ nth rule idx
                        , 'String
                      payload $ .unwrap $ nth rule (inc idx)
                    match mode
                      |:as $ [] $ if npm?
                        ImportRule :default source $ decode-map-as payload 'String
                        ImportRule :alias source $ decode-map-as payload 'String
                      |:refer $ map
                        decode-map-as payload $ :: 'List 'String
                        fn (name)
                          if npm? (ImportRule :default source name) (ImportRule :refer source name)
                      |:default $ [] $ ImportRule :default source (decode-map-as payload 'String)
                      _ $ raise $ str |Unsupported-import-mode: mode
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'List 'Dynamic
            :return $ :: 'List 'app.ast/ImportRule
          :tests $ [] $ %{} 'TestEntry (:name |multiple-options-and-npm)
            :code $ quote $ do
              assert=
                [] (ImportRule :alias |lib.core |lib) (ImportRule :refer |lib.core |pick) (ImportRule :refer |lib.core |drop)
                parse-rule $ [] |lib.core |:as |lib |:refer $ [] |pick |drop
              assert=
                [] (ImportRule :default |dayjs |day) (ImportRule :default |dayjs |format)
                parse-rule $ [] ||dayjs |:as |day |:refer $ [] |format
              assert=
                [] $ ImportRule :default |pkg |api
                parse-rule $ [] ||pkg |:default |api
        'tree->cirru $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn tree->cirru (x)
            decode-map-as
              &cirru-quote:to-list $ decode-map-as x 'CirruQuote
              :: 'List 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'List 'Dynamic
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
                  fn (info d!)
                    d! $ :: action/clear
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
                :on-click $ fn (e d!)
                  d! $ :: :page page
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
                  d! $ :: :text $ option:unwrap (get e :value)
              div
                {} $ :style $ {} (:padding 8)
                button
                  {} (:class-name css/button)
                    :on-click $ fn (e d!)
                      try
                        d! $ :: :load/calcit $ parse-cirru-edn text
                        fn (error)
                          d! $ :: :error $ str error
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
                      d! $ :: :error $ str "|Expected calcit.cirru , but got " filename
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
                                d! $ :: :load/calcit $ parse-cirru-edn (unsafe-coerce result 'String)
                                  {} (:CodeEntry schema/CodeEntry) (:Leaf schema/CirruLeaf) (:Expr schema/CirruExpr)
                                , &unit
                              do
                                d! $ :: :error "|Failed to read calcit.cirru"
                                , &unit
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
                  if (every? expr string?)
                    {} (:display :inline-block) (:border-width "|0 0 1px 0") (:margin "|0 4px")
                    {}
                :on-click $ fn (e d!)
                  let
                      code $ format-cirru $ [] expr
                    copy! code
                    d! $ :: action/create $ {}
                      :text $ str "|Copied! " code
                      :token code
              map-indexed expr $ fn (idx child)
                [] idx $ if (list? child)
                  comp-expr child $ = idx $ dec (count expr)
                  div
                    {} $ :class-name $ str-spaced css/column style-leaf
                    <> $ decode-map-as child 'String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'List 'Dynamic) 'Bool
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
                :outline $ str "|2px solid " $ hsl 200 90 70 (Option :some 0.5)
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
            let
                ns-info $ reel-schema/read-field file-info :ns
                defs $ schema/as-string-map $ reel-schema/read-field file-info :defs
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
                        decode-map-as (reel-schema/read-field ns-info :doc) 'String
                        {} $ :class-name css/font-normal
                    comp-expr
                      tree->cirru $ reel-schema/read-field ns-info :code
                      , false
                  list->
                    {} $ :style $ {}
                      :border-left $ str "|1px solid " $ hsl 0 0 70
                      :padding-left 16
                      :margin-bottom 2
                    -> defs (&map:to-list)
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
                              comp-md-block
                                decode-map-as (reel-schema/read-field def-info :doc) 'String
                                {} $ :class-name css/font-normal
                            comp-expr
                              tree->cirru $ reel-schema/read-field def-info :code
                              , false
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
            app.ast :refer $ tree->cirru
    'app.comp.graph $ %{} 'FileEntry
      :defs $ {}
        'comp-graph $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-graph (states snapshot)
            let
                cursor $ decode-map-as (reel-schema/read-field states :cursor) (:: 'List 'Dynamic)
                entries $ decode-map-as (reel-schema/read-field snapshot :entries) (:: 'Map 'Tag 'Dynamic)
                config $ .unwrap $ get entries :default
                initial-entry $ to-string $ decode-map-as (reel-schema/read-field config :init-fn) 'Symbol
                raw-state $ reel-schema/read-field states :data
                state $ if (nil? raw-state)
                  {} (:graph nil) (:init-fn initial-entry)
                  decode-map-as raw-state $ :: 'Map 'Tag 'Dynamic
                init-fn $ decode-map-as (reel-schema/read-field state :init-fn) 'String
                entry $ split init-fn |/
                entry-ns $ .unwrap-or (first entry) |
                entry-def $ .unwrap-or (nth entry 1) |
                files $ schema/as-string-map $ reel-schema/read-field snapshot :files
                package $ decode-map-as (reel-schema/read-field snapshot :package) 'String
                graph $ reel-schema/read-field state :graph
              div
                {} $ :class-name $ str-spaced css/expand css/column
                div
                  {} $ :style $ {}
                    :border-bottom $ str "|1px solid " $ hsl 0 0 90
                    :padding "|8px 4px"
                  button $ {} (:class-name css/button) (:inner-text |Button)
                    :on-click $ fn (e d!)
                      d! $ :: :states cursor $ assoc state :graph (build-deps-graph entry-ns entry-def files package)
                      , &unit
                  =< 8 nil
                  input $ {} (:value init-fn) (:class-name css/input)
                    :on-input $ fn (e d!)
                      d! $ :: :states cursor $ assoc state :init-fn
                        decode-map-as
                          .unwrap $ get e :value
                          , 'String
                      , &unit
                div
                  {} (:class-name css/expand)
                    :style $ {} $ :padding |8px
                  if (non-nil? graph)
                    comp-graph-tree entry-ns entry-def
                      decode-map-as graph $ :: 'Map 'String $ :: 'Map 'String (:: 'List 'app.ast/Reference)
                      #{}
                      , files
                    <> "|no graph"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Dynamic 'Dynamic) 'Dynamic
        'comp-graph-tree $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-graph-tree (ns-name def-name dict footprints files)
            let
                path $ str ns-name |/ def-name
                doc $ -> (get files ns-name)
                  .and-then $ fn (file)
                    get
                      schema/as-string-map $ reel-schema/read-field file :defs
                      , def-name
                  .map $ fn (entry)
                    decode-map-as (reel-schema/read-field entry :doc) 'String
                  .unwrap-or |
              div
                {} $ :class-name css/row
                div
                  {} $ :class-name css/column
                  div
                    {} $ :style $ {} (:margin "|0px 0") (:line-height |20px)
                    <> (str ns-name |/)
                      {}
                        :color $ hsl 0 0 70
                        :line-height |14px
                        :font-size |12px
                    <> def-name $ {} (:line-height |20px) (:font-family ui/font-normal)
                  comp-md-block doc $ {} (:class-name css/font-normal)
                    :style $ {} $ :color (hsl 0 0 50)
                if (contains? footprints path)
                  <> |Looped $ {} (:display :inline-block) (:margin "|0 4px")
                    :background-color $ hsl 40 80 60
                    :padding "|0 6px"
                    :color :white
                    :border-radius |8px
                  match
                    get-in dict $ [] ns-name def-name
                    (:some deps)
                      div
                        {} $ :style $ {}
                          :border-left $ str "|1px solid " $ hsl 0 0 90
                          :padding "|0 8px"
                          :margin "|0 8px"
                        , & $ map deps $ fn (dep)
                          match dep
                            (:default package)
                              div
                                {} $ :style $ {}
                                  :color $ hsl 200 80 60
                                  :line-height |20px
                                  :text-decoration :underline
                                <> package
                            (:def namespace name)
                              comp-graph-tree namespace name dict (include footprints path) files
                    (:none)
                      div
                        {} $ :style $ {} (:padding "|0 8px") (:line-height |20px)
                        <> |- $ {} $ :color (hsl 0 0 80)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String 'String
              :: 'Map 'String $ :: 'Map 'String $ :: 'List 'app.ast/Reference
              :: 'Set 'String
              :: 'Map 'String 'Dynamic
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
            app.schema :as schema
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
            filter-map-kv
              decode-map-as x $ :: 'Map 'Symbol 'Dynamic
              fn (k v)
                MapEntryDecision :keep (to-string k) v
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
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
              action/message-action? $ &enum:nth op 0
              assoc store :messages $ update-messages (reel-schema/read-field store :messages) (&enum:nth op 0)
                if
                  > (&enum:count op) 1
                  &enum:nth op 1
                  {}
                , op-id op-time
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
