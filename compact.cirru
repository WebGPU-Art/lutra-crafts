
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.5)
    :modules $ [] |memof/ |quaternion/ |lagopus/ |respo.calcit/ |respo-ui.calcit/ |lilac/
  :entries $ {}
  :files $ {}
    |app.cmop.sedimentary $ %{} :FileEntry
      :defs $ {}
        |comp-concentric $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-concentric () $ let
                r0 2
                t0 $ js/performance.now
              group ({})
                comp-polylines-marked $ {} (; :topology :line-strip) (:shader concentric-shader)
                  ; :attrs-list $ [] (: float32x3 :position)
                  :writer $ fn (write!)
                    -> 60 range $ each
                      fn (hi)
                        let
                            r $ + 2 r0 (* 4 hi)
                            size $ + 40 (* r 1)
                            angle-unit $ / (* 2 &PI) size
                          -> size inc range $ each
                            fn (idx)
                              let
                                  angle $ * idx angle-unit
                                  x $ * r (cos angle)
                                  y $ * r (sin angle)
                                  angle $ pow (* 0.4 hi) 0.5
                                  x1 $ * (cos angle) x
                                  x2 $ * (sin angle) x
                                write! $ []
                                  :: :vertex (v3 x y 0) 1. hi
                          write! break-mark
                  :get-params $ fn ()
                    js-array
                      * 0.01 $ - (js/performance.now) t0 20000
                      , 0 0 0
        |comp-sedimentary $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-sedimentary () $ let
                r0 80
              group ({})
                comp-polylines-marked $ {} (; :topology :line-strip) (:shader sedimentary-shader)
                  ; :attrs-list $ [] (: float32x3 :position)
                  :writer $ fn (write!)
                    -> 4000 range $ each
                      fn (hi)
                        let
                            r $ + r0 (rand 1600)
                            size 4
                            angle-unit $ / (* 2 &PI) size
                            dh $ * -4 hi
                          -> size inc range $ each
                            fn (idx)
                              let
                                  angle $ * idx angle-unit
                                write! $ []
                                  :: :vertex
                                    v3
                                      * r $ cos angle
                                      * r $ sin angle
                                      , dh
                                    , 3 hi
                          write! break-mark
                  :get-params $ fn () (js-array 0 0 0 0)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.cmop.sedimentary $ :require
            lagopus.alias :refer $ group object object-writer
            "\"../shaders/sedimentary.wgsl" :default sedimentary-shader
            "\"../shaders/concentric.wgsl" :default concentric-shader
            lagopus.comp.curves :refer $ comp-curves comp-polylines comp-polylines-marked break-mark
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
            "\"@calcit/std" :refer $ rand rand-int rand-shift rand-between
    |app.comp.blinks $ %{} :FileEntry
      :defs $ {}
        |comp-blinks $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-blinks () $ object
              {} (:shader wgsl-blinks) (:topology :triangle-list)
                :attrs-list $ [] (:: :float32x3 :position) (:: :float32x3 :direction)
                :data $ -> (range 20000)
                  map $ fn (idx)
                    let
                        r0 400
                        r1 4
                        p0 $ v3 (rand-shift 0 r0) (rand-shift 0 r0) (rand-shift 0 r0)
                        v1 $ v3 (rand-shift 0 r1) (rand-shift 0 r1) (rand-shift 0 r1)
                        v2 $ v3 (rand-shift 0 r1) (rand-shift 0 r1) (rand-shift 0 r1)
                        p1 $ &v+ p0 v1
                        p2 $ &v+ p0 v2
                        direction $ v-cross v1 v2
                      [] (:: :vertex p0 direction) (:: :vertex p1 direction) (:: :vertex p2 direction)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.blinks $ :require
            lagopus.alias :refer $ group object
            "\"../shaders/blinks.wgsl" :default wgsl-blinks
            lagopus.comp.curves :refer $ comp-curves
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
            "\"@calcit/std" :refer $ rand rand-shift
    |app.comp.blow $ %{} :FileEntry
      :defs $ {}
        |comp-blow $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-blow () $ let
                points $ fibo-grid-range 400
                width 0.016
              comp-curves $ {} (; :topology :line-list) (:shader wgsl-blow)
                :curves $ -> points
                  mapcat $ fn (p)
                    apply-args
                        []
                        rand 100
                        , 4
                      fn (acc a step)
                        if (<= step 0) acc $ let
                            l $ + 40 (rand 160)
                            gap $ + 3 (rand 8)
                          recur
                            conj acc $ []
                              {}
                                :position $ v-scale p (+ gap a)
                                :width $ * (+ gap a) width
                              {}
                                :position $ v-scale p (+ a gap l)
                                :width $ * (+ a gap l) width
                            + a gap l
                            dec step
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.blow $ :require
            lagopus.alias :refer $ group object
            "\"../shaders/blow.wgsl" :default wgsl-blow
            lagopus.comp.curves :refer $ comp-curves
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
            "\"@calcit/std" :refer $ rand rand-shift
    |app.comp.christmas-tree $ %{} :FileEntry
      :defs $ {}
        |&PHI $ %{} :CodeEntry (:doc |)
          :code $ quote
            def &PHI $ * 0.5
              - (sqrt 5) 1
        |comp-tree-1 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-tree-1 () $ comp-polylines-marked
              {} (; :topology :line-strip) (:shader wgsl-tree-1)
                ; :attrs-list $ [] (: float32x3 :position)
                :writer $ fn (write!)
                  let
                      r0 160
                      size 8000
                      rot $ * &PHI 0.473
                      h0 480
                    -> size range $ each
                      fn (idx)
                        let
                            ratio $ / idx size
                            r $ * r0 (- 1 ratio)
                            angle $ * idx rot
                            h $ * ratio h0
                          write! $ [] break-mark
                            :: :vertex (v3 0 h 0) 2 ratio
                            :: :vertex
                              .+
                                v3
                                  * r $ cos angle
                                  , h $ * r (sin angle)
                                v3 (rand-shift 0 22) (rand-shift 0 22) (rand-shift 0 22)
                              , 10 ratio
                :get-params $ fn ()
                  wo-js-log $ let
                      v $ * 0.000001 (js/Date.now)
                    js-array
                      - v $ js/Math.round v
                      , 0 0 0
        |comp-tree-2 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-tree-2 () $ let
                r0 180
                h0 540
              group ({})
                comp-polylines-marked $ {} (; :topology :line-strip) (:shader wgsl-tree-2-strip)
                  ; :attrs-list $ [] (: float32x3 :position)
                  :writer $ fn (write!)
                    let
                        size 1200
                        rot $ * &PHI 0.06
                        top-rot $ / (* &PI) 0.5
                      -> 1 range $ map
                        fn (j)
                          -> size range $ each
                            fn (idx)
                              let
                                  ratio $ / idx size
                                  r $ * r0 (- 1 ratio)
                                  angle $ *
                                    + (* j top-rot) (* idx rot)
                                    - 1 $ pow ratio 20
                                  h $ * ratio h0
                                  position $ v3
                                    * r $ cos angle
                                    , h
                                      * r $ sin angle
                                when
                                  = 0 $ .rem idx 16
                                  write! $ [] (:: :vertex position 2 ratio)
                                  let
                                      out-direction $ v3 (cos angle) 0 (sin angle)
                                      up-direction $ v3 0 1 0
                                      right-direction $ v-cross out-direction up-direction
                                      base-angle $ js/Math.random
                                      a1 $ + base-angle
                                      a2 $ + base-angle (/ &PI 3)
                                      a3 $ + base-angle
                                        * 2 $ / &PI 3.2
                                    write! $ []
                                      :: :vertex
                                        v+ position
                                          v-scale up-direction $ * 10 (cos a1)
                                          v-scale right-direction $ * 10 (sin a1)
                                        , 2 ratio
                                      :: :vertex
                                        v+ position
                                          v-scale up-direction $ * -10 (cos a1)
                                          v-scale right-direction $ * -10 (sin a1)
                                        , 2 ratio
                                      , break-mark
                                        :: :vertex
                                          v+ position
                                            v-scale up-direction $ * 10 (cos a2)
                                            v-scale right-direction $ * 10 (sin a2)
                                          , 2 ratio
                                        :: :vertex
                                          v+ position
                                            v-scale up-direction $ * -10 (cos a2)
                                            v-scale right-direction $ * -10 (sin a2)
                                          , 2 ratio
                                        , break-mark
                                          :: :vertex
                                            v+ position
                                              v-scale up-direction $ * 10 (cos a3)
                                              v-scale right-direction $ * 10 (sin a3)
                                            , 2 ratio
                                          :: :vertex
                                            v+ position
                                              v-scale up-direction $ * -10 (cos a3)
                                              v-scale right-direction $ * -10 (sin a3)
                                            , 2 ratio
                                          , break-mark
                                  write! break-mark
                                write! $ [] (:: :vertex position 2 ratio)
                          write! break-mark
                  :get-params $ fn ()
                    wo-js-log $ let
                        v $ * 0.000001 (js/Date.now)
                      js-array
                        - v $ js/Math.round v
                        , 0 0 0
                comp-polylines-marked $ {} (; :topology :line-strip) (:shader wgsl-tree-2-strip)
                  ; :attrs-list $ [] (: float32x3 :position)
                  :writer $ fn (write!)
                    let
                        size 40
                        angle-unit $ / (* 2 &PI) size
                      -> size inc range $ map
                        fn (idx)
                          let
                              angle $ * idx angle-unit
                            write! $ []
                              :: :vertex
                                v3
                                  * r0 $ cos angle
                                  , 0 $ * r0 (sin angle)
                                , 1 1
                  :get-params $ fn ()
                    wo-js-log $ let
                        v $ * 0.000001 (js/Date.now)
                      js-array
                        - v $ js/Math.round v
                        , 0 0 0
                comp-tree-1
        |comp-tree-3 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-tree-3 () $ let
                r0 180
                h0 540
              group ({})
                comp-polylines-marked $ {} (; :topology :line-strip) (:shader wgsl-tree-3-strip)
                  ; :attrs-list $ [] (: float32x3 :position)
                  :writer $ fn (write!)
                    -> 28 range $ each
                      fn (hi)
                        let
                            r $ - r0 (* 6.4 hi)
                            size $ js/Math.floor r
                            angle-unit $ / (* 2 &PI) size
                            dh $ * 20 hi
                          -> size inc range $ each
                            fn (idx)
                              let
                                  angle $ * idx angle-unit
                                write! $ []
                                  :: :vertex
                                    v3
                                      * r $ cos angle
                                      , dh $ * r (sin angle)
                                    , 8 hi
                          write! break-mark
                  :get-params $ fn () (js-array 0 0 0 0)
                comp-tree-dark-area r0 h0
                ; comp-tree-1
        |comp-tree-dark-area $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-tree-dark-area (r0 h0)
              object $ {} (:shader wgsl-tree-2-dark) (:topology :triangle-list)
                :attrs-list $ [] (:: :float32x3 :position)
                :data $ let
                    size 10
                    angle-unit $ / (* 2 &PI) size
                  -> size range $ map
                    fn (idx)
                      let
                          angle $ * idx angle-unit
                          angle2 $ * (inc idx) angle-unit
                        []
                          :: :vertex $ v3 0 (- h0 4) 0
                          :: :vertex $ v3
                            * (- r0 4) (cos angle)
                            , 0
                              * (- r0 4) (sin angle)
                          :: :vertex $ v3
                            * (- r0 4) (cos angle2)
                            , 0
                              * (- r0 4) (sin angle2)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.christmas-tree $ :require
            lagopus.alias :refer $ group object object-writer
            "\"../shaders/tree-1.wgsl" :default wgsl-tree-1
            "\"../shaders/tree-2-strip.wgsl" :default wgsl-tree-2-strip
            "\"../shaders/tree-2-dark.wgsl" :default wgsl-tree-2-dark
            "\"../shaders/tree-3-strip.wgsl" :default wgsl-tree-3-strip
            lagopus.comp.curves :refer $ comp-curves comp-polylines comp-polylines-marked break-mark
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
            "\"@calcit/std" :refer $ rand rand-int rand-shift rand-between
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-container (store)
              let
                  states $ :states store
                  show? $ :show-tabs? store
                ; js/console.log $ :tab store
                group nil $ case-default (:tab store)
                  do
                    eprintln "\"Unknown tab" $ :tab store
                    group nil
                  :cube $ comp-cubes
                  :helicoid $ comp-helicoid
                  :hyperbolic-helicoid $ comp-hyperbolic-helicoid (>> states :hh)
                  :globe $ comp-globe
                  :fur $ comp-fur
                  :petal-wireframe $ comp-petal-wireframe
                  :mums $ comp-mums
                  :flower-ball $ with-cpu-time (comp-flower-ball)
                  :blow $ comp-blow
                  :triangles $ comp-triangles
                  :segments $ comp-segments-fractal
                  :quaternion-fold $ comp-quaternion-fold
                  :hopf $ comp-hopf-fiber (>> states :hopf) show?
                  :fireworks $ comp-fireworks
                  :blinks $ comp-blinks
                  :split-triangles $ comp-split-triangles
                  :cubes-tree $ comp-cubes-tree
                  :prime-walk $ comp-prime-walk
                  :prime-pyramid $ comp-prime-pyramid
                  :tree-1 $ comp-tree-1
                  :tree-2 $ comp-tree-2
                  :tree-3 $ comp-tree-3
                  :sedimentary $ comp-sedimentary
                  :concentric $ comp-concentric
        |comp-fur $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-fur () $ comp-curves
              {} (:shader wgsl-fur)
                :curves $ -> (range 200)
                  map $ fn (idx)
                    let
                        radian $ * 0.2 idx
                        r $ * 0.8 (sqrt idx)
                        base $ v3
                          * r $ cos radian 
                          , 0
                            * r $ sin radian 
                      -> (range 100)
                        map $ fn (hi)
                          {}
                            :position $ v+ base
                              v3 0 (* 2 hi) 0
                            :width 0.6
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require
            lagopus.alias :refer $ group object
            "\"../shaders/cube.wgsl" :default cube-wgsl
            "\"../shaders/fur.wgsl" :default wgsl-fur
            lagopus.comp.button :refer $ comp-button
            lagopus.comp.curves :refer $ comp-curves
            lagopus.comp.spots :refer $ comp-spots
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            app.comp.cube-combo :refer $ comp-cubes
            app.config :refer $ hide-tabs?
            app.comp.helicoid :refer $ comp-helicoid comp-hyperbolic-helicoid
            app.comp.globe :refer $ comp-globe
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
            app.comp.mums :refer $ comp-mums
            app.comp.patels :refer $ comp-petal-wireframe
            app.comp.flower-ball :refer $ comp-flower-ball
            app.comp.blow :refer $ comp-blow
            app.comp.triangles :refer $ comp-triangles
            app.comp.segments-fractal :refer $ comp-segments-fractal
            app.comp.quaterion-fold :refer $ comp-quaternion-fold
            app.comp.hopf-fiber :refer $ comp-hopf-fiber
            app.comp.fireworks :refer $ comp-fireworks
            app.comp.blinks :refer $ comp-blinks
            app.comp.split-triangles :refer $ comp-split-triangles
            app.comp.cubes-tree :refer $ comp-cubes-tree
            app.comp.prime-walk :refer $ comp-prime-walk comp-prime-pyramid
            app.comp.christmas-tree :refer $ comp-tree-1 comp-tree-2 comp-tree-3
            app.cmop.sedimentary :refer $ comp-sedimentary comp-concentric
    |app.comp.cube-combo $ %{} :FileEntry
      :defs $ {}
        |comp-cubes $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-cubes () $ let
                cube-count 60
              object $ {} (:shader cube-combo-wgsl)
                :topology $ do :line-strip :triangle-list
                :attrs-list $ [] (:: :float32x3 :position) (:: :float32x3 :metrics) (:: :uint32 :idx) (:: :float32x3 :offsets)
                :data $ -> (range cube-count)
                  map $ fn (idx)
                    let
                        area 460
                        base $ v3 (rand-shift 0 area) (rand-shift 0 area) (rand-shift 0 area)
                        size-bound 80
                        offsets $ []
                          + 10 $ rand size-bound
                          + 10 $ rand size-bound
                          + 10 $ rand size-bound
                      []
                        {} (:idx idx) (:offsets offsets)
                          :metrics $ [] -1 -1 1
                          :position $ &v+ base
                            v3 & $ -> offsets (update 0 negate) (update 1 negate)
                        {} (:idx idx)
                          :offsets $ v3 & offsets
                          :metrics $ [] 1 -1 1
                          :position $ &v+ base
                            v3 & $ -> offsets (update 1 negate)
                        {} (:idx idx)
                          :offsets $ v3 & offsets
                          :metrics $ [] 1 -1 -1
                          :position $ &v+ base
                            v3 & $ -> offsets (update 1 negate) (update 2 negate)
                        {} (:idx idx)
                          :offsets $ v3 & offsets
                          :metrics $ [] -1 -1 -1
                          :position $ &v+ base
                            v3 & $ -> offsets (update 0 negate) (update 1 negate) (update 2 negate)
                        {} (:idx idx)
                          :offsets $ v3 & offsets
                          :metrics $ [] -1 1 1
                          :position $ &v+ base
                            v3 & $ -> offsets (update 0 negate)
                        {} (:idx idx)
                          :offsets $ v3 & offsets
                          :metrics $ [] 1 1 1
                          :position $ &v+ base (v3 & offsets)
                        {} (:idx idx)
                          :offsets $ v3 & offsets
                          :metrics $ [] 1 1 -1
                          :position $ &v+ base
                            v3 & $ -> offsets (update 2 negate)
                        {} (:idx idx)
                          :offsets $ v3 & offsets
                          :metrics $ [] -1 1 -1
                          :position $ &v+ base
                            v3 & $ -> offsets (update 0 negate) (update 2 negate)
                :indices $ let
                    indices $ concat &
                      [] ([] 0 1 2 0 2 3 ) ([] 0 1 5 0 4 5) ([] 1 2 6 1 6 5) ([] 2 3 6 3 6 7) ([] 0 3 4 3 4 7) ([] 4 5 6 4 6 7)
                  -> (range cube-count)
                    map $ fn (idx)
                      -> indices $ map
                        fn (x)
                          + x $ * 8 idx
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.cube-combo $ :require
            lagopus.alias :refer $ group object
            "\"../shaders/cube-combo.wgsl" :default cube-combo-wgsl
            lagopus.comp.button :refer $ comp-button
            lagopus.comp.curves :refer $ comp-curves
            lagopus.comp.spots :refer $ comp-spots
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ v3 &v+
            "\"@calcit/std" :refer $ rand rand-shift
    |app.comp.cubes-tree $ %{} :FileEntry
      :defs $ {}
        |branch-next $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn branch-next (cube write! level)
              when (>= level 0) (render-cube cube write!)
                let
                    cube2 $ rotate-d1 cube 0.2 0.8
                    cube3 $ rotate-d2 cube 0.1 0.9
                  branch-next cube2 write! $ dec level
                  branch-next cube3 write! $ dec level
        |comp-cubes-tree $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-cubes-tree () $ comp-polylines-marked
              {} (; :shader wgsl-split-triangles)
                :writer $ fn (write!)
                  let
                      cube $ :: :cube (v3 0 0 0) (v3 100 0 0) (v3 100 0 -100) (v3 0 0 -100) (v3 0 100 0) (v3 100 100 0) (v3 100 100 -100) (v3 0 100 -100)
                    branch-next cube write! 10
        |reflect $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reflect (a base)
              let
                  base0 $ v-normalize base
                  a-l $ v-dot a base0
                  a-perp $ v-scale base0 a-l
                  a-drop $ &v- a a-perp
                &v- a-perp a-drop
        |render-cube $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-cube (cube write!)
              let
                  w 1
                  l 2
                tag-match cube $ 
                  :cube p0 p1 p2 p3 p4 p5 p6 p7
                  write! $ [] (:: :vertex p0 w l) (:: :vertex p1 w l) (:: :vertex p2 w l) (:: :vertex p3 w l) (:: :vertex p0 w l) (:: :vertex p4 w l) (:: :vertex p5 w l) (:: :vertex p6 w l) (:: :vertex p7 w l) (:: :vertex p4 w l) break-mark (:: :vertex p1 w l) (:: :vertex p5 w l) break-mark (:: :vertex p2 w l) (:: :vertex p6 w l) break-mark (:: :vertex p3 w l) (:: :vertex p7 w l) break-mark
        |rotate-d1 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn rotate-d1 (cube ratio scale)
              tag-match cube $ 
                :cube p0 p1 p2 p3 p4 p5 p6 p7
                let
                    p00 $ &v- p0 p0
                    p10 $ &v- p1 p0
                    p20 $ &v- p2 p0
                    p30 $ &v- p3 p0
                    p40 $ &v- p4 p0
                    p50 $ &v- p5 p0
                    p60 $ &v- p6 p0
                    p70 $ &v- p7 p0
                    v1 p10
                    v2 $ &v+ p10 (v-scale p40 ratio)
                    p00' $ reflect (reflect p00 v1) v2
                    p10' $ reflect (reflect p10 v1) v2
                    p20' $ reflect (reflect p20 v1) v2
                    p30' $ reflect (reflect p30 v1) v2
                    p40' $ reflect (reflect p40 v1) v2
                    p50' $ reflect (reflect p50 v1) v2
                    p60' $ reflect (reflect p60 v1) v2
                    p70' $ reflect (reflect p70 v1) v2
                  :: :cube
                    v+ p0 p40 $ v-scale p00' scale
                    v+ p0 p40 $ v-scale p10' scale
                    v+ p0 p40 $ v-scale p20' scale
                    v+ p0 p40 $ v-scale p30' scale
                    v+ p0 p40 $ v-scale p40' scale
                    v+ p0 p40 $ v-scale p50' scale
                    v+ p0 p40 $ v-scale p60' scale
                    v+ p0 p40 $ v-scale p70' scale
        |rotate-d2 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn rotate-d2 (cube ratio scale)
              tag-match cube $ 
                :cube p0 p1 p2 p3 p4 p5 p6 p7
                let
                    p01 $ &v- p0 p1
                    p11 $ &v- p1 p1
                    p21 $ &v- p2 p1
                    p31 $ &v- p3 p1
                    p41 $ &v- p4 p1
                    p51 $ &v- p5 p1
                    p61 $ &v- p6 p1
                    p71 $ &v- p7 p1
                    v1 p21
                    v2 $ &v+ p21 (v-scale p51 ratio)
                    p01' $ reflect (reflect p01 v1) v2
                    p11' $ reflect (reflect p11 v1) v2
                    p21' $ reflect (reflect p21 v1) v2
                    p31' $ reflect (reflect p31 v1) v2
                    p41' $ reflect (reflect p41 v1) v2
                    p51' $ reflect (reflect p51 v1) v2
                    p61' $ reflect (reflect p61 v1) v2
                    p71' $ reflect (reflect p71 v1) v2
                  :: :cube
                    v+ p1 p51 $ v-scale p01' scale
                    v+ p1 p51 $ v-scale p11' scale
                    v+ p1 p51 $ v-scale p21' scale
                    v+ p1 p51 $ v-scale p31' scale
                    v+ p1 p51 $ v-scale p41' scale
                    v+ p1 p51 $ v-scale p51' scale
                    v+ p1 p51 $ v-scale p61' scale
                    v+ p1 p51 $ v-scale p71' scale
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.cubes-tree $ :require
            lagopus.alias :refer $ group object
            "\"../shaders/split-triangles.wgsl" :default wgsl-split-triangles
            lagopus.comp.curves :refer $ comp-curves comp-polylines comp-polylines-marked break-mark
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v-dot v3
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
    |app.comp.fireworks $ %{} :FileEntry
      :defs $ {}
        |comp-fireworks $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-fireworks () $ group nil
              comp-polylines-marked $ {} (:shader wgsl-fireworks)
                :writer $ fn (write!)
                  -> (range 2000)
                    each $ fn (_)
                      let
                          base $ v3 (rand-shift 0 20000) (rand-shift 0 2080) (rand-shift 0 20000)
                          color $ rand 10
                          w $ + 2 (rand 6)
                        ->
                          fibo-grid-range $ rand-int 40 400
                          each $ fn (v)
                            let
                                a1 $ rand 4
                                a2 $ rand 4
                              ->
                                range $ rand-int 12
                                map $ fn (n)
                                  * 1 $ + n 3 a2
                                each $ fn (n)
                                  let
                                      t $ * 2.2 n
                                      p $ v+ base
                                        v-scale v $ * 6 t a1
                                        v-scale (v3 0 -0.4 0) (* t t 0.5)
                                    write! $ : vertex (v-scale p 1) w color
                            write! break-mark
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.fireworks $ :require
            lagopus.alias :refer $ group object
            "\"../shaders/fireworks.wgsl" :default wgsl-fireworks
            lagopus.comp.curves :refer $ comp-curves comp-polylines comp-polylines-marked break-mark
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
            "\"@calcit/std" :refer $ rand rand-int rand-shift rand-between
    |app.comp.flower-ball $ %{} :FileEntry
      :defs $ {}
        |build-umbrella $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn build-umbrella (p0 v0 relative parts elevation decay step write!)
              if (&> step 0)
                let
                    l0 $ v-length v0
                    forward $ v-scale v0 (&/ 1 l0)
                    rightward $ v-normalize (v-cross v0 relative)
                    upward $ v-cross rightward forward
                    line0 $ v-scale
                      &v+
                        v-scale forward $ cos elevation
                        v-scale upward $ sin elevation
                      &* l0 decay
                    p-next $ &v+ p0 v0
                    theta0 $ &/ (&* 2 &PI) parts
                    lines $ -> (range parts)
                      map $ fn (idx)
                        rotate-3d v-zero forward (&* theta0 idx) line0 
                    width 0.2
                  write! $ [] (: vertex p0 width)
                    : vertex (&v+ p0 v0) width
                    , break-mark
                  -> lines $ map
                    fn (line)
                      build-umbrella p-next line v0 parts elevation decay (dec step) write!
        |comp-flower-ball $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-flower-ball () $ let
                origin $ v3 0 0 0
                parts 8
                elevation $ * &PI 0.5
                decay 0.36
                iteration 7
                unit 800
              ; js/console.log $ .flatten ps
              comp-polylines $ {} (:shader wgsl-flower-ball)
                :writer $ fn (write!)
                  ->
                    []
                      [] (v3 0 unit 0) (v3 0 0 1)
                      []
                        v3 0 (negate unit) 0
                        v3 0 0 1
                      [] (v3 unit 0 0) (v3 0 1 0)
                      []
                        v3 (negate unit) 0 0
                        v3 0 1 0
                      [] (v3 0 0 unit) (v3 0 1 0)
                      []
                        v3 0 0 $ negate unit
                        v3 0 1 0
                    take 1
                    map $ fn (pair)
                      build-umbrella origin (nth pair 0) (nth pair 1) parts elevation decay iteration write!
        |v-zero $ %{} :CodeEntry (:doc |)
          :code $ quote
            def v-zero $ v3 0 0 0
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.flower-ball $ :require
            lagopus.alias :refer $ group object
            "\"../shaders/flower-ball.wgsl" :default wgsl-flower-ball
            lagopus.comp.curves :refer $ comp-curves comp-polylines break-mark
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
    |app.comp.globe $ %{} :FileEntry
      :defs $ {}
        |comp-globe $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-globe () $ comp-sphere
              {} (; :topology :line-strip) (:shader wgsl-globe) (:iteration 7) (:radius 1800)
                :color $ [] 0.6 0.9 0.7
        |wgsl-globe $ %{} :CodeEntry (:doc |)
          :code $ quote
            def wgsl-globe $ inline-shader "\"globe"
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
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
    |app.comp.helicoid $ %{} :FileEntry
      :defs $ {}
        |build-01-grid $ %{} :CodeEntry (:doc |)
          :code $ quote
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
        |comp-helicoid $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-helicoid () $ comp-plate
              {} (; :topology :line-strip)
                :shader $ inline-shader "\"helicoid"
                :iteration 120
                :radius 160
                :color $ [] 0.56 0.8 0.84
                ; :x-direction $ [] 1 0 0
                ; :y-direction $ [] 0 1 0
                :chromatism 0.14
        |comp-hyperbolic-helicoid $ %{} :CodeEntry (:doc |)
          :code $ quote
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
                    :get-params $ fn () (js-array tau 0 0 0)
                  comp-slider
                    {}
                      :position $ [] 0 240 0
                      :size 12
                      :color $ [] 0.7 0.6 0.5 1.0
                    fn (delta d!)
                      d! $ : state cursor
                        assoc state :tau $ + tau
                          * 0.01 $ nth delta 1
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.helicoid $ :require
            lagopus.alias :refer $ group object
            "\"../shaders/hyperbolic-helicoid.wgsl" :default hyperbolic-helicoid-wgsl
            lagopus.comp.button :refer $ comp-button comp-slider
            lagopus.comp.curves :refer $ comp-curves
            lagopus.comp.spots :refer $ comp-spots
            memof.once :refer $ memof1-call
            quaternion.core :refer $ c+ v+
            "\"@calcit/std" :refer $ rand rand-shift
            lagopus.comp.plate :refer $ comp-plate
            app.config :refer $ inline-shader
    |app.comp.hopf-fiber $ %{} :FileEntry
      :defs $ {}
        |calc-k $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn calc-k (p0 p1)
              let
                  x0 $ nth p0 1
                  z0 $ nth p0 3
                  x1 $ nth p1 1
                  y1 $ nth p1 2
                  z1 $ nth p1 3
                * 0.5 $ &/
                  - (v-length2 p1) (v-length2 p0)
                  + (* x0 x1) (* z0 z1)
                    negate $ v-length2 p0
        |comp-hopf-fiber $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-hopf-fiber (states show?)
              let
                  cursor $ :cursor states
                  state $ either (:data states)
                    {} $ :base (v3 90 8 4)
                  base $ :base state
                  rh $ v-normalize
                    v-cross base $ v3 0 1 0
                  rv $ v-normalize (v-cross rh base)
                group nil
                  if show? $ comp-axis
                  if show? $ comp-drag-point
                    {}
                      :position $ :base state
                      :color $ [] 1.6 0.6 1.0 1.0
                    fn (move d!)
                      d! $ : :state cursor (assoc state :base move)
                  comp-polylines-marked $ {} (:shader wgsl-hopf)
                    :writer $ fn (write!)
                      -> (range 16)
                        map $ fn (ring-idx)
                          let
                              circle-size 60
                            ->
                              range $ inc circle-size
                              map $ fn (idx)
                                let
                                    alpha $ * 0.2 (+ 0.2 ring-idx)
                                    start $ v-scale base (cos alpha)
                                    l $ * (v-length base) (sin alpha)
                                    rh1 $ v-scale rh l
                                    rv1 $ v-scale rv l
                                    theta $ * 2 0.333 idx (/ &PI circle-size)
                                    p $ v+ start
                                      v-scale rh1 $ cos theta
                                      v-scale rv1 $ sin theta
                                  if show? $ write! (: vertex p 1 1)
                                  , p
                              map-indexed $ fn (i control)
                                let
                                    circle $ decide-circle control
                                    n 80
                                  ->
                                    range $ inc n
                                    map $ fn (idx)
                                      let
                                          ratio $ * 2 idx (/ &PI n)
                                        tag-match circle $ 
                                          :circle center rh rv
                                          do nil $ write!
                                            : vertex
                                              v-scale
                                                v+ center
                                                  v-scale rh $ cos ratio
                                                  v-scale rv $ sin ratio
                                                , 200
                                              * 0.8 $ pow ring-idx 0.4
                                              , ring-idx
                                  write! break-mark
        |decide-circle $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn decide-circle (v0)
              let
                  p1 $ v-normalize v0
                  c1 $ complex (nth p1 1) (nth p1 3)
                  theta $ js/Math.atan2 (nth p1 3) (nth p1 1)
                  theta0 $ &- theta (* 0.5 &PI)
                  p0 $ v3 (nth p1 3) 0
                    negate $ nth p1 1
                  k $ calc-k p0 p1
                  center $ v-scale p0 k
                  rh $ v- p0 center
                  v1 $ v-cross rh (v- p1 center)
                  rv $ v-scale
                    v-normalize $ v-cross v1 rh
                    v-length rh
                : circle center rh rv
        |v-length2 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn v-length2 (a)
              tag-match a $ 
                :v3 x y z
                -> (&* x x)
                  &+ $ &* y y
                  &+ $ &* z z
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.hopf-fiber $ :require
            lagopus.alias :refer $ group object
            "\"../shaders/hopf.wgsl" :default wgsl-hopf
            lagopus.comp.curves :refer $ comp-curves comp-polylines comp-polylines-marked break-mark comp-axis
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ c+ v+ &v+ v-scale v-length &v- v- v-normalize v-cross v-normalize v3
            quaternion.complex :refer $ complex
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
            lagopus.comp.button :refer $ comp-drag-point
    |app.comp.mums $ %{} :FileEntry
      :defs $ {}
        |comp-mums $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-mums () $ let
                points $ fibo-grid-range 400
              comp-curves $ {} (:shader wgsl-mums)
                :curves $ -> points
                  map $ fn (p)
                    let
                        v $ v-scale p
                          * 2
                            pow
                              v-length $ assoc p 1 0
                              , 3
                            + 0.3 $ js/Math.random
                        path $ roll-curve v
                          v-normalize $ v-cross (v3 0 1 0) v
                          / 0.03 $ pow (v-length v) 2
                      ; js/console.log path
                      -> path $ map
                        fn (p2)
                          {} (:position p2) (:width 2)
        |roll-curve $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn roll-curve (v0 axis0 delta)
              let
                  steps 80
                  dt 2
                  p0 $ v3 0 0 0
                  ad $ v3 (js/Math.random) (js/Math.random) (js/Math.random)
                apply-args
                    []
                    , p0 v0 axis0 0
                  fn (acc position v axis s)
                    if (&>= s steps) (conj acc position)
                      let
                          v-next $ rotate-3d (v3 0 0 0) axis
                            -
                              pow (&* s delta) 7
                              , 0.008
                            , v
                          axis-next $ rotate-3d (v3 0 0 0) ad
                            pow (&* s 0.011) 8
                            , axis
                          next $ &v+ position (v-scale v dt)
                        recur (conj acc position) next v-next axis-next (inc s) 
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.mums $ :require
            lagopus.alias :refer $ group object
            "\"../shaders/mums.wgsl" :default wgsl-mums
            lagopus.comp.curves :refer $ comp-curves
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
    |app.comp.nav $ %{} :FileEntry
      :defs $ {}
        |comp-nav $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-nav (store)
              let
                  tab $ :tab store
                  show-tabs? $ and (not hide-tabs?) (:show-tabs? store)
                div
                  {} $ :class-name style-nav
                  if show-tabs? $ list-> ({})
                    -> tabs $ map
                      fn (pair)
                        let
                            t $ nth pair 0
                            name $ nth pair 1
                          [] t $ div
                            {}
                              :class-name $ str-spaced style-tab css/font-fancy!
                              :on-click $ fn (e d!)
                                d! $ :: :tab t (nth pair 2)
                              :style $ if (= tab t)
                                {} $ :color :white
                            <> name
        |style-nav $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-nav $ {}
              "\"&" $ {} (:position :absolute) (:top 12)
        |style-tab $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-tab $ {}
              "\"&" $ {} (:line-height "\"1.4") (:margin-top 2) (:padding "\"0 8px") (:width :fit-content)
                :color $ hsl 0 0 100 0.5
                :cursor :pointer
                :transition-duration "\"200ms"
                :border-radius "\"4px"
                :background-color $ hsl 0 0 0 0.2
              "\"&:hover" $ {}
                :background-color $ hsl 0 0 0 0.5
                :color :white
        |tabs $ %{} :CodeEntry (:doc |)
          :code $ quote
            def tabs $ [] (:: :cube |Cube :light) (:: :helicoid |Helicoid :dark) (:: :hyperbolic-helicoid |Hyperbolic-helicoid :light) (:: :globe |Globe :light) (:: :fur |Fur :light) (:: :petal-wireframe |Petal-wireframe :light) (:: :mums |Mums :light) (:: :flower-ball |Ball :light) (:: :blow |Blow :light) (:: :triangles |Triangles :light) (:: :segments |Segments :light) (:: :quaternion-fold |Quaternion-fold :dark) (:: :hopf |Hopf :dark) (:: :fireworks |Fireworks :dark) (:: :blinks |Blinks :dark) (:: :split-triangles "|Split Triangles" :light) (:: :cubes-tree "|Cubes tree" :light) (:: :prime-walk "|Prime Walk" :dark) (:: :prime-pyramid "|Prime pyramid" :dark) (:: :tree-1 "|Tree 1" :dark) (:: :tree-2 "|Tree 2" :dark) (:: :tree-3 "|Tree 3" :dark) (:: :sedimentary "\"Sedimentary" :dark) (:: :concentric "\"Concenytic" :dark)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.nav $ :require
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input list->
            respo.comp.space :refer $ =<
            respo.css :refer $ defstyle
            respo-ui.css :as css
            respo.util.format :refer $ hsl
            app.config :refer $ hide-tabs?
    |app.comp.patels $ %{} :FileEntry
      :defs $ {}
        |build-quadratic-curve $ %{} :CodeEntry (:doc |)
          :code $ quote
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
        |comp-petal-wireframe $ %{} :CodeEntry (:doc |)
          :code $ quote
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
                          , 16 (v3 0 -0.0016 0)
                      map points $ fn (p)
                        {} (:position p) (:width 1.)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.patels $ :require
            lagopus.alias :refer $ group object
            "\"../shaders/petal-wireframe.wgsl" :default wgsl-petal-wireframe
            lagopus.comp.curves :refer $ comp-curves
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
    |app.comp.prime-walk $ %{} :FileEntry
      :defs $ {}
        |comp-prime-pyramid $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-prime-pyramid () $ comp-polylines-marked
              {} (:shader wgsl-prime-walk)
                :writer $ fn (write!)
                  prime-pyramid (v3 0 0 0) (do primes) write! 8 0 0
                :get-params $ fn ()
                  js-array
                    wo-log $ * 0.8
                      - (js/Date.now) start-time 8000
                    , 0 0 0
        |comp-prime-walk $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-prime-walk () $ comp-polylines-marked
              {} (:shader wgsl-prime-walk)
                :writer $ fn (write!)
                  prime-walk (v3 0 0 0) primes write! 8 0 0
                :get-params $ fn ()
                  js-array
                    wo-log $ * 0.4
                      - (js/Date.now) start-time 8000
                    , 0 0 0
        |cube-middle-moves $ %{} :CodeEntry (:doc |)
          :code $ quote
            def cube-middle-moves $ [] (v3 1 0 0) (v3 0 1 0) (v3 0 0 -1) (v3 1 0 0) (v3 0 -1 0) (v3 0 0 -1) (v3 -1 0 0) (v3 0 -1 0) (v3 0 0 1) (v3 -1 0 0) (v3 0 1 0) (v3 0 0 1)
        |load-primes $ %{} :CodeEntry (:doc |)
          :code $ quote
            defmacro load-primes () $ &data-to-code
              parse-cirru-edn $ read-file "\"./primes.cirru"
        |moves $ %{} :CodeEntry (:doc |)
          :code $ quote
            def moves $ [] (v3 1 0 0) (v3 0 0 -1) (v3 0 1 0) (v3 -1 0 0) (v3 0 0 1) (v3 0 -1 0)
        |oct-moves $ %{} :CodeEntry (:doc |)
          :code $ quote
            def oct-moves $ [] (v3 1 0 0) (v3 -1 0 0) (v3 -1 0 0) (v3 1 0 0) (v3 0 1 0) (v3 0 -1 0) (v3 0 -1 0) (v3 0 1 0) (v3 0 0 1) (v3 0 0 -1) (v3 0 0 -1) (v3 0 0 1)
        |octahedron-moves $ %{} :CodeEntry (:doc |)
          :code $ quote
            def octahedron-moves $ [] (v3 1 0 1) (v3 0 1 -1) (v3 1 -1 0) (v3 -1 0 -1) (v3 0 -1 1) (v3 -1 1 0)
        |prime-pyramid $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn prime-pyramid (base primes write! width step prev)
              tag-match (destruct-list primes)
                  :some p0 ps
                  let
                      m octahedron-moves
                      move-direction $ nth m
                        &number:rem step $ count m
                      len $ - p0 prev
                      move $ v-scale move-direction (* len 10)
                      next $ &v+ base move
                    write! $ :: :vertex base width prev
                    recur next ps write! width (inc step) p0
                (:none) :ok
        |prime-walk $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn prime-walk (base primes write! width step prev)
              tag-match (destruct-list primes)
                  :some p0 ps
                  let
                      move-direction $ nth moves (&number:rem step 6)
                      len $ - p0 prev
                      move $ v-scale move-direction (* len 10)
                      next $ &v+ base move
                    write! $ :: :vertex base width prev
                    recur next ps write! width (inc step) p0
                (:none) :ok
        |primes $ %{} :CodeEntry (:doc |)
          :code $ quote
            def primes $ load-primes
        |pyramid-moves $ %{} :CodeEntry (:doc |)
          :code $ quote
            def pyramid-moves $ let
                p1 $ v3 -1 0
                  / -1 $ sqrt 2
                p2 $ v3 1 0
                  / -1 $ sqrt 2
                p3 $ v3 0 -1
                  / 1 $ sqrt 2
                p4 $ v3 0 1
                  / 1 $ sqrt 2
              [] (&v- p2 p1) (&v- p3 p2) (&v- p4 p3) (&v- p1 p4)
        |start-time $ %{} :CodeEntry (:doc |)
          :code $ quote
            def start-time $ js/Date.now
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.prime-walk $ :require
            lagopus.alias :refer $ group object
            "\"../shaders/prime-walk.wgsl" :default wgsl-prime-walk
            lagopus.comp.curves :refer $ comp-curves comp-polylines break-mark comp-polylines-marked
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
    |app.comp.quaterion-fold $ %{} :FileEntry
      :defs $ {}
        |comp-quaternion-fold $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-quaternion-fold () $ let ()
              with-cpu-time $ object-writer
                {} (:topology :line-strip) (:shader wgsl-quaternion-fold)
                  :attrs-list $ [] (: float32x3 :position)
                  :writer $ fn (write!)
                    ; fold-line4 19 (quaternion 0 0 0 0) (quaternion 0 100 0 0) (quaternion 0 20 0 22) (quaternion 16 20 0 23) (quaternion 16 20 0 27) (quaternion 0 20 0 28)
                      q-inverse $ quaternion 0 0 0 50
                      , 0.0027 write!
                    ; fold-line4 12 (quaternion 0 0 0 0) (quaternion 200 0 0 0) (quaternion 0 20 0 25) (quaternion 5 20 10 25) (quaternion 5 20 10 15) (quaternion 0 20 0 15)
                      q-inverse $ quaternion 0 0 0 50
                      , 0.1 write!
                    ; fold-line3 12 (quaternion 0 0 0 0) (quaternion 100 0 0 0) (quaternion 22.5 0 0 25) (quaternion 22.5 12.5 12.5 25) (quaternion 22.5 0 0 25)
                      q-inverse $ quaternion 0 0 0 50
                      , 0.008 write!
                    fold-line4 8 (quaternion 0 0 0 0) (quaternion 200 0 0 0) (quaternion 0 0 0 25) (quaternion 10 10 10 25) (quaternion 10 10 -10 25) (quaternion 0 0 0 25)
                      q-inverse $ quaternion 0 0 0 50
                      , 0.1 write!
        |fold-line3 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn fold-line3 (level base v a b c full' minimal-seg write!)
              let
                  v' $ &q* v full'
                  branch-a $ &q* v' a
                  branch-b $ &q* v' b
                  branch-c $ &q* v' c
                if
                  or (<= level 0)
                    &< (q-length2 v) minimal-seg
                  write! $ []
                    : vertex $ take3 (&q+ base branch-a) 20
                    : vertex $ take3 (&q+ base branch-b) 20
                    : vertex $ take3 (&q+ base branch-c) 20
                    : vertex $ take3 (&q+ base v) 20
                  do
                    fold-line3 (dec level) base branch-a a b c full' minimal-seg write!
                    fold-line3 (dec level) (&q+ base branch-a) (&q- branch-b branch-a) a b c full' minimal-seg write!
                    fold-line3 (dec level) (&q+ base branch-b) (&q- branch-c branch-b) a b c full' minimal-seg write!
                    fold-line3 (dec level) (&q+ base branch-c) (&q- v branch-c) a b c full' minimal-seg write!
        |fold-line4 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn fold-line4 (level base v a b c d full' minimal-seg write!)
              let
                  v' $ &q* v full'
                  branch-a $ &q* v' a
                  branch-b $ &q* v' b
                  branch-c $ &q* v' c
                  branch-d $ &q* v' d
                  s 10
                  dec-level $ &- level 1
                if
                  or (&<= level 0)
                    &< (q-length2 v) minimal-seg
                  write! $ []
                    : vertex $ take3 (&q+ base branch-b) 20
                    : vertex $ take3 (&q+ base branch-b) 20
                    : vertex $ take3 (&q+ base branch-c) 20
                    : vertex $ take3 (&q+ base branch-d) 20
                    : vertex $ take3 (&q+ base v) 20
                  do (fold-line4 dec-level base branch-a a b c d full' minimal-seg write!)
                    fold-line4 dec-level (&q+ base branch-a) (&q- branch-b branch-a) a b c d full' minimal-seg write!
                    fold-line4 dec-level (&q+ base branch-b) (&q- branch-c branch-b) a b c d full' minimal-seg write!
                    fold-line4 dec-level (&q+ base branch-c) (&q- branch-d branch-c) a b c d full' minimal-seg write!
                    fold-line4 dec-level (&q+ base branch-d) (&q- v branch-d) a b c d full' minimal-seg write!
        |take3 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn take3 (v s)
              tag-match v $ 
                :quaternion w x y z
                [] (&* s x) (&* s y) (&* s z)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.quaterion-fold $ :require
            lagopus.alias :refer $ group object object-writer
            "\"../shaders/petal-wireframe.wgsl" :default wgsl-petal-wireframe
            lagopus.comp.curves :refer $ comp-polylines break-mark
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
            quaternion.core :refer $ &q* &q+ &q- q-length2 q-inverse quaternion
            "\"../shaders/quaternion-fold.wgsl" :default wgsl-quaternion-fold
    |app.comp.segments-fractal $ %{} :FileEntry
      :defs $ {}
        |comp-segments-fractal $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-segments-fractal () $ let
                p1 $ v3 0.46 0.01 0
                p2 $ v3 0.48 0.4 0.1
                p3 $ v3 0.5 0.0 0
                p4 $ v3 0.52 0.4 0.1
                p5 $ v3 0.54 0.01 0
                level 6
                target $ v3 1000 0 0
              comp-polylines $ {} (; :shader wgsl-flower-ball)
                :writer $ fn (write!)
                  write! $ []
                    : vertex (v3 0 0 0) 4
                    : vertex target 4
                    , break-mark
                  fold-fractal (v3 0 0 0) target (v3 0 0 1) p1 p2 p3 p4 p5 level write!
        |fold-fractal $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn fold-fractal (base target right p1 p2 p3 p4 p5 level write!)
              let
                  w $ / 0.5 (pow level 1.6)
                  next $ &v- target base
                  forward $ v-normalize next
                  upward $ v-cross right forward
                  l $ v-length next
                  point1 $ &v+ base
                    v-scale
                      v+
                        v-scale forward $ nth p1 1
                        v-scale upward $ nth p1 2
                        v-scale right $ nth p1 3
                      , l
                  point2 $ &v+ base
                    v-scale
                      v+
                        v-scale forward $ nth p2 1
                        v-scale upward $ nth p2 2
                        v-scale right $ nth p2 3
                      , l
                  point3 $ &v+ base
                    v-scale
                      v+
                        v-scale forward $ nth p3 1
                        v-scale upward $ nth p3 2
                        v-scale right $ nth p3 3
                      , l
                  point4 $ &v+ base
                    v-scale
                      v+
                        v-scale forward $ nth p4 1
                        v-scale upward $ nth p4 2
                        v-scale right $ nth p4 3
                      , l
                  point5 $ &v+ base
                    v-scale
                      v+
                        v-scale forward $ nth p5 1
                        v-scale upward $ nth p5 2
                        v-scale right $ nth p5 3
                      , l
                  m $ middle base target
                if (&> level 1)
                  do nil
                    ; write! $ [] (: vertex base w) (: vertex point1 w) (: vertex point2 w) (: vertex point3 w) (: vertex point4 w) (: vertex target w) break-mark
                    let
                        right1 $ v-normalize
                          safe-right
                            v-cross (&v- point1 base)
                              &v- (middle base point1) m
                            , right
                      fold-fractal base point1 right1 p1 p2 p3 p4 p5 (dec level) write!
                    let
                        right2 $ v-normalize
                          safe-right
                            v-cross (&v- point2 point1)
                              &v- (middle point1 point2) m
                            , right
                      fold-fractal point1 point2 right2 p1 p2 p3 p4 p5 (dec level) write!
                    let
                        right3 $ v-normalize
                          safe-right
                            v-cross (&v- point3 point2)
                              &v- (middle point2 point3) m
                            , right
                      fold-fractal point2 point3 right3 p1 p2 p3 p4 p5 (dec level) write!
                    let
                        right4 $ v-normalize
                          safe-right
                            v-cross (&v- point4 point3)
                              &v- (middle point3 point4) m
                            , right
                      fold-fractal point3 point4 right4 p1 p2 p3 p4 p5 (dec level) write!
                    let
                        right5 $ v-normalize
                          safe-right
                            v-cross (&v- point4 point4)
                              &v- (middle point4 point5) m
                            , right
                      fold-fractal point4 target right5 p1 p2 p3 p4 p5 (dec level) write!
                    let
                        right6 $ v-normalize
                          safe-right
                            v-cross (&v- target point5)
                              &v- (middle point5 target) m
                            , right
                      fold-fractal point4 target right6 p1 p2 p3 p4 p5 (dec level) write!
                  write! $ [] (: vertex base w) (: vertex point1 w) (: vertex point2 w) (: vertex point3 w) (: vertex point4 w) (: vertex point5 w) (: vertex target w) break-mark
        |middle $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn middle (base target)
              v-scale (&v+ base target) 0.5
        |safe-right $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn safe-right (v right)
              if
                &= 0 $ v-length v
                , right v
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.segments-fractal $ :require
            lagopus.alias :refer $ group object
            "\"../shaders/petal-wireframe.wgsl" :default wgsl-petal-wireframe
            lagopus.comp.curves :refer $ comp-polylines break-mark
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
    |app.comp.split-triangles $ %{} :FileEntry
      :defs $ {}
        |comp-split-triangles $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-split-triangles () $ comp-polylines-marked
              {} (:shader wgsl-split-triangles)
                :writer $ fn (write!)
                  let
                      s 1
                    split-triangles
                      v-scale (v3 1000 0 0) s
                      v-scale (v3 -500 0 -800) s
                      v-scale (v3 -500 0 800) s
                      v-scale (v3 0 1200 0) s
                      , 0 true write!
        |split-triangles $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn split-triangles (p1 p2 p3 p4 level root? write!)
              let
                  w 4
                  p5 $ v-scale (v+ p1 p2 p3 p4) 0.25
                  max-level 5
                if (>= level max-level)
                  write! $ [] (:: :vertex p1 w level) (:: :vertex p5 w level) (:: :vertex p2 w level) break-mark (:: :vertex p3 w level) (:: :vertex p5 w level) (:: :vertex p4 w level) break-mark
                when (< level max-level)
                  split-triangles p1 p2 p3 p5 (inc level) false write!
                  split-triangles p1 p2 p4 p5 (inc level) false write!
                  split-triangles p1 p3 p4 p5 (inc level) false write!
                  split-triangles p2 p3 p4 p5 (inc level) false write!
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.split-triangles $ :require
            lagopus.alias :refer $ group object
            "\"../shaders/split-triangles.wgsl" :default wgsl-split-triangles
            lagopus.comp.curves :refer $ comp-curves comp-polylines comp-polylines-marked break-mark
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
    |app.comp.triangles $ %{} :FileEntry
      :defs $ {}
        |build-sierpinski-triangles $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn build-sierpinski-triangles (p1 p2 p3 p4 level w dup? write!)
              write! $ if dup?
                [] (: vertex p2 w) (: vertex p3 w) (: vertex p4 w) (: vertex p2 w) break-mark
                [] (: vertex p1 w) (: vertex p2 w) (: vertex p3 w) (: vertex p4 w) (: vertex p2 w) break-mark (: vertex p4 w) (: vertex p1 w) (: vertex p3 w) break-mark
              if (&> level 0)
                let
                    p1-2 $ v-scale (&v+ p1 p2) 0.5
                    p1-3 $ v-scale (&v+ p1 p3) 0.5
                    p1-4 $ v-scale (&v+ p1 p4) 0.5
                    p2-3 $ v-scale (&v+ p2 p3) 0.5
                    p2-4 $ v-scale (&v+ p2 p4) 0.5
                    p3-4 $ v-scale (&v+ p3 p4) 0.5
                    p-all $ &v+
                      &v+ p1 $ &v+ p2 p3
                      , p4
                    p-04 $ v-scale (&v- p-all p4) third
                    p-03 $ v-scale (&v- p-all p3) third
                    p-02 $ v-scale (&v- p-all p2) third
                    p-01 $ v-scale (&v- p-all p1) third
                  if
                    > (js/Math.random) 0.1
                    build-sierpinski-triangles p1 p1-2 p1-3 p1-4 (dec level) w true write!
                  build-sierpinski-triangles p2 p1-2 p2-3 p2-4 (dec level) w true write!
                  build-sierpinski-triangles p3 p1-3 p2-3 p3-4 (dec level) w true write!
                  build-sierpinski-triangles p4 p1-4 p2-4 p3-4 (dec level) w true write!
                  ; build-sierpinski-triangles p-01 p-02 p-03 p-04 (dec level) w false write!
        |comp-triangles $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-triangles () $ comp-polylines
              {} (:shader wgsl-triangles)
                :writer $ fn (write!)
                  build-sierpinski-triangles (v3 1000 0 0) (v3 -500 0 -800) (v3 -500 0 800) (v3 0 1200 0) 10 0.1 false write!
        |third $ %{} :CodeEntry (:doc |)
          :code $ quote
            def third $ &/ 1 3
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.triangles $ :require
            lagopus.alias :refer $ group object
            "\"../shaders/triangles.wgsl" :default wgsl-triangles
            lagopus.comp.curves :refer $ comp-curves comp-polylines break-mark
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
    |app.config $ %{} :FileEntry
      :defs $ {}
        |bloom? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def bloom? $ = "\"true" (get-env "\"bloom" "\"false")
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def dev? $ &= "\"dev" (get-env "\"mode" "\"release")
        |hide-tabs? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def hide-tabs? $ = "\"true" (get-env "\"hide-tabs" "\"false")
        |inline-shader $ %{} :CodeEntry (:doc |)
          :code $ quote
            defmacro inline-shader (path)
              read-file $ str "\"shaders/" path "\".wgsl"
        |mobile-info $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mobile-info $ ismobile js/window.navigator
        |remote-control? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def remote-control? $ get-env "\"remote-control" nil
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.config $ :require ("\"ismobilejs" :default ismobile)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*store $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *store $ {}
              :states $ {}
              :tab $ turn-tag (get-env "\"tab" "\"concentric")
              :theme :dark
              :show-tabs? true
              :show-controls? true
        |canvas $ %{} :CodeEntry (:doc |)
          :code $ quote
            def canvas $ js/document.querySelector "\"canvas"
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              if dev? $ js/console.log op
              let
                  store @*store
                  next-store $ updater store op
                if (not= next-store store) (reset! *store next-store)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! () (hint-fn async)
              if
                and bloom? $ not (.-any mobile-info)
                enableBloom
              if dev? $ load-console-formatter!
              js-await $ initializeContext
              initializeCanvasTextures
              reset-clear-color! $ either bg-color
                {} (:r 0.04) (:g 0) (:b 0.1) (:a 0.98)
              render-app!
              ; renderControl
              startControlLoop 10 onControlEvent
              registerShaderResult handle-compilation
              set! js/window.onresize $ fn (e) (resetCanvasSize canvas) (initializeCanvasTextures) (paintLagopusTree)
              resetCanvasSize canvas
              add-watch *store :change $ fn (next store) (render-app!) (paintLagopusTree)
              setupMouseEvents canvas
              if remote-control? $ setupRemoteControl
                fn (action)
                  case-default (.-button action) (js/console.warn "\"Unknown Action" action)
                    "\"toggle" $ dispatch! (: toggle)
                    "\"switch" $ dispatch! (: switch)
              loadGamepadControl
              paintLagopusTree
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (reset-memof1-caches!) (render-app!) (clear-cache!) (remove-watch *store :change)
                add-watch *store :change $ fn (next store) (render-app!)
                println "\"Reloaded."
                hud! "\"ok~" "\"OK"
              hud! "\"error" build-errors
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ let
                store @*store
                tree $ memof1-call comp-container store
                nav $ memof1-call comp-nav store
              reset-clear-color! $ either bg-color
                if
                  = :dark $ :theme store
                  {} (:r 0.04) (:g 0) (:b 0.1) (:a 0.98)
                  {} (:r 0.9) (:g 0.9) (:b 0.9) (:a 0.98)
              renderLagopusTree tree dispatch!
              render! mount-target nav dispatch!
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.main $ :require
            app.comp.container :refer $ comp-container
            "\"@triadica/lagopus" :refer $ setupMouseEvents onControlEvent paintLagopusTree renderLagopusTree initializeContext resetCanvasSize initializeCanvasTextures registerShaderResult enableBloom loadGamepadControl
            "\"@triadica/touch-control" :refer $ renderControl startControlLoop
            lagopus.config :refer $ bg-color
            app.config :refer $ dev? mobile-info bloom? remote-control?
            "\"bottom-tip" :default hud!
            "\"./calcit.build-errors" :default build-errors
            memof.once :refer $ memof1-call reset-memof1-caches!
            lagopus.util :refer $ handle-compilation reset-clear-color!
            app.updater :refer $ updater
            "\"@triadica/lagopus/lib/remote-control.mjs" :refer $ setupRemoteControl
            app.comp.nav :refer $ comp-nav
            respo.core :refer $ render! clear-cache!
            lagopus.config :refer $ bg-color
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn updater (store op)
              tag-match op
                  :state c s
                  update-states store c s
                (:tab t theme)
                  -> store (assoc :tab t) (assoc :theme theme)
                (:tau t) (assoc store :tau t)
                (:toggle) (update store :show-tabs? not)
                _ $ do (js/console.warn "\"Unknown op:" op) store
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            lagopus.cursor :refer $ update-states
    |app.util $ %{} :FileEntry
      :defs $ {}
        |interoplate-line $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn interoplate-line (from to n)
              ->
                range $ inc n
                map $ fn (i)
                  let
                      a $ / i n
                      b $ - 1 a
                    v+ (v-scale from a) (v-scale to b)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.util)
