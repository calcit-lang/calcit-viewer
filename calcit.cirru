
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |respo-markdown.calcit/ |respo-feather.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op |app.types/Op
  :files $ {}
    'app.comp.code $ %{} 'FileEntry
      :defs $ {}
        'comp-code $ %{} 'CodeEntry
          :doc "|Source of one definition as nested blocks; hover shows inferred types, clicking a resolved symbol opens it in the next panel."
          :code $ quote $ defcomp comp-code (ctx code)
            div
              {} $ :class-name style-code
              render-expr ctx (code->tree code) ([])
          :examples $ []
          :schema $ quote $ Fn app.types/CodeCtx CirruQuote (-> respo.schema/Component)
        'path-key $ %{} 'CodeEntry
          :doc "|Dotted path, the same coordinates as `calcit query type-at --path`."
          :code $ quote $ defn path-key (path)
            .join-string
              .map path $ fn (x) (str x)
              , |.
          :examples $ []
          :schema $ quote $ Fn (List Number) (-> String)
        'render-expr $ %{} 'CodeEntry (:doc "|Renders a Cirru tree node at `path`.")
          :code $ quote $ defn render-expr (ctx tree path)
            if (string? tree)
              render-leaf ctx (decode-map-as tree 'String) path
              let
                  items $ decode-map-as tree $ :: 'List 'Dynamic
                  t $ .get (:types ctx) (path-key path)
                  flat? $ not $ .any? items
                    fn (x)
                      hint-fn $ Fn Dynamic $ -> Bool
                      list? x
                list->
                  {}
                    :class-name $ str-spaced style-expr (if flat? style-flat |)
                      if (.some? t) style-typed |
                    :title $ .unwrap-or t |
                  .map-indexed items $ fn (idx child)
                    hint-fn $ Fn Number Dynamic $ -> (List Dynamic)
                    [] idx $ render-expr ctx child $ .concat path ([] idx)
          :examples $ []
          :schema $ quote $ Fn app.types/CodeCtx Dynamic (List Number) (-> respo.schema/Element)
        'render-leaf $ %{} 'CodeEntry
          :doc "|A leaf with its inferred type; symbols that resolve to a definition are links."
          :code $ quote $ defn render-leaf (ctx leaf path)
            let
                t $ .get (:types ctx) (path-key path)
                target $ if (symbol-leaf? leaf)
                  resolve-with (:namespaces ctx) (:imports ctx) (:ns-info ctx) leaf
                  Option :none
                linked? $ match target
                  (:some id)
                    not= id $ :self ctx
                  (:none) false
                class-name $ str-spaced style-leaf (if linked? style-link |)
                  if
                    and (.some? t)
                      .includes? (.unwrap-or t |) |Dynamic
                    , style-dynamic |
                  if (.some? t) style-typed |
              span
                if linked?
                  {} (:class-name class-name)
                    :title $ str (.unwrap-or target |) &newline $ .unwrap-or t |
                    :on-click $ fn (e d!)
                      d! $ Op :open (:next-idx ctx) (.unwrap target)
                  {} (:class-name class-name)
                    :title $ .unwrap-or t |
                <> leaf
                if
                  and (:inline-types? ctx) (.some? t)
                  span $ {} (:class-name style-inline-type)
                    :inner-text $ .unwrap-or t |
                  span $ {}
          :examples $ []
          :schema $ quote $ Fn app.types/CodeCtx String (List Number) (-> respo.schema/Element)
        'style-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-code
            {} $ |& $ {} (:font-family "|Source Code Pro, Menlo, monospace") (:font-size 13) (:line-height |20px)
          :examples $ []
          :schema $ quote String
        'style-dynamic $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-dynamic
            {} $ |& $ {} (:text-decoration-color "|hsl(30, 90%, 55%)")
          :examples $ []
          :schema $ quote String
        'style-expr $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-expr
            {}
              |& $ {} (:display :block) (:padding "|0 0 0 10px") (:margin "|1px 0") (:border-left "|1px solid hsl(0, 0%, 86%)") (:border-radius |4px)
              |&:hover $ {} $ :background-color "|hsla(200, 80%, 60%, 0.08)"
              "|&:has([class*=style-expr]:hover)" $ {} $ :background-color :transparent
          :examples $ []
          :schema $ quote String
        'style-flat $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-flat
            {} $ |& $ {} (:display :inline-block) (:margin "|1px 4px 1px 0") (:padding "|0 4px") (:border-left :none) (:border-bottom "|1px solid hsl(0, 0%, 86%)")
          :examples $ []
          :schema $ quote String
        'style-inline-type $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-inline-type
            {} $ |& $ {} (:color "|hsl(200, 40%, 55%)") (:font-size 11) (:margin-left 4) (:padding "|0 4px") (:border-radius |3px) (:background-color "|hsl(200, 40%, 95%)")
          :examples $ []
          :schema $ quote String
        'style-leaf $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-leaf
            {} $ |& $ {} (:display :inline-block) (:margin-right 8) (:white-space :pre)
          :examples $ []
          :schema $ quote String
        'style-link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-link
            {}
              |& $ {} (:color "|hsl(210, 80%, 45%)") (:cursor :pointer)
              |&:hover $ {} $ :text-decoration :underline
          :examples $ []
          :schema $ quote String
        'style-typed $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-typed
            {} $ |& $ {} (:text-decoration-line :underline) (:text-decoration-style :dotted) (:text-decoration-color "|hsl(200, 50%, 70%)") (:text-underline-offset |3px)
          :examples $ []
          :schema $ quote String
        'symbol-leaf? $ %{} 'CodeEntry
          :doc "|Leaves that may name a definition: not strings, tags, numbers or quoted symbols."
          :code $ quote $ defn symbol-leaf? (leaf)
            not $ or (.empty? leaf) (.starts-with? leaf ||) (.starts-with? leaf |:) (.starts-with? leaf "|\"") (.starts-with? leaf |')
              .includes? |0123456789 $ .unwrap-or (.first leaf) |
          :examples $ []
          :schema $ quote $ Fn String (-> Bool)
          :tests $ [] $ %{} 'TestEntry (:name |symbol-leaves)
            :code $ quote $ do
              assert= true $ symbol-leaf? |respo.core/div
              assert= false $ symbol-leaf? "|\"|text"
              assert= false $ symbol-leaf? |:tag
              assert= false $ symbol-leaf? |12
              assert= true $ symbol-leaf? |render-app!
      :ns $ %{} 'NsEntry (:doc "|Rendering definition source with types.")
        :code $ quote $ ns app.comp.code
          :require
            respo.core :refer $ defcomp div span <> list->
            respo.css :refer $ defstyle
            app.types :refer $ Op
            app.program :refer $ code->tree resolve-with
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'case-view $ %{} 'CodeEntry
          :doc "|Picks the element for the current view; the code panels are the fallback."
          :code $ quote $ defn case-view (view tree sunburst panels)
            cond
                = view :tree
                , tree
              (= view :sunburst) sunburst
              true panels
          :examples $ []
          :schema $ quote $ Fn Tag respo.schema/Component respo.schema/Component respo.schema/Element (-> Dynamic)
        'comp-container $ %{} 'CodeEntry
          :doc "|Root layout: navigation, toolbar and the panel stack."
          :code $ quote $ defcomp comp-container (store)
            let
                prefs $ :prefs store
              div
                {} $ :class-name $ str-spaced css/global style-app
                match (:program store)
                  (:some program)
                    comp-nav program prefs $ :changed store
                  (:none)
                    span $ {}
                div
                  {} $ :class-name style-main
                  comp-toolbar store
                  match (:error store)
                    (:some message)
                      div
                        {} $ :class-name style-error
                        <> message
                    (:none)
                      span $ {}
                  match (:program store)
                    (:some program)
                      case-view (:view prefs)
                        comp-call-tree program prefs $ :expanded store
                        comp-sunburst program prefs $ :zoom store
                        list->
                          {} $ :class-name style-panels
                          .map-indexed (:stack prefs)
                            fn (idx id)
                              hint-fn $ Fn Number String $ -> (List Dynamic)
                              [] (str idx |: id)
                                comp-panel program idx id
                                  .includes? (:changed store) id
                                  :inline-types? prefs
                    (:none) (comp-welcome)
          :examples $ []
          :schema $ quote $ Fn app.types/Store (-> respo.schema/Component)
        'comp-toolbar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-toolbar (store)
            div
              {} $ :class-name style-toolbar
              div
                {} $ :class-name style-file-button
                <> "|Open file…"
                input $ {} (:type |file) (:accept |.cirru) (:class-name style-file-input) (:on-change on-file-change)
              comp-watch store
              comp-view-tabs $ :view $ :prefs store
              match (:program store)
                (:some program)
                  span $ {} (:class-name style-meta)
                    :inner-text $ str (:file-name store) "| · " (:package program)
                      if
                        = :ir $ :format program
                        str "| · calcit " $ :calcit-version program
                        , "| · Snapshot, no inferred types"
                      if
                        .empty? $ :changed store
                        , | $ str "| · "
                          .len $ :changed store
                          , "| updated"
                (:none)
                  span $ {}
              div
                {} (:class-name style-toggle)
                  :on-click $ fn (e d!)
                    d! $ Op :toggle-inline-types
                <> $ if
                  :inline-types? $ :prefs store
                  , "|☑ Inline types" "|☐ Inline types"
          :examples $ []
          :schema $ quote $ Fn app.types/Store (-> respo.schema/Component)
        'comp-view-tabs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-view-tabs (view)
            list->
              {} $ :class-name style-tabs
              .map
                [] ([] :code |Code) ([] :tree "|Call tree") ([] :sunburst |Sunburst)
                fn (pair)
                  hint-fn $ Fn (List Dynamic)
                    -> $ List Dynamic
                  let
                      tag $ decode-map-as
                        .unwrap $ .get pair 0
                        , 'Tag
                    [] tag $ span $ {}
                      :class-name $ str-spaced style-tab $ if (= tag view) style-tab-active |
                      :inner-text $ decode-map-as
                        .unwrap $ .get pair 1
                        , 'String
                      :on-click $ fn (e d!)
                        d! $ Op :view tag
          :examples $ []
          :schema $ quote $ Fn Tag (-> respo.schema/Component)
        'comp-watch $ %{} 'CodeEntry
          :doc "|Watching controls; only shown where the File System Access API exists."
          :code $ quote $ defcomp comp-watch (store)
            if
              not $ supports-watch
              span $ {}
              match (:watching store)
                (:some file-name)
                  span $ {} (:class-name style-watching)
                    :inner-text $ str "|● Watching " file-name "| (click to stop)"
                    :on-click $ fn (e d!) (stop-watch! d!)
                (:none)
                  span ({})
                    span $ {} (:class-name style-watch-button) (:inner-text "|Watch file…")
                      :on-click $ fn (e d!) (watch! d!)
                    match (:resumable store)
                      (:some file-name)
                        span $ {} (:class-name style-watch-button)
                          :inner-text $ str "|Resume watching " file-name
                          :on-click $ fn (e d!) (resume-watch! d!)
                      (:none)
                        span $ {}
          :examples $ []
          :schema $ quote $ Fn app.types/Store (-> respo.schema/Component)
        'comp-welcome $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-welcome ()
            div
              {} $ :class-name style-welcome
              comp-md-block "|Open `program-ir.cirru` to read a Calcit program with its inferred types, or a `calcit.cirru` Snapshot for source only.\n\nGenerate the IR file in your project:\n\n```bash\ncalcit calcit.cirru ir --sources-only\n```\n\nThe file is written to `js-out/program-ir.cirru`." $ {}
          :examples $ []
          :schema $ quote $ Fn (-> respo.schema/Component)
        'style-app $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-app
            {} $ |& $ {} (:position :fixed) (:inset 0) (:display :flex) (:background-color "|hsl(0, 0%, 97%)")
          :examples $ []
          :schema $ quote String
        'style-error $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-error
            {} $ |& $ {} (:color "|hsl(0, 70%, 45%)") (:padding "|8px 16px") (:white-space :pre-wrap) (:font-size 13)
          :examples $ []
          :schema $ quote String
        'style-file-button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-file-button
            {} $ |& $ {} (:position :relative) (:overflow :hidden) (:padding "|2px 10px") (:border-radius |4px) (:background-color "|hsl(210, 80%, 50%)") (:color :white) (:cursor :pointer) (:font-size 13)
          :examples $ []
          :schema $ quote String
        'style-file-input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-file-input
            {} $ |& $ {} (:position :absolute) (:inset 0) (:opacity 0) (:cursor :pointer)
          :examples $ []
          :schema $ quote String
        'style-main $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-main
            {} $ |& $ {} (:flex 1) (:min-width 0) (:display :flex) (:flex-direction :column)
          :examples $ []
          :schema $ quote String
        'style-meta $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-meta
            {} $ |& $ {} (:font-size 12) (:color "|hsl(0, 0%, 45%)")
          :examples $ []
          :schema $ quote String
        'style-panels $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-panels
            {} $ |& $ {} (:flex 1) (:min-height 0) (:display :flex) (:overflow-x :auto)
          :examples $ []
          :schema $ quote String
        'style-tab $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tab
            {}
              |& $ {} (:padding "|2px 10px") (:font-size 13) (:cursor :pointer) (:color "|hsl(0, 0%, 40%)") (:border-radius |4px)
              |&:hover $ {} $ :background-color "|hsl(0, 0%, 94%)"
          :examples $ []
          :schema $ quote String
        'style-tab-active $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tab-active
            {} $ |& $ {} (:color :white) (:background-color "|hsl(210, 30%, 35%)")
          :examples $ []
          :schema $ quote String
        'style-tabs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tabs
            {} $ |& $ {} (:display :flex) (:gap 2)
          :examples $ []
          :schema $ quote String
        'style-toggle $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-toggle
            {} $ |& $ {} (:margin-left :auto) (:font-size 12) (:cursor :pointer) (:color "|hsl(0, 0%, 35%)") (:user-select :none)
          :examples $ []
          :schema $ quote String
        'style-toolbar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-toolbar
            {} $ |& $ {} (:display :flex) (:align-items :center) (:gap 12) (:padding "|6px 16px") (:border-bottom "|1px solid hsl(0, 0%, 88%)") (:background-color :white)
          :examples $ []
          :schema $ quote String
        'style-watch-button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-watch-button
            {}
              |& $ {} (:padding "|2px 10px") (:margin-right 8) (:border-radius |4px) (:border "|1px solid hsl(210, 80%, 50%)") (:color "|hsl(210, 80%, 45%)") (:cursor :pointer) (:font-size 13)
              |&:hover $ {} $ :background-color "|hsl(210, 80%, 96%)"
          :examples $ []
          :schema $ quote String
        'style-watching $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-watching
            {} $ |& $ {} (:font-size 13) (:color "|hsl(140, 50%, 35%)") (:cursor :pointer)
          :examples $ []
          :schema $ quote String
        'style-welcome $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-welcome
            {} $ |& $ {} (:padding "|24px 32px") (:max-width 640) (:color "|hsl(0, 0%, 30%)")
          :examples $ []
          :schema $ quote String
      :ns $ %{} 'NsEntry (:doc "|Root component.")
        :code $ quote $ ns app.comp.container
          :require
            respo.core :refer $ defcomp div span <> list-> input
            respo.css :refer $ defstyle
            respo-ui.css :as css
            respo-md.comp.md :refer $ comp-md-block
            app.types :refer $ Op
            app.loader :refer $ on-file-change watch! resume-watch! stop-watch!
            |../src/file-watch.mjs :refer $ supports-watch
            app.comp.nav :refer $ comp-nav
            app.comp.panel :refer $ comp-panel
            app.comp.graph :refer $ comp-call-tree comp-sunburst
    'app.comp.graph $ %{} 'FileEntry
      :defs $ {}
        'arc-path $ %{} 'CodeEntry
          :doc "|SVG path of a ring segment between radii `r0` and `r1` and angles `a0` to `a1`, in radians from 12 o'clock."
          :code $ quote $ defn arc-path (r0 r1 a0 raw-a1)
            let
                ; "|a full turn would start and end on the same point, which draws nothing"
                a1 $ at-most
                  + a0 $ - (* 2 &PI) 0.0001
                  , raw-a1
                point $ fn (r a)
                  hint-fn $ Fn Number Number $ -> String
                  str
                    .format
                      * r $ sin a
                      , 2
                    , |, $ .format
                      negate $ * r $ cos a
                      , 2
                large $ if
                  > (- a1 a0) &PI
                  , |1 |0
              str |M (point r0 a0) "| L" (point r1 a0) "| A" r1 |, r1 "| 0 " large "| 1 " (point r1 a1) "| L" (point r0 a1) "| A" r0 |, r0 "| 0 " large "| 0 " (point r0 a0) "| Z"
          :examples $ []
          :schema $ quote $ Fn Number Number Number Number (-> String)
          :tests $ [] $ %{} 'TestEntry (:name |quarter-ring)
            :code $ quote $ assert= "|M0.00,-10.00 L0.00,-20.00 A20,20 0 0 1 20.00,-0.00 L10.00,-0.00 A10,10 0 0 0 0.00,-10.00 Z"
              arc-path 10 20 0 $ / &PI 2
        'at-least $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn at-least (lo x)
            if (< x lo) lo x
          :examples $ []
          :schema $ quote $ Fn Number Number (-> Number)
        'at-most $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn at-most (hi x)
            if (> x hi) hi x
          :examples $ []
          :schema $ quote $ Fn Number Number (-> Number)
        'call-children $ %{} 'CodeEntry
          :doc "|Dependencies of a definition shown in the call tree; libraries only when they are visible."
          :code $ quote $ defn call-children (program show-libs? id)
            match (lookup-def program id)
              (:none) ([])
              (:some info)
                .filter (:deps info)
                  fn (dep)
                    or show-libs? $ -> (:namespaces program)
                      .get $ .unwrap-or
                        .get (split-id dep) 0
                        , |
                      .map $ fn (ns-info)
                        hint-fn $ Fn NsInfo $ -> Bool
                        = :project $ :origin ns-info
                      .unwrap-or false
          :examples $ []
          :schema $ quote $ Fn app.types/Program Bool String
            -> $ List String
        'comp-call-node $ %{} 'CodeEntry
          :doc "|One call tree row and, when expanded, its callees. A definition already on the path is marked instead of expanded again."
          :code $ quote $ defn comp-call-node (program show-libs? expanded path id)
            let
                key $ .join-string
                  .concat path $ [] id
                  , "| > "
                looped? $ .includes? path id
                children $ if looped? ([]) (call-children program show-libs? id)
                open? $ .includes? expanded key
              div ({})
                div
                  {} $ :class-name style-tree-row
                  span $ {} (:class-name style-tree-toggle)
                    :inner-text $ cond
                        .empty? children
                        , "|·"
                      open? "|▾"
                      true "|▸"
                    :on-click $ fn (e d!)
                      if
                        not $ .empty? children
                        d! $ Op :toggle-node key
                        , &unit
                  span $ {} (:class-name style-tree-name) (:inner-text id)
                    :on-click $ fn (e d!)
                      d! $ Op :focus id
                  if looped?
                    span $ {} (:class-name style-tree-note) (:inner-text "|↻ already on this path")
                    span $ {} (:class-name style-tree-note)
                      :inner-text $ if (.empty? children) | $ str (.len children)
                if
                  and open? $ not looped?
                  list->
                    {} $ :class-name style-tree-children
                    .map children $ fn (child)
                      hint-fn $ Fn String $ -> (List Dynamic)
                      [] child $ comp-call-node program show-libs? expanded
                        .concat path $ [] id
                        , child
                  span $ {}
          :examples $ []
          :schema $ quote $ Fn app.types/Program Bool (Set String) (List String) String (-> respo.schema/Element)
        'comp-call-tree $ %{} 'CodeEntry
          :doc "|Collapsible call tree from the first open panel, or the entry when nothing is open."
          :code $ quote $ defcomp comp-call-tree (program prefs expanded)
            let
                root $ .unwrap-or
                  .first $ :stack prefs
                  :init-fn program
              div
                {} $ :class-name style-graph
                div
                  {} $ :class-name style-graph-hint
                  <> "|Click ▸ to expand callees, a name to read it. Starts from the first open panel."
                if
                  .some? $ lookup-def program root
                  comp-call-node program (:show-libs? prefs) (.include expanded root) ([]) root
                  <> "|Open a definition first."
          :examples $ []
          :schema $ quote $ Fn app.types/Program app.types/Prefs (Set String) (-> respo.schema/Component)
        'comp-sunburst $ %{} 'CodeEntry
          :doc "|Namespaces (inner ring) and their definitions (outer ring), sized by source leaves and coloured by Dynamic share. Click a namespace to zoom in, the centre to zoom out, a definition to read it."
          :code $ quote $ defcomp comp-sunburst (program prefs zoom)
            let
                namespaces $ ->
                  map-values $ :namespaces program
                  .filter $ fn (ns-info)
                    hint-fn $ Fn NsInfo $ -> Bool
                    and
                      or (:show-libs? prefs)
                        = :project $ :origin ns-info
                      match zoom
                        (:some name)
                          = name $ :name ns-info
                        (:none) true
                sizes $ .map namespaces $ fn (ns-info)
                  hint-fn $ Fn NsInfo $ -> Number
                  ns-size ns-info
                total $ at-least 1 $ foldl sizes 0
                  fn (acc x)
                    hint-fn $ Fn Number Number $ -> Number
                    + acc x
                starts $ .map-indexed sizes $ fn (idx x)
                  hint-fn $ Fn Number Number $ -> Number
                  * 2 &PI $ /
                    foldl (.take sizes idx) 0 &+
                    , total
              div
                {} $ :class-name style-graph
                div
                  {} $ :class-name style-graph-hint
                  <> $ match zoom
                    (:some name) (str name "| · click the centre to zoom out")
                    (:none) "|Inner ring: namespaces (click to zoom). Outer ring: definitions sized by source, green to orange by Dynamic share."
                div
                  {} $ :class-name style-chart
                  match zoom
                    (:some name)
                      match (.first namespaces)
                        (:some ns-info) (def-labels ns-info)
                        (:none)
                          span $ {}
                    (:none) (sunburst-labels namespaces starts sizes total)
                  create-element :svg
                    {} (:width 640) (:height 640) (:viewBox "|-320 -320 640 640")
                    create-element :circle $ {} (:r 56) (:fill "|hsl(0, 0%, 96%)") (:class-name style-center)
                      :on-click $ fn (e d!)
                        d! $ Op :zoom $ Option :none
                    create-element :g ({}) & $ .flat-map
                      .map-indexed namespaces $ fn (idx ns-info) ([] idx ns-info)
                      fn (pair)
                        hint-fn $ Fn (List Dynamic)
                          -> $ List respo.schema/Element
                        let
                            idx $ decode-map-as
                              .unwrap $ .get pair 0
                              , 'Number
                            ns-info $ decode-map-as
                              .unwrap $ .get pair 1
                              , 'app.types/NsInfo
                            a0 $ .unwrap-or (.get starts idx) 0
                            span-angle $ * 2 &PI $ /
                              .unwrap-or (.get sizes idx) 0
                              , total
                          sunburst-segments ns-info idx a0 span-angle
          :examples $ []
          :schema $ quote $ Fn app.types/Program app.types/Prefs (Option String) (-> respo.schema/Component)
        'def-labels $ %{} 'CodeEntry
          :doc "|Definition names over the outer ring of a zoomed namespace."
          :code $ quote $ defn def-labels (ns-info)
            let
                defs $ map-values $ :defs ns-info
                sizes $ .map defs $ fn (info)
                  hint-fn $ Fn DefInfo $ -> Number
                  at-least 1 $ :size info
                total $ at-least 1 $ ns-size ns-info
              list->
                {} $ :style $ {} (:position :absolute) (:inset 0) (:pointer-events :none)
                .map-indexed defs $ fn (idx info)
                  hint-fn $ Fn Number DefInfo $ -> (List Dynamic)
                  let
                      b0 $ * 2 &PI $ /
                        foldl (.take sizes idx) 0 &+
                        , total
                      span-angle $ * 2 &PI $ /
                        .unwrap-or (.get sizes idx) 1
                        , total
                      mid $ + b0 $ / span-angle 2
                    [] (:name info)
                      if (< span-angle 0.12)
                        span $ {}
                        span $ {} (:class-name style-label)
                          :inner-text $ :name info
                          :style $ {}
                            :left $ str
                              .format
                                + 320 $ * 220 $ sin mid
                                , 1
                              , |px
                            :top $ str
                              .format
                                - 320 $ * 220 $ cos mid
                                , 1
                              , |px
          :examples $ []
          :schema $ quote $ Fn app.types/NsInfo (-> respo.schema/Element)
        'dynamic-color $ %{} 'CodeEntry
          :doc "|Gray without recorded types, otherwise green to orange as the Dynamic share grows."
          :code $ quote $ defn dynamic-color (ratio)
            if (< ratio 0) "|hsl(0, 0%, 82%)" $ str "|hsl("
              .format
                - 140 $ * 115 $ at-most 1 (* 4 ratio)
                , 0
              , "|, 60%, 58%)"
          :examples $ []
          :schema $ quote $ Fn Number (-> String)
        'ns-size $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn ns-size (ns-info)
            foldl
              map-values $ :defs ns-info
              , 0 $ fn (acc info)
                hint-fn $ Fn Number DefInfo $ -> Number
                + acc $ at-least 1 $ :size info
          :examples $ []
          :schema $ quote $ Fn app.types/NsInfo (-> Number)
        'style-center $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-center
            {} $ |& $ {} (:cursor :pointer)
          :examples $ []
          :schema $ quote String
        'style-chart $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-chart
            {} $ |& $ {} (:position :relative) (:width 640) (:height 640)
          :examples $ []
          :schema $ quote String
        'style-graph $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-graph
            {} $ |& $ {} (:flex 1) (:overflow :auto) (:padding "|12px 20px 40px") (:background-color :white)
          :examples $ []
          :schema $ quote String
        'style-graph-hint $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-graph-hint
            {} $ |& $ {} (:font-size 12) (:color "|hsl(0, 0%, 55%)") (:margin-bottom 8)
          :examples $ []
          :schema $ quote String
        'style-label $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-label
            {} $ |& $ {} (:position :absolute) (:transform "|translate(-50%, -50%)") (:font-size 11) (:color "|hsl(0, 0%, 20%)") (:pointer-events :none) (:white-space :nowrap) (:z-index 1)
          :examples $ []
          :schema $ quote String
        'style-segment $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-segment
            {}
              |& $ {} (:cursor :pointer) (:stroke :white) (:stroke-width |0.6)
              |&:hover $ {} $ :opacity |0.75
          :examples $ []
          :schema $ quote String
        'style-tree-children $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tree-children
            {} $ |& $ {} (:margin-left 9) (:padding-left 10) (:border-left "|1px solid hsl(0, 0%, 88%)")
          :examples $ []
          :schema $ quote String
        'style-tree-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tree-name
            {}
              |& $ {} (:cursor :pointer) (:color "|hsl(210, 70%, 40%)")
              |&:hover $ {} $ :text-decoration :underline
          :examples $ []
          :schema $ quote String
        'style-tree-note $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tree-note
            {} $ |& $ {} (:margin-left 8) (:font-size 11) (:color "|hsl(0, 0%, 60%)")
          :examples $ []
          :schema $ quote String
        'style-tree-row $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tree-row
            {} $ |& $ {} (:display :flex) (:align-items :center) (:font-family "|Source Code Pro, Menlo, monospace") (:font-size 13) (:line-height |22px) (:white-space :nowrap)
          :examples $ []
          :schema $ quote String
        'style-tree-toggle $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tree-toggle
            {} $ |& $ {} (:display :inline-block) (:width 16) (:cursor :pointer) (:color "|hsl(0, 0%, 50%)") (:user-select :none)
          :examples $ []
          :schema $ quote String
        'sunburst-labels $ %{} 'CodeEntry
          :doc "|Namespace names laid over the inner ring; Respo SVG elements carry no text, so labels are HTML."
          :code $ quote $ defn sunburst-labels (namespaces starts sizes total)
            list->
              {} $ :style $ {} (:position :absolute) (:inset 0) (:pointer-events :none)
              .map-indexed namespaces $ fn (idx ns-info)
                hint-fn $ Fn Number NsInfo $ -> (List Dynamic)
                let
                    span-angle $ * 2 &PI $ /
                      .unwrap-or (.get sizes idx) 0
                      , total
                    mid $ +
                      .unwrap-or (.get starts idx) 0
                      / span-angle 2
                  [] (:name ns-info)
                    if (< span-angle 0.3)
                      span $ {}
                      span $ {} (:class-name style-label)
                        :inner-text $ .unwrap-or
                          .last $ .split (:name ns-info) |.
                          , |
                        :style $ {}
                          :left $ str
                            .format
                              + 320 $ * 103 $ sin mid
                              , 1
                            , |px
                          :top $ str
                            .format
                              - 320 $ * 103 $ cos mid
                              , 1
                            , |px
          :examples $ []
          :schema $ quote $ Fn (List app.types/NsInfo) (List Number) (List Number) Number (-> respo.schema/Element)
        'sunburst-segments $ %{} 'CodeEntry
          :doc "|Inner ring segment for a namespace and outer segments for its definitions."
          :code $ quote $ defn sunburst-segments (ns-info idx a0 span-angle)
            let
                defs $ map-values $ :defs ns-info
                total $ at-least 1 $ ns-size ns-info
                sizes $ .map defs $ fn (info)
                  hint-fn $ Fn DefInfo $ -> Number
                  at-least 1 $ :size info
                outer $ .map-indexed defs $ fn (i info)
                  hint-fn $ Fn Number DefInfo $ -> respo.schema/Element
                  let
                      b0 $ + a0 $ * span-angle
                        /
                          foldl (.take sizes i) 0 &+
                          , total
                      b1 $ + b0 $ * span-angle
                        /
                          .unwrap-or (.get sizes i) 1
                          , total
                    create-element :path $ {} (:class-name style-segment)
                      :d $ arc-path 150 290 b0 b1
                      :fill $ dynamic-color $ dynamic-ratio info
                      :on-click $ fn (e d!)
                        d! $ Op :focus $ :id info
              .concat
                [] $ create-element :path $ {} (:class-name style-segment)
                  :d $ arc-path 60 146 a0 $ + a0 span-angle
                  :fill $ str "|hsl("
                    .rem (* idx 47) 360
                    , "|, 45%, 72%)"
                  :on-click $ fn (e d!)
                    d! $ Op :zoom $ Option :some (:name ns-info)
                , outer
          :examples $ []
          :schema $ quote $ Fn app.types/NsInfo Number Number Number
            -> $ List respo.schema/Element
      :ns $ %{} 'NsEntry (:doc "|Call tree and sunburst views.")
        :code $ quote $ ns app.comp.graph
          :require
            respo.core :refer $ defcomp div span <> list-> create-element
            respo.css :refer $ defstyle
            app.types :refer $ Op NsInfo DefInfo
            app.program :refer $ lookup-def split-id map-values dynamic-ratio
    'app.comp.nav $ %{} 'FileEntry
      :defs $ {}
        'comp-nav $ %{} 'CodeEntry
          :doc "|Namespace and definition tree with a filter; libraries are hidden unless toggled."
          :code $ quote $ defcomp comp-nav (program prefs changed)
            let
                query $ .trim $ :filter prefs
                open-ids $ .to-set $ :stack prefs
                visible $ ->
                  map-values $ :namespaces program
                  .filter $ fn (ns-info)
                    hint-fn $ Fn NsInfo $ -> Bool
                    or (:show-libs? prefs)
                      = :project $ :origin ns-info
              div
                {} $ :class-name style-nav
                div
                  {} $ :class-name style-nav-tools
                  input $ {} (:class-name style-filter) (:placeholder "|Filter definitions")
                    :value $ :filter prefs
                    :on-input $ fn (e d!)
                      d! $ Op :filter $ event-value e
                  div
                    {} (:class-name style-check)
                      :on-click $ fn (e d!)
                        d! $ Op :toggle-libs
                    <> $ if (:show-libs? prefs) "|☑ Show libraries" "|☐ Show libraries"
                list->
                  {} $ :class-name style-nav-list
                  .map visible $ fn (ns-info)
                    hint-fn $ Fn NsInfo $ -> (List Dynamic)
                    let
                        defs $ ->
                          map-values $ :defs ns-info
                          .filter $ fn (info)
                            hint-fn $ Fn DefInfo $ -> Bool
                            or (.empty? query)
                              .includes? (:id info) query
                      [] (:name ns-info)
                        if (.empty? defs)
                          span $ {}
                          div ({})
                            div
                              {} $ :class-name style-ns-name
                              <> $ :name ns-info
                              if
                                = :project $ :origin ns-info
                                span $ {}
                                span $ {} (:class-name style-origin)
                                  :inner-text $ .to-string $ :origin ns-info
                            list-> ({})
                              .map defs $ fn (info)
                                hint-fn $ Fn DefInfo $ -> (List Dynamic)
                                [] (:name info)
                                  comp-nav-def info
                                    .includes? open-ids $ :id info
                                    .includes? changed $ :id info
          :examples $ []
          :schema $ quote $ Fn app.types/Program app.types/Prefs (Set String) (-> respo.schema/Component)
        'comp-nav-def $ %{} 'CodeEntry
          :doc "|One definition row; the dot shows how much of its source types still mention Dynamic."
          :code $ quote $ defcomp comp-nav-def (info open? changed?)
            let
                ratio $ dynamic-ratio info
                color $ cond
                    < ratio 0
                    , "|hsl(0, 0%, 85%)"
                  (= ratio 0) "|hsl(140, 50%, 55%)"
                  (< ratio 0.2) "|hsl(50, 85%, 55%)"
                  true "|hsl(25, 85%, 55%)"
              div
                {}
                  :class-name $ str-spaced style-nav-def (if open? style-nav-open |) (if changed? style-nav-changed |)
                  :title $ if (< ratio 0) (:id info)
                    str (:id info) &newline "|Dynamic in "
                      .round $ * 100 ratio
                      , "|% of recorded types"
                  :on-click $ fn (e d!)
                    d! $ Op :open 0 $ :id info
                span $ {} (:class-name style-dot)
                  :style $ {} $ :background-color color
                <> $ :name info
          :examples $ []
          :schema $ quote $ Fn app.types/DefInfo Bool Bool (-> respo.schema/Component)
        'style-check $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-check
            {} $ |& $ {} (:font-size 12) (:color "|hsl(0, 0%, 75%)") (:display :flex) (:align-items :center) (:gap 4) (:cursor :pointer)
          :examples $ []
          :schema $ quote String
        'style-dot $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-dot
            {} $ |& $ {} (:display :inline-block) (:width 6) (:height 6) (:border-radius |50%) (:margin-right 6) (:flex-shrink 0)
          :examples $ []
          :schema $ quote String
        'style-filter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-filter
            {} $ |& $ {} (:width |100%) (:box-sizing :border-box) (:padding "|4px 8px") (:border :none) (:border-radius |4px) (:outline :none) (:font-size 13)
          :examples $ []
          :schema $ quote String
        'style-nav $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-nav
            {} $ |& $ {} (:width 260) (:flex-shrink 0) (:display :flex) (:flex-direction :column) (:background-color "|hsl(210, 25%, 20%)") (:color "|hsl(0, 0%, 85%)")
          :examples $ []
          :schema $ quote String
        'style-nav-changed $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-nav-changed
            {} $ |& $ {} (:color "|hsl(140, 60%, 70%)") (:font-weight 600)
          :examples $ []
          :schema $ quote String
        'style-nav-def $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-nav-def
            {}
              |& $ {} (:display :flex) (:align-items :center) (:padding "|1px 8px 1px 18px") (:cursor :pointer) (:font-family "|Source Code Pro, Menlo, monospace") (:font-size 12) (:white-space :nowrap) (:overflow :hidden) (:text-overflow :ellipsis)
              |&:hover $ {} $ :background-color "|hsla(0, 0%, 100%, 0.08)"
          :examples $ []
          :schema $ quote String
        'style-nav-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-nav-list
            {} $ |& $ {} (:flex 1) (:overflow :auto) (:padding-bottom 40)
          :examples $ []
          :schema $ quote String
        'style-nav-open $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-nav-open
            {} $ |& $ {} (:color :white) (:background-color "|hsla(210, 80%, 60%, 0.25)")
          :examples $ []
          :schema $ quote String
        'style-nav-tools $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-nav-tools
            {} $ |& $ {} (:padding 8) (:display :flex) (:flex-direction :column) (:gap 6)
          :examples $ []
          :schema $ quote String
        'style-ns-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-ns-name
            {} $ |& $ {} (:padding "|8px 8px 2px") (:font-size 12) (:color "|hsl(210, 30%, 70%)") (:display :flex) (:align-items :center) (:gap 6)
          :examples $ []
          :schema $ quote String
        'style-origin $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-origin
            {} $ |& $ {} (:font-size 10) (:padding "|0 4px") (:border-radius |3px) (:background-color "|hsla(0, 0%, 100%, 0.12)")
          :examples $ []
          :schema $ quote String
      :ns $ %{} 'NsEntry (:doc "|Left navigation.")
        :code $ quote $ ns app.comp.nav
          :require
            respo.core :refer $ defcomp div span <> list-> input event-value
            respo.css :refer $ defstyle
            app.types :refer $ Op NsInfo DefInfo
            app.program :refer $ map-values dynamic-ratio
    'app.comp.panel $ %{} 'FileEntry
      :defs $ {}
        'comp-def-list $ %{} 'CodeEntry
          :doc "|Clickable list of definition ids; ids missing from the program are shown plain."
          :code $ quote $ defcomp comp-def-list (program title ids next-idx)
            div ({})
              div
                {} $ :class-name style-section-title
                <> $ str title "| (" (.len ids) "|)"
              list->
                {} $ :class-name style-def-list
                .map ids $ fn (id)
                  hint-fn $ Fn String $ -> (List Dynamic)
                  [] id $ if
                    .some? $ lookup-def program id
                    span $ {} (:class-name style-ref) (:inner-text id)
                      :on-click $ fn (e d!)
                        d! $ Op :open next-idx id
                    span $ {} (:class-name style-ref-missing) (:inner-text id)
          :examples $ []
          :schema $ quote $ Fn app.types/Program String (List String) Number (-> respo.schema/Component)
        'comp-panel $ %{} 'CodeEntry
          :doc "|One definition: signature, doc, source with types, and its references in both directions."
          :code $ quote $ defcomp comp-panel (program idx id changed? inline-types?)
            match (lookup-def program id)
              (:none)
                div
                  {} $ :class-name style-panel
                  comp-panel-header idx id |missing false
                  div
                    {} $ :class-name style-note
                    <> "|This definition is not in the loaded file."
              (:some info)
                let
                    ns-info $ .unwrap $ .get (:namespaces program) (:ns info)
                    ctx $ CodeCtx :namespaces (:namespaces program) :ns-info ns-info :imports
                      ns-imports $ code->tree $ :code ns-info
                      , :types (:types info) :self id :next-idx (inc idx) :inline-types? inline-types?
                    users $ .unwrap-or
                      .get (:users program) id
                      []
                  div
                    {} $ :class-name $ str-spaced style-panel (if changed? style-changed |)
                    comp-panel-header idx id (:head info) changed?
                    comp-signature info
                    if
                      .empty? $ :doc info
                      span $ {}
                      comp-md-block (:doc info)
                        {} $ :class-name style-doc
                    match (:error info)
                      (:some message)
                        div
                          {} $ :class-name style-error
                          <> message
                      (:none)
                        span $ {}
                    comp-code ctx $ :source info
                    comp-def-list program |Uses (:deps info) (inc idx)
                    comp-def-list program "|Used by" users $ inc idx
          :examples $ []
          :schema $ quote $ Fn app.types/Program Number String Bool Bool (-> respo.schema/Component)
        'comp-panel-header $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-panel-header (idx id head changed?)
            let
                parts $ split-id id
              div
                {} $ :class-name style-header
                div
                  {} $ :class-name style-title
                  span $ {} (:class-name style-title-ns)
                    :inner-text $ str
                      .unwrap-or (.get parts 0) |
                      , |/
                  span $ {} (:class-name style-title-name)
                    :inner-text $ .unwrap-or (.get parts 1) |
                if (.empty? head)
                  span $ {}
                  span $ {} (:class-name style-badge) (:inner-text head)
                if changed?
                  span $ {} (:class-name style-badge-changed) (:inner-text |updated)
                  span $ {}
                span $ {} (:class-name style-close) (:inner-text "|×")
                  :on-click $ fn (e d!)
                    d! $ Op :close idx
          :examples $ []
          :schema $ quote $ Fn Number String String Bool (-> respo.schema/Component)
        'comp-signature $ %{} 'CodeEntry
          :doc "|Declared schema and the type the compiler uses; Dynamic is highlighted."
          :code $ quote $ defcomp comp-signature (info)
            let
                schema $ :schema info
                inferred $ :type info
                row $ fn (label text)
                  hint-fn $ Fn String String $ -> respo.schema/Element
                  div
                    {} $ :class-name style-sig-row
                    span $ {} (:class-name style-sig-label) (:inner-text label)
                    span $ {} (:inner-text text)
                      :class-name $ str-spaced style-sig-text $ if (.includes? text |Dynamic) style-sig-dynamic |
              div
                {} $ :class-name style-sig
                match schema
                  (:some text) (row |schema text)
                  (:none) (row |schema "|(none)")
                match inferred
                  (:some text)
                    if (= inferred schema)
                      span $ {}
                      row |type text
                  (:none)
                    span $ {}
          :examples $ []
          :schema $ quote $ Fn app.types/DefInfo (-> respo.schema/Component)
        'style-badge $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-badge
            {} $ |& $ {} (:font-size 11) (:padding "|0 6px") (:margin-left 8) (:border-radius |8px) (:color "|hsl(0, 0%, 45%)") (:background-color "|hsl(0, 0%, 94%)") (:font-family "|Source Code Pro, Menlo, monospace")
          :examples $ []
          :schema $ quote String
        'style-badge-changed $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-badge-changed
            {} $ |& $ {} (:font-size 11) (:padding "|0 6px") (:margin-left 8) (:border-radius |8px) (:color :white) (:background-color "|hsl(140, 50%, 48%)")
          :examples $ []
          :schema $ quote String
        'style-changed $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-changed
            {} $ |& $ {} (:box-shadow "|inset 3px 0 0 hsl(140, 50%, 55%)")
          :examples $ []
          :schema $ quote String
        'style-close $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-close
            {}
              |& $ {} (:margin-left :auto) (:cursor :pointer) (:color "|hsl(0, 0%, 60%)") (:font-size 18) (:padding "|0 4px")
              |&:hover $ {} $ :color "|hsl(0, 0%, 20%)"
          :examples $ []
          :schema $ quote String
        'style-def-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-def-list
            {} $ |& $ {} (:display :flex) (:flex-wrap :wrap) (:gap "|2px 10px") (:font-family "|Source Code Pro, Menlo, monospace") (:font-size 12)
          :examples $ []
          :schema $ quote String
        'style-doc $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-doc
            {} $ |& $ {} (:color "|hsl(0, 0%, 35%)") (:font-size 13) (:margin "|4px 0 8px")
          :examples $ []
          :schema $ quote String
        'style-error $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-error
            {} $ |& $ {} (:color "|hsl(0, 70%, 45%)") (:font-size 12) (:white-space :pre-wrap) (:margin "|4px 0")
          :examples $ []
          :schema $ quote String
        'style-header $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-header
            {} $ |& $ {} (:display :flex) (:align-items :center) (:position :sticky) (:top 0) (:background-color :white) (:padding "|8px 0") (:z-index 1)
          :examples $ []
          :schema $ quote String
        'style-note $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-note
            {} $ |& $ {} (:color "|hsl(0, 0%, 55%)") (:font-size 13)
          :examples $ []
          :schema $ quote String
        'style-panel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-panel
            {} $ |& $ {} (:width 560) (:flex-shrink 0) (:overflow :auto) (:padding "|0 16px 40px") (:border-right "|1px solid hsl(0, 0%, 90%)") (:background-color :white)
          :examples $ []
          :schema $ quote String
        'style-ref $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-ref
            {}
              |& $ {} (:color "|hsl(210, 80%, 45%)") (:cursor :pointer)
              |&:hover $ {} $ :text-decoration :underline
          :examples $ []
          :schema $ quote String
        'style-ref-missing $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-ref-missing
            {} $ |& $ {} (:color "|hsl(0, 0%, 65%)")
          :examples $ []
          :schema $ quote String
        'style-section-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-section-title
            {} $ |& $ {} (:font-size 12) (:color "|hsl(0, 0%, 55%)") (:margin "|16px 0 4px") (:text-transform :uppercase) (:letter-spacing |0.04em)
          :examples $ []
          :schema $ quote String
        'style-sig $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-sig
            {} $ |& $ {} (:margin "|0 0 8px") (:font-family "|Source Code Pro, Menlo, monospace") (:font-size 12)
          :examples $ []
          :schema $ quote String
        'style-sig-dynamic $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-sig-dynamic
            {} $ |& $ {} (:color "|hsl(30, 90%, 40%)")
          :examples $ []
          :schema $ quote String
        'style-sig-label $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-sig-label
            {} $ |& $ {} (:display :inline-block) (:width 52) (:color "|hsl(0, 0%, 60%)")
          :examples $ []
          :schema $ quote String
        'style-sig-row $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-sig-row
            {} $ |& $ {} (:display :flex) (:line-height |18px)
          :examples $ []
          :schema $ quote String
        'style-sig-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-sig-text
            {} $ |& $ {} (:color "|hsl(260, 40%, 40%)") (:white-space :pre-wrap)
          :examples $ []
          :schema $ quote String
        'style-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-title
            {} $ |& $ {} (:font-family "|Source Code Pro, Menlo, monospace") (:min-width 0) (:overflow :hidden) (:text-overflow :ellipsis) (:white-space :nowrap)
          :examples $ []
          :schema $ quote String
        'style-title-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-title-name
            {} $ |& $ {} (:font-size 16) (:font-weight 600)
          :examples $ []
          :schema $ quote String
        'style-title-ns $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-title-ns
            {} $ |& $ {} (:font-size 12) (:color "|hsl(0, 0%, 55%)")
          :examples $ []
          :schema $ quote String
      :ns $ %{} 'NsEntry (:doc "|A definition panel in the panel stack.")
        :code $ quote $ ns app.comp.panel
          :require
            respo.core :refer $ defcomp div span <> list->
            respo.css :refer $ defstyle
            respo-md.comp.md :refer $ comp-md-block
            app.types :refer $ Op CodeCtx
            app.program :refer $ lookup-def split-id ns-imports code->tree
            app.comp.code :refer $ comp-code
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main.css) (:title "|Calcit Viewer") (:icon |http://cdn.tiye.me/logo/cirru.png) (:storage-key |calcit-viewer)
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.loader $ %{} 'FileEntry
      :defs $ {}
        'FileHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FileHost (:name 'String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'FileInputHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FileInputHost
            :files $ quote $ JsNullish app.loader/FileListHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'FileListHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FileListHost
            .item! $ quote $ Fn app.loader/FileListHost Number
              -> $ JsNullish app.loader/FileHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :item! |item
          :schema $ quote Trait
        'FileReaderHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FileReaderHost
            :result $ quote $ JsNullish JsObject
            :onload 'Dynamic
            :onerror 'Dynamic
            .read-as-text! $ quote $ Fn app.loader/FileReaderHost app.loader/FileHost (-> Unit)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :read-as-text! |readAsText
            :writable $ #{} :onerror :onload
          :schema $ quote Trait
        'as-dispatch $ %{} 'CodeEntry
          :doc "|Narrows the `d!` handed to Respo event handlers into a typed dispatch."
          :code $ quote $ defn as-dispatch (dispatch)
            fn (op)
              hint-fn $ Fn app.types/Op $ -> Unit
              if (fn? dispatch) (dispatch op) (raise "|Expected dispatch callback")
              , &unit
          :examples $ []
          :schema $ quote $ Fn Dynamic
            -> $ Fn app.types/Op $ -> Unit
        'cache-key $ %{} 'CodeEntry (:doc "|localStorage key for the last loaded file text.")
          :code $ quote $ def cache-key |calcit-viewer-source
          :examples $ []
          :schema $ quote String
        'check-resumable! $ %{} 'CodeEntry
          :doc "|Offers to resume the file watched in an earlier visit."
          :code $ quote $ defn check-resumable! (d!)
            stored-name $ fn (file-name)
              hint-fn $ Fn String $ -> Unit
              d! $ Op :resumable file-name
            , &unit
          :examples $ []
          :schema $ quote $ Fn
            Fn app.types/Op $ -> Unit
            -> Unit
            :features :js-ffi
        'load-text! $ %{} 'CodeEntry
          :doc "|Parses file text into a Program and dispatches it; keeps small files for the next visit."
          :code $ quote $ defn load-text! (text file-name d!)
            d! $ try
              Op :load
                parse-program $ parse-cirru-edn text
                , file-name $ shared/now-ms
              fn (message) (Op :error message)
            try
              if
                < (.len text) 4000000
                browser/storage-set! cache-key $ str file-name &newline text
                browser/storage-remove! cache-key
              fn (message) (println "|Skipped caching the file text:" message)
            , &unit
          :examples $ []
          :schema $ quote $ Fn String String
            Fn app.types/Op $ -> Unit
            -> Unit
            :features :js-ffi
        'on-file-change $ %{} 'CodeEntry (:doc "|Reads the picked file with FileReader.")
          :code $ quote $ defn on-file-change (e dispatch)
            let
                d! $ as-dispatch dispatch
                event $ decode-map-as e $ :: 'Map 'Tag 'Dynamic
                event-host $ js-cast
                  .unwrap $ get event :event
                  , 'js-ffi.browser/EventHost
                target $ js-cast (.-target event-host) 'app.loader/FileInputHost
                raw-files $ .-files target
              when (js-present? raw-files)
                let
                    files $ js-cast raw-files 'app.loader/FileListHost
                    maybe-file $ .item! files 0
                  when (js-present? maybe-file)
                    let
                        file $ js-cast maybe-file 'app.loader/FileHost
                        filename $ .-name file
                        reader $ js-cast (new js/FileReader) 'app.loader/FileReaderHost
                      js-set reader :onload $ fn (event)
                        let
                            result $ .-result reader
                          if (js-present? result)
                            load-text! (expect-string |FileReader.result result) filename d!
                            d! $ Op :error $ str "|Failed to read " filename
                      js-set reader :onerror $ fn (event)
                        d! $ Op :error $ str "|Failed to read " filename
                      .read-as-text! reader file
            , &unit
          :examples $ []
          :schema $ quote $ Fn Dynamic Dynamic (-> Unit) (:features :js-ffi)
        'restore-cached! $ %{} 'CodeEntry
          :doc "|Loads the file text kept by `load-text!`, if any."
          :code $ quote $ defn restore-cached! (d!)
            match (browser/storage-get cache-key)
              (:some raw)
                match (.find-index raw &newline)
                  (:some idx)
                    load-text!
                      .slice raw (inc idx) (Option :none)
                      .slice raw 0 $ Option :some idx
                      , d!
                  (:none) &unit
              (:none) &unit
          :examples $ []
          :schema $ quote $ Fn
            Fn app.types/Op $ -> Unit
            -> Unit
            :features :js-ffi
        'resume-watch! $ %{} 'CodeEntry
          :doc "|Resumes the stored file handle; the browser asks for read permission."
          :code $ quote $ defn resume-watch! (dispatch)
            let
                d! $ as-dispatch dispatch
              resume-watch (watch-on-text d!) (watch-on-error d!)
                fn (file-name)
                  hint-fn $ Fn String $ -> Unit
                  d! $ Op :watching file-name
              , &unit
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> Unit) (:features :js-ffi)
        'stop-watch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn stop-watch! (dispatch)
            let
                d! $ as-dispatch dispatch
              stop-watch
              d! $ Op :stop-watching
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> Unit) (:features :js-ffi)
        'watch! $ %{} 'CodeEntry
          :doc "|Picks a file and reloads it whenever it changes on disk."
          :code $ quote $ defn watch! (dispatch)
            let
                d! $ as-dispatch dispatch
              pick-and-watch (watch-on-text d!) (watch-on-error d!)
                fn (file-name)
                  hint-fn $ Fn String $ -> Unit
                  d! $ Op :watching file-name
              , &unit
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> Unit) (:features :js-ffi)
        'watch-on-error $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn watch-on-error (d!)
            fn (message)
              hint-fn $ Fn String $ -> Unit
              d! $ Op :error $ str "|Watching failed: " message
          :examples $ []
          :schema $ quote $ Fn
            Fn app.types/Op $ -> Unit
            -> $ Fn String $ -> Unit
        'watch-on-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn watch-on-text (d!)
            fn (text file-name)
              hint-fn $ Fn String String $ -> Unit
              load-text! text file-name d!
          :examples $ []
          :schema $ quote $ Fn
            Fn app.types/Op $ -> Unit
            -> $ Fn String String $ -> Unit
      :ns $ %{} 'NsEntry (:doc "|Reading program files picked by the user.")
        :code $ quote $ ns app.loader
          :require
            app.types :refer $ Op
            app.program :refer $ parse-program
            js-ffi.browser :as browser
            js-ffi.shared :as shared
            js-ffi.contract :refer $ expect-string
            |../src/file-watch.mjs :refer $ pick-and-watch resume-watch stop-watch stored-name
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *store updater/store
          :examples $ []
          :schema $ quote $ Ref app.types/Store
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            reset! *store $ updater/updater @*store op
            , &unit
          :examples $ []
          :schema $ quote $ Fn app.types/Op (-> Unit)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? (load-console-formatter!) &unit
            restore-prefs!
            render-app!
            add-watch! *store :changes $ fn (current previous) (render-app!)
            restore-cached! dispatch!
            check-resumable! dispatch!
            browser/set-before-unload! $ fn (event) (persist-prefs!)
            browser/document-add-event-listener! |visibilitychange $ fn (event) (persist-prefs!)
            println "|App started."
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            narrow-element $ .unwrap $ browser/query-selector |.app
          :examples $ []
          :schema $ quote $ Fn (-> respo.dom/DomElement) (:features :js-ffi)
        'persist-prefs! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-prefs! ()
            browser/storage-set! prefs-key $ format-cirru-edn $ :prefs @*store
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'prefs-key $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def prefs-key |calcit-viewer-prefs
          :examples $ []
          :schema $ quote String
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *store :changes) (clear-cache!)
                add-watch! *store :changes $ fn (current previous) (render-app!)
                render-app!
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! (mount-target) (comp-container @*store)
              fn (op) (dispatch! op)
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'restore-prefs! $ %{} 'CodeEntry
          :doc "|Restores view preferences; unreadable data is ignored."
          :code $ quote $ defn restore-prefs! ()
            match (browser/storage-get prefs-key)
              (:some raw)
                try
                  dispatch! $ Op :restore $ decode-map-as (parse-cirru-edn raw) 'app.types/Prefs
                  fn (message) (println "|Ignored stored preferences:" message)
              (:none) &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render! clear-cache!
            respo.ffi.browser :refer $ narrow-element
            app.comp.container :refer $ comp-container
            app.updater :as updater
            app.types :refer $ Op
            app.loader :refer $ restore-cached! check-resumable!
            app.config :as config
            js-ffi.browser :as browser
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
    'app.program $ %{} 'FileEntry
      :defs $ {}
        'all-defs $ %{} 'CodeEntry (:doc "|Every definition of every namespace.")
          :code $ quote $ defn all-defs (namespaces)
            .flat-map (map-values namespaces)
              fn (ns-info)
                hint-fn $ Fn NsInfo $ -> (List DefInfo)
                map-values $ :defs ns-info
          :examples $ []
          :schema $ quote $ Fn (Map String app.types/NsInfo)
            -> $ List app.types/DefInfo
        'cirru-leaves $ %{} 'CodeEntry
          :doc "|All leaf texts in a Cirru tree, in reading order."
          :code $ quote $ defn cirru-leaves (tree)
            hint-fn $ Fn Dynamic $ -> (List String)
            if (string? tree)
              [] $ decode-map-as tree 'String
              .flat-map
                decode-map-as tree $ :: 'List 'Dynamic
                , cirru-leaves
          :examples $ []
          :schema $ quote $ Fn Dynamic
            -> $ List String
        'code->tree $ %{} 'CodeEntry
          :doc "|Nested lists of leaf strings for a quoted Cirru expression."
          :code $ quote $ defn code->tree (code)
            if (.leaf? code)
              .unwrap-or (.leaf-text code) |
              &cirru-quote:to-list code
          :examples $ []
          :schema $ quote $ Fn CirruQuote (-> Dynamic)
        'collect-users $ %{} 'CodeEntry
          :doc "|Reverse dependency index: definition id to the ids that reference it."
          :code $ quote $ defn collect-users (namespaces)
            foldl (all-defs namespaces) ({})
              fn (acc info)
                hint-fn $ Fn
                  Map String $ List String
                  , DefInfo $ ->
                    Map String $ List String
                foldl (:deps info) acc $ fn (acc2 dep)
                  hint-fn $ Fn
                    Map String $ List String
                    , String $ ->
                      Map String $ List String
                  .assoc acc2 dep $ .concat
                    .unwrap-or (.get acc2 dep) ([])
                    [] $ :id info
          :examples $ []
          :schema $ quote $ Fn (Map String app.types/NsInfo)
            -> $ Map String $ List String
        'def-id $ %{} 'CodeEntry
          :doc "|Joins a namespace and a definition name into `ns/def`."
          :code $ quote $ defn def-id (ns def-name) (str ns |/ def-name)
          :examples $ []
          :schema $ quote $ Fn String String (-> String)
        'dynamic-ratio $ %{} 'CodeEntry
          :doc "|Share of recorded source types that still mention Dynamic, or -1 when nothing was recorded."
          :code $ quote $ defn dynamic-ratio (info)
            let
                types $ :types info
                total $ .len types
              if (= total 0) -1 $ /
                .len $ .filter-kv types $ fn (path t) (.includes? t |Dynamic)
                , total
          :examples $ []
          :schema $ quote $ Fn app.types/DefInfo (-> Number)
          :tests $ [] $ %{} 'TestEntry (:name |ratio-of-dynamic-types)
            :code $ quote $ let
                program $ parse-program $ parse-cirru-edn sample-ir
                info $ .unwrap $ lookup-def program |app.main/double
              assert= 0.5 $ dynamic-ratio info
        'first-leaf $ %{} 'CodeEntry
          :doc "|The leading leaf text of a list tree, empty otherwise."
          :code $ quote $ defn first-leaf (tree)
            if (list? tree)
              let
                  head $ .first $ decode-map-as tree (:: 'List 'Dynamic)
                match head
                  (:some x)
                    if (string? x) (decode-map-as x 'String) |
                  (:none) |
              , |
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> String)
        'lookup-def $ %{} 'CodeEntry (:doc "|Finds a definition by `ns/def` id.")
          :code $ quote $ defn lookup-def (program id)
            let
                parts $ split-id id
              -> (:namespaces program)
                .get $ .unwrap-or (.get parts 0) |
                .and-then $ fn (ns-info)
                  hint-fn $ Fn NsInfo $ -> (Option DefInfo)
                  .get (:defs ns-info)
                    .unwrap-or (.get parts 1) |
          :examples $ []
          :schema $ quote $ Fn app.types/Program String
            -> $ Option app.types/DefInfo
        'map-values $ %{} 'CodeEntry (:doc "|Values of a map ordered by key.")
          :code $ quote $ defn map-values (m)
            hint-fn $ Fn (Map String V)
              -> $ List V
              :generics V
            -> m .keys .to-list
              .sort $ fn (a b) (.compare a b)
              .map $ fn (k)
                hint-fn $ Fn String $ -> V
                .unwrap $ .get m k
          :examples $ []
          :schema $ quote $ Fn (Map String V)
            -> $ List V
            :generics V
        'ns-imports $ %{} 'CodeEntry
          :doc "|Reads `:require` rules of an `ns` form into referred names and namespace aliases."
          :code $ quote $ defn ns-imports (ns-tree)
            let
                forms $ if (list? ns-tree)
                  decode-map-as ns-tree $ :: 'List 'Dynamic
                  []
                require-form $ .find forms $ fn (form)
                  and (list? form)
                    = (first-leaf form) |:require
                rules $ match require-form
                  (:some form)
                    .rest $ decode-map-as form $ :: 'List 'Dynamic
                  (:none) ([])
              foldl rules
                {}
                  :refers $ {}
                  :aliases $ {}
                fn (acc rule)
                  hint-fn $ Fn
                    Map Tag $ Map String String
                    , Dynamic $ ->
                      Map Tag $ Map String String
                  if (list? rule)
                    let
                        items $ .filter (cirru-leaves rule)
                          fn (x) (not= x |[])
                        target $ .strip-prefix
                          .unwrap-or (.first items) |
                          , |\|
                        kind $ .unwrap-or (.get items 1) |
                      cond
                          = kind |:as
                          update-section acc :aliases
                            .unwrap-or (.get items 2) |
                            , target
                        (= kind |:refer)
                          foldl
                            .slice items 2 $ Option :none
                            , acc $ fn (acc2 name)
                              hint-fn $ Fn
                                Map Tag $ Map String String
                                , String $ ->
                                  Map Tag $ Map String String
                              update-section acc2 :refers name $ def-id target name
                        true acc
                    , acc
          :examples $ []
          :schema $ quote $ Fn Dynamic
            -> $ Map Tag $ Map String String
          :tests $ [] $ %{} 'TestEntry (:name |reads-refer-and-as)
            :code $ quote $ let
                imports $ ns-imports $ [] |ns |app.main
                  [] |:require ([] |respo.core |:refer |div |span) ([] |app.config |:as |config)
              assert= (Option :some |respo.core/span)
                .get
                  .unwrap $ .get imports :refers
                  , |span
              assert= (Option :some |app.config)
                .get
                  .unwrap $ .get imports :aliases
                  , |config
        'parse-ir $ %{} 'CodeEntry
          :doc "|Reads `program-ir.cirru` written by `calcit ir` (`:sources` section)."
          :code $ quote $ defn parse-ir (data)
            let
                meta $ read-field data :meta
                configs $ read-field data :configs
                sources $ decode-map-as (read-field data :sources) (:: 'Map 'String 'Dynamic)
                namespaces $ .filter-map-kv sources $ fn (ns-name file)
                  let
                      defs $ decode-map-as (read-field file :defs) (:: 'Map 'String 'Dynamic)
                    MapEntryDecision :keep ns-name $ NsInfo :name ns-name :origin
                      decode-map-as (read-field file :origin) 'Tag
                      , :doc (read-string file :ns-doc) :code
                        decode-map-as (read-field file :ns-code) 'CirruQuote
                        , :defs $ .filter-map-kv defs
                          fn (def-name d)
                            MapEntryDecision :keep def-name $ parse-ir-def ns-name def-name d
              Program :package (read-string meta :package) :calcit-version (read-string meta :calcit-version) :format :ir :init-fn (read-string configs :init-fn) :namespaces namespaces :users $ collect-users namespaces
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> app.types/Program)
          :tests $ [] $ %{} 'TestEntry (:name |reads-sources)
            :code $ quote $ let
                program $ parse-program $ parse-cirru-edn sample-ir
                info $ .unwrap $ lookup-def program |app.main/main!
              assert= :ir $ :format program
              assert= |app.main/main! $ :init-fn program
              assert= ([] |app.main/double) (:deps info)
              assert= (Option :some "|Fn $ -> Number") (:schema info)
              assert= ([] |app.main/main!)
                .unwrap $ get (:users program) |app.main/double
              assert= |Number $ .unwrap $ get (:types info) |3
        'parse-ir-def $ %{} 'CodeEntry (:doc "|One definition entry of `:sources`.")
          :code $ quote $ defn parse-ir-def (ns-name def-name d)
            let
                kind $ read-field d :kind
              DefInfo :id (def-id ns-name def-name) :ns ns-name :name def-name :doc (read-string d :doc) :head (read-string d :head) :kind
                if (nil? kind) | $ .to-string $ decode-map-as kind 'Tag
                , :source
                  decode-map-as (read-field d :source) 'CirruQuote
                  , :schema (read-option-string d :schema) :type (read-option-string d :type) :deps
                    decode-map-as (read-field d :deps) (:: 'List 'String)
                    , :types
                      foldl
                        decode-map-as (read-field d :types)
                          :: 'List $ :: 'List 'String
                        {}
                        fn (acc pair)
                          hint-fn $ Fn (Map String String) (List String)
                            -> $ Map String String
                          .assoc acc
                            .unwrap-or (.get pair 0) |
                            .unwrap-or (.get pair 1) |
                      , :hash (read-string d :hash) :error (read-option-string d :error) :size $ source-size $ decode-map-as (read-field d :source) 'CirruQuote
          :examples $ []
          :schema $ quote $ Fn String String Dynamic (-> app.types/DefInfo)
        'parse-program $ %{} 'CodeEntry
          :doc "|Reads either a `calcit ir` artifact or a `calcit.cirru` Snapshot."
          :code $ quote $ defn parse-program (data)
            if
              non-nil? $ read-field data :sources
              parse-ir data
              if
                non-nil? $ read-field data :files
                parse-snapshot data
                raise "|Expected program-ir.cirru with :sources, or a calcit.cirru Snapshot with :files"
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> app.types/Program)
        'parse-snapshot $ %{} 'CodeEntry
          :doc "|Reads a `calcit.cirru` Snapshot. Types are only the declared schemas; dependencies are resolved from symbols."
          :code $ quote $ defn parse-snapshot (data)
            let
                files $ decode-map-as (read-field data :files) (:: 'Map 'Symbol 'Dynamic)
                default-entry $ read-field (read-field data :entries) :default
                raw-init $ read-field default-entry :init-fn
                bare $ .filter-map-kv files $ fn (ns-sym file)
                  MapEntryDecision :keep (.to-string ns-sym)
                    parse-snapshot-ns (.to-string ns-sym) file
                namespaces $ .filter-map-kv bare $ fn (ns-name ns-info)
                  MapEntryDecision :keep ns-name $ assoc ns-info :defs $ .filter-map-kv (:defs ns-info)
                    fn (def-name info)
                      MapEntryDecision :keep def-name $ assoc info :deps $ source-deps bare ns-info info
              Program :package (read-string data :package) :calcit-version | :format :snapshot :init-fn
                if (nil? raw-init) | $ .to-string $ decode-map-as raw-init 'Symbol
                , :namespaces namespaces :users $ collect-users namespaces
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> app.types/Program)
          :tests $ [] $ %{} 'TestEntry (:name |reads-snapshot)
            :code $ quote $ let
                program $ parse-program $ parse-cirru-edn sample-snapshot
                main $ .unwrap $ lookup-def program |app.main/main!
              assert= :snapshot $ :format program
              assert= ([] |app.main/double) (:deps main)
              assert= (Option :some "|Fn $ -> Number") (:schema main)
              assert= |defn $ :head main
        'parse-snapshot-def $ %{} 'CodeEntry
          :doc "|One `CodeEntry` of a Snapshot, before dependencies are resolved."
          :code $ quote $ defn parse-snapshot-def (ns-name def-name entry)
            let
                code $ decode-map-as (read-field entry :code) 'CirruQuote
                schema $ read-field entry :schema
              DefInfo :id (def-id ns-name def-name) :ns ns-name :name def-name :doc (read-string entry :doc) :head
                first-leaf $ code->tree code
                , :kind | :source code :schema
                  if (nil? schema) (Option :none)
                    Option :some $ quote-text $ decode-map-as schema 'CirruQuote
                  , :type (Option :none) :deps ([]) :types ({}) :hash | :error (Option :none) :size $ source-size code
          :examples $ []
          :schema $ quote $ Fn String String Dynamic (-> app.types/DefInfo)
        'parse-snapshot-ns $ %{} 'CodeEntry (:doc "|One `FileEntry` of a Snapshot.")
          :code $ quote $ defn parse-snapshot-ns (ns-name file)
            let
                ns-entry $ read-field file :ns
                defs $ decode-map-as (read-field file :defs) (:: 'Map 'Symbol 'Dynamic)
              NsInfo :name ns-name :origin :project :doc (read-string ns-entry :doc) :code
                decode-map-as (read-field ns-entry :code) 'CirruQuote
                , :defs $ .filter-map-kv defs $ fn (def-sym entry)
                  MapEntryDecision :keep (.to-string def-sym)
                    parse-snapshot-def ns-name (.to-string def-sym) entry
          :examples $ []
          :schema $ quote $ Fn String Dynamic (-> app.types/NsInfo)
        'quote-text $ %{} 'CodeEntry
          :doc "|One-line text of a quoted Cirru expression such as a schema."
          :code $ quote $ defn quote-text (code)
            if (.leaf? code)
              .unwrap-or (.leaf-text code) |
              .trim $ format-cirru $ [] (&cirru-quote:to-list code)
          :examples $ []
          :schema $ quote $ Fn CirruQuote (-> String)
        'read-field $ %{} 'CodeEntry
          :doc "|Reads a field of a Snapshot record or a plain map; nil when missing."
          :code $ quote $ defn read-field (value field)
            cond
                nil? value
                , nil
              (struct? value)
                .unwrap-or
                  get (&struct:to-map value) field
                  , nil
              true $ .unwrap-or
                get (decode-map-as value 'Map) field
                , nil
          :examples $ []
          :schema $ quote $ Fn Dynamic Tag (-> Dynamic)
        'read-option-string $ %{} 'CodeEntry (:doc "|Reads an optional string field.")
          :code $ quote $ defn read-option-string (value field)
            let
                raw $ read-field value field
              if (nil? raw) (Option :none)
                Option :some $ decode-map-as raw 'String
          :examples $ []
          :schema $ quote $ Fn Dynamic Tag
            -> $ Option String
        'read-string $ %{} 'CodeEntry (:doc "|Reads a string field, empty when missing.")
          :code $ quote $ defn read-string (value field)
            let
                raw $ read-field value field
              if (nil? raw) | $ decode-map-as raw 'String
          :examples $ []
          :schema $ quote $ Fn Dynamic Tag (-> String)
        'resolve-leaf $ %{} 'CodeEntry
          :doc "|Resolves a symbol leaf inside `ns-info` to a definition id: qualified names, `:as` aliases, `:refer` names, same-namespace definitions, then calcit.core."
          :code $ quote $ defn resolve-leaf (namespaces ns-info leaf)
            resolve-with namespaces
              ns-imports $ code->tree $ :code ns-info
              , ns-info leaf
          :examples $ []
          :schema $ quote $ Fn (Map String app.types/NsInfo) app.types/NsInfo String
            -> $ Option String
          :tests $ [] $ %{} 'TestEntry (:name |resolves-local-and-imported)
            :code $ quote $ let
                program $ parse-program $ parse-cirru-edn sample-snapshot
                namespaces $ :namespaces program
                main-ns $ .unwrap $ get namespaces |app.main
              assert= (Option :some |app.main/double) (resolve-leaf namespaces main-ns |double)
              assert= (Option :none) (resolve-leaf namespaces main-ns |unknown)
        'resolve-with $ %{} 'CodeEntry
          :doc "|Like `resolve-leaf` with the namespace imports already read."
          :code $ quote $ defn resolve-with (namespaces imports ns-info leaf)
            let
                aliases $ .unwrap-or (.get imports :aliases) ({})
                refers $ .unwrap-or (.get imports :refers) ({})
                slash $ .unwrap-or (.find-index leaf |/) -1
                candidate $ if
                  and (> slash 0)
                    < slash $ dec $ .len leaf
                  let
                      head $ .slice leaf 0 $ Option :some slash
                      tail $ .slice leaf (inc slash) (Option :none)
                    def-id
                      .unwrap-or (.get aliases head) head
                      , tail
                  .unwrap-or (.get refers leaf)
                    if
                      .contains-key? (:defs ns-info) leaf
                      def-id (:name ns-info) leaf
                      def-id |calcit.core leaf
                parts $ split-id candidate
                known? $ -> namespaces
                  .get $ .unwrap-or (.get parts 0) |
                  .map $ fn (target)
                    hint-fn $ Fn NsInfo $ -> Bool
                    .contains-key? (:defs target)
                      .unwrap-or (.get parts 1) |
                  .unwrap-or false
              if known? (Option :some candidate) (Option :none)
          :examples $ []
          :schema $ quote $ Fn (Map String app.types/NsInfo)
            Map Tag $ Map String String
            , app.types/NsInfo String
              -> $ Option String
        'sample-ir $ %{} 'CodeEntry
          :doc "|Small `calcit ir --sources-only` artifact used by tests."
          :code $ quote $ def sample-ir "|{} (:configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)) (:meta $ {} (:calcit-version |0.32.1) (:package |app) (:schema-version 1)) (:sources $ {} (|app.main $ {} (:origin :project) (:ns-doc |) (:ns-code $ quote $ ns app.main) (:defs $ {} (|double $ {} (:doc |) (:hash |md5:1) (:head |defn) (:kind :fn) (:schema \"|Fn Number $ -> Number\") (:type \"|Fn Number $ -> Number\") (:deps $ []) (:source $ quote $ defn double (n) (* n 2)) (:types $ [] ([] |3 |Number) ([] |3.1 |Dynamic))) (|main! $ {} (:doc |) (:hash |md5:2) (:head |defn) (:kind :fn) (:schema \"|Fn $ -> Number\") (:type \"|Fn $ -> Number\") (:deps $ [] |app.main/double) (:source $ quote $ defn main! () (double 21)) (:types $ [] ([] |3 |Number))))))"
          :examples $ []
          :schema $ quote String
        'sample-snapshot $ %{} 'CodeEntry (:doc "|Small Snapshot used by tests.")
          :code $ quote $ def sample-snapshot "|{} (:package |app) (:entries $ {} (:default $ {} (:init-fn 'app.main/main!))) (:files $ {} ('app.main $ %{} 'FileEntry (:ns $ %{} 'NsEntry (:doc |) (:code $ quote $ ns app.main)) (:defs $ {} ('double $ %{} 'CodeEntry (:doc |) (:code $ quote $ defn double (n) (* n 2)) (:schema $ quote $ Fn Number $ -> Number)) ('main! $ %{} 'CodeEntry (:doc |) (:code $ quote $ defn main! () (double 21)) (:schema $ quote $ Fn $ -> Number)))))"
          :examples $ []
          :schema $ quote String
        'source-deps $ %{} 'CodeEntry
          :doc "|Definitions a Snapshot definition refers to, resolved from its symbol leaves."
          :code $ quote $ defn source-deps (namespaces ns-info info)
            let
                imports $ ns-imports $ code->tree (:code ns-info)
              ->
                cirru-leaves $ code->tree $ :source info
                .flat-map $ fn (leaf)
                  match (resolve-with namespaces imports ns-info leaf)
                    (:some id)
                      if
                        = id $ :id info
                        []
                        [] id
                    (:none) ([])
                .to-set
                .to-list
                .sort $ fn (a b)
                  hint-fn $ Fn String String $ -> Number
                  .compare a b
          :examples $ []
          :schema $ quote $ Fn (Map String app.types/NsInfo) app.types/NsInfo app.types/DefInfo
            -> $ List String
        'source-size $ %{} 'CodeEntry
          :doc "|Number of leaves in a definition's source, used as its area in charts."
          :code $ quote $ defn source-size (code)
            .len $ cirru-leaves $ code->tree code
          :examples $ []
          :schema $ quote $ Fn CirruQuote (-> Number)
        'split-id $ %{} 'CodeEntry
          :doc "|Splits `ns/def` at the first slash; definition names may contain `/` themselves."
          :code $ quote $ defn split-id (id)
            match (.find-index id |/)
              (:some idx)
                []
                  .slice id 0 $ Option :some idx
                  .slice id (inc idx) (Option :none)
              (:none) ([] id |)
          :examples $ []
          :schema $ quote $ Fn String
            -> $ List String
          :tests $ [] $ %{} 'TestEntry (:name |splits-at-first-slash)
            :code $ quote $ do
              assert= ([] |app.main |/) (split-id |app.main//)
              assert= ([] |respo.core |div) (split-id |respo.core/div)
        'update-section $ %{} 'CodeEntry
          :doc "|Sets one entry of a named section in the imports map."
          :code $ quote $ defn update-section (acc section k v)
            .assoc acc section $ .assoc
              .unwrap-or (.get acc section) ({})
              , k v
          :examples $ []
          :schema $ quote $ Fn
            Map Tag $ Map String String
            , Tag String String
              -> $ Map Tag $ Map String String
      :ns $ %{} 'NsEntry
        :doc "|Reads `calcit ir` artifacts and Snapshots into the viewer's Program data."
        :code $ quote $ ns app.program
          :require $ app.types :refer $ Program NsInfo DefInfo
    'app.types $ %{} 'FileEntry
      :defs $ {}
        'CodeCtx $ %{} 'CodeEntry
          :doc "|What rendering one definition's source needs: where symbols resolve and which panel opens next."
          :code $ quote $ defstruct CodeCtx
            :namespaces $ quote $ Map String app.types/NsInfo
            :ns-info 'app.types/NsInfo
            :imports $ quote $ Map Tag (Map String String)
            :types $ quote $ Map String String
            :self 'String
            :next-idx 'Number
            :inline-types? 'Bool
          :examples $ []
          :schema $ quote StructDef
        'DefInfo $ %{} 'CodeEntry
          :doc "|One definition as shown by the viewer, from `calcit ir` `:sources` or a Snapshot."
          :code $ quote $ defstruct DefInfo (:id 'String) (:ns 'String) (:name 'String) (:doc 'String) (:head 'String) (:kind 'String) (:source 'CirruQuote)
            :schema $ quote $ Option String
            :type $ quote $ Option String
            :deps $ quote $ List String
            :types $ quote $ Map String String
            :hash 'String
            :error $ quote $ Option String
            :size 'Number
          :examples $ []
          :schema $ quote StructDef
        'NsInfo $ %{} 'CodeEntry
          :doc "|A namespace with its definitions; `:origin` is `:project`, `:dep` or `:core`."
          :code $ quote $ defstruct NsInfo (:name 'String) (:origin 'Tag) (:doc 'String) (:code 'CirruQuote)
            :defs $ quote $ Map String app.types/DefInfo
          :examples $ []
          :schema $ quote StructDef
        'Op $ %{} 'CodeEntry (:doc "|Store operations.")
          :code $ quote $ defenum Op (:load 'app.types/Program 'String 'Number) (:error 'String) (:open 'Number 'String) (:close 'Number) (:filter 'String) (:toggle-libs) (:toggle-inline-types) (:restore 'app.types/Prefs) (:watching 'String) (:stop-watching) (:view 'Tag) (:focus 'String) (:toggle-node 'String)
            :zoom $ quote $ Option String
            :resumable 'String
          :examples $ []
          :schema $ quote EnumDef
        'Prefs $ %{} 'CodeEntry (:doc "|View preferences kept in localStorage.")
          :code $ quote $ defstruct Prefs
            :stack $ quote $ List String
            :filter 'String
            :show-libs? 'Bool
            :inline-types? 'Bool
            :view 'Tag
          :examples $ []
          :schema $ quote StructDef
        'Program $ %{} 'CodeEntry
          :doc "|Loaded program; `:users` maps a definition id to the definitions that reference it."
          :code $ quote $ defstruct Program (:package 'String) (:calcit-version 'String) (:format 'Tag) (:init-fn 'String)
            :namespaces $ quote $ Map String app.types/NsInfo
            :users $ quote $ Map String (List String)
          :examples $ []
          :schema $ quote StructDef
        'Store $ %{} 'CodeEntry
          :doc "|Application state. `:stack` holds the definition ids of the open panels from left to right."
          :code $ quote $ defstruct Store
            :program $ quote $ Option app.types/Program
            :error $ quote $ Option String
            :file-name 'String
            :loaded-at 'Number
            :changed $ quote $ Set String
            :prefs 'app.types/Prefs
            :watching $ quote $ Option String
            :resumable $ quote $ Option String
            :expanded $ quote $ Set String
            :zoom $ quote $ Option String
          :examples $ []
          :schema $ quote StructDef
      :ns $ %{} 'NsEntry (:doc "|Data types shared by the viewer.")
        :code $ quote $ ns app.types
    'app.updater $ %{} 'FileEntry
      :defs $ {}
        'changed-ids $ %{} 'CodeEntry
          :doc "|Definitions that differ from the previously loaded program; empty on the first load."
          :code $ quote $ defn changed-ids (previous program)
            match previous
              (:none) (#{})
              (:some old)
                if
                  not= (:format old) (:format program)
                  #{}
                  ->
                    all-defs $ :namespaces program
                    .filter $ fn (info)
                      hint-fn $ Fn DefInfo $ -> Bool
                      match
                        lookup-def old $ :id info
                        (:some prev) (not= prev info)
                        (:none) true
                    .map $ fn (info)
                      hint-fn $ Fn DefInfo $ -> String
                      :id info
                    .to-set
          :examples $ []
          :schema $ quote $ Fn (Option app.types/Program) app.types/Program
            -> $ Set String
        'store $ %{} 'CodeEntry (:doc "|Initial store.")
          :code $ quote $ def store
            Store :program (Option :none) :error (Option :none) :file-name | :loaded-at 0 :changed (#{}) :watching (Option :none) :resumable (Option :none) :expanded (#{}) :zoom (Option :none) :prefs $ Prefs :stack ([]) :filter | :show-libs? false :inline-types? false :view :code
          :examples $ []
          :schema $ quote app.types/Store
        'update-prefs $ %{} 'CodeEntry (:doc "|Applies `f` to the view preferences.")
          :code $ quote $ defn update-prefs (store f)
            assoc store :prefs $ f $ :prefs store
          :examples $ []
          :schema $ quote $ Fn app.types/Store
            Fn app.types/Prefs $ -> app.types/Prefs
            -> app.types/Store
        'updater $ %{} 'CodeEntry (:doc "|Applies one operation to the store.")
          :code $ quote $ defn updater (store op)
            match op
              (:load program file-name time)
                let
                    kept $ .filter
                      :stack $ :prefs store
                      fn (id)
                        .some? $ lookup-def program id
                    stack $ if (.empty? kept)
                      if
                        .some? $ lookup-def program $ :init-fn program
                        [] $ :init-fn program
                        []
                      , kept
                  -> store
                    assoc :changed $ changed-ids (:program store) program
                    assoc :program $ Option :some program
                    assoc :error $ Option :none
                    assoc :file-name file-name
                    assoc :loaded-at time
                    update-prefs $ fn (prefs) (assoc prefs :stack stack)
              (:error message)
                assoc store :error $ Option :some message
              (:open idx id)
                update-prefs store $ fn (prefs)
                  assoc prefs :stack $ .concat
                    .take (:stack prefs) idx
                    [] id
              (:close idx)
                update-prefs store $ fn (prefs)
                  assoc prefs :stack $ .take (:stack prefs) idx
              (:filter text)
                update-prefs store $ fn (prefs) (assoc prefs :filter text)
              (:toggle-libs)
                update-prefs store $ fn (prefs)
                  assoc prefs :show-libs? $ not $ :show-libs? prefs
              (:toggle-inline-types)
                update-prefs store $ fn (prefs)
                  assoc prefs :inline-types? $ not $ :inline-types? prefs
              (:restore prefs) (assoc store :prefs prefs)
              (:watching file-name)
                -> store
                  assoc :watching $ Option :some file-name
                  assoc :resumable $ Option :none
              (:stop-watching)
                assoc store :watching $ Option :none
              (:view view)
                update-prefs store $ fn (prefs) (assoc prefs :view view)
              (:focus id)
                update-prefs store $ fn (prefs)
                  -> prefs
                    assoc :stack $ [] id
                    assoc :view :code
              (:toggle-node key)
                assoc store :expanded $ if
                  .includes? (:expanded store) key
                  .exclude (:expanded store) key
                  .include (:expanded store) key
              (:zoom target) (assoc store :zoom target)
              (:resumable file-name)
                if
                  .some? $ :watching store
                  , store $ assoc store :resumable $ Option :some file-name
          :examples $ []
          :schema $ quote $ Fn app.types/Store app.types/Op (-> app.types/Store)
          :tests $ []
            %{} 'TestEntry (:name |watching-state)
              :code $ quote $ let
                  offered $ updater store $ Op :resumable |program-ir.cirru
                  watching $ updater offered $ Op :watching |program-ir.cirru
                assert= (Option :some |program-ir.cirru) (:resumable offered)
                assert= (Option :none) (:resumable watching)
                assert= (Option :some |program-ir.cirru) (:watching watching)
                assert= watching $ updater watching $ Op :resumable |other.cirru
                assert= (Option :none)
                  :watching $ updater watching $ Op :stop-watching
            %{} 'TestEntry (:name |open-load-and-refresh)
              :code $ quote $ let
                  program $ parse-program $ parse-cirru-edn sample-ir
                  loaded $ updater store $ Op :load program |program-ir.cirru 1
                  opened $ updater loaded $ Op :open 1 |app.main/double
                  reopened $ updater opened $ Op :open 0 |app.main/double
                  app-ns $ .unwrap $ .get (:namespaces program) |app.main
                  double $ .unwrap $ .get (:defs app-ns) |double
                  edited $ assoc program :namespaces $ .assoc (:namespaces program) |app.main
                    assoc app-ns :defs $ .assoc (:defs app-ns) |double $ assoc double :doc |changed
                assert= ([] |app.main/main!)
                  :stack $ :prefs loaded
                assert= ([] |app.main/main! |app.main/double)
                  :stack $ :prefs opened
                assert= ([] |app.main/double)
                  :stack $ :prefs reopened
                assert= (#{}) (:changed loaded)
                assert= (#{} |app.main/double)
                  :changed $ updater opened $ Op :load edited |program-ir.cirru 2
                assert= ([] |app.main/main! |app.main/double)
                  :stack $ :prefs $ updater opened (Op :load edited |program-ir.cirru 2)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require
            app.types :refer $ Store Prefs Op DefInfo
            app.program :refer $ all-defs lookup-def parse-program sample-ir
