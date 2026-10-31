
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
        'child-modes $ %{} 'CodeEntry
          :doc "|Layout of each child, as the Calcit editor decides it: leaves are inline; a list with more than 6 items or any nested list is a block; otherwise it follows the previous sibling, staying inline after inline items and turning into a block once lists start to nest."
          :code $ quote $ defn child-modes (items)
            let
                many? $ fn (x size)
                  hint-fn $ Fn Dynamic Number $ -> Bool
                  if (list? x)
                    let
                        xs $ decode-map-as x $ quote (List Dynamic)
                      or
                        > (.len xs) size
                        .any? xs $ fn (y)
                          hint-fn $ Fn Dynamic $ -> Bool
                          list? y
                    , false
              .rest $ foldl items ([] :inline)
                fn (acc child)
                  hint-fn $ Fn (List Tag) Dynamic $ -> (List Tag)
                  let
                      prev $ .unwrap-or (.last acc) :inline
                      mode $ cond
                          not $ list? child
                          , :inline
                        (many? child 6) :block
                        (= prev :inline) :inline-block
                        (= prev :inline-block)
                          if (many? child 2) :block :inline-block
                        true :block
                    .concat acc $ [] mode
          :examples $ []
          :schema $ quote $ Fn (List Dynamic)
            -> $ List Tag
          :tests $ [] $ %{} 'TestEntry (:name |editor-layout-modes)
            :code $ quote $ do
              assert= ([] :inline :inline :inline-block)
                child-modes $ [] |defn |f $ [] |a |b
              assert= ([] :inline :block :block)
                child-modes $ [] |let
                  [] $ [] |a |1
                  [] |+ |a |1
              assert= ([] :inline :block)
                child-modes $ [] |do $ [] |a |b |c |d |e |f |g
        'comp-code $ %{} 'CodeEntry
          :doc "|Source of one definition as nested blocks; hover shows inferred types, clicking a resolved symbol opens it in the next panel."
          :code $ quote $ defcomp comp-code (ctx code)
            div
              {} $ :class-name style-code
              render-expr ctx (code->tree code) ([]) false :block false
          :examples $ []
          :schema $ quote $ Fn app.types/CodeCtx CirruQuote (-> respo.schema/Component)
        'leaf-class $ %{} 'CodeEntry
          :doc "|Syntax colour of a leaf by its text, following the Calcit editor: call heads, tags, strings, numbers and literals."
          :code $ quote $ defn leaf-class (leaf head?)
            cond
                or (.starts-with? leaf ||) (.starts-with? leaf "|\"")
                , style-string
              (.starts-with? leaf |:) style-tag
              (includes? (#{} |true |false |nil |&unit) leaf)
                , style-literal
              (.includes? |0123456789 (.unwrap-or (.first leaf) |))
                , style-number
              (and (.starts-with? leaf |-) (.includes? |0123456789 (.unwrap-or (.get leaf 1) |)))
                , style-number
              head? style-head
              true style-plain
          :examples $ []
          :schema $ quote $ Fn String Bool (-> String)
        'leaf-type $ %{} 'CodeEntry
          :doc "|Type shown for a leaf: the type recorded at its path, else the type of the definition it names (`macro` for macros), else for a method head the receiver's type."
          :code $ quote $ defn leaf-type (ctx leaf path target threaded?)
            let
                recorded $ .get (:types ctx) (path-key path)
                last-idx $ .unwrap-or (.last path) -1
              cond
                  .some? recorded
                  , recorded
                (.some? target)
                  let
                      parts $ split-id $ .unwrap target
                    -> (:namespaces ctx)
                      .get $ .unwrap-or (.get parts 0) |
                      .and-then $ fn (ns-info)
                        hint-fn $ Fn app.types/NsInfo $ -> (Option app.types/DefInfo)
                        .get (:defs ns-info)
                          .unwrap-or (.get parts 1) |
                      .and-then $ fn (info)
                        hint-fn $ Fn app.types/DefInfo $ -> (Option String)
                        cond
                            or
                              = (:head info) |defmacro
                              = (:kind info) |macro
                            Option :some |macro
                          (= (:kind info) |syntax)
                            Option :some |syntax
                          true $ match (:type info)
                            (:some t) (Option :some t)
                            (:none) (:schema info)
                (and (.starts-with? leaf |.) (= last-idx 0) (not threaded?))
                  -> (:types ctx)
                    .get $ path-key $ .concat (.butlast path) ([] 1)
                    .map $ fn (receiver)
                      hint-fn $ Fn String $ -> String
                      str "|method on " receiver
                true $ Option :none
          :examples $ []
          :schema $ quote $ Fn app.types/CodeCtx String (List Number) (Option String) Bool
            -> $ Option String
        'long-leaf-length $ %{} 'CodeEntry
          :doc "|Leaves longer than this are long text: strings become text blocks, other leaves are cut with an ellipsis."
          :code $ quote $ def long-leaf-length 48
          :examples $ []
          :schema $ quote Number
        'path-key $ %{} 'CodeEntry
          :doc "|Dotted path, the same coordinates as `calcit query type-at --path`."
          :code $ quote $ defn path-key (path)
            .join-string
              .map path $ fn (x) (str x)
              , |.
          :examples $ []
          :schema $ quote $ Fn (List Number) (-> String)
        'render-expr $ %{} 'CodeEntry
          :doc "|Renders a Cirru tree node at `path`, laid out like the Calcit editor's code tree: short lists sit inline with a bottom rule, long or nested ones become blocks with a left guide, and the last list continues the line. `threaded?` marks a step of a threading form such as `->`, whose receiver is not written inside it; a step hands the flag to its head leaf."
          :code $ quote $ defn render-expr (ctx tree path threaded? mode tail?)
            if (string? tree)
              render-leaf ctx (decode-map-as tree 'String) path threaded?
              let
                  items $ decode-map-as tree $ quote (List Dynamic)
                  t $ .get (:types ctx) (path-key path)
                  threading? $ threading-head? $ .unwrap-or (.first items) nil
                  modes $ child-modes items
                  last-idx $ dec $ .len items
                list->
                  {}
                    :class-name $ str-spaced style-expr
                      cond
                          .empty? items
                          , style-expr-void
                        tail? style-tail
                        (and (not= mode :block) (> (.len items) 0))
                          , style-simple
                        true |
                      if (.some? t) style-typed |
                    :title $ .unwrap-or t |
                  .map-indexed items $ fn (idx child)
                    hint-fn $ Fn Number Dynamic $ -> (List Dynamic)
                    [] idx $ render-expr ctx child
                      .concat path $ [] idx
                      if (= idx 0) threaded? $ and threading? $ > idx 1
                      .unwrap-or (.get modes idx) :inline
                      and (= idx last-idx) (> idx 0) (list? child)
          :examples $ []
          :schema $ quote $ Fn app.types/CodeCtx Dynamic (List Number) Bool Tag Bool (-> respo.schema/Element)
        'render-leaf $ %{} 'CodeEntry
          :doc "|A leaf with its inferred type; symbols that resolve to a definition are links."
          :code $ quote $ defn render-leaf (ctx leaf path threaded?)
            if (text-block? leaf) (render-text-block leaf)
              let
                  target $ if (symbol-leaf? leaf)
                    resolve-with (:namespaces ctx) (:imports ctx) (:ns-info ctx) leaf
                    Option :none
                  t $ leaf-type ctx leaf path target threaded?
                  linked? $ match target
                    (:some id)
                      not= id $ :self ctx
                    (:none) false
                  class-name $ str-spaced style-leaf
                    leaf-class leaf $ = 0 $ .unwrap-or (.last path) -1
                    if
                      > (.len leaf) long-leaf-length
                      , style-leaf-long |
                    if linked? style-link |
                    if
                      and (.some? t)
                        .includes? (.unwrap-or t |) |Dynamic
                      , style-typed-dynamic |
                    if (.some? t) style-typed |
                span
                  if linked?
                    {} (:class-name class-name)
                      :data-tip $ if (.some? t)
                        str (.unwrap-or target |) "| · " $ .unwrap-or t |
                        .unwrap-or target |
                      :on-click $ fn (e d!)
                        d! $ Op :open (:next-idx ctx) (.unwrap target)
                    if (.some? t)
                      {} (:class-name class-name)
                        :data-tip $ .unwrap-or t |
                      {} (:class-name class-name)
                        :title $ if
                          > (.len leaf) long-leaf-length
                          , leaf |
                  <> leaf
                  if
                    and (:inline-types? ctx) (.some? t)
                    span $ {} (:class-name style-inline-type)
                      :inner-text $ .unwrap-or t |
                    span $ {}
          :examples $ []
          :schema $ quote $ Fn app.types/CodeCtx String (List Number) Bool (-> respo.schema/Element)
        'render-text-block $ %{} 'CodeEntry
          :doc "|Long or multi-line string as its own block: wrapped, with a line and character count, scrolling past 16 lines."
          :code $ quote $ defn render-text-block (leaf)
            let
                text $ .slice leaf 1 $ Option :none
                lines $ .len $ .split text &newline
              div
                {} $ :class-name style-text-block
                div $ {} (:class-name style-text-meta)
                  :inner-text $ str "|text · " lines
                    if (= lines 1) "| line · " "| lines · "
                    .len text
                    , "| chars"
                div $ {} (:class-name style-text-body) (:inner-text text)
          :examples $ []
          :schema $ quote $ Fn String (-> respo.schema/Element)
        'style-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-code
            {} $ |& $ {} (:font-family "|var(--font-code)") (:font-size 13) (:line-height |22px) (:color "|var(--code-plain)") (:padding "|4px 0 8px")
          :examples $ []
          :schema $ quote String
        'style-expr $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-expr
            {}
              |& $ {} (:display :block) (:min-height 22) (:margin "|0 0 2px 8px") (:padding-left 10) (:border-left "|1px solid var(--code-guide)") (:border-radius |8px)
                :transition "|background-color var(--ease), border-color var(--ease)"
              |&:hover $ {} (:background-color "|var(--accent-soft)") (:border-color "|var(--accent)")
              "|&:has([class*=style-expr]:hover)" $ {} (:background-color :transparent) (:border-color "|var(--code-guide)")
          :examples $ []
          :schema $ quote String
        'style-expr-void $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-expr-void
            {} $ |& $ {} (:display :inline-block) (:vertical-align :top) (:width 18) (:height 16) (:min-height 16) (:margin "|3px 4px 0") (:padding 0) (:border-left :none) (:border-bottom "|1px solid var(--code-guide)") (:border-radius |6px)
          :examples $ []
          :schema $ quote String
        'style-head $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-head
            {} $ |& $ {} (:color "|var(--code-head)")
          :examples $ []
          :schema $ quote String
        'style-inline-type $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-inline-type
            {}
              |& $ {} (:color "|var(--type)") (:font-size 11) (:margin-left 2) (:opacity |0.85) (:max-width |28em) (:overflow :hidden) (:text-overflow :ellipsis) (:display :inline-block) (:vertical-align :bottom)
              |&::before $ {} (:content "|\": \"") (:color "|var(--text-3)")
          :examples $ []
          :schema $ quote String
        'style-leaf $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-leaf
            {}
              |& $ {} (:display :inline-block) (:height 22) (:line-height |22px) (:padding "|0 4px") (:margin "|0 1px") (:border-radius |4px) (:white-space :pre) (:transition "|background-color var(--ease)")
              |&:hover $ {} $ :background-color "|var(--surface-2)"
          :examples $ []
          :schema $ quote String
        'style-leaf-long $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-leaf-long
            {} $ |& $ {} (:max-width |26em) (:overflow :hidden) (:text-overflow :ellipsis) (:vertical-align :top)
          :examples $ []
          :schema $ quote String
        'style-link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-link
            {}
              |& $ {} $ :cursor :pointer
              "|&:not([class*=style-head])" $ {} $ :color "|var(--accent)"
              |&:hover $ {} $ :text-decoration :underline
          :examples $ []
          :schema $ quote String
        'style-literal $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-literal
            {} $ |& $ {} (:color "|var(--code-literal)")
          :examples $ []
          :schema $ quote String
        'style-number $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-number
            {} $ |& $ {} (:color "|var(--code-number)")
          :examples $ []
          :schema $ quote String
        'style-plain $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-plain
            {} $ |& $ {} (:color "|var(--code-plain)")
          :examples $ []
          :schema $ quote String
        'style-simple $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-simple
            {}
              |& $ {} (:display :inline-block) (:vertical-align :top) (:margin "|0 2px 2px 6px") (:padding "|0 6px") (:min-width 28) (:border-left :none) (:border-bottom "|1px solid var(--code-guide)") (:border-radius |6px)
              |&:hover $ {} $ :border-color "|var(--accent)"
          :examples $ []
          :schema $ quote String
        'style-string $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-string
            {} $ |& $ {} (:color "|var(--code-string)")
          :examples $ []
          :schema $ quote String
        'style-tag $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tag
            {} $ |& $ {} (:color "|var(--code-tag)")
          :examples $ []
          :schema $ quote String
        'style-tail $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tail
            {} $ |& $ {} (:display :inline-block) (:vertical-align :top) (:margin-left 4)
          :examples $ []
          :schema $ quote String
        'style-text-block $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-text-block
            {} $ |& $ {} (:display :block) (:margin "|2px 8px 4px 2px") (:padding "|4px 10px 6px") (:border-left "|2px solid var(--code-string)") (:border-radius "|0 var(--radius) var(--radius) 0")
              :background-color "|color-mix(in srgb, var(--code-string) 7%, transparent)"
              :max-width |44em
          :examples $ []
          :schema $ quote String
        'style-text-body $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-text-body
            {} $ |& $ {} (:font-size 12) (:line-height |18px) (:color "|var(--code-string)") (:white-space :pre-wrap) (:overflow-wrap :anywhere) (:max-height "|calc(18px * 16)") (:overflow :auto)
          :examples $ []
          :schema $ quote String
        'style-text-meta $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-text-meta
            {} $ |& $ {} (:font-family "|var(--font-ui)") (:font-size 10) (:line-height |16px) (:color "|var(--text-3)") (:user-select :none)
          :examples $ []
          :schema $ quote String
        'style-typed $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-typed
            {} $ |& $ {} (:text-decoration-line :underline) (:text-decoration-style :dotted)
              :text-decoration-color "|color-mix(in srgb, var(--type) 55%, transparent)"
              :text-underline-offset |3px
          :examples $ []
          :schema $ quote String
        'style-typed-dynamic $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-typed-dynamic
            {} $ |& $ {} (:text-decoration-color "|var(--dynamic)")
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
        'text-block? $ %{} 'CodeEntry
          :doc "|A string leaf that spans lines or is too long to read inline."
          :code $ quote $ defn text-block? (leaf)
            and
              or (.starts-with? leaf ||) (.starts-with? leaf "|\"")
              or (.includes? leaf &newline)
                > (.len leaf) long-leaf-length
          :examples $ []
          :schema $ quote $ Fn String (-> Bool)
          :tests $ [] $ %{} 'TestEntry (:name |text-blocks)
            :code $ quote $ do
              assert= true $ text-block? "||line one\nline two"
              assert= false $ text-block? ||short
              assert= false $ text-block? |a-very-long-symbol-name-that-goes-on-and-on-without-end-really
        'threading-head? $ %{} 'CodeEntry
          :doc "|Whether a list head is a threading macro, which passes the previous value into each later step."
          :code $ quote $ defn threading-head? (head)
            and (string? head)
              .includes? (#{} |-> |->> |%-> |->% |cond-> |some->) (decode-map-as head 'String)
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> Bool)
          :tests $ [] $ %{} 'TestEntry (:name |threading-heads)
            :code $ quote $ do
              assert= true $ threading-head? |->
              assert= false $ threading-head? |let
              assert= false $ threading-head? $ [] |->
      :ns $ %{} 'NsEntry (:doc "|Rendering definition source with types.")
        :code $ quote $ ns app.comp.code
          :require
            respo.core :refer $ defcomp div span <> list->
            respo.css :refer $ defstyle
            app.types :refer $ Op
            app.program :refer $ code->tree resolve-with split-id
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
          :schema $ quote $ Fn Tag respo.schema/Component respo.schema/Component Dynamic (-> Dynamic)
        'comp-breadcrumb $ %{} 'CodeEntry
          :doc "|The open panels as a path; clicking a step closes the panels after it."
          :code $ quote $ defcomp comp-breadcrumb (stack active)
            list->
              {} $ :class-name style-crumbs
              .map-indexed stack $ fn (idx id)
                hint-fn $ Fn Number String $ -> (List Dynamic)
                [] idx $ span $ {}
                  :class-name $ str-spaced style-crumb $ if (= idx active) style-crumb-active |
                  :title id
                  :inner-text $ str
                    if (= idx 0) | "|› "
                    .unwrap-or
                      .get (split-id id) 1
                      , id
                  :on-click $ fn (e d!)
                    d! $ Op :truncate idx
          :examples $ []
          :schema $ quote $ Fn (List String) Number (-> respo.schema/Component)
        'comp-container $ %{} 'CodeEntry
          :doc "|Root layout: navigation, toolbar, the current view and the status bar."
          :code $ quote $ defcomp comp-container (store)
            let
                prefs $ :prefs store
              div
                {} $ :class-name $ str-spaced css/global style-app
                match (:program store)
                  (:some program)
                    if (:nav-hidden? prefs)
                      span $ {}
                      comp-nav program prefs (:changed store) (:ns-toggled store)
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
                        if
                          .empty? $ :stack prefs
                          comp-empty-stack
                          list->
                            {} $ :class-name style-panels
                            .map-indexed (:stack prefs)
                              fn (idx id)
                                hint-fn $ Fn Number String $ -> (List Dynamic)
                                [] (str idx |: id)
                                  comp-panel program idx id
                                    .includes? (:changed store) id
                                    :inline-types? prefs
                                    = idx $ :active store
                                    .includes? (:collapsed store) id
                    (:none)
                      match (:loading store)
                        (:some file-name) (comp-skeleton file-name)
                        (:none) (comp-welcome)
                  match (:program store)
                    (:some program)
                      if (:prompt-open? prefs)
                        comp-prompt
                          compose-prompt program prefs $ :file-name store
                          , prefs $ :copied-at store
                        span $ {}
                    (:none)
                      span $ {}
                  comp-statusbar store
                match (:program store)
                  (:some program)
                    match (:palette store)
                      (:some query)
                        comp-palette program query $ :palette-idx store
                      (:none)
                        span $ {}
                  (:none)
                    span $ {}
          :examples $ []
          :schema $ quote $ Fn app.types/Store (-> respo.schema/Component)
        'comp-empty-stack $ %{} 'CodeEntry (:doc "|Shown when no panel is open.")
          :code $ quote $ defcomp comp-empty-stack ()
            div
              {} $ :class-name style-empty
              div
                {} $ :class-name style-empty-title
                <> "|No definition open"
              div
                {} $ :class-name style-empty-hint
                <> "|Pick one on the left, or press ⌘K to search."
              span $ {} (:class-name style-secondary) (:inner-text "|Search definitions")
                :on-click $ fn (e d!)
                  d! $ Op :palette-open
          :examples $ []
          :schema $ quote $ Fn (-> respo.schema/Component)
        'comp-palette $ %{} 'CodeEntry
          :doc "|Quick open: fuzzy search over definitions. Enter opens from here, Shift+Enter adds to the right, Esc closes."
          :code $ quote $ defcomp comp-palette (program query idx)
            let
                results $ search-defs program query 40
                current $ if (.empty? results) 0 $ if
                  >= idx $ .len results
                  dec $ .len results
                  , idx
              div
                {} (:class-name style-palette-mask)
                  :on-click $ fn (e d!)
                    d! $ Op :palette-close
                div
                  {} (:class-name style-palette)
                    :on-click $ fn (e d!) &unit
                  input $ {} (:class-name style-palette-input) (:value query) (:id |palette-input) (:placeholder "|Go to definition…")
                    :on-input $ fn (e d!)
                      d! $ Op :palette-query $ event-value e
                    :on-keydown $ fn (e d!)
                      let
                          info $ keyboard-info e
                          key $ :key info
                        cond
                            = key |ArrowDown
                            d! $ Op :palette-move 1
                          (= key |ArrowUp)
                            d! $ Op :palette-move -1
                          (= key |Enter)
                            match (.get results current)
                              (:some id)
                                do
                                  d! $ Op :palette-close
                                  d! $ if (:shift? info) (Op :append id) (Op :focus id)
                              (:none) &unit
                          true &unit
                  list->
                    {} $ :class-name style-palette-list
                    .map-indexed results $ fn (i id)
                      hint-fn $ Fn Number String $ -> (List Dynamic)
                      let
                          parts $ split-id id
                        [] id $ div
                          {}
                            :class-name $ str-spaced style-palette-item $ if (= i current) style-palette-current |
                            :on-click $ fn (e d!)
                              d! $ Op :palette-close
                              d! $ Op :focus id
                          span $ {} (:class-name style-palette-name)
                            :inner-text $ .unwrap-or (.get parts 1) id
                          span $ {} (:class-name style-palette-ns)
                            :inner-text $ .unwrap-or (.get parts 0) |
                  div
                    {} $ :class-name style-palette-hint
                    <> "|↑↓ select · Enter open · Shift+Enter add to the right · Esc close"
          :examples $ []
          :schema $ quote $ Fn app.types/Program String Number (-> respo.schema/Component)
        'comp-skeleton $ %{} 'CodeEntry (:doc "|Placeholder panels while a file is being read.")
          :code $ quote $ defcomp comp-skeleton (file-name)
            div
              {} $ :class-name style-panels
              div
                {} $ :class-name style-skeleton-panel
                div $ {} (:class-name style-skeleton-line)
                  :style $ {} (:width |40%) (:height 18)
                div $ {} (:class-name style-skeleton-line)
                  :style $ {} $ :width |70%
                div $ {} (:class-name style-skeleton-line)
                  :style $ {} $ :width |55%
                div $ {} (:class-name style-skeleton-line)
                  :style $ {} $ :width |80%
                div $ {} (:class-name style-skeleton-line)
                  :style $ {} $ :width |62%
                div $ {} (:class-name style-skeleton-line)
                  :style $ {} $ :width |35%
          :examples $ []
          :schema $ quote $ Fn String (-> respo.schema/Component)
        'comp-statusbar $ %{} 'CodeEntry
          :doc "|File actions, file facts and shortcut hints along the bottom edge."
          :code $ quote $ defcomp comp-statusbar (store)
            div
              {} $ :class-name style-statusbar
              span
                {} $ :class-name style-status-button
                <> "|Open file…"
                input $ {} (:type |file) (:accept |.cirru) (:class-name style-file-input) (:on-change on-file-change)
              comp-watch store
              match (:loading store)
                (:some file-name)
                  span
                    {} $ :class-name style-status-text
                    span $ {} $ :class-name style-spinner
                    <> $ str "|Reading " file-name "|…"
                (:none)
                  span $ {}
              match (:program store)
                (:some program)
                  span $ {} (:class-name style-status-text)
                    :inner-text $ str (:file-name store) "| · " (:package program)
                      if
                        = :ir $ :format program
                        str "| · Calcit " $ :calcit-version program
                        , "| · Snapshot, declared schemas only"
                (:none)
                  span $ {}
              if
                .empty? $ :changed store
                span $ {}
                span $ {} (:class-name style-updated) (:title "|Clear the updated marks")
                  :inner-text $ str
                    .len $ :changed store
                    , "| updated ×"
                  :on-click $ fn (e d!)
                    d! $ Op :clear-changed
              span $ {} (:class-name style-status-hint)
                :inner-text "|⌘K search · Alt+← back · Esc close panel · [ ] switch panel · ⌘B sidebar"
          :examples $ []
          :schema $ quote $ Fn app.types/Store (-> respo.schema/Component)
        'comp-toolbar $ %{} 'CodeEntry
          :doc "|Views, the breadcrumb of open panels, and reading switches."
          :code $ quote $ defcomp comp-toolbar (store)
            let
                prefs $ :prefs store
              div
                {} $ :class-name style-toolbar
                span $ {} (:class-name style-icon-button) (:inner-text "|☰") (:title "|Toggle sidebar (⌘B)")
                  :on-click $ fn (e d!)
                    d! $ Op :toggle-nav
                span $ {} (:class-name style-icon-button) (:inner-text "|←") (:title "|Back (Alt+←)")
                  :on-click $ fn (e d!)
                    d! $ Op :back
                span $ {} (:class-name style-icon-button) (:inner-text "|→") (:title "|Forward (Alt+→)")
                  :on-click $ fn (e d!)
                    d! $ Op :forward
                comp-view-tabs $ :view prefs
                comp-breadcrumb (:stack prefs) (:active store)
                span $ {} (:class-name style-search) (:inner-text "|Search definitions  ⌘K")
                  :on-click $ fn (e d!)
                    d! $ Op :palette-open
                span $ {} (:inner-text |Prompt)
                  :class-name $ str-spaced style-tab $ if (:prompt-open? prefs) style-tab-active |
                  :on-click $ fn (e d!)
                    d! $ Op :toggle-prompt
                span $ {} (:inner-text |Types) (:title "|Inline types (T)")
                  :class-name $ str-spaced style-tab $ if (:inline-types? prefs) style-tab-active |
                  :on-click $ fn (e d!)
                    d! $ Op :toggle-inline-types
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
                  span $ {} (:class-name style-watching) (:title "|Click to stop watching")
                    :inner-text $ str "|● Watching " file-name
                    :on-click $ fn (e d!) (stop-watch! d!)
                (:none)
                  span ({})
                    span $ {} (:class-name style-status-button) (:inner-text "|Watch file…")
                      :on-click $ fn (e d!) (watch! d!)
                    match (:resumable store)
                      (:some file-name)
                        span $ {} (:class-name style-status-button)
                          :inner-text $ str "|Resume watching " file-name
                          :on-click $ fn (e d!) (resume-watch! d!)
                      (:none)
                        span $ {}
          :examples $ []
          :schema $ quote $ Fn app.types/Store (-> respo.schema/Component)
        'comp-welcome $ %{} 'CodeEntry
          :doc "|First screen: what the viewer reads, how to produce it, and the two ways to open a file."
          :code $ quote $ defcomp comp-welcome ()
            div
              {} $ :class-name style-welcome
              div
                {} $ :class-name style-welcome-card
                div
                  {} $ :class-name style-welcome-title
                  <> "|Calcit Viewer"
                div
                  {} $ :class-name style-welcome-lead
                  <> "|Read a Calcit program with its inferred types, one definition at a time."
                div
                  {} $ :class-name style-welcome-actions
                  span
                    {} $ :class-name style-primary
                    <> "|Open program-ir.cirru…"
                    input $ {} (:type |file) (:accept |.cirru) (:class-name style-file-input) (:on-change on-file-change)
                  if (supports-watch)
                    span $ {} (:class-name style-secondary) (:inner-text "|Watch a file…")
                      :on-click $ fn (e d!) (watch! d!)
                    span $ {}
                comp-md-block "|Generate the file in your project, then open `js-out/program-ir.cirru`:\n\n```bash\ncalcit calcit.cirru ir --sources-only\n```\n\nA `calcit.cirru` Snapshot also opens, with declared schemas but no inferred types." $ {} $ :class-name style-welcome-md
          :examples $ []
          :schema $ quote $ Fn (-> respo.schema/Component)
        'style-app $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-app
            {} $ |& $ {} (:position :fixed) (:inset 0) (:display :flex) (:background-color "|var(--bg)") (:color "|var(--text)") (:font-family "|var(--font-ui)")
          :examples $ []
          :schema $ quote String
        'style-crumb $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-crumb
            {}
              |& $ {} (:color "|var(--text-2)") (:cursor :pointer) (:white-space :nowrap) (:padding "|0 2px") (:border-radius "|var(--radius-chip)")
              |&:hover $ {} (:color "|var(--text)") (:background-color "|var(--surface-2)")
          :examples $ []
          :schema $ quote String
        'style-crumb-active $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-crumb-active
            {} $ |& $ {} (:color "|var(--text)") (:font-weight 600)
          :examples $ []
          :schema $ quote String
        'style-crumbs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-crumbs
            {} $ |& $ {} (:display :flex) (:align-items :center) (:gap 2) (:flex 1) (:min-width 0) (:overflow :hidden) (:font-family "|var(--font-code)") (:font-size 12) (:padding "|0 6px")
          :examples $ []
          :schema $ quote String
        'style-empty $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-empty
            {} $ |& $ {} (:flex 1) (:display :flex) (:flex-direction :column) (:align-items :center) (:justify-content :center) (:gap 8) (:color "|var(--text-2)") (:animation "|viewer-fade var(--ease-enter)")
          :examples $ []
          :schema $ quote String
        'style-empty-hint $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-empty-hint
            {} $ |& $ {} (:font-size 13) (:margin-bottom 8)
          :examples $ []
          :schema $ quote String
        'style-empty-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-empty-title
            {} $ |& $ {} (:font-size 15) (:font-weight 600) (:color "|var(--text)")
          :examples $ []
          :schema $ quote String
        'style-error $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-error
            {} $ |& $ {} (:color "|var(--danger)") (:padding "|8px 16px") (:white-space :pre-wrap) (:font-size 13)
              :background-color "|color-mix(in srgb, var(--danger) 8%, transparent)"
          :examples $ []
          :schema $ quote String
        'style-file-input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-file-input
            {} $ |& $ {} (:position :absolute) (:inset 0) (:opacity 0) (:cursor :pointer)
          :examples $ []
          :schema $ quote String
        'style-icon-button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-icon-button
            {}
              |& $ {} (:width 24) (:height 24) (:display :inline-flex) (:align-items :center) (:justify-content :center) (:border-radius "|var(--radius)") (:color "|var(--text-2)") (:cursor :pointer) (:user-select :none) (:flex-shrink 0)
              |&:hover $ {} (:background-color "|var(--surface-2)") (:color "|var(--text)")
          :examples $ []
          :schema $ quote String
        'style-main $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-main
            {} $ |& $ {} (:flex 1) (:min-width 0) (:display :flex) (:flex-direction :column)
          :examples $ []
          :schema $ quote String
        'style-palette $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-palette
            {} $ |& $ {} (:width 560) (:max-width |90vw) (:background-color "|var(--surface)") (:border "|1px solid var(--border)") (:border-radius "|var(--radius-float)") (:box-shadow "|var(--shadow-float)") (:overflow :hidden) (:animation "|viewer-pop var(--ease-enter)")
          :examples $ []
          :schema $ quote String
        'style-palette-current $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-palette-current
            {}
              |& $ {} $ :background-color "|var(--accent-soft)"
              |&:hover $ {} $ :background-color "|var(--accent-soft)"
          :examples $ []
          :schema $ quote String
        'style-palette-hint $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-palette-hint
            {} $ |& $ {} (:padding "|6px 14px") (:font-size 11) (:color "|var(--text-3)") (:border-top "|1px solid var(--border)")
          :examples $ []
          :schema $ quote String
        'style-palette-input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-palette-input
            {} $ |& $ {} (:width |100%) (:height 40) (:padding "|0 14px") (:border :none) (:border-bottom "|1px solid var(--border)") (:outline :none) (:font-size 14) (:font-family :inherit) (:color "|var(--text)") (:background-color "|var(--surface)")
          :examples $ []
          :schema $ quote String
        'style-palette-item $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-palette-item
            {}
              |& $ {} (:display :flex) (:align-items :baseline) (:gap 10) (:height 28) (:padding "|0 14px") (:cursor :pointer) (:font-family "|var(--font-code)") (:font-size 13) (:transition "|background-color var(--ease)")
              |&:hover $ {} $ :background-color "|var(--surface-2)"
          :examples $ []
          :schema $ quote String
        'style-palette-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-palette-list
            {} $ |& $ {} (:max-height 360) (:overflow :auto) (:padding "|4px 0")
          :examples $ []
          :schema $ quote String
        'style-palette-mask $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-palette-mask
            {} $ |& $ {} (:position :fixed) (:inset 0) (:z-index 50) (:background-color "|rgb(0 0 0 / 0.2)") (:display :flex) (:justify-content :center) (:align-items :flex-start) (:padding-top |12vh) (:animation "|viewer-fade var(--ease)")
          :examples $ []
          :schema $ quote String
        'style-palette-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-palette-name
            {} $ |& $ {} (:color "|var(--text)")
          :examples $ []
          :schema $ quote String
        'style-palette-ns $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-palette-ns
            {} $ |& $ {} (:color "|var(--text-3)") (:font-size 12) (:overflow :hidden) (:text-overflow :ellipsis) (:white-space :nowrap)
          :examples $ []
          :schema $ quote String
        'style-panels $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-panels
            {} $ |& $ {} (:flex 1) (:min-height 0) (:display :flex) (:overflow-x :auto)
          :examples $ []
          :schema $ quote String
        'style-primary $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-primary
            {}
              |& $ {} (:position :relative) (:overflow :hidden) (:height 30) (:padding "|0 14px") (:display :inline-flex) (:align-items :center) (:border-radius "|var(--radius)") (:background-color "|var(--accent)") (:color |#ffffff) (:cursor :pointer) (:transition "|filter var(--ease)")
              |&:hover $ {} $ :filter "|brightness(1.08)"
          :examples $ []
          :schema $ quote String
        'style-search $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-search
            {}
              |& $ {} (:height 24) (:padding "|0 10px") (:display :inline-flex) (:align-items :center) (:min-width 200) (:font-size 12) (:color "|var(--text-3)") (:border "|1px solid var(--border)") (:border-radius "|var(--radius)") (:background-color "|var(--bg)") (:cursor :pointer) (:flex-shrink 0)
              |&:hover $ {} (:border-color "|var(--accent)") (:color "|var(--text-2)")
          :examples $ []
          :schema $ quote String
        'style-secondary $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-secondary
            {}
              |& $ {} (:height 30) (:padding "|0 14px") (:display :inline-flex) (:align-items :center) (:border-radius "|var(--radius)") (:border "|1px solid var(--border)") (:color "|var(--text)") (:cursor :pointer) (:transition "|border-color var(--ease), color var(--ease)")
              |&:hover $ {} (:border-color "|var(--accent)") (:color "|var(--accent)")
          :examples $ []
          :schema $ quote String
        'style-skeleton-line $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-skeleton-line
            {} $ |& $ {} (:height 12) (:border-radius "|var(--radius)")
              :background "|linear-gradient(90deg, var(--skeleton) 25%, var(--skeleton-shine) 50%, var(--skeleton) 75%)"
              :background-size "|200% 100%"
              :animation "|viewer-shine 1.4s linear infinite"
          :examples $ []
          :schema $ quote String
        'style-skeleton-panel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-skeleton-panel
            {} $ |& $ {} (:width 640) (:padding |16px) (:display :flex) (:flex-direction :column) (:gap 10) (:background-color "|var(--surface)") (:border-right "|1px solid var(--border)")
          :examples $ []
          :schema $ quote String
        'style-spinner $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-spinner
            {} $ |& $ {} (:display :inline-block) (:width 10) (:height 10) (:margin-right 6) (:vertical-align |-1px) (:border "|2px solid var(--border)") (:border-top-color "|var(--accent)") (:border-radius |50%) (:animation "|viewer-spin 0.8s linear infinite")
          :examples $ []
          :schema $ quote String
        'style-status-button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-status-button
            {}
              |& $ {} (:position :relative) (:overflow :hidden) (:padding "|0 6px") (:border-radius "|var(--radius-chip)") (:cursor :pointer) (:color "|var(--accent)")
              |&:hover $ {} $ :background-color "|var(--accent-soft)"
          :examples $ []
          :schema $ quote String
        'style-status-hint $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-status-hint
            {} $ |& $ {} (:margin-left :auto) (:color "|var(--text-3)") (:white-space :nowrap)
          :examples $ []
          :schema $ quote String
        'style-status-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-status-text
            {} $ |& $ {} (:white-space :nowrap) (:overflow :hidden) (:text-overflow :ellipsis) (:min-width 0)
          :examples $ []
          :schema $ quote String
        'style-statusbar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-statusbar
            {} $ |& $ {} (:display :flex) (:align-items :center) (:gap 12) (:height 24) (:padding "|0 8px") (:border-top "|1px solid var(--border)") (:background-color "|var(--surface)") (:font-size 11) (:color "|var(--text-2)") (:flex-shrink 0)
          :examples $ []
          :schema $ quote String
        'style-tab $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tab
            {}
              |& $ {} (:padding "|0 8px") (:height 24) (:display :inline-flex) (:align-items :center) (:font-size 12) (:cursor :pointer) (:color "|var(--text-2)") (:border-radius "|var(--radius)") (:user-select :none) (:flex-shrink 0)
              |&:hover $ {} (:background-color "|var(--surface-2)") (:color "|var(--text)")
          :examples $ []
          :schema $ quote String
        'style-tab-active $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tab-active
            {}
              |& $ {} (:color "|var(--accent)") (:background-color "|var(--accent-soft)")
              |&:hover $ {} (:color "|var(--accent)") (:background-color "|var(--accent-soft)")
          :examples $ []
          :schema $ quote String
        'style-tabs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tabs
            {} $ |& $ {} (:display :flex) (:gap 2) (:padding "|0 8px") (:border-left "|1px solid var(--border)") (:border-right "|1px solid var(--border)") (:flex-shrink 0)
          :examples $ []
          :schema $ quote String
        'style-toolbar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-toolbar
            {} $ |& $ {} (:display :flex) (:align-items :center) (:gap 4) (:height 36) (:padding "|0 8px") (:border-bottom "|1px solid var(--border)") (:background-color "|var(--surface)") (:flex-shrink 0)
          :examples $ []
          :schema $ quote String
        'style-updated $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-updated
            {} $ |& $ {} (:padding "|0 6px") (:border-radius "|var(--radius-chip)") (:color "|var(--ok)") (:background-color "|color-mix(in srgb, var(--ok) 14%, transparent)") (:cursor :pointer)
          :examples $ []
          :schema $ quote String
        'style-watching $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-watching
            {} $ |& $ {} (:color "|var(--ok)") (:cursor :pointer)
          :examples $ []
          :schema $ quote String
        'style-welcome $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-welcome
            {} $ |& $ {} (:flex 1) (:display :flex) (:align-items :center) (:justify-content :center) (:padding 24) (:animation "|viewer-fade var(--ease-enter)")
          :examples $ []
          :schema $ quote String
        'style-welcome-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-welcome-actions
            {} $ |& $ {} (:display :flex) (:gap 8) (:margin-bottom 16)
          :examples $ []
          :schema $ quote String
        'style-welcome-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-welcome-card
            {} $ |& $ {} (:max-width 560) (:padding "|32px 36px") (:background-color "|var(--surface)") (:border "|1px solid var(--border)") (:border-radius "|var(--radius-float)")
          :examples $ []
          :schema $ quote String
        'style-welcome-lead $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-welcome-lead
            {} $ |& $ {} (:color "|var(--text-2)") (:margin-bottom 20)
          :examples $ []
          :schema $ quote String
        'style-welcome-md $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-welcome-md
            {} $ |& $ {} (:color "|var(--text-2)") (:font-size 13)
          :examples $ []
          :schema $ quote String
        'style-welcome-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-welcome-title
            {} $ |& $ {} (:font-size 20) (:font-weight 600) (:color "|var(--text)") (:margin-bottom 4)
          :examples $ []
          :schema $ quote String
      :ns $ %{} 'NsEntry (:doc "|Root component.")
        :code $ quote $ ns app.comp.container
          :require
            respo.core :refer $ defcomp div span <> list-> input event-value keyboard-info
            respo.css :refer $ defstyle
            respo-ui.css :as css
            respo-md.comp.md :refer $ comp-md-block
            app.types :refer $ Op
            app.loader :refer $ on-file-change watch! resume-watch! stop-watch!
            app.program :refer $ search-defs split-id
            |../src/file-watch.mjs :refer $ supports-watch
            app.comp.nav :refer $ comp-nav
            app.comp.panel :refer $ comp-panel
            app.comp.graph :refer $ comp-call-tree comp-sunburst
            app.comp.prompt :refer $ comp-prompt
            app.prompt :refer $ compose-prompt
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
            {} $ |& $ {} (:cursor :pointer) (:fill "|var(--surface-2)")
          :examples $ []
          :schema $ quote String
        'style-chart $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-chart
            {} $ |& $ {} (:position :relative) (:width 640) (:height 640)
          :examples $ []
          :schema $ quote String
        'style-graph $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-graph
            {} $ |& $ {} (:flex 1) (:overflow :auto) (:padding "|12px 20px 40px") (:background-color "|var(--surface)")
          :examples $ []
          :schema $ quote String
        'style-graph-hint $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-graph-hint
            {} $ |& $ {} (:font-size 12) (:color "|var(--text-3)") (:margin-bottom 8)
          :examples $ []
          :schema $ quote String
        'style-label $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-label
            {} $ |& $ {} (:position :absolute) (:transform "|translate(-50%, -50%)") (:font-size 11) (:color |#1d2330) (:pointer-events :none) (:white-space :nowrap) (:z-index 1)
          :examples $ []
          :schema $ quote String
        'style-segment $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-segment
            {}
              |& $ {} (:cursor :pointer) (:stroke "|var(--surface)") (:stroke-width |0.6) (:transition "|opacity var(--ease)")
              |&:hover $ {} $ :opacity |0.75
          :examples $ []
          :schema $ quote String
        'style-tree-children $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tree-children
            {} $ |& $ {} (:margin-left 7) (:padding-left 12) (:border-left "|1px solid var(--border)")
          :examples $ []
          :schema $ quote String
        'style-tree-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tree-name
            {}
              |& $ {} (:cursor :pointer) (:color "|var(--accent)")
              |&:hover $ {} $ :text-decoration :underline
          :examples $ []
          :schema $ quote String
        'style-tree-note $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tree-note
            {} $ |& $ {} (:margin-left 8) (:font-size 11) (:color "|var(--text-3)")
          :examples $ []
          :schema $ quote String
        'style-tree-row $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tree-row
            {} $ |& $ {} (:display :flex) (:align-items :center) (:font-family "|var(--font-code)") (:font-size 13) (:line-height |22px) (:white-space :nowrap)
          :examples $ []
          :schema $ quote String
        'style-tree-toggle $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tree-toggle
            {} $ |& $ {} (:display :inline-block) (:width 16) (:cursor :pointer) (:color "|var(--text-3)") (:user-select :none)
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
        'comp-entry-fn $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-entry-fn (label id open?)
            div
              {}
                :class-name $ str-spaced style-entry-fn $ if open? style-nav-open |
                :title id
                :on-click $ fn (e d!)
                  d! $ Op :open 0 id
              span $ {} (:class-name style-entry-label) (:inner-text label)
              span $ {} (:class-name style-def-name)
                :inner-text $ .unwrap-or
                  .get (split-id id) 1
                  , id
          :examples $ []
          :schema $ quote $ Fn String String Bool (-> respo.schema/Element)
        'comp-nav $ %{} 'CodeEntry
          :doc "|Namespace and definition tree with a filter; libraries are hidden unless toggled."
          :code $ quote $ defcomp comp-nav (program prefs changed toggled)
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
                if (.empty? query) (comp-nav-entries program open-ids)
                  span $ {}
                if (no-match? visible query)
                  div $ {} (:class-name style-nav-empty)
                    :inner-text $ str "|No definitions match “" query "|”"
                  span $ {}
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
                          let
                              default-open? $ or
                                not $ .empty? query
                                .any? defs $ fn (info)
                                  hint-fn $ Fn DefInfo $ -> Bool
                                  .includes? open-ids $ :id info
                              open? $ not= default-open? $ .includes? toggled (:name ns-info)
                            comp-nav-ns ns-info defs open? open-ids changed
          :examples $ []
          :schema $ quote $ Fn app.types/Program app.types/Prefs (Set String) (Set String) (-> respo.schema/Component)
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
                span $ {} (:class-name style-def-name)
                  :inner-text $ :name info
                span $ {} (:class-name style-kind)
                  :inner-text $ head-label $ :head info
          :examples $ []
          :schema $ quote $ Fn app.types/DefInfo Bool Bool (-> respo.schema/Component)
        'comp-nav-entries $ %{} 'CodeEntry
          :doc "|Program entries from the Snapshot, the usual starting points, above the namespace tree."
          :code $ quote $ defn comp-nav-entries (program open-ids)
            let
                entries $ :entries program
              if (.empty? entries)
                span $ {}
                div
                  {} $ :class-name style-entries
                  div
                    {} $ :class-name style-entries-title
                    <> |Entries
                  list-> ({})
                    .map entries $ fn (entry)
                      hint-fn $ Fn EntryInfo $ -> (List Dynamic)
                      [] (:name entry)
                        div
                          {} (:class-name style-entry)
                            :title $ if
                              .empty? $ :description entry
                              :name entry
                              :description entry
                          span $ {} (:class-name style-entry-name)
                            :inner-text $ :name entry
                          comp-entry-fn |init (:init-fn entry)
                            .includes? open-ids $ :init-fn entry
                          if
                            = (:reload-fn entry) (:init-fn entry)
                            span $ {}
                            comp-entry-fn |reload (:reload-fn entry)
                              .includes? open-ids $ :reload-fn entry
          :examples $ []
          :schema $ quote $ Fn app.types/Program (Set String) (-> respo.schema/Element)
        'comp-nav-ns $ %{} 'CodeEntry
          :doc "|A namespace header that folds its definitions; namespaces start folded, and those with open or matching definitions open."
          :code $ quote $ defn comp-nav-ns (ns-info defs open? open-ids changed)
            div ({})
              div
                {} (:class-name style-ns-name)
                  :on-click $ fn (e d!)
                    d! $ Op :toggle-ns $ :name ns-info
                span $ {} (:inner-text "|▸")
                  :class-name $ str-spaced style-fold $ if open? style-fold-open |
                <> $ :name ns-info
                if
                  = :project $ :origin ns-info
                  span $ {}
                  span $ {} (:class-name style-origin)
                    :inner-text $ .to-string $ :origin ns-info
                span $ {} (:class-name style-count)
                  :inner-text $ str $ .len defs
              if open?
                list->
                  {} $ :class-name style-ns-defs
                  .map defs $ fn (info)
                    hint-fn $ Fn DefInfo $ -> (List Dynamic)
                    [] (:name info)
                      comp-nav-def info
                        .includes? open-ids $ :id info
                        .includes? changed $ :id info
                span $ {}
          :examples $ []
          :schema $ quote $ Fn app.types/NsInfo (List app.types/DefInfo) Bool (Set String) (Set String) (-> respo.schema/Element)
        'head-label $ %{} 'CodeEntry
          :doc "|Short kind label from a definition's leading leaf."
          :code $ quote $ defn head-label (head)
            cond
                = head |defn
                , |fn
              (= head |defcomp) |comp
              (= head |defstyle) |css
              (= head |defmacro) |macro
              (includes? (#{} |defstruct |defenum |deftrait |defimpl |defrecord) head)
                , |type
              (includes? (#{} |def |defref) head)
                , |val
              true head
          :examples $ []
          :schema $ quote $ Fn String (-> String)
        'no-match? $ %{} 'CodeEntry
          :doc "|Whether a non-empty filter matches no definition in the visible namespaces."
          :code $ quote $ defn no-match? (visible query)
            and
              not $ .empty? query
              not $ .any? visible $ fn (ns-info)
                hint-fn $ Fn NsInfo $ -> Bool
                .any?
                  map-values $ :defs ns-info
                  fn (info)
                    hint-fn $ Fn DefInfo $ -> Bool
                    .includes? (:id info) query
          :examples $ []
          :schema $ quote $ Fn (List app.types/NsInfo) String (-> Bool)
        'style-check $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-check
            {}
              |& $ {} (:font-size 12) (:color "|var(--sidebar-text-2)") (:display :flex) (:align-items :center) (:gap 4) (:cursor :pointer) (:user-select :none)
              |&:hover $ {} $ :color "|var(--sidebar-text)"
          :examples $ []
          :schema $ quote String
        'style-count $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-count
            {} $ |& $ {} (:margin-left :auto) (:font-size 11) (:color "|var(--sidebar-text-2)")
          :examples $ []
          :schema $ quote String
        'style-def-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-def-name
            {} $ |& $ {} (:overflow :hidden) (:text-overflow :ellipsis) (:min-width 0)
          :examples $ []
          :schema $ quote String
        'style-dot $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-dot
            {} $ |& $ {} (:display :inline-block) (:width 6) (:height 6) (:border-radius |50%) (:margin-right 8) (:flex-shrink 0)
          :examples $ []
          :schema $ quote String
        'style-entries $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-entries
            {} $ |& $ {} (:padding "|4px 0 8px") (:margin-bottom 4) (:border-bottom "|1px solid var(--sidebar-hover)")
          :examples $ []
          :schema $ quote String
        'style-entries-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-entries-title
            {} $ |& $ {} (:padding "|4px 10px") (:font-size 11) (:font-weight 600) (:letter-spacing |0.06em) (:text-transform :uppercase) (:color "|var(--sidebar-text-2)")
          :examples $ []
          :schema $ quote String
        'style-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-entry
            {} $ |& $ {} (:padding "|2px 0 4px")
          :examples $ []
          :schema $ quote String
        'style-entry-fn $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-entry-fn
            {}
              |& $ {} (:display :flex) (:align-items :center) (:gap 6) (:height 24) (:padding "|0 10px 0 16px") (:cursor :pointer) (:font-family "|var(--font-code)") (:font-size 12) (:color "|var(--sidebar-text)") (:border-left "|2px solid transparent") (:transition "|background-color var(--ease)")
              |&:hover $ {} $ :background-color "|var(--sidebar-hover)"
          :examples $ []
          :schema $ quote String
        'style-entry-label $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-entry-label
            {} $ |& $ {} (:font-family "|var(--font-ui)") (:font-size 10) (:padding "|0 4px") (:border-radius "|var(--radius-chip)") (:background-color "|var(--sidebar-hover)") (:color "|var(--sidebar-text-2)") (:flex-shrink 0)
          :examples $ []
          :schema $ quote String
        'style-entry-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-entry-name
            {} $ |& $ {} (:display :block) (:padding "|0 10px") (:font-size 11) (:color "|var(--sidebar-text-2)")
          :examples $ []
          :schema $ quote String
        'style-filter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-filter
            {}
              |& $ {} (:width |100%) (:padding "|4px 8px") (:border "|1px solid transparent") (:border-radius "|var(--radius)") (:outline :none) (:font-size 12) (:color "|var(--sidebar-text)") (:background-color "|var(--sidebar-hover)") (:font-family :inherit)
              |&:focus $ {} $ :border-color "|var(--accent)"
              |&::placeholder $ {} $ :color "|var(--sidebar-text-2)"
          :examples $ []
          :schema $ quote String
        'style-fold $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-fold
            {} $ |& $ {} (:width 10) (:color "|var(--sidebar-text-2)") (:flex-shrink 0) (:display :inline-block) (:transition "|transform var(--ease)")
          :examples $ []
          :schema $ quote String
        'style-fold-open $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-fold-open
            {} $ |& $ {} (:transform "|rotate(90deg)")
          :examples $ []
          :schema $ quote String
        'style-kind $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-kind
            {} $ |& $ {} (:margin-left :auto) (:padding-left 6) (:font-size 11) (:color "|var(--sidebar-text-2)") (:flex-shrink 0)
          :examples $ []
          :schema $ quote String
        'style-nav $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-nav
            {} $ |& $ {} (:width 240) (:flex-shrink 0) (:display :flex) (:flex-direction :column) (:background-color "|var(--sidebar)") (:color "|var(--sidebar-text)")
          :examples $ []
          :schema $ quote String
        'style-nav-changed $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-nav-changed
            {} $ |& $ {} (:color "|var(--ok)") (:font-weight 600)
          :examples $ []
          :schema $ quote String
        'style-nav-def $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-nav-def
            {}
              |& $ {} (:display :flex) (:align-items :center) (:height 22) (:padding "|0 8px 0 22px") (:cursor :pointer) (:font-family "|var(--font-code)") (:font-size 12) (:white-space :nowrap) (:border-left "|2px solid transparent") (:transition "|background-color var(--ease), color var(--ease)")
              |&:hover $ {} $ :background-color "|var(--sidebar-hover)"
          :examples $ []
          :schema $ quote String
        'style-nav-empty $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-nav-empty
            {} $ |& $ {} (:padding "|12px 16px") (:font-size 12) (:color "|var(--sidebar-text-2)")
          :examples $ []
          :schema $ quote String
        'style-nav-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-nav-list
            {}
              |& $ {} (:flex 1) (:overflow :auto) (:padding-bottom 40) (:scrollbar-color "|var(--sidebar-scrollbar-thumb) transparent")
              |&::-webkit-scrollbar-thumb $ {} $ :background-color "|var(--sidebar-scrollbar-thumb)"
          :examples $ []
          :schema $ quote String
        'style-nav-open $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-nav-open
            {} $ |& $ {} (:color |#ffffff) (:background-color "|var(--sidebar-active)") (:border-left-color "|var(--accent)")
          :examples $ []
          :schema $ quote String
        'style-nav-tools $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-nav-tools
            {} $ |& $ {} (:padding 8) (:display :flex) (:flex-direction :column) (:gap 6)
          :examples $ []
          :schema $ quote String
        'style-ns-defs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-ns-defs
            {} $ |& $ {} (:animation "|viewer-fade var(--ease-enter)")
          :examples $ []
          :schema $ quote String
        'style-ns-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-ns-name
            {}
              |& $ {} (:display :flex) (:align-items :center) (:gap 6) (:height 26) (:padding "|0 8px") (:font-size 12) (:color "|var(--sidebar-text-2)") (:cursor :pointer) (:user-select :none)
              |&:hover $ {} $ :color "|var(--sidebar-text)"
          :examples $ []
          :schema $ quote String
        'style-origin $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-origin
            {} $ |& $ {} (:font-size 10) (:padding "|0 4px") (:border-radius "|var(--radius-chip)") (:background-color "|var(--sidebar-hover)")
          :examples $ []
          :schema $ quote String
      :ns $ %{} 'NsEntry (:doc "|Left navigation.")
        :code $ quote $ ns app.comp.nav
          :require
            respo.core :refer $ defcomp div span <> list-> input event-value
            respo.css :refer $ defstyle
            app.types :refer $ Op NsInfo DefInfo EntryInfo
            app.program :refer $ map-values dynamic-ratio split-id
    'app.comp.panel $ %{} 'FileEntry
      :defs $ {}
        'comp-def-list $ %{} 'CodeEntry
          :doc "|Definitions as two-line cards: the namespace small and muted above, the name below; ids missing from the program are not clickable."
          :code $ quote $ defcomp comp-def-list (program title ids next-idx)
            div ({})
              div
                {} $ :class-name style-section-title
                <> $ str title "| (" (.len ids) "|)"
              if (.empty? ids)
                div $ {} (:class-name style-none) (:inner-text |None)
                list->
                  {} $ :class-name style-def-list
                  .map ids $ fn (id)
                    hint-fn $ Fn String $ -> (List Dynamic)
                    let
                        parts $ split-id id
                        known? $ .some? $ lookup-def program id
                      [] id $ div
                        {} (:title id)
                          :class-name $ str-spaced style-ref-card $ if known? | style-ref-missing
                          :on-click $ fn (e d!)
                            if known?
                              d! $ Op :open next-idx id
                              , &unit
                        div $ {} (:class-name style-ref-ns)
                          :inner-text $ .unwrap-or (.get parts 0) |
                        div $ {} (:class-name style-ref-name)
                          :inner-text $ .unwrap-or (.get parts 1) id
          :examples $ []
          :schema $ quote $ Fn app.types/Program String (List String) Number (-> respo.schema/Component)
        'comp-panel $ %{} 'CodeEntry
          :doc "|One definition: signature, doc, source with types, and its references in both directions."
          :code $ quote $ defcomp comp-panel (program idx id changed? inline-types? active? collapsed?)
            if collapsed?
              div
                {}
                  :data-panel $ str idx
                  :class-name style-strip
                  :title id
                  :on-click $ fn (e d!)
                    d! $ Op :toggle-collapse id
                span $ {} (:class-name style-strip-text)
                  :inner-text $ .unwrap-or
                    .get (split-id id) 1
                    , id
              comp-panel-body program idx id changed? inline-types? active?
          :examples $ []
          :schema $ quote $ Fn app.types/Program Number String Bool Bool Bool Bool (-> respo.schema/Component)
        'comp-panel-body $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-panel-body (program idx id changed? inline-types? active?)
            match (lookup-def program id)
              (:none)
                div
                  {} (:class-name style-panel)
                    :data-panel $ str idx
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
                    {}
                      :data-panel $ str idx
                      :class-name $ str-spaced style-panel (if changed? style-panel-changed |) (if active? style-panel-active |)
                      :style $ {} $ :width (panel-width info)
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
          :schema $ quote $ Fn app.types/Program Number String Bool Bool Bool (-> respo.schema/Element)
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
                span $ {} (:class-name style-close) (:inner-text "|⇤") (:title "|Fold this panel")
                  :on-click $ fn (e d!)
                    d! $ Op :toggle-collapse id
                span $ {} (:class-name style-close) (:inner-text "|×")
                  :title "|Close this and later panels (Esc closes the last)"
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
                      :class-name $ str-spaced style-sig-text $ if (.includes? text |Dynamic) style-sig-text-dynamic |
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
        'panel-width $ %{} 'CodeEntry
          :doc "|Panel width in pixels from the longest line of the formatted source: 640 by default, narrower only for clearly short code, wider up to 880 for long lines."
          :code $ quote $ defn panel-width (info)
            let
                longest $ foldl
                  .split
                    format-cirru $ [] $ code->tree (:source info)
                    , &newline
                  , 0 $ fn (acc line)
                    hint-fn $ Fn Number String $ -> Number
                    if
                      > (.len line) acc
                      .len line
                      , acc
                estimate $ + 96 $ * 8.6 longest
              cond
                  < longest 36
                  , 480
                (< estimate 640) 640
                (> estimate 880) 880
                true $ .round estimate
          :examples $ []
          :schema $ quote $ Fn app.types/DefInfo (-> Number)
        'style-badge $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-badge
            {} $ |& $ {} (:font-size 11) (:padding "|0 6px") (:margin-left 8) (:border-radius "|var(--radius-chip)") (:color "|var(--text-2)") (:background-color "|var(--surface-2)") (:font-family "|var(--font-code)") (:flex-shrink 0)
          :examples $ []
          :schema $ quote String
        'style-badge-changed $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-badge-changed
            {} $ |& $ {} (:font-size 11) (:padding "|0 6px") (:margin-left 8) (:border-radius "|var(--radius-chip)") (:color "|var(--ok)") (:background-color "|color-mix(in srgb, var(--ok) 14%, transparent)") (:flex-shrink 0)
          :examples $ []
          :schema $ quote String
        'style-close $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-close
            {}
              |& $ {} (:cursor :pointer) (:color "|var(--text-3)") (:width 20) (:height 20) (:display :inline-flex) (:align-items :center) (:justify-content :center) (:border-radius "|var(--radius)") (:font-size 14) (:flex-shrink 0)
              |&:hover $ {} (:color "|var(--text)") (:background-color "|var(--surface-2)")
          :examples $ []
          :schema $ quote String
        'style-def-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-def-list
            {} $ |& $ {} (:display :flex) (:flex-wrap :wrap) (:gap 6)
          :examples $ []
          :schema $ quote String
        'style-doc $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-doc
            {} $ |& $ {} (:color "|var(--text-2)") (:font-size 13) (:margin "|4px 0 8px")
          :examples $ []
          :schema $ quote String
        'style-error $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-error
            {} $ |& $ {} (:color "|var(--danger)") (:font-size 12) (:white-space :pre-wrap) (:margin "|4px 0")
          :examples $ []
          :schema $ quote String
        'style-header $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-header
            {} $ |& $ {} (:display :flex) (:align-items :center) (:gap 4) (:position :sticky) (:top 0) (:background-color "|var(--surface)") (:padding "|10px 0 8px") (:z-index 2)
          :examples $ []
          :schema $ quote String
        'style-none $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-none
            {} $ |& $ {} (:font-size 12) (:color "|var(--text-3)")
          :examples $ []
          :schema $ quote String
        'style-note $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-note
            {} $ |& $ {} (:color "|var(--text-3)") (:font-size 13)
          :examples $ []
          :schema $ quote String
        'style-panel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-panel
            {} $ |& $ {} (:width 640) (:flex-shrink 0) (:overflow :auto) (:padding "|0 16px 40px") (:border-right "|1px solid var(--border)") (:background-color "|var(--surface)") (:border-top "|2px solid transparent") (:animation "|viewer-enter var(--ease-enter)") (:transition "|border-color var(--ease)")
          :examples $ []
          :schema $ quote String
        'style-panel-active $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-panel-active
            {} $ |& $ {} (:border-top-color "|var(--accent)")
          :examples $ []
          :schema $ quote String
        'style-panel-changed $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-panel-changed
            {} $ |& $ {} (:box-shadow "|inset 3px 0 0 var(--ok)") (:animation "|viewer-flash 1.2s ease-out")
          :examples $ []
          :schema $ quote String
        'style-ref-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-ref-card
            {}
              |& $ {} (:max-width |100%) (:padding "|3px 8px") (:border "|1px solid var(--border)") (:border-radius "|var(--radius)") (:cursor :pointer) (:font-family "|var(--font-code)")
                :transition "|border-color var(--ease), background-color var(--ease)"
              |&:hover $ {} (:border-color "|var(--accent)") (:background-color "|var(--accent-soft)")
          :examples $ []
          :schema $ quote String
        'style-ref-missing $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-ref-missing
            {}
              |& $ {} (:cursor :default) (:opacity |0.6)
              |&:hover $ {} (:border-color "|var(--border)") (:background-color :transparent)
          :examples $ []
          :schema $ quote String
        'style-ref-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-ref-name
            {} $ |& $ {} (:font-size 13) (:line-height |18px) (:color "|var(--accent)") (:overflow :hidden) (:text-overflow :ellipsis) (:white-space :nowrap)
          :examples $ []
          :schema $ quote String
        'style-ref-ns $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-ref-ns
            {} $ |& $ {} (:font-size 10) (:line-height |14px) (:color "|var(--text-3)") (:overflow :hidden) (:text-overflow :ellipsis) (:white-space :nowrap)
          :examples $ []
          :schema $ quote String
        'style-section-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-section-title
            {} $ |& $ {} (:font-size 11) (:color "|var(--text-3)") (:margin "|16px 0 4px") (:text-transform :uppercase) (:letter-spacing |0.06em) (:font-weight 600)
          :examples $ []
          :schema $ quote String
        'style-sig $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-sig
            {} $ |& $ {} (:margin "|0 0 8px") (:font-family "|var(--font-code)") (:font-size 12)
          :examples $ []
          :schema $ quote String
        'style-sig-label $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-sig-label
            {} $ |& $ {} (:display :inline-block) (:width 56) (:flex-shrink 0) (:color "|var(--text-3)")
          :examples $ []
          :schema $ quote String
        'style-sig-row $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-sig-row
            {} $ |& $ {} (:display :flex) (:line-height |18px)
          :examples $ []
          :schema $ quote String
        'style-sig-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-sig-text
            {} $ |& $ {} (:color "|var(--type)") (:white-space :pre-wrap) (:min-width 0)
          :examples $ []
          :schema $ quote String
        'style-sig-text-dynamic $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-sig-text-dynamic
            {} $ |& $ {} (:color "|var(--dynamic)")
          :examples $ []
          :schema $ quote String
        'style-strip $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-strip
            {}
              |& $ {} (:width 28) (:flex-shrink 0) (:cursor :pointer) (:border-right "|1px solid var(--border)") (:background-color "|var(--surface)") (:display :flex) (:justify-content :center) (:padding-top 12) (:animation "|viewer-fade var(--ease)") (:transition "|background-color var(--ease)")
              |&:hover $ {} $ :background-color "|var(--surface-2)"
          :examples $ []
          :schema $ quote String
        'style-strip-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-strip-text
            {} $ |& $ {} (:writing-mode :vertical-rl) (:font-family "|var(--font-code)") (:font-size 12) (:color "|var(--text-2)") (:white-space :nowrap)
          :examples $ []
          :schema $ quote String
        'style-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-title
            {} $ |& $ {} (:font-family "|var(--font-code)") (:min-width 0) (:overflow :hidden) (:text-overflow :ellipsis) (:white-space :nowrap) (:margin-right :auto)
          :examples $ []
          :schema $ quote String
        'style-title-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-title-name
            {} $ |& $ {} (:font-size 15) (:font-weight 600) (:color "|var(--text)")
          :examples $ []
          :schema $ quote String
        'style-title-ns $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-title-ns
            {} $ |& $ {} (:font-size 12) (:color "|var(--text-2)")
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
    'app.comp.prompt $ %{} 'FileEntry
      :defs $ {}
        'comp-prompt $ %{} 'CodeEntry
          :doc "|Drawer for writing a question; the composed prompt is previewed and copied to the clipboard."
          :code $ quote $ defcomp comp-prompt (text prefs copied-at)
            div
              {} $ :class-name style-drawer
              div
                {} $ :class-name style-drawer-side
                textarea $ {} (:class-name style-question)
                  :value $ :prompt-draft prefs
                  :placeholder "|Ask about the open definitions…"
                  :on-input $ fn (e d!)
                    d! $ Op :prompt-draft $ event-value e
                div
                  {} $ :class-name style-drawer-actions
                  span $ {} (:class-name style-copy) (:inner-text "|Copy prompt")
                    :on-click $ fn (e d!) (browser/clipboard-write-text! text)
                      d! $ Op :copied $ shared/now-ms
                  span $ {} (:class-name style-option)
                    :inner-text $ if (:prompt-source? prefs) "|☑ Include source" "|☐ Include source"
                    :on-click $ fn (e d!)
                      d! $ Op :toggle-prompt-source
                  if (> copied-at 0)
                    span $ {} (:class-name style-copied) (:inner-text |Copied)
                    span $ {}
                  span $ {} (:class-name style-option) (:inner-text |Close)
                    :on-click $ fn (e d!)
                      d! $ Op :toggle-prompt
              pre $ {} (:class-name style-preview) (:inner-text text)
          :examples $ []
          :schema $ quote $ Fn String app.types/Prefs Number (-> respo.schema/Component) (:features :js-ffi)
        'style-copied $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-copied
            {} $ |& $ {} (:font-size 12) (:color "|var(--ok)")
          :examples $ []
          :schema $ quote String
        'style-copy $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-copy
            {} $ |& $ {} (:padding "|0 12px") (:height 24) (:display :inline-flex) (:align-items :center) (:border-radius "|var(--radius)") (:background-color "|var(--accent)") (:color |#ffffff) (:cursor :pointer) (:font-size 13)
          :examples $ []
          :schema $ quote String
        'style-drawer $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-drawer
            {} $ |& $ {} (:height 280) (:flex-shrink 0) (:display :flex) (:border-top "|1px solid var(--border)") (:background-color "|var(--surface)")
          :examples $ []
          :schema $ quote String
        'style-drawer-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-drawer-actions
            {} $ |& $ {} (:display :flex) (:align-items :center) (:gap 12) (:padding-top 8)
          :examples $ []
          :schema $ quote String
        'style-drawer-side $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-drawer-side
            {} $ |& $ {} (:width 420) (:display :flex) (:flex-direction :column) (:padding 12) (:border-right "|1px solid var(--border)")
          :examples $ []
          :schema $ quote String
        'style-option $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-option
            {}
              |& $ {} (:font-size 12) (:cursor :pointer) (:color "|var(--text-2)") (:user-select :none)
              |&:hover $ {} $ :color "|var(--text)"
          :examples $ []
          :schema $ quote String
        'style-preview $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-preview
            {} $ |& $ {} (:flex 1) (:margin 0) (:padding 12) (:overflow :auto) (:font-size 12) (:line-height |18px) (:color "|var(--text-2)") (:white-space :pre-wrap) (:font-family "|var(--font-code)") (:background-color "|var(--bg)")
          :examples $ []
          :schema $ quote String
        'style-question $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-question
            {}
              |& $ {} (:flex 1) (:resize :none) (:padding 8) (:font-size 13) (:border "|1px solid var(--border)") (:border-radius "|var(--radius)") (:outline :none) (:font-family :inherit) (:color "|var(--text)") (:background-color "|var(--surface)")
              |&:focus $ {} $ :border-color "|var(--accent)"
          :examples $ []
          :schema $ quote String
      :ns $ %{} 'NsEntry (:doc "|Prompt drawer.")
        :code $ quote $ ns app.comp.prompt
          :require
            respo.core :refer $ defcomp div span pre textarea event-value
            respo.css :refer $ defstyle
            app.types :refer $ Op
            js-ffi.browser :as browser
            js-ffi.shared :as shared
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
                event $ decode-map-as e $ quote (Map Tag Dynamic)
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
                      d! $ Op :loading filename
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
            let
                prev-active $ :active @*store
              reset! *store $ updater/updater @*store op
              match op
                (:palette-open) (focus-later |#palette-input)
                (:activate idx) (reveal-panel idx)
                (:open idx id) (reveal-panel idx)
                _ $ if
                  not= (:active @*store) prev-active
                  reveal-panel $ :active @*store
                  , &unit
              , &unit
          :examples $ []
          :schema $ quote $ Fn app.types/Op (-> Unit) (:features :js-ffi)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? (load-console-formatter!) &unit
            restore-prefs!
            render-app!
            add-watch! *store :changes $ fn (current previous) (render-app!)
            restore-cached! dispatch!
            check-resumable! dispatch!
            listen-keys on-key!
            install-tooltips
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
        'on-key! $ %{} 'CodeEntry
          :doc "|Global shortcuts from the design language: ⌘K or / search, Esc close, Alt+←/→ history, [ ] switch panel, ⌘B sidebar, 1-3 views, T inline types."
          :code $ quote $ defn on-key! (combo)
            let
                store @*store
                size $ .len $ :stack (:prefs store)
                active $ :active store
                palette? $ .some? $ :palette store
              cond
                  or (= combo |mod+k) (= combo |/)
                  dispatch! $ Op :palette-open
                (= combo |escape)
                  cond
                    palette? $ dispatch! $ Op :palette-close
                    (> size 0)
                      dispatch! $ Op :close $ dec size
                    true &unit
                palette? &unit
                (= combo |alt+arrowleft)
                  dispatch! $ Op :back
                (= combo |alt+arrowright)
                  dispatch! $ Op :forward
                (= combo |[)
                  if (> active 0)
                    dispatch! $ Op :activate $ dec active
                    , &unit
                (= combo |])
                  if
                    < active $ dec size
                    dispatch! $ Op :activate $ inc active
                    , &unit
                (= combo |mod+b)
                  dispatch! $ Op :toggle-nav
                (= combo |1)
                  dispatch! $ Op :view :code
                (= combo |2)
                  dispatch! $ Op :view :tree
                (= combo |3)
                  dispatch! $ Op :view :sunburst
                (= combo |t)
                  dispatch! $ Op :toggle-inline-types
                true &unit
          :examples $ []
          :schema $ quote $ Fn String (-> Unit) (:features :js-ffi)
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
            |../src/dom-helpers.mjs :refer $ reveal-panel listen-keys focus-later install-tooltips
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
        'at-most $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn at-most (hi x)
            if (> x hi) hi x
          :examples $ []
          :schema $ quote $ Fn Number Number (-> Number)
        'cirru-leaves $ %{} 'CodeEntry
          :doc "|All leaf texts in a Cirru tree, in reading order."
          :code $ quote $ defn cirru-leaves (tree)
            hint-fn $ Fn Dynamic $ -> (List String)
            if (string? tree)
              [] $ decode-map-as tree 'String
              .flat-map
                decode-map-as tree $ quote $ List Dynamic
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
                  head $ .first $ decode-map-as tree
                    quote $ List Dynamic
                match head
                  (:some x)
                    if (string? x) (decode-map-as x 'String) |
                  (:none) |
              , |
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> String)
        'fuzzy-score $ %{} 'CodeEntry
          :doc "|-1 when `query` is not a subsequence of `id`; higher is a better match."
          :code $ quote $ defn fuzzy-score (query id name)
            if (.empty? query) 0 $ let
                lower-id $ lower-ascii id
                lower-q $ lower-ascii query
                found? $ subsequence? lower-q lower-id
              if (not found?) -1 $ + 10
                if
                  .starts-with? (lower-ascii name) lower-q
                  , 100 0
                if
                  .includes? (lower-ascii name) lower-q
                  , 50 0
                if (.includes? lower-id lower-q) 20 0
                negate $ at-most 9 $ * 0.05 (.len id)
          :examples $ []
          :schema $ quote $ Fn String String String (-> Number)
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
        'lower-ascii $ %{} 'CodeEntry
          :doc "|ASCII lower case; Calcit strings have no case conversion method."
          :code $ quote $ defn lower-ascii (text)
            foldl (range 65 91) text $ fn (acc code)
              hint-fn $ Fn String Number $ -> String
              &str:replace acc (char-from-code code)
                char-from-code $ + code 32
          :examples $ []
          :schema $ quote $ Fn String (-> String)
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
        'name-text $ %{} 'CodeEntry
          :doc "|Text of a name stored as a tag, symbol or string; empty for nil."
          :code $ quote $ defn name-text (raw)
            cond
                nil? raw
                , |
              (symbol? raw)
                .to-string $ decode-map-as raw 'Symbol
              (tag? raw)
                .to-string $ decode-map-as raw 'Tag
              true $ decode-map-as raw 'String
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> String)
        'ns-imports $ %{} 'CodeEntry
          :doc "|Reads `:require` rules of an `ns` form into referred names and namespace aliases."
          :code $ quote $ defn ns-imports (ns-tree)
            let
                forms $ if (list? ns-tree)
                  decode-map-as ns-tree $ quote $ List Dynamic
                  []
                require-form $ .find forms $ fn (form)
                  and (list? form)
                    = (first-leaf form) |:require
                rules $ match require-form
                  (:some form)
                    .rest $ decode-map-as form $ quote (List Dynamic)
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
        'parse-entries $ %{} 'CodeEntry
          :doc "|Program entries from a Snapshot `:entries` map or IR `:meta :entries`, `default` first."
          :code $ quote $ defn parse-entries (raw)
            if (nil? raw) ([])
              let
                  pairs $ .to-list $ decode-map-as raw
                    quote $ Map Dynamic Dynamic
                  entries $ .map pairs $ fn (pair)
                    hint-fn $ Fn (List Dynamic) (-> EntryInfo)
                    let
                        config $ .unwrap $ .get pair 1
                      EntryInfo :name
                        name-text $ .unwrap $ .get pair 0
                        , :init-fn
                          name-text $ read-field config :init-fn
                          , :reload-fn
                            name-text $ read-field config :reload-fn
                            , :description $ read-string config :description
                .sort entries $ fn (a b)
                  hint-fn $ Fn EntryInfo EntryInfo $ -> Number
                  cond
                      = (:name a) |default
                      , -1
                    (= (:name b) |default)
                      , 1
                    true $ .compare (:name a) (:name b)
          :examples $ []
          :schema $ quote $ Fn Dynamic
            -> $ List app.types/EntryInfo
          :tests $ [] $ %{} 'TestEntry (:name |entries-default-first)
            :code $ quote $ let
                entries $ parse-entries $ parse-cirru-edn "|{} (:test $ {} (:init-fn 'app.test/run!) (:reload-fn 'app.test/run!)) (:default $ {} (:init-fn 'app.main/main!) (:reload-fn 'app.main/reload!) (:description |App))"
              assert= ([] |default |test)
                .map entries $ fn (e) (:name e)
              assert= |app.main/main! $ :init-fn $ .unwrap (.first entries)
              assert= |App $ :description $ .unwrap (.first entries)
        'parse-ir $ %{} 'CodeEntry
          :doc "|Reads `program-ir.cirru` written by `calcit ir` (`:sources` section)."
          :code $ quote $ defn parse-ir (data)
            let
                meta $ read-field data :meta
                configs $ read-field data :configs
                sources $ decode-map-as (read-field data :sources)
                  quote $ Map String Dynamic
                namespaces $ .filter-map-kv sources $ fn (ns-name file)
                  let
                      defs $ decode-map-as (read-field file :defs)
                        quote $ Map String Dynamic
                    MapEntryDecision :keep ns-name $ NsInfo :name ns-name :origin
                      decode-map-as (read-field file :origin) 'Tag
                      , :doc (read-string file :ns-doc) :code
                        decode-map-as (read-field file :ns-code) 'CirruQuote
                        , :defs $ .filter-map-kv defs
                          fn (def-name d)
                            MapEntryDecision :keep def-name $ parse-ir-def ns-name def-name d
              Program :package (read-string meta :package) :calcit-version (read-string meta :calcit-version) :format :ir :init-fn (read-string configs :init-fn) :namespaces namespaces :users (collect-users namespaces) :entries $ parse-entries $ let
                  listed $ read-field meta :entries
                if (nil? listed)
                  {} $ |default $ {}
                    :init-fn $ read-field configs :init-fn
                    :reload-fn $ read-field configs :reload-fn
                  , listed
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
                    decode-map-as (read-field d :deps)
                      quote $ List String
                    , :types
                      foldl
                        decode-map-as (read-field d :types)
                          quote $ List $ List String
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
                files $ decode-map-as (read-field data :files)
                  quote $ Map Symbol Dynamic
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
                , :namespaces namespaces :users (collect-users namespaces) :entries $ parse-entries $ read-field data :entries
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
                defs $ decode-map-as (read-field file :defs)
                  quote $ Map Symbol Dynamic
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
        'search-defs $ %{} 'CodeEntry
          :doc "|Fuzzy search over definition ids for quick open: query characters must appear in order; project definitions, name matches, prefixes and shorter ids rank first."
          :code $ quote $ defn search-defs (program query limit)
            let
                q $ .trim query
              ->
                all-defs $ :namespaces program
                .flat-map $ fn (info)
                  hint-fn $ Fn DefInfo $ ->
                    List $ List Dynamic
                  let
                      score $ fuzzy-score q (:id info) (:name info)
                      project? $ -> (:namespaces program)
                        .get $ :ns info
                        .map $ fn (ns-info)
                          hint-fn $ Fn NsInfo $ -> Bool
                          = :project $ :origin ns-info
                        .unwrap-or false
                    if (< score 0) ([])
                      [] $ []
                        if project? (+ score 30) score
                        :id info
                .sort $ fn (a b)
                  hint-fn $ Fn (List Dynamic) (List Dynamic) (-> Number)
                  let
                      sa $ decode-map-as
                        .unwrap $ .get a 0
                        , 'Number
                      sb $ decode-map-as
                        .unwrap $ .get b 0
                        , 'Number
                    if (= sa sb)
                      .compare
                        decode-map-as
                          .unwrap $ .get a 1
                          , 'String
                        decode-map-as
                          .unwrap $ .get b 1
                          , 'String
                      - sb sa
                .take limit
                .map $ fn (pair)
                  hint-fn $ Fn (List Dynamic) (-> String)
                  decode-map-as
                    .unwrap $ .get pair 1
                    , 'String
          :examples $ []
          :schema $ quote $ Fn app.types/Program String Number
            -> $ List String
          :tests $ [] $ %{} 'TestEntry (:name |fuzzy-quick-open)
            :code $ quote $ let
                program $ parse-program $ parse-cirru-edn sample-ir
              assert= ([] |app.main/double) (search-defs program |dbl 10)
              assert= ([] |app.main/main! |app.main/double) (search-defs program |main 10)
              assert= 2 $ .len $ search-defs program | 10
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
        'subsequence? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn subsequence? (needle hay)
            if (.empty? needle) true $ match
              .find-index hay $ .unwrap-or (.first needle) |
              (:some idx)
                subsequence? (.rest needle)
                  .slice hay (inc idx) (Option :none)
              (:none) false
          :examples $ []
          :schema $ quote $ Fn String String (-> Bool)
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
          :require $ app.types :refer $ Program NsInfo DefInfo EntryInfo
    'app.prompt $ %{} 'FileEntry
      :defs $ {}
        'compose-prompt $ %{} 'CodeEntry
          :doc "|Markdown prompt from the user's question and the open panels, for pasting into an AI agent."
          :code $ quote $ defn compose-prompt (program prefs file-name)
            let
                question $ .trim $ :prompt-draft prefs
                stack $ :stack prefs
                sections $ .map stack $ fn (id)
                  hint-fn $ Fn String $ -> String
                  match (lookup-def program id)
                    (:some info)
                      def-section info $ :prompt-source? prefs
                    (:none) (str "|### `" id "|`\n\nNot found in the loaded file.\n")
                first-id $ .unwrap-or (.first stack) |ns/def
              .join-string
                []
                  if (.empty? question) "|(Write your question here.)" question
                  , | "|## Context" |
                    str "|- Project: `" (:package program) "|`, read from `" file-name "|`" $ if
                      = :ir $ :format program
                      str "| (calcit ir, Calcit " (:calcit-version program) "|)"
                      , "| (Snapshot, declared schemas only)"
                    str "|- Entry: `" (:init-fn program) "|`"
                    str "|- Open definitions, from the starting point inward: " $ if (.empty? stack) |none $ .join-string
                      .map stack $ fn (id) (str "|`" id "|`")
                      , "| → "
                    , | (.join-string sections &newline) "|## Useful commands" | "|```bash" (str "|calcit query def '" first-id |') (str "|calcit query context '" first-id "|' --format edn") (str "|calcit query type-at '" first-id "|' --path <path>") (str "|calcit query usages '" first-id |') "|```"
                , &newline
          :examples $ []
          :schema $ quote $ Fn app.types/Program app.types/Prefs String (-> String)
          :tests $ [] $ %{} 'TestEntry (:name |prompt-from-open-panels)
            :code $ quote $ let
                program $ parse-program $ parse-cirru-edn sample-ir
                prefs $ Prefs :stack ([] |app.main/main! |app.main/double) :filter | :show-libs? false :inline-types? false :view :code :prompt-open? true :prompt-draft "|Why is n Dynamic?" :prompt-source? true :nav-hidden? false
                text $ compose-prompt program prefs |program-ir.cirru
              assert= true $ .starts-with? text "|Why is n Dynamic?"
              assert= true $ .includes? text "|`app.main/main!` → `app.main/double`"
              assert= true $ .includes? text "|- type at `3.1`: `Dynamic`"
              assert= true $ .includes? text "|defn double (n)"
              assert= false $ .includes?
                compose-prompt program (assoc prefs :prompt-source? false) |program-ir.cirru
                , "|defn double (n)"
        'def-section $ %{} 'CodeEntry
          :doc "|Markdown for one definition: signature, doc, Dynamic spots and optionally the source."
          :code $ quote $ defn def-section (info with-source?)
            let
                dynamic-paths $ -> (:types info)
                  .filter-kv $ fn (path t) (.includes? t |Dynamic)
                  .keys
                  .to-list
                  .sort $ fn (a b)
                    hint-fn $ Fn String String $ -> Number
                    .compare a b
              ->
                []
                  str "|### `" (:id info) "|`\n"
                  str "|- schema: `"
                    .unwrap-or (:schema info) |none
                    , "|`"
                  match (:type info)
                    (:some t)
                      if
                        = (:type info) (:schema info)
                        , | $ str "|\n- compiler type: `" t "|`"
                    (:none) |
                  if
                    .empty? $ :doc info
                    , | $ str "|- doc: " $ :doc info
                  .join-string
                    .map dynamic-paths $ fn (path)
                      str "|- type at `" path "|`: `"
                        .unwrap-or
                          .get (:types info) path
                          , |
                        , "|`"
                    , &newline
                  if with-source?
                    str "|\n```cirru\n"
                      .trim $ format-cirru $ []
                        code->tree $ :source info
                      , "|\n```"
                    , |
                .filter $ fn (line)
                  not $ .empty? line
                .join-string &newline
          :examples $ []
          :schema $ quote $ Fn app.types/DefInfo Bool (-> String)
      :ns $ %{} 'NsEntry
        :doc "|Composes prompts to paste into an AI agent; nothing is sent from the viewer."
        :code $ quote $ ns app.prompt
          :require
            app.types :refer $ Prefs
            app.program :refer $ lookup-def code->tree parse-program sample-ir
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
        'EntryInfo $ %{} 'CodeEntry
          :doc "|A program entry from the Snapshot: where it starts and reloads."
          :code $ quote $ defstruct EntryInfo (:name 'String) (:init-fn 'String) (:reload-fn 'String) (:description 'String)
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
            :prompt-draft 'String
            :toggle-prompt
            :toggle-prompt-source
            :copied 'Number
            :toggle-ns 'String
            :clear-changed
            :append 'String
            :truncate 'Number
            :back
            :forward
            :activate 'Number
            :toggle-collapse 'String
            :toggle-nav
            :palette-open
            :palette-close
            :palette-query 'String
            :palette-move 'Number
            :loading 'String
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
            :prompt-open? 'Bool
            :prompt-draft 'String
            :prompt-source? 'Bool
            :nav-hidden? 'Bool
          :examples $ []
          :schema $ quote StructDef
        'Program $ %{} 'CodeEntry
          :doc "|Loaded program; `:users` maps a definition id to the definitions that reference it."
          :code $ quote $ defstruct Program (:package 'String) (:calcit-version 'String) (:format 'Tag) (:init-fn 'String)
            :namespaces $ quote $ Map String app.types/NsInfo
            :users $ quote $ Map String (List String)
            :entries $ quote $ List app.types/EntryInfo
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
            :copied-at 'Number
            :ns-toggled $ quote $ Set String
            :history $ quote $ List (List String)
            :future $ quote $ List (List String)
            :active 'Number
            :collapsed $ quote $ Set String
            :palette $ quote $ Option String
            :palette-idx 'Number
            :loading $ quote $ Option String
          :examples $ []
          :schema $ quote StructDef
      :ns $ %{} 'NsEntry (:doc "|Data types shared by the viewer.")
        :code $ quote $ ns app.types
    'app.updater $ %{} 'FileEntry
      :defs $ {}
        'apply-op $ %{} 'CodeEntry
          :doc "|Applies one operation to the store, without navigation history."
          :code $ quote $ defn apply-op (store op)
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
                    assoc :loading $ Option :none
                    update-prefs $ fn (prefs) (assoc prefs :stack stack)
              (:error message)
                -> store
                  assoc :error $ Option :some message
                  assoc :loading $ Option :none
              (:loading file-name)
                assoc store :loading $ Option :some file-name
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
              (:prompt-draft text)
                update-prefs store $ fn (prefs) (assoc prefs :prompt-draft text)
              (:toggle-prompt)
                update-prefs store $ fn (prefs)
                  assoc prefs :prompt-open? $ not $ :prompt-open? prefs
              (:toggle-prompt-source)
                update-prefs store $ fn (prefs)
                  assoc prefs :prompt-source? $ not $ :prompt-source? prefs
              (:copied time) (assoc store :copied-at time)
              (:toggle-ns ns-name)
                assoc store :ns-toggled $ if
                  .includes? (:ns-toggled store) ns-name
                  .exclude (:ns-toggled store) ns-name
                  .include (:ns-toggled store) ns-name
              (:clear-changed)
                assoc store :changed $ #{}
              (:append id)
                update-prefs store $ fn (prefs)
                  -> prefs
                    assoc :stack $ .concat
                      .filter (:stack prefs)
                        fn (x) (not= x id)
                      [] id
                    assoc :view :code
              (:truncate idx)
                update-prefs store $ fn (prefs)
                  assoc prefs :stack $ .take (:stack prefs) (inc idx)
              (:back)
                match
                  .last $ :history store
                  (:some stack)
                    -> store
                      assoc :future $ .concat
                        [] $ :stack $ :prefs store
                        :future store
                      assoc :history $ .butlast $ :history store
                      update-prefs $ fn (prefs) (assoc prefs :stack stack)
                  (:none) store
              (:forward)
                match
                  .first $ :future store
                  (:some stack)
                    -> store
                      assoc :history $ .concat (:history store)
                        [] $ :stack $ :prefs store
                      assoc :future $ .rest $ :future store
                      update-prefs $ fn (prefs) (assoc prefs :stack stack)
                  (:none) store
              (:activate idx) (assoc store :active idx)
              (:toggle-collapse id)
                assoc store :collapsed $ if
                  .includes? (:collapsed store) id
                  .exclude (:collapsed store) id
                  .include (:collapsed store) id
              (:toggle-nav)
                update-prefs store $ fn (prefs)
                  assoc prefs :nav-hidden? $ not $ :nav-hidden? prefs
              (:palette-open)
                -> store
                  assoc :palette $ Option :some |
                  assoc :palette-idx 0
              (:palette-close)
                assoc store :palette $ Option :none
              (:palette-query text)
                -> store
                  assoc :palette $ Option :some text
                  assoc :palette-idx 0
              (:palette-move delta)
                assoc store :palette-idx $ let
                    next $ + (:palette-idx store) delta
                  if (< next 0) 0 next
              (:resumable file-name)
                if
                  .some? $ :watching store
                  , store $ assoc store :resumable $ Option :some file-name
          :examples $ []
          :schema $ quote $ Fn app.types/Store app.types/Op (-> app.types/Store)
          :tests $ []
            %{} 'TestEntry (:name |history-back-forward)
              :code $ quote $ let
                  program $ parse-program $ parse-cirru-edn sample-ir
                  loaded $ updater store $ Op :load program |program-ir.cirru 1
                  opened $ updater loaded $ Op :open 1 |app.main/double
                  back $ updater opened $ Op :back
                  forward $ updater back $ Op :forward
                assert= ([] |app.main/main!)
                  :stack $ :prefs back
                assert= ([] |app.main/main! |app.main/double)
                  :stack $ :prefs forward
                assert= 1 $ :active opened
                assert= ([])
                  :future $ updater back $ Op :open 1 |app.main/double
                assert= ([] |app.main/main!)
                  :stack $ :prefs $ updater opened (Op :truncate 0)
                assert= ([] |app.main/main! |app.main/double)
                  :stack $ :prefs $ updater loaded (Op :append |app.main/double)
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
        'at-least $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn at-least (lo x)
            if (< x lo) lo x
          :examples $ []
          :schema $ quote $ Fn Number Number (-> Number)
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
            Store :program (Option :none) :error (Option :none) :file-name | :loaded-at 0 :changed (#{}) :watching (Option :none) :resumable (Option :none) :expanded (#{}) :zoom (Option :none) :copied-at 0 :ns-toggled (#{}) :history ([]) :future ([]) :active 0 :collapsed (#{}) :palette (Option :none) :palette-idx 0 :loading (Option :none) :prefs $ Prefs :stack ([]) :filter | :show-libs? false :inline-types? false :view :code :prompt-open? false :prompt-draft | :prompt-source? true :nav-hidden? false
          :examples $ []
          :schema $ quote app.types/Store
        'update-prefs $ %{} 'CodeEntry (:doc "|Applies `f` to the view preferences.")
          :code $ quote $ defn update-prefs (store f)
            assoc store :prefs $ f $ :prefs store
          :examples $ []
          :schema $ quote $ Fn app.types/Store
            Fn app.types/Prefs $ -> app.types/Prefs
            -> app.types/Store
        'updater $ %{} 'CodeEntry
          :doc "|Applies one operation and records panel stack changes as navigation history; the last panel becomes the active one."
          :code $ quote $ defn updater (store op)
            let
                before $ :stack $ :prefs store
                next $ apply-op store op
                after $ :stack $ :prefs next
                navigated? $ match op
                  (:back) true
                  (:forward) true
                  _ false
              if (= before after) next $ -> next
                assoc :active $ at-least 0 $ dec (.len after)
                assoc :collapsed $ .filter (:collapsed next)
                  fn (id) (.includes? after id)
                assoc :history $ if navigated? (:history next)
                  .take-last
                    .concat (:history next) ([] before)
                    , 50
                assoc :future $ if navigated? (:future next) ([])
          :examples $ []
          :schema $ quote $ Fn app.types/Store app.types/Op (-> app.types/Store)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require
            app.types :refer $ Store Prefs Op DefInfo
            app.program :refer $ all-defs lookup-def parse-program sample-ir
