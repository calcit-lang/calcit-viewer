
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
                  ns-form $ tree->cirru $ decode-map-as (reel-schema/read-field ns-info :code) 'CirruQuote
                  rules $ mapcat (slice ns-form 2)
                    fn (clause)
                      if (list? clause)
                        match (first clause)
                          (:some head)
                            if (= |:require head) (slice clause 1) ([])
                          (:none) ([])
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
                        (:default package-name alias)
                          assoc dict alias $ Reference :default package-name
                        _ dict
                  defs $ schema/as-string-map $ decode-map-as (reel-schema/read-field file :defs) (:: 'Map 'Symbol 'Dynamic)
                MapEntryDecision :keep ns-name $ filter-map-kv defs $ fn (name entry)
                  MapEntryDecision :keep name $ match-references
                    tree->cirru $ decode-map-as (reel-schema/read-field entry :code) 'CirruQuote
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
                files $ schema/as-string-map $ decode-map-as (reel-schema/read-field snapshot :files) (:: 'Map 'Symbol 'Dynamic)
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
            decode-map-as (&cirru-quote:to-list x) (:: 'List 'Dynamic)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'CirruQuote
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
          :code $ quote $ deftrait FileInputHost
            :files $ :: 'JsNullish 'app.comp.container/FileListHost
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
            :result $ :: 'JsNullish 'JsObject
            :onload 'Dynamic
            :onerror 'Dynamic
            .read-as-text! $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/FileReaderHost 'app.comp.container/FileHost
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :read-as-text! |readAsText
            :writable $ #{} :onerror :onload
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
                store $ :store reel
                states $ :states store
              div
                {} $ :class-name $ str-spaced css/global css/fullscreen css/row
                let
                    page $ :page store
                  div
                    {} $ :style $ {}
                      :background-color $ hsl 200 30 24
                      :color :white
                    comp-entry :upload :input page
                    comp-entry :edit :textarea page
                    comp-entry :monitor :viewer page
                    comp-entry :info :about page
                    comp-entry :map :graph page
                match (:page store)
                  :viewer $ div
                    {} (:class-name css/expand)
                      :style $ {} (:padding 16) (:overflow :auto)
                    match (:error store)
                      (:some message)
                        <> message $ {} $ :color :red
                      (:none)
                        match (:calcit store)
                          (:some snapshot)
                            try (comp-viewer snapshot)
                              fn (message)
                                <> message $ {} $ :color :red
                          (:none) (<> |Nothing)
                  :textarea $ comp-text-area (:text store) (:error store)
                  :input $ comp-file-input $ :error store
                  :about $ comp-about
                  :graph $ match (:calcit store)
                    (:some snapshot)
                      try
                        comp-graph (>> states :graph) snapshot
                        fn (message)
                          <> message $ {} $ :color :red
                    (:none) (<> |Nothing)
                  _ $ <> "|Unknown route"
                comp-messages (:messages store) ({})
                  fn (info d!)
                    d! $ :: action/clear
                    , &unit
                when config/dev? $ comp-inspect :store store $ {} (:bottom 0) (:right 8)
                comp-typed-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'reel.typed/State 'Enum 'app.schema/StoreData
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
            :args $ [] 'Tag 'Tag 'Tag
        'comp-file-input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-file-input (error)
            div
              {} $ :style $ {} (:padding 16)
              <> "|Pick calcit.cirru to view:"
              =< 8 nil
              input $ {} (:type |file) (:on-change on-file-change)
              div
                {} $ :style $ {} (:color :red)
                <> $ .unwrap-or error |
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Option 'String
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
                  d! $ :: :text $ decode-map-as
                    .unwrap $ get e :value
                    , 'String
                  , &unit
              div
                {} $ :style $ {} (:padding 8)
                button
                  {} (:class-name css/button)
                    :on-click $ fn (e d!)
                      try
                        do
                          d! $ :: :load/calcit $ parse-cirru-edn text
                          , &unit
                        fn (message)
                          d! $ :: :error message
                          , &unit
                  <> |Parse
                div
                  {} $ :style $ {} (:color :red)
                  <> $ .unwrap-or error |
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String $ :: 'Option 'String
        'on-file-change $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-file-change (e dispatch)
            let
                d! $ if (fn? dispatch) dispatch $ raise "|Expected dispatch callback"
                event $ decode-map-as e $ :: 'Map 'Tag 'Dynamic
                event-host $ js-cast
                  .unwrap $ get event :event
                  , 'js-ffi.browser/EventHost
                target $ js-cast (.-target event-host) 'app.comp.container/FileInputHost
                raw-files $ .-files target
              when (js-present? raw-files)
                let
                    files $ js-cast raw-files 'app.comp.container/FileListHost
                    maybe-file $ .item! files 0
                  when (js-present? maybe-file)
                    let
                        file $ js-cast maybe-file 'app.comp.container/FileHost
                        filename $ .-name file
                      if (not= filename |calcit.cirru)
                        d! $ :: :error $ str "|Expected calcit.cirru , but got " filename
                        let
                            reader $ js-cast (new js/FileReader) 'app.comp.container/FileReaderHost
                          js-set reader :onload $ fn (event)
                            let
                                result $ .-result reader
                              if (js-present? result)
                                try
                                  do
                                    d! $ :: :load/calcit $ parse-cirru-edn (expect-string |FileReader.result result)
                                    , &unit
                                  fn (message)
                                    d! $ :: :error message
                                    , &unit
                                do
                                  d! $ :: :error "|Failed to read calcit.cirru"
                                  , &unit
                          js-set reader :onerror $ fn (event)
                            d! $ :: :error "|Failed to read calcit.cirru"
                            , &unit
                          .read-as-text! reader file
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
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            respo-ui.core :refer $ hsl
            respo.core :refer $ defcomp >> <> div button textarea input
            respo.comp.space :refer $ =<
            app.comp.viewer :refer $ comp-viewer
            respo-md.comp.md :refer $ comp-md
            feather.core :refer $ comp-i
            respo.comp.inspect :refer $ comp-inspect
            respo-message.action :as action
            respo-message.comp.messages :refer $ comp-messages
            app.config :as config
            app.comp.graph :refer $ comp-graph
            respo-ui.css :as css
            respo.css :refer $ defstyle
            js-ffi.contract :refer $ expect-string
            reel.comp.reel :refer $ comp-typed-reel
    'app.comp.expr $ %{} 'FileEntry
      :defs $ {}
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
          :schema $ :: 'String
        'style-leaf $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-leaf
            {} $ |& $ {} (:display :inline-flex) (:margin-right 8)
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.expr
          :require
            respo-ui.core :refer $ hsl
            respo.core :refer $ defcomp <> list-> div
            |copy-to-clipboard :default copy!
            respo-message.action :as action
            respo.css :refer $ defstyle
            respo-ui.css :as css
    'app.comp.file $ %{} 'FileEntry
      :defs $ {}
        'comp-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-file (filename file-info)
            let
                ns-info $ reel-schema/read-field file-info :ns
                defs $ schema/as-string-map $ decode-map-as (reel-schema/read-field file-info :defs) (:: 'Map 'Symbol 'Dynamic)
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
                      tree->cirru $ decode-map-as (reel-schema/read-field ns-info :code) 'CirruQuote
                      , false
                  list->
                    {} $ :style $ {}
                      :border-left $ str "|1px solid " $ hsl 0 0 70
                      :padding-left 16
                      :margin-bottom 2
                    -> defs
                      filter-map-kv $ fn (def-name def-info)
                        MapEntryDecision :keep def-name $ div
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
                            tree->cirru $ decode-map-as (reel-schema/read-field def-info :code) 'CirruQuote
                            , false
                      &map:to-list
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
          :schema $ :: 'String
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
                files $ schema/as-string-map $ decode-map-as (reel-schema/read-field snapshot :files) (:: 'Map 'Symbol 'Dynamic)
                package-name $ decode-map-as (reel-schema/read-field snapshot :package) 'String
                graph $ reel-schema/read-field state :graph
              div
                {} $ :class-name $ str-spaced css/expand css/column
                div
                  {} $ :style $ {}
                    :border-bottom $ str "|1px solid " $ hsl 0 0 90
                    :padding "|8px 4px"
                  button $ {} (:class-name css/button) (:inner-text |Button)
                    :on-click $ fn (e d!)
                      d! $ :: :states cursor $ assoc state :graph (build-deps-graph entry-ns entry-def files package-name)
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
            :args $ [] (:: 'Map 'Dynamic 'Dynamic) (:: 'Map 'Tag 'Dynamic)
        'comp-graph-tree $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-graph-tree (ns-name def-name dict footprints files)
            let
                path $ str ns-name |/ def-name
                doc $ -> (get files ns-name)
                  .and-then $ fn (file)
                    get
                      schema/as-string-map $ decode-map-as (reel-schema/read-field file :defs) (:: 'Map 'Symbol 'Dynamic)
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
                            (:default package-name)
                              div
                                {} $ :style $ {}
                                  :color $ hsl 200 80 60
                                  :line-height |20px
                                  :text-decoration :underline
                                <> package-name
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
          :code $ quote $ defcomp comp-viewer (snapshot)
            let
                package-name $ decode-map-as (reel-schema/read-field snapshot :package) 'String
                entries $ decode-map-as (reel-schema/read-field snapshot :entries) (:: 'Map 'Tag 'Dynamic)
                files $ schema/as-string-map $ decode-map-as (reel-schema/read-field snapshot :files) (:: 'Map 'Symbol 'Dynamic)
              div ({})
                div ({}) (<> |Namespace:) (=< 8 nil) (<> package-name)
                div ({}) (<> |Entries:) (=< 8 nil)
                  <> $ format-cirru-edn entries
                div
                  {} $ :style ui/row
                  <> |Files:
                  =< 16 nil
                  list-> ({})
                    -> files
                      filter-map-kv $ fn (filename file-info)
                        MapEntryDecision :keep filename $ comp-file filename file-info
                      &map:to-list
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
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
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'reel.typed/State 'Enum 'app.schema/StoreData
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            let
                checked $ if (enum? op) op $ raise |Expected-Enum-operation
              match (typed/decode-control checked)
                (:some control)
                  reset! *reel $ typed/apply-control updater @*reel control
                (:none)
                  reset! *reel $ typed/record-op updater @*reel checked (generate-id!)
                    :timestamp $ date-now-snapshot
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            when config/dev? $ load-console-formatter!
            render-app!
            add-watch! *reel :changes $ fn (current previous) (render-app!)
            listen-devtools! |k dispatch!
            browser/set-before-unload! $ fn (event) (persist-storage!)
            browser/document-add-event-listener! |visibilitychange $ fn (event)
              match (browser/visibility-state)
                (:hidden) (persist-storage!)
                _ &unit
            match
              browser/storage-get $ .unwrap $ get config/site :storage-key
              (:some raw)
                try
                  dispatch! $ :: :hydrate-storage $ parse-cirru-edn raw
                    {} $ :Option Option
                  fn (message)
                    dispatch! $ :: :text raw
                    dispatch! $ :: :page :textarea
                    dispatch! $ :: :error $ str "|无法恢复旧存档，原始内容已保留在草稿中，请先备份。 " message
              (:none) &unit
            println "|App started."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            narrow-element $ .unwrap $ browser/query-selector |.app
          :examples $ []
          :schema $ :: 'respo.dom/DomElement
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            let
                store $ :store @*reel
              browser/storage-set!
                .unwrap $ get config/site :storage-key
                format-cirru-edn $ assoc store :states $ schema/without-graph-cache (:states store)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (current previous) (render-app!)
                reset! *reel $ typed/refresh updater @*reel schema/store
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
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
            respo.core :refer $ render! clear-cache!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.typed :as typed
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            js-ffi.browser :as browser
            respo.ffi.browser :refer $ narrow-element
            js-ffi.shared :refer $ date-now-snapshot
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'StoreData $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct StoreData
            :states $ :: 'Map 'Dynamic 'Dynamic
            :error $ :: 'Option 'String
            :calcit $ :: 'Option $ :: 'Map 'Tag 'Dynamic
            :page 'Tag
            :text 'String
            :messages $ :: 'Map 'String 'Dynamic
          :examples $ []
          :schema $ :: 'StructDef
        'as-string-map $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn as-string-map (x)
            filter-map-kv x $ fn (k v)
              MapEntryDecision :keep (to-string k) v
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'Map 'Symbol 'V
            :generics $ [] 'V
            :return $ :: 'Map 'String 'V
        'hydrate-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn hydrate-store (data)
            let
                fields $ if (struct? data)
                  struct-match data
                    StoreData checked $ .to-map checked
                    _ other $ raise "|Expected StoreData archive"
                  decode-map-as data $ :: 'Map 'Tag 'Dynamic
                without-error-nil $ if
                  nil? $ reel-schema/read-field fields :error
                  dissoc fields :error
                  , fields
                without-calcit-nil $ if
                  nil? $ reel-schema/read-field fields :calcit
                  dissoc without-error-nil :calcit
                  , without-error-nil
                checked $ decode-map-as without-calcit-nil 'app.schema/StoreData
              assoc checked :states $ without-graph-cache $ :states checked
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/StoreData)
            :args $ [] 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |legacy-nil-and-derived-cache)
            :code $ quote $ let
                archive "|%{} 'StoreData (:states ({} (:graph ({} (:data ({} (:init-fn |custom/run) (:graph ({})))))) (:other ({} (:data |keep))))) (:error nil) (:calcit nil) (:page :input) (:text |draft) (:messages ({}))"
                restored $ hydrate-store $ parse-cirru-edn archive
                states $ :states restored
              assert= true $ .none? $ :error restored
              assert= true $ .none? $ :calcit restored
              assert= |draft $ :text restored
              assert= |custom/run $ .unwrap $ get-in states ([] :graph :data :init-fn)
              assert= true $ .none? $ get-in states ([] :graph :data :graph)
              assert= |keep $ .unwrap $ get-in states ([] :other :data)
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            StoreData :states ({}) :error (Option :none) :calcit (Option :none) :page :input :text | :messages $ {}
          :examples $ []
          :schema $ :: 'app.schema/StoreData
        'validate-snapshot $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn validate-snapshot (data)
            let
                snapshot $ decode-map-as data $ :: 'Map 'Tag 'Dynamic
              decode-map-as (reel-schema/read-field snapshot :package) 'String
              decode-map-as (reel-schema/read-field snapshot :files) (:: 'Map 'Symbol 'Dynamic)
              let
                  entries $ decode-map-as (reel-schema/read-field snapshot :entries) (:: 'Map 'Tag 'Dynamic)
                  default-entry $ decode-map-as (reel-schema/read-field entries :default) (:: 'Map 'Tag 'Dynamic)
                decode-map-as (reel-schema/read-field default-entry :init-fn) 'Symbol
              , snapshot
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'without-graph-cache $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn without-graph-cache (states)
            match (get states :graph)
              (:none) states
              (:some raw-branch)
                let
                    branch $ decode-map-as raw-branch $ :: 'Map 'Dynamic 'Dynamic
                  match (get branch :data)
                    (:none) states
                    (:some raw-data)
                      if (nil? raw-data) states $ assoc states :graph $ assoc branch :data
                        dissoc
                          decode-map-as raw-data $ :: 'Map 'Tag 'Dynamic
                          , :graph
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'Map 'Dynamic 'Dynamic
            :return $ :: 'Map 'Dynamic 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
          :require $ reel.schema :as reel-schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            if
              action/message-action? $ &enum:nth op 0
              assoc store :messages $ decode-map-as
                update-messages (:messages store) (&enum:nth op 0)
                  if
                    > (&enum:count op) 1
                    &enum:nth op 1
                    {}
                  , op-id op-time
                :: 'Map 'String 'Dynamic
              match op
                (:states cursor data)
                  assoc store :states $ decode-map-as
                    update-state-tree (:states store)
                      decode-map-as cursor $ :: 'List 'Dynamic
                      , data
                    :: 'Map 'Dynamic 'Dynamic
                (:load/calcit data)
                  struct-with store
                    :calcit $ Option :some $ schema/validate-snapshot data
                    :error $ Option :none
                    :page :viewer
                    :states $ schema/without-graph-cache $ :states store
                (:text text)
                  assoc store :text $ decode-map-as text 'String
                (:error message)
                  assoc store :error $ Option :some $ decode-map-as message 'String
                (:page page)
                  assoc store :page $ decode-map-as page 'Tag
                (:hydrate-storage data) (schema/hydrate-store data)
                _ store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/StoreData)
            :args $ [] 'app.schema/StoreData 'Enum 'String 'Number
          :tests $ [] $ %{} 'TestEntry (:name |canonical-snapshot-store-roundtrip)
            :code $ quote $ let
                source $ match
                  .read-text $ fs:path |calcit.cirru
                  (:ok text) text
                  (:err message) (raise message)
                snapshot $ parse-cirru-edn source
                loaded $ updater schema/store (:: :load/calcit snapshot) |load 1
                cached $ updater loaded
                  :: :states ([] :graph)
                    {} (:init-fn |custom/run)
                      :graph $ {} $ :stale :cache
                  , |graph 2
                restored $ updater cached
                  :: :hydrate-storage $ parse-cirru-edn (format-cirru-edn cached)
                    {} $ :Option Option
                  , |restore 3
              assert= snapshot $ .unwrap $ :calcit loaded
              assert= (:calcit loaded) (:calcit restored)
              assert= :viewer $ :page restored
              assert= true $ .none? $ :error restored
              assert= |custom/run $ .unwrap $ get-in (:states restored) ([] :graph :data :init-fn)
              assert= true $ .none? $ get-in (:states restored) ([] :graph :data :graph)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require
            respo.cursor :refer $ update-state-tree
            respo-message.action :as action
            respo-message.updater :refer $ update-messages
            app.schema :as schema
