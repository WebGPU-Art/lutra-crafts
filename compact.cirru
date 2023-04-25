
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |memof/ |quaternion/ |lagopus/
  :entries $ {}
  :files $ {}
    |app.comp.container $ {}
      :defs $ {}
        |build-quadratic-curve $ quote
          defn build-quadratic-curve (p q step gravity)
            let
                v $ &v- q p
                l $ v-length v
                dd $ &/ l step
                size $ js/Math.floor dd
                left $ &* 0.5
                  - l $ &* size step
                unit $ v-normalize v
                dist $ ->
                  range $ inc size
                  map $ fn (idx)
                    + left $ * idx step
                l-middle $ * 0.25 l l
              -> dist $ map
                fn (ratio)
                  let
                      s $ js/Math.abs
                        &- ratio $ &* 0.5 l
                    &v+
                      &v+ p $ v-scale unit ratio
                      v-scale gravity $ &- l-middle (pow s 2)
        |comp-container $ quote
          defn comp-container (store)
            let
                states $ :states store
              group nil
                if (not hide-tabs?) (memof1-call comp-tabs)
                case-default (:tab store) (group nil)
                  :cube $ comp-cubes
                  :helicoid $ comp-helicoid
                  :hyperbolic-helicoid $ comp-hyperbolic-helicoid (>> states :hh )
                  :globe $ comp-globe
                  :fur $ comp-fur (>> states :fur)
                  :petal-wireframe $ comp-petal-wireframe
                  :mums $ comp-mums
        |comp-fur $ quote
          defn comp-fur (states)
            comp-curves $ {} (:shader wgsl-fur)
              :curves $ -> (range 200)
                map $ fn (idx)
                  let
                      radian $ * 0.2 idx
                      r $ * 0.8 (sqrt idx)
                      base $ []
                        * r $ cos radian 
                        , 0
                          * r $ sin radian 
                    -> (range 100)
                      map $ fn (hi)
                        {}
                          :position $ v+ base
                            [] 0 (* 2 hi) 0
                          :width 0.6
        |comp-mums $ quote
          defn comp-mums () $ let
              points $ fibo-grid-range 120
            comp-curves $ {} (:shader wgsl-mums)
              :curves $ -> points
                map $ fn (p)
                  let
                      v $ v-scale p
                        * 2 $ pow
                          v-length $ assoc p 1 0
                          , 3
                      path $ roll-curve v
                        v-normalize $ v-cross ([] 0 1 0) v
                        / 0.03 $ pow (v-length v) 2
                    ; js/console.log path
                    -> path $ map
                      fn (p2)
                        {} (:position p2) (:width 3)
        |comp-petal-wireframe $ quote
          defn comp-petal-wireframe () $ let
              large-frame $ fibo-grid-range 48
              small-frame $ fibo-grid-range 12
              lines $ -> large-frame
                mapcat $ fn (x)
                  map small-frame $ fn (y) ([] x y)
            comp-curves $ {} (:shader wgsl-petal-wireframe)
              :curves $ -> lines
                map $ fn (pair)
                  let
                      from $ nth pair 0
                      to $ nth pair 1
                      points $ build-quadratic-curve
                        v-scale
                          update from 1 $ fn (y) (* 0.4 y)
                          , 400
                        v-scale
                          update to 1 $ fn (y)
                            - (* 0.4 y) 0.5
                          , 180
                        , 16 ([] 0 -0.0016 0)
                    map points $ fn (p)
                      {} (:position p) (:width 1.)
        |comp-tabs $ quote
          defn comp-tabs () $ group nil
            comp-button
              {}
                :position $ [] 0 200 0
                :color $ [] 0.3 0.9 0.2 1
                :size 20
              fn (e d!) (d! :tab :cube)
            comp-button
              {}
                :position $ [] 40 200 0
                :color $ [] 0.8 0.3 1 1
                :size 20
              fn (e d!) (d! :tab :helicoid)
            comp-button
              {}
                :position $ [] 80 200 0
                :color $ [] 0.6 0.3 1 1
                :size 20
              fn (e d!) (d! :tab :hyperbolic-helicoid)
            comp-button
              {}
                :position $ [] 120 200 0
                :color $ [] 0.3 0.9 0.5 1
                :size 20
              fn (e d!) (d! :tab :globe)
            comp-button
              {}
                :position $ [] 160 200 0
                :color $ [] 0.9 0.5 0.6 1
                :size 20
              fn (e d!) (d! :tab :fur)
            comp-button
              {}
                :position $ [] 200 200 0
                :color $ [] 0.0 0.5 0.6 1
                :size 20
              fn (e d!) (d! :tab :petal-wireframe)
            comp-button
              {}
                :position $ [] 240 200 0
                :color $ [] 0.9 0.5 0.6 1
                :size 20
              fn (e d!) (d! :tab :mums)
        |interoplate-line $ quote
          defn interoplate-line (from to n)
            ->
              range $ inc n
              map $ fn (i)
                let
                    a $ / i n
                    b $ - 1 a
                  v+ (v-scale from a) (v-scale to b)
        |roll-curve $ quote
          defn roll-curve (v0 axis delta)
            let
                steps 80
                dt 2
                p0 $ [] 0 0 0
              apply-args
                  []
                  , p0 v0 0
                fn (acc position v s)
                  if (>= s steps) (conj acc position)
                    let
                        rotate $ rotate-3d-fn ([] 0 0 0) axis
                          pow (* s delta) 5
                        next $ v+ position (v-scale v dt)
                        v-next $ rotate v
                      recur (conj acc position) next v-next (inc s) 
      :ns $ quote
        ns app.comp.container $ :require
          lagopus.alias :refer $ group object
          "\"../shaders/cube.wgsl" :default cube-wgsl
          "\"../shaders/fur.wgsl" :default wgsl-fur
          "\"../shaders/petal-wireframe.wgsl" :default wgsl-petal-wireframe
          "\"../shaders/mums.wgsl" :default wgsl-mums
          lagopus.comp.button :refer $ comp-button
          lagopus.comp.curves :refer $ comp-curves
          lagopus.comp.spots :refer $ comp-spots
          memof.once :refer $ memof1-call
          quaternion.core :refer $ c+ v+ &v+ v-scale v-length &v- v-normalize v-cross
          app.comp.cube-combo :refer $ comp-cubes
          app.config :refer $ hide-tabs?
          app.comp.helicoid :refer $ comp-helicoid comp-hyperbolic-helicoid
          app.comp.globe :refer $ comp-globe
          lagopus.cursor :refer $ >>
          lagopus.math :refer $ fibo-grid-range rotate-3d-fn
    |app.comp.cube-combo $ {}
      :defs $ {}
        |comp-cubes $ quote
          defn comp-cubes () $ let
              cube-count 60
            object $ {} (:shader cube-combo-wgsl)
              :topology $ do :line-strip :triangle-list
              :attrs-list $ []
                {} (:field :position) (:format "\"float32x3")
                {} (:field :metrics) (:format "\"float32x3")
                {} (:field :idx) (:format "\"uint32")
                {} (:field :offsets) (:format "\"float32x3")
              :data $ -> (range cube-count)
                map $ fn (idx)
                  let
                      area 460
                      base $ [] (rand-shift 0 area) (rand-shift 0 area) (rand-shift 0 area)
                      size-bound 80
                      offsets $ []
                        + 10 $ rand size-bound
                        + 10 $ rand size-bound
                        + 10 $ rand size-bound
                    []
                      {} (:idx idx) (:offsets offsets)
                        :metrics $ [] -1 -1 1
                        :position $ v+ base
                          -> offsets (update 0 negate) (update 1 negate)
                      {} (:idx idx) (:offsets offsets)
                        :metrics $ [] 1 -1 1
                        :position $ v+ base
                          -> offsets $ update 1 negate
                      {} (:idx idx) (:offsets offsets)
                        :metrics $ [] 1 -1 -1
                        :position $ v+ base
                          -> offsets (update 1 negate) (update 2 negate)
                      {} (:idx idx) (:offsets offsets)
                        :metrics $ [] -1 -1 -1
                        :position $ v+ base
                          -> offsets (update 0 negate) (update 1 negate) (update 2 negate)
                      {} (:idx idx) (:offsets offsets)
                        :metrics $ [] -1 1 1
                        :position $ v+ base
                          -> offsets $ update 0 negate
                      {} (:idx idx) (:offsets offsets)
                        :metrics $ [] 1 1 1
                        :position $ v+ base offsets
                      {} (:idx idx) (:offsets offsets)
                        :metrics $ [] 1 1 -1
                        :position $ v+ base
                          -> offsets $ update 2 negate
                      {} (:idx idx) (:offsets offsets)
                        :metrics $ [] -1 1 -1
                        :position $ v+ base
                          -> offsets (update 0 negate) (update 2 negate)
              :indices $ let
                  indices $ concat &
                    [] ([] 0 1 2 0 2 3 ) ([] 0 1 5 0 4 5) ([] 1 2 6 1 6 5) ([] 2 3 6 3 6 7) ([] 0 3 4 3 4 7) ([] 4 5 6 4 6 7)
                -> (range cube-count)
                  map $ fn (idx)
                    -> indices $ map
                      fn (x)
                        + x $ * 8 idx
      :ns $ quote
        ns app.comp.cube-combo $ :require
          lagopus.alias :refer $ group object
          "\"../shaders/cube-combo.wgsl" :default cube-combo-wgsl
          lagopus.comp.button :refer $ comp-button
          lagopus.comp.curves :refer $ comp-curves
          lagopus.comp.spots :refer $ comp-spots
          memof.once :refer $ memof1-call
          quaternion.core :refer $ c+ v+
          "\"@calcit/std" :refer $ rand rand-shift
    |app.comp.globe $ {}
      :defs $ {}
        |comp-globe $ quote
          defn comp-globe () $ comp-sphere
            {} (; :topology :line-strip) (:shader wgsl-globe) (:iteration 7) (:radius 1800)
              :color $ [] 0.6 0.9 0.7
        |wgsl-globe $ quote
          def wgsl-globe $ inline-shader "\"globe"
      :ns $ quote
        ns app.comp.globe $ :require
          lagopus.alias :refer $ group object
          "\"../shaders/cube-combo.wgsl" :default cube-combo-wgsl
          lagopus.comp.button :refer $ comp-button
          lagopus.comp.curves :refer $ comp-curves
          lagopus.comp.spots :refer $ comp-spots
          memof.once :refer $ memof1-call
          quaternion.core :refer $ c+ v+
          "\"@calcit/std" :refer $ rand rand-shift
          lagopus.comp.sphere :refer $ comp-sphere
          app.config :refer $ inline-shader
    |app.comp.helicoid $ {}
      :defs $ {}
        |build-01-grid $ quote
          defn build-01-grid (size s)
            -> (range-bothway size)
              map $ fn (x)
                -> (range-bothway size)
                  map $ fn (y)
                    let
                        r $ * s (&/ 1 size)
                        p0 $ [] (* r x) (* r y)
                        p1 $ []
                          * r $ inc x
                          * r y
                        p2 $ [] (* r x)
                          * r $ inc y
                        p3 $ []
                          * r $ inc x
                          * r $ inc y
                      [] (&{} :position p0) (&{} :position p1) (&{} :position p2) (&{} :position p1) (&{} :position p2) (&{} :position p3)
        |comp-helicoid $ quote
          defn comp-helicoid () $ comp-plate
            {} (; :topology :line-strip)
              :shader $ inline-shader "\"helicoid"
              :iteration 120
              :radius 160
              :color $ [] 0.56 0.8 0.84
              ; :x-direction $ [] 1 0 0
              ; :y-direction $ [] 0 1 0
              :chromatism 0.14
        |comp-hyperbolic-helicoid $ quote
          defn comp-hyperbolic-helicoid (states)
            let
                cursor $ :cursor states
                state $ either (:data states)
                  {} $ :tau 4.0
                tau $ :tau state
              group nil
                object $ {} (:shader hyperbolic-helicoid-wgsl)
                  :topology $ do :triangle-list :line-strip
                  :attrs-list $ [] (:: :float32x2 :position)
                  :data $ build-01-grid 80 6
                  :add-uniform $ fn () (js-array tau 0 0 0)
                compSlider
                  to-js-data $ {}
                    :position $ [] 0 240 0
                    :size 12
                    :color $ [] 0.7 0.6 0.5 1.0
                  fn (delta d!)
                    d! cursor $ assoc state :tau
                      + tau $ * 0.01 (.-0 delta)
      :ns $ quote
        ns app.comp.helicoid $ :require
          lagopus.alias :refer $ group object
          "\"../shaders/hyperbolic-helicoid.wgsl" :default hyperbolic-helicoid-wgsl
          lagopus.comp.button :refer $ comp-button
          lagopus.comp.curves :refer $ comp-curves
          lagopus.comp.spots :refer $ comp-spots
          memof.once :refer $ memof1-call
          quaternion.core :refer $ c+ v+
          "\"@calcit/std" :refer $ rand rand-shift
          lagopus.comp.plate :refer $ comp-plate
          app.config :refer $ inline-shader
          "\"@triadica/lagopus" :refer $ compSlider
    |app.config $ {}
      :defs $ {}
        |bloom? $ quote
          def bloom? $ = "\"true" (get-env "\"bloom" "\"false")
        |dev? $ quote
          def dev? $ &= "\"dev" (get-env "\"mode" "\"release")
        |hide-tabs? $ quote
          def hide-tabs? $ = "\"true" (get-env "\"hide-tabs" "\"false")
        |inline-shader $ quote
          defmacro inline-shader (path)
            read-file $ str "\"shaders/" path "\".wgsl"
        |mobile-info $ quote
          def mobile-info $ ismobile js/window.navigator
      :ns $ quote
        ns app.config $ :require ("\"ismobilejs" :default ismobile)
    |app.main $ {}
      :defs $ {}
        |*store $ quote
          defatom *store $ {}
            :states $ {}
            :tab :petal-wireframe
        |canvas $ quote
          def canvas $ js/document.querySelector "\"canvas"
        |dispatch! $ quote
          defn dispatch! (op data)
            if dev? $ js/console.log op data
            let
                store @*store
                next-store $ if (list? op) (update-states store op data) (updater store op data)
              if (not= next-store store) (reset! *store next-store)
        |main! $ quote
          defn main! () (hint-fn async)
            if
              and bloom? $ not (.-any mobile-info)
              enableBloom
            if dev? $ load-console-formatter!
            js-await $ initializeContext
            initializeCanvasTextures
            reset-clear-color! $ either bg-color
              {} (:r 0) (:g 0) (:b 0) (:a 0.16)
            render-app!
            renderControl
            startControlLoop 10 onControlEvent
            registerShaderResult handle-compilation
            set! js/window.onresize $ fn (e) (resetCanvasSize canvas) (initializeCanvasTextures) (paintLagopusTree)
            resetCanvasSize canvas
            add-watch *store :change $ fn (next store) (render-app!)
            setupMouseEvents canvas
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (reset-memof1-caches!) (render-app!) (remove-watch *store :change)
              add-watch *store :change $ fn (next store) (render-app!)
              println "\"Reloaded."
              hud! "\"ok~" "\"OK"
            hud! "\"error" build-errors
        |render-app! $ quote
          defn render-app! () $ let
              tree $ comp-container @*store
            renderLagopusTree tree dispatch!
      :ns $ quote
        ns app.main $ :require
          app.comp.container :refer $ comp-container
          "\"@triadica/lagopus" :refer $ setupMouseEvents onControlEvent paintLagopusTree renderLagopusTree initializeContext resetCanvasSize initializeCanvasTextures registerShaderResult enableBloom
          "\"@triadica/touch-control" :refer $ renderControl startControlLoop
          lagopus.config :refer $ bg-color
          app.config :refer $ dev? mobile-info bloom?
          "\"bottom-tip" :default hud!
          "\"./calcit.build-errors" :default build-errors
          memof.once :refer $ reset-memof1-caches!
          lagopus.util :refer $ handle-compilation reset-clear-color!
          lagopus.cursor :refer $ update-states
          app.updater :refer $ updater
    |app.updater $ {}
      :defs $ {}
        |updater $ quote
          defn updater (store op data)
            case-default op
              do (js/console.warn ":unknown op" op data) store
              :tab $ assoc store :tab data
              :tau $ assoc store :tau data
      :ns $ quote (ns app.updater)
