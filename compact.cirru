
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-feather.calcit/ |respo-message.calcit/ |cumulo-util.calcit/
    :version |0.0.1
  :files $ {}
    |app.comp.expr $ {}
      :ns $ quote
        ns app.comp.expr $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp <> list-> div button span input pre
          [] respo.comp.space :refer $ [] =<
          [] app.util :refer $ [] tree->cirru
          [] "\"copy-to-clipboard" :default copy!
          [] respo-message.action :as action
      :defs $ {}
        |comp-expr $ quote
          defcomp comp-expr (expr last?)
            list->
              {}
                :style $ merge style-expr
                  if last?
                    {} $ :display :inline-block
                    if
                      every? (:data expr)
                        fn (entry)
                          = :leaf $ :type (last entry)
                      {} (:display :inline-block) (:border-width "|0 0 1px 0") (:margin "|0 4px")
                :title "\"Click to copy."
                :class-name "\"comp-expr"
                :on-click $ fn (e d!)
                  let
                      code $ format-cirru (tree->cirru expr)
                    copy! code
                    d! action/create $ {}
                      :text $ str "\"Copied! " code
                      :token code
              -> (:data expr) (.to-list) (.sort-by first)
                map-indexed $ fn (idx entry)
                  let-sugar
                        [] k child
                        , entry
                    [] k $ if
                      = :expr $ :type child
                      comp-expr child $ = idx
                        dec $ count (:data expr)
                      <> (:text child)
                        {} $ :margin-right 8
        |style-expr $ quote
          def style-expr $ {}
            :background-color $ hsl 300 0 94
            :border $ str "|1px solid " (hsl 0 0 70)
            :border-width "|0 0 0 1px"
            :padding "|2px 16px"
            :font-family "|Source Code Pro, menlo"
            :line-height |16px
            :margin-bottom 2
            :vertical-align :top
            :min-height 16
            :min-width 32
            :font-size 13
            :cursor :pointer
    |app.comp.file $ {}
      :ns $ quote
        ns app.comp.file $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp <> list-> div button span input pre
          [] respo.comp.space :refer $ [] =<
          [] app.comp.expr :refer $ [] comp-expr
      :defs $ {}
        |comp-file $ quote
          defcomp comp-file (filename file-info)
            div
              {} $ :style
                merge ui/row $ {}
                  :border-left $ str "|1px solid " (hsl 0 0 70)
                  :padding-left 8
                  :font-family "|Source Code Pro, menlo"
              <> filename
              =< 16 nil
              div ({})
                div
                  {} $ :style
                    merge ui/column $ {}
                      :border-left $ str "|1px solid " (hsl 0 0 80)
                      :padding-left 8
                  <> :ns $ {}
                    :color $ hsl 0 0 70
                  comp-expr (:ns file-info) false
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
                          {} $ :style ui/column
                          <> def-name $ {} (:white-space :nowrap)
                            :color $ hsl 0 0 70
                          comp-expr def-info false
                div
                  {} $ :style
                    merge ui/column $ {}
                      :border-left $ str "|1px solid " (hsl 0 0 80)
                      :padding-left 8
                  <> :proc $ {}
                    :color $ hsl 0 0 70
                  comp-expr (:proc file-info) false
    |app.comp.container $ {}
      :ns $ quote
        ns app.comp.container $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp >> <> div button textarea span input pre
          [] respo.comp.space :refer $ [] =<
          [] reel.comp.reel :refer $ [] comp-reel
          [] cljs.reader :refer $ [] read-string
          [] app.comp.viewer :refer $ [] comp-viewer
          [] respo-md.comp.md :refer $ [] comp-md
          [] feather.core :refer $ [] comp-i
          [] respo.comp.inspect :refer $ [] comp-inspect
          [] respo-message.action :as action
          [] respo-message.comp.messages :refer $ [] comp-messages
      :defs $ {}
        |comp-file-input $ quote
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
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
              div
                {} $ :style (merge ui/global ui/fullscreen ui/row)
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
                case-default (:page store) (<> "\"Unknown route")
                  :viewer $ div
                    {} $ :style
                      merge ui/expand $ {} (:padding 16) (:overflow :auto)
                    if
                      some? $ :error store
                      <> span (:error store)
                        {} $ :color :red
                      if
                        some? $ :calcit store
                        comp-viewer $ :calcit store
                        <> "\"Nothing"
                  :textarea $ comp-text-area (:text store) (:error store)
                  :input $ comp-file-input (:error store)
                  :about $ comp-about
                comp-messages (:messages store) ({})
                  fn (info d!) (d! action/clear nil)
                comp-inspect :store store $ {} (:bottom 0) (:right 8)
                comp-reel (>> states :reel) reel $ {}
        |comp-about $ quote
          defcomp comp-about () $ div
            {} $ :style
              {} $ :padding 8
            comp-md "\"Calcit Viewer is a tool for reading calcit.cirru files. Read more on https://github.com/Cirru/calcit-viewer ."
        |comp-entry $ quote
          defcomp comp-entry (icon page current-page)
            div
              {}
                :style $ merge ui/center
                  {} (:font-size 28) (:width 48) (:height 48)
                    :color $ hsl 0 0 60
                    :cursor :pointer
                  if (= page current-page)
                    {} $ :color :white
                :on-click $ fn (e d!) (d! :page page)
              comp-i icon 14 $ hsl 200 80 80
        |on-file-change $ quote
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
                    .!readAsText fr file
        |comp-text-area $ quote
          defcomp comp-text-area (text error)
            div
              {} $ :style (merge ui/row ui/flex)
              textarea $ {}
                :style $ merge ui/textarea ui/flex
                  {} (:width |100%) (:font-family ui/font-code) (:font-size 12) (:line-height |1.4em)
                :value text
                :placeholder "\"Paste calcit.cirru content here..."
                :on-input $ fn (e d!)
                  d! :text $ :value e
              div
                {} $ :style
                  {} $ :padding 8
                button
                  {} (:style ui/button)
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
    |app.schema $ {}
      :ns $ quote (ns app.schema)
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
            :error nil
            :calcit nil
            :page :input
            :text "\""
    |app.comp.viewer $ {}
      :ns $ quote
        ns app.comp.viewer $ :require
          [] hsl.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp <> div list-> button span input
          [] respo.comp.space :refer $ [] =<
          [] cljs.reader :refer $ [] read-string
          [] app.comp.file :refer $ [] comp-file
      :defs $ {}
        |comp-viewer $ quote
          defcomp comp-viewer (calcit)
            let
                ir $ :ir calcit
              div ({})
                div ({}) (<> "\"Namespace:") (=< 8 nil)
                  <> $ :package ir
                div ({}) (<> "\"Users:") (=< 8 nil)
                  <> $ :users calcit
                div ({}) (<> "\"Configs:") (=< 8 nil)
                  <> $ :configs calcit
                div
                  {} $ :style ui/row
                  <> "\"Files:"
                  =< 16 nil
                  list-> ({})
                    -> (:files ir) (.to-list)
                      map $ fn (entry)
                        let-sugar
                              [] filename file-info
                              , entry
                          [] filename $ comp-file filename file-info
    |app.updater $ {}
      :ns $ quote
        ns app.updater $ :require
          [] respo.cursor :refer $ [] update-states
          [] respo-message.action :as action
          [] respo-message.updater :refer $ [] update-messages
      :defs $ {}
        |updater $ quote
          defn updater (store op op-data op-id op-time)
            case-default op
              let
                  op-time $ js/Date.now
                  op-id $ js/Math.random
                cond
                    action/message-action? op
                    update store :messages $ \ update-messages % op op-data op-id op-time
                  true $ do (println "\"Unknown op:" op) store
              :states $ update-states store op-data
              :load/calcit $ -> store (assoc :calcit op-data) (assoc :error nil) (assoc :page :viewer)
              :text $ assoc store :text op-data
              :error $ assoc store :error op-data
              :page $ assoc store :page op-data
    |app.main $ {}
      :ns $ quote
        ns app.main $ :require
          [] respo.core :refer $ [] render! clear-cache! realize-ssr!
          [] app.comp.container :refer $ [] comp-container
          [] cljs.reader :refer $ [] read-string
          [] app.updater :refer $ [] updater
          [] app.schema :as schema
          [] reel.util :refer $ [] listen-devtools!
          [] reel.core :refer $ [] reel-updater refresh-reel
          [] reel.schema :as reel-schema
          [] app.config :as config
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
      :defs $ {}
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            render-app!
            add-watch *reel :changes $ fn (r p) (render-app!)
            listen-devtools! |a dispatch!
            println "|App started."
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when config/dev? $ println "\"Dispatch:" op
            reset! *reel $ reel-updater updater @*reel op op-data
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
    |app.util $ {}
      :ns $ quote (ns app.util)
      :defs $ {}
        |tree->cirru $ quote
          defn tree->cirru (x)
            if
              = :leaf $ :type x
              :text x
              -> (:data x) (.to-list) (.sort-by first)
                map $ fn (pair)
                  tree->cirru $ last pair
    |app.config $ {}
      :ns $ quote (ns app.config)
      :defs $ {}
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
        |site $ quote
          def site $ {} (:dev-ui "\"http://localhost:8100/main.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main.css") (:cdn-url "\"http://cdn.tiye.me/calcit-viewer/") (:title "\"Calcit Viewer") (:icon "\"http://cdn.tiye.me/logo/cirru.png") (:storage-key "\"calcit-viewer")
