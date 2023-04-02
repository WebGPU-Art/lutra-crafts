
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |memof/ |quaternion/ |lagopus/
  :entries $ {}
  :files $ {}
    |app.comp.container $ {}
      :defs $ {}
        |comp-container $ quote
          defn comp-container (store)
            group nil
              if (not hide-tabs?) (memof1-call comp-tabs)
              case-default (:tab store) (group nil)
                :cube $ group nil (comp-cubes)
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
              fn (e d!) (d! :tab :todo)
      :ns $ quote
        ns app.comp.container $ :require
          lagopus.alias :refer $ group object
          "\"../shaders/cube.wgsl" :default cube-wgsl
          lagopus.comp.button :refer $ comp-button
          lagopus.comp.curves :refer $ comp-curves
          lagopus.comp.spots :refer $ comp-spots
          memof.once :refer $ memof1-call
          quaternion.core :refer $ c+
          app.comp.cube-combo :refer $ comp-cubes
          app.config :refer $ hide-tabs?
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
    |app.config $ {}
      :defs $ {}
        |dev? $ quote
          def dev? $ &= "\"dev" (get-env "\"mode" "\"release")
        |hide-tabs? $ quote
          def hide-tabs? $ = "\"true" (get-env "\"hide-tabs" "\"false")
        |inline-shader $ quote
          defmacro inline-shader (path)
            read-file $ str "\"shaders/" path "\".wgsl"
      :ns $ quote (ns app.config)
    |app.main $ {}
      :defs $ {}
        |*store $ quote
          defatom *store $ {} (:tab :cube)
        |canvas $ quote
          def canvas $ js/document.querySelector "\"canvas"
        |dispatch! $ quote
          defn dispatch! (op data)
            if dev? $ js/console.log op data
            let
                store @*store
                next-store $ case-default op
                  do (js/console.warn ":unknown op" op data) store
                  :tab $ assoc store :tab data
              if (not= next-store store) (reset! *store next-store)
        |main! $ quote
          defn main! () (hint-fn async)
            if dev? $ load-console-formatter!
            js-await $ initializeContext
            reset-clear-color! $ {} (:r 0) (:g 0) (:b 0) (:a 0.08)
            render-app!
            renderControl
            startControlLoop 10 onControlEvent
            set! js/window.__lagopusHandleCompilationInfo handle-compilation
            set! js/window.onresize $ fn (e) (resetCanvasHeight canvas) (paintLagopusTree)
            resetCanvasHeight canvas
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
          "\"@triadica/lagopus" :refer $ setupMouseEvents onControlEvent paintLagopusTree renderLagopusTree initializeContext resetCanvasHeight
          "\"@triadica/touch-control" :refer $ renderControl startControlLoop
          app.config :refer $ dev?
          "\"bottom-tip" :default hud!
          "\"./calcit.build-errors" :default build-errors
          memof.once :refer $ reset-memof1-caches!
          lagopus.util :refer $ handle-compilation reset-clear-color!
