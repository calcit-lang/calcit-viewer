
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-feather.calcit/ |respo-message.calcit/ |cumulo-util.calcit/
  :entries $ {}
  :files $ {}
    |app.ast $ %{} :FileEntry
      :defs $ {}
        |build-deps-graph $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn build-deps-graph (entry-ns entry-def files pkg) (; println entry-ns entry-def pkg) (; js/console.log files)
              let
                  ns-deps-map $ -> files
                    .map-kv $ fn (ns' file)
                      let
                          ns-form $ tree->cirru
                            get-in file $ [] :ns :code
                          rules $ if
                            = 3 $ count ns-form
                            .slice (nth ns-form 2) 1
                            []
                          defs $ :defs file
                        ; js/console.log "\"entry" ns' ns-form
                        [] ns' $ let
                            results $ map rules
                              fn (rule)
                                parse-rule $ unify-rule rule
                            ns-dict $ merge ({}) &
                              -> results
                                filter $ fn (paired)
                                  = :ns $ get paired 0
                                map last
                            defs-dict $ merge ({}) &
                              -> results
                                filter $ fn (paired)
                                  = :def $ get paired 0
                                map last
                            defaults-dict $ merge ({}) &
                              -> results
                                filter $ fn (paired)
                                  = :default $ get paired 0
                                map last
                            defs-deps $ -> defs
                              .map-kv $ fn (k entry)
                                [] k $ match-references
                                  tree->cirru $ :code entry
                                  , ns-dict defs-dict defaults-dict (keys defs) ns'
                          , defs-deps
                js/console.log "\"Deps Map" ns-deps-map
                , ns-deps-map
        |flatten-form $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn flatten-form (xs)
              if (list? xs) (mapcat xs flatten-form) ([] xs)
        |match-references $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn match-references (form ns-dict defs-dict defaults-dict current-defs current-ns) (js/console.log "\"Defaults" defaults-dict)
              let
                  tokens $ -> form (.slice 2) (flatten-form)
                    .filter $ fn (x)
                      cond
                          .starts-with? x "\":"
                          , false
                        (.starts-with? x "\".") false
                        (.starts-with? x "\"|") false
                        (.starts-with? x "\"\"") false
                        (.!test pattern-number x) false
                        true true
                    .map $ fn (x)
                      -> x (.strip-prefix "\"~@") (.strip-prefix "\"~") (.strip-prefix "\"@")
                    distinct
                    .map $ fn (x)
                      cond
                          .contains? current-defs x
                          {} (:kind :def) (:ns current-ns) (:def x)
                        (.contains? defs-dict x) (get defs-dict x)
                        (.contains? defaults-dict x) (get defaults-dict x)
                        (.includes? x "\"/")
                          let[] (ns-part def-part) (.split x "\"/")
                            if (.contains? defs-dict ns-part)
                              {} (:kind :def)
                                :ns $ :ns (get ns-dict ns-part)
                                :def x
                        true nil
                    .filter some?
                ; js/console.log "\"tokens" tokens
                , tokens
        |parse-rule $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn parse-rule (rule) (; println "\"rule" rule)
              case-default (nth rule 1)
                do (js/console.log "\"Unknown rule:" rule) nil
                "\":as" $ [] :ns
                  {} $ 
                    nth rule 2
                    {} (:kind :ns)
                      :alias $ nth rule 2
                      :ns $ nth rule 0
                "\":refer" $ [] :def
                  -> (nth rule 2)
                    map $ fn (def-name)
                      [] def-name $ {} (:kind :def) (:def def-name)
                        :ns $ nth rule 0
                    .pairs-map
                "\":default" $ [] :default
                  &{} (nth rule 2)
                    {} (:kind :default)
                      :package $ nth rule 0
                      :alias $ nth rule 2
        |pattern-number $ %{} :CodeEntry (:doc |)
          :code $ quote
            def pattern-number $ new js/RegExp "\"^\\d+(\\.\\d+)?$"
        |tree->cirru $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn tree->cirru (x)
              if (&record:matches? schema/CirruLeaf x) (:text x)
                -> (:data x) (.to-list) (.sort-by first)
                  map $ fn (entry)
                    tree->cirru $ last entry
        |unify-rule $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn unify-rule (rule)
              -> rule
                .filter $ fn (x) (not= x "\"[]")
                .map $ fn (x)
                  if (list? x) (unify-rule x) x
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.ast $ :require (app.schema :as schema)
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-about $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-about () $ div
              {} $ :style
                {} $ :padding 8
              comp-md "\"Calcit Viewer is a tool for reading calcit.cirru files. Read more on https://github.com/calcit-lang/calcit-viewer ."
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  store $ :store reel
                  states $ :states store
                div
                  {} $ :class-name (str-spaced css/global css/fullscreen css/row)
                  let
                      page $ :page store
                    div
                      {} $ :style
                        {}
                          :background-color $ hsl 200 30 24
                          :color :white
                      comp-entry :upload :input page
                      comp-entry :edit :textarea page
                      comp-entry :monitor :viewer page
                      comp-entry :info :about page
                      comp-entry :map :graph page
                  case-default (:page store) (<> "\"Unknown route")
                    :viewer $ div
                      {} (:class-name css/expand)
                        :style $ {} (:padding 16) (:overflow :auto)
                      if
                        some? $ :error store
                        <> (:error store)
                          {} $ :color :red
                        if
                          some? $ :calcit store
                          comp-viewer $ :calcit store
                          <> "\"Nothing"
                    :textarea $ comp-text-area (:text store) (:error store)
                    :input $ comp-file-input (:error store)
                    :about $ comp-about
                    :graph $ comp-graph (>> states :graph) (:calcit store)
                  comp-messages
                    w-js-log $ :messages store
                    {}
                    fn (info d!) (d! action/clear nil)
                  if config/dev? $ comp-inspect :store store
                    {} (:bottom 0) (:right 8)
                  comp-reel (>> states :reel) reel $ {}
        |comp-entry $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-entry (icon page current-page)
              div
                {}
                  :class-name $ str-spaced css/center style-entry
                  :style $ if (= page current-page)
                    {} $ :color :white
                  :on-click $ fn (e d!) (d! :page page)
                comp-i icon 14 $ hsl 200 80 80
        |comp-file-input $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-file-input (error)
              div
                {} $ :style
                  {} $ :padding 16
                <> "\"Pick calcit.cirru to view:"
                =< 8 nil
                input $ {} (:type "\"file") (:accept "\".cirru") (:on-change on-file-change)
                div
                  {} $ :style
                    {} $ :color :red
                  <> error
        |comp-text-area $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-text-area (text error)
              div
                {} $ :class-name (str-spaced css/row css/flex)
                textarea $ {}
                  :class-name $ str-spaced css/textarea css/flex css/font-code!
                  :style $ {} (:width |100%) (:font-size 12) (:line-height |1.4em)
                  :value text
                  :placeholder "\"Paste calcit.cirru content here..."
                  :on-input $ fn (e d!)
                    d! :text $ :value e
                div
                  {} $ :style
                    {} $ :padding 8
                  button
                    {} (:class-name css/button)
                      :on-click $ fn (e d!)
                        try
                          d! :load/calcit $ parse-cirru-edn text
                          fn (error)
                            d! :error $ str error
                    <> "\"Parse"
                  div
                    {} $ :style
                      {} $ :color :red
                    <> error
        |on-file-change $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn on-file-change (e d!)
              let
                  file $ -> (:event e) .-target .-files (aget 0)
                if (some? file)
                  if
                    not= (.-name file) |calcit.cirru
                    do $ d! :error
                      str "\"Expected calcit.cirru , but got " $ .-name file
                    let
                        fr $ new js/FileReader
                      set! (.-onload fr)
                        fn (event)
                          d! :load/calcit $ parse-cirru-edn (-> event .-target .-result)
                            {} (:CodeEntry schema/CodeEntry) (:Leaf schema/CirruLeaf) (:Expr schema/CirruExpr)
                      .!readAsText fr file
        |style-entry $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-entry $ {}
              "\"&" $ {} (:font-size 28) (:width 48) (:height 48)
                :color $ hsl 0 0 60
                :cursor :pointer
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> <> div button textarea span input pre
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
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
    |app.comp.expr $ %{} :FileEntry
      :defs $ {}
        |comp-expr $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-expr (expr last?)
              list->
                {}
                  :class-name $ str-spaced style-expr "\"comp-expr"
                  :style $ if last?
                    {} $ :display :inline-block
                    if
                      every? (:data expr)
                        fn (entry)
                          &record:matches? schema/CirruLeaf $ last entry
                      {} (:display :inline-block) (:border-width "|0 0 1px 0") (:margin "|0 4px")
                  :on-click $ fn (e d!)
                    let
                        code $ format-cirru
                          [] $ tree->cirru expr
                      copy! code
                      d! action/create $ {}
                        :text $ str "\"Copied! " code
                        :token code
                -> (:data expr) (.to-list) (.sort-by first)
                  map-indexed $ fn (idx entry)
                    let-sugar
                          [] k child
                          , entry
                      [] k $ if (&record:matches? schema/CirruExpr child)
                        comp-expr child $ = idx
                          dec $ count (:data expr)
                        div
                          {} $ :class-name (str-spaced css/column style-leaf)
                          <> $ :text child
                          <>
                            -> (:at child) dayjs $ .!format "\"YY MM-DD"
                            str-spaced style-date-hint css/font-normal!
        |style-date-hint $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-date-hint $ {}
              "\"&" $ {} (:font-size 12) (:white-space :nowrap)
                :color $ hsl 0 0 60
        |style-expr $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-expr $ {}
              "\"&" $ {} (:padding "|2px 16px") (:font-family "|Source Code Pro, menlo") (:line-height |16px) (:margin-bottom 2) (:vertical-align :top) (:min-height 16) (:min-width 32) (:font-size 13) (:cursor :pointer) (:border-radius "\"8px") (:border-style :solid)
                :border-color $ hsl 0 0 70
                :border-width "|0 0 0 1px"
                :background-color $ hsl 300 0 98
              "\"&:hover" $ {}
                ; :background-color $ hsl 300 0 92
                :outline $ str "\"2px solid " (hsl 200 90 70 0.5)
              "\"&:has(.comp-expr:hover):hover" $ {}
                :background-color $ hsl 300 0 98
                :outline :none
        |style-leaf $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-leaf $ {}
              "\"&" $ {} (:display :inline-flex) (:margin-right 8)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.expr $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> list-> div button span input pre
            respo.comp.space :refer $ =<
            app.ast :refer $ tree->cirru
            "\"copy-to-clipboard" :default copy!
            respo-message.action :as action
            app.schema :as schema
            respo.css :refer $ defstyle
            respo-ui.css :as css
            "\"dayjs" :default dayjs
    |app.comp.file $ %{} :FileEntry
      :defs $ {}
        |comp-file $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-file (filename file-info)
              div
                {} $ :class-name (str-spaced css/row style-file)
                <> filename
                =< 16 nil
                div ({})
                  div
                    {} (:class-name css/column)
                      :style $ {}
                        :border-left $ str "|1px solid " (hsl 0 0 80)
                        :padding-left 8
                    div
                      {} $ :class-name css/row
                      <> :ns $ {}
                        :color $ hsl 0 0 70
                      =< 8 nil
                      comp-md-block
                        get-in file-info $ [] :ns :doc
                        {} $ :class-name css/font-normal
                    comp-expr
                      get-in file-info $ [] :ns :code
                      , false
                  list->
                    {} $ :style
                      {}
                        :border-left $ str "|1px solid " (hsl 0 0 70)
                        :padding-left 16
                        :margin-bottom 2
                    -> (:defs file-info) (.to-list)
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
                              comp-md-block (:doc def-info)
                                {} $ :class-name css/font-normal
                            comp-expr (:code def-info) false
        |style-file $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-file $ {}
              "\"&" $ {}
                :border-left $ str "|1px solid " (hsl 0 0 70)
                :padding-left 8
                :font-family "|Source Code Pro, menlo"
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.file $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> list-> div button span input pre
            respo.comp.space :refer $ =<
            app.comp.expr :refer $ comp-expr
            respo-ui.css :as css
            respo.css :refer $ defstyle
            respo-md.comp.md :refer $ comp-md-block
    |app.comp.graph $ %{} :FileEntry
      :defs $ {}
        |comp-graph $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-graph (states snapshot)
              let
                  cursor $ :cursor states
                  configs $ :configs snapshot
                  state $ or (:data states)
                    {} (:graph nil)
                      :init-fn $ :init-fn configs
                  entry $ .split (:init-fn state) "\"/"
                div
                  {} $ :class-name (str-spaced css/expand css/column)
                  div
                    {} $ :style
                      {}
                        :border-bottom $ str "\"1px solid " (hsl 0 0 90)
                        :padding "\"8px 4px"
                    button $ {} (:class-name css/button) (:inner-text "\"Button")
                      :on-click $ fn (e d!) (; js/console.log snapshot)
                        d! cursor $ assoc state :graph
                          build-deps-graph (nth entry 0) (nth entry 1) (:files snapshot) (:package snapshot)
                    =< 8 nil
                    input $ {}
                      :value $ :init-fn state
                      :class-name css/input
                      :on-input $ fn (e d!)
                        d! cursor $ assoc state :init-fn (:value e)
                  div
                    {} (:class-name css/expand)
                      :style $ {} (:padding "\"8px")
                    if
                      some? $ :graph state
                      comp-graph-tree (nth entry 0) (nth entry 1) (:graph state) (#{}) (:files snapshot)
                      <> "\"no graph"
        |comp-graph-tree $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-graph-tree (ns' def' dict footprints files)
              let
                  path $ str ns' "\"/" def'
                div
                  {} $ :class-name css/row
                  div
                    {} $ :class-name css/column
                    div
                      {} $ :style
                        {} (:margin "\"0px 0") (:line-height "\"20px")
                      <> (str ns' "\"/")
                        {}
                          :color $ hsl 0 0 70
                          :line-height "\"14px"
                          :font-size "\"12px"
                      <> def' $ {} (:line-height "\"20px") (:font-family ui/font-normal)
                    if-let
                      doc $ get-in files ([] ns' :defs def' :doc)
                      comp-md-block doc $ {} (:class-name css/font-normal)
                        :style $ {}
                          :color $ hsl 0 0 50
                  if (.contains? footprints path)
                    <> "\"Looped" $ {} (:display :inline-block) (:margin "\"0 4px")
                      :background-color $ hsl 40 80 60
                      :padding "\"0 6px"
                      :color :white
                      :border-radius "\"8px"
                    let
                        deps $ get-in dict ([] ns' def')
                      if (list? deps)
                        div
                          {} $ :style
                            {}
                              :border-left $ str "\"1px solid " (hsl 0 0 90)
                              :padding "\"0 8px"
                              :margin "\"0 8px"
                          , & $ -> deps
                            map $ fn (dep)
                              if
                                = :default $ :kind dep
                                div
                                  {} $ :style
                                    {}
                                      :color $ hsl 200 80 60
                                      :line-height "\"20px"
                                      :text-decoration :underline
                                  <> $ :package dep
                                comp-graph-tree (:ns dep) (:def dep) dict (.include footprints path) files
                        div
                          {} $ :style
                            {} (:padding "\"0 8px") (:line-height "\"20px")
                          <> "\"-" $ {}
                            :color $ hsl 0 0 80
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.graph $ :require
            respo-ui.core :refer $ hsl
            respo.core :refer $ defcomp <> list-> div button span input pre
            respo.comp.space :refer $ =<
            app.ast :refer $ build-deps-graph
            respo-ui.css :as css
            respo.css :refer $ defstyle
            respo-md.comp.md :refer $ comp-md-block
            respo-ui.core :as ui
    |app.comp.viewer $ %{} :FileEntry
      :defs $ {}
        |comp-viewer $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-viewer (calcit)
              div ({})
                div ({}) (<> "\"Namespace:") (=< 8 nil)
                  <> $ :package calcit
                div ({}) (<> "\"Users:") (=< 8 nil)
                  <> $ :users calcit
                div ({}) (<> "\"Configs:") (=< 8 nil)
                  <> $ :configs calcit
                div
                  {} $ :style ui/row
                  <> "\"Files:"
                  =< 16 nil
                  list-> ({})
                    -> (:files calcit) (.to-list)
                      map $ fn (entry)
                        let-sugar
                              [] filename file-info
                              , entry
                          [] filename $ comp-file filename file-info
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.viewer $ :require
            hsl.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> div list-> button span input
            respo.comp.space :refer $ =<
            app.comp.file :refer $ comp-file
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def dev? $ = "\"dev" (get-env "\"mode" "\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:dev-ui "\"http://localhost:8100/main.css") (:title "\"Calcit Viewer") (:icon "\"http://cdn.tiye.me/logo/cirru.png") (:storage-key "\"calcit-viewer")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when config/dev? $ js/console.log "\"Dispatch:" op
              reset! *reel $ reel-updater updater @*reel op
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
              if config/dev? $ load-console-formatter!
              render-app!
              add-watch *reel :changes $ fn (r p) (render-app!)
              listen-devtools! |k dispatch!
              js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
              js/window.addEventListener |visibilitychange $ fn (event)
                if (= "\"hidden" js/document.visibilityState) (persist-storage!)
              let
                  raw $ js/localStorage.getItem (:storage-key config/site)
                when (some? raw)
                  dispatch! $ :: :hydrate-storage (parse-cirru-edn raw)
              println "|App started."
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! ()
              println "\"Saved at" $ .!toISOString (new js/Date)
              js/localStorage.setItem (:storage-key config/site)
                format-cirru-edn $ :store @*reel
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! "\"ok~" "\"Ok"
              hud! "\"error" build-errors
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.main $ :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            app.config :as config
            "\"./calcit.build-errors" :default build-errors
            "\"bottom-tip" :default hud!
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |CirruExpr $ %{} :CodeEntry (:doc |)
          :code $ quote
            def CirruExpr $ new-record :Expr :by :at :data
        |CirruLeaf $ %{} :CodeEntry (:doc |)
          :code $ quote
            def CirruLeaf $ new-record :Leaf :at :by :text
        |CodeEntry $ %{} :CodeEntry (:doc |)
          :code $ quote
            def CodeEntry $ new-record :CodeEntry :doc :code
        |store $ %{} :CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
              :error nil
              :calcit nil
              :page :input
              :text "\""
              :messages $ {}
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.schema)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              if
                action/message-action? $ nth op 0
                update store :messages $ \ update-messages % (nth op 0) (nth op 1) op-id op-time
                tag-match op
                    :states cursor s
                    update-states store cursor s
                  (:load/calcit data)
                    -> store (assoc :calcit data) (assoc :error nil) (assoc :page :viewer)
                  (:text t) (assoc store :text t)
                  (:error e) (assoc store :error e)
                  (:page p) (assoc store :page p)
                  (:hydrate-storage d) d
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            respo.cursor :refer $ update-states
            respo-message.action :as action
            respo-message.updater :refer $ update-messages
