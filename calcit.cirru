
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |memof/ |quaternion/ |lagopus/ |respo.calcit/ |respo-ui.calcit/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    'app.cmop.sedimentary $ %{} 'FileEntry
      :defs $ {}
        'comp-concentric $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-concentric ()
            let
                r0 2
                t0 $ performance-now
              group ({})
                comp-polylines-marked $ {} (; :topology :line-strip) (:shader concentric-shader)
                  ; :attrs-list $ [] $ : float32x3 :position
                  :writer $ fn (write!)
                    -> 60 range $ each $ fn (hi)
                      let
                          r $ + 2 r0 $ * 4 hi
                          size $ + 40 $ * r 1
                          angle-unit $ / (* 2 &PI) size
                        -> size inc range $ each $ fn (idx)
                          let
                              angle $ * idx angle-unit
                              x $ * r $ cos angle
                              y $ * r $ sin angle
                              angle $ pow (* 0.4 hi) 0.5
                              x1 $ * (cos angle) x
                              x2 $ * (sin angle) x
                            write! $ [] $ :: :vertex (v3 x y 0) 1. hi
                        write! break-mark
                  :get-params $ fn () $ shader-params
                    * 0.01 $ - (performance-now) t0 20000
                    , 0 0 0
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
        'comp-sedimentary $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-sedimentary ()
            let
                r0 80
              group ({})
                comp-polylines-marked $ {} (; :topology :line-strip) (:shader sedimentary-shader)
                  ; :attrs-list $ [] $ : float32x3 :position
                  :writer $ fn (write!)
                    -> 4000 range $ each $ fn (hi)
                      let
                          r $ + r0 $ rand 1600
                          size 4
                          angle-unit $ / (* 2 &PI) size
                          dh $ * -4 hi
                        -> size inc range $ each $ fn (idx)
                          let
                              angle $ * idx angle-unit
                            write! $ [] $ :: :vertex
                              v3
                                * r $ cos angle
                                * r $ sin angle
                                , dh
                              , 3 hi
                        write! break-mark
                  :get-params $ fn () $ shader-params 0 0 0 0
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.cmop.sedimentary
          :require
            lagopus.alias :refer $ group object object-writer
            |../shaders/sedimentary.wgsl :default sedimentary-shader
            |../shaders/concentric.wgsl :default concentric-shader
            lagopus.comp.curves :refer $ comp-curves comp-polylines comp-polylines-marked break-mark
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
            |@calcit/std :refer $ rand rand-int rand-shift rand-between
            app.util :refer $ shader-params
            js-ffi.shared :refer $ performance-now
    'app.comp.blinks $ %{} 'FileEntry
      :defs $ {} $ 'comp-blinks
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-blinks ()
            object $ {} (:shader wgsl-blinks) (:topology :triangle-list)
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
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.blinks
          :require
            lagopus.alias :refer $ group object
            |../shaders/blinks.wgsl :default wgsl-blinks
            lagopus.comp.curves :refer $ comp-curves
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
            |@calcit/std :refer $ rand rand-shift
    'app.comp.blow $ %{} 'FileEntry
      :defs $ {} $ 'comp-blow
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-blow ()
            let
                points $ fibo-grid-range 400
                width 0.016
              comp-curves $ {} (; :topology :line-list) (:shader wgsl-blow)
                :curves $ -> points $ mapcat
                  fn (p)
                    apply-args
                        []
                        rand 100
                        , 4
                      fn (acc a step)
                        if (<= step 0) acc $ let
                            l $ + 40 $ rand 160
                            gap $ + 3 $ rand 8
                          recur
                            conj acc $ []
                              {}
                                :position $ v-scale p $ + gap a
                                :width $ * (+ gap a) width
                              {}
                                :position $ v-scale p $ + a gap l
                                :width $ * (+ a gap l) width
                            + a gap l
                            dec step
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.blow
          :require
            lagopus.alias :refer $ group object
            |../shaders/blow.wgsl :default wgsl-blow
            lagopus.comp.curves :refer $ comp-curves
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
            |@calcit/std :refer $ rand rand-shift
    'app.comp.christmas-tree $ %{} 'FileEntry
      :defs $ {}
        '&PHI $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def &PHI
            * 0.5 $ - (sqrt 5) 1
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-tree-1 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-tree-1 ()
            comp-polylines-marked $ {} (; :topology :line-strip) (:shader wgsl-tree-1)
              ; :attrs-list $ [] $ : float32x3 :position
              :writer $ fn (write!)
                let
                    r0 160
                    size 8000
                    rot $ * &PHI 0.473
                    h0 480
                  -> size range $ each $ fn (idx)
                    let
                        ratio $ / idx size
                        r $ * r0 $ - 1 ratio
                        angle $ * idx rot
                        h $ * ratio h0
                      write! $ [] break-mark
                        :: :vertex (v3 0 h 0) 2 ratio
                        :: :vertex
                          v+
                            v3
                              * r $ cos angle
                              , h $ * r $ sin angle
                            v3 (rand-shift 0 22) (rand-shift 0 22) (rand-shift 0 22)
                          , 10 ratio
              :get-params $ fn () $ wo-js-log
                let
                    v $ * 0.000001 $ now-ms
                  shader-params
                    - v $ round-js v
                    , 0 0 0
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
        'comp-tree-2 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-tree-2 ()
            let
                r0 180
                h0 540
              group ({})
                comp-polylines-marked $ {} (; :topology :line-strip) (:shader wgsl-tree-2-strip)
                  ; :attrs-list $ [] $ : float32x3 :position
                  :writer $ fn (write!)
                    let
                        size 1200
                        rot $ * &PHI 0.06
                        top-rot $ / (* &PI) 0.5
                      -> 1 range $ map $ fn (j)
                        -> size range $ each $ fn (idx)
                          let
                              ratio $ / idx size
                              r $ * r0 $ - 1 ratio
                              angle $ *
                                + (* j top-rot) (* idx rot)
                                - 1 $ pow ratio 20
                              h $ * ratio h0
                              position $ v3
                                * r $ cos angle
                                , h $ * r (sin angle)
                            when
                              = 0 $ .rem idx 16
                              write! $ [] $ :: :vertex position 2 ratio
                              let
                                  out-direction $ v3 (cos angle) 0 $ sin angle
                                  up-direction $ v3 0 1 0
                                  right-direction $ v-cross out-direction up-direction
                                  base-angle $ random-number
                                  a1 $ + base-angle
                                  a2 $ + base-angle $ / &PI 3
                                  a3 $ + base-angle $ * 2 (/ &PI 3.2)
                                write! $ []
                                  :: :vertex
                                    v+ position
                                      v-scale up-direction $ * 10 $ cos a1
                                      v-scale right-direction $ * 10 $ sin a1
                                    , 2 ratio
                                  :: :vertex
                                    v+ position
                                      v-scale up-direction $ * -10 $ cos a1
                                      v-scale right-direction $ * -10 $ sin a1
                                    , 2 ratio
                                  , break-mark
                                    :: :vertex
                                      v+ position
                                        v-scale up-direction $ * 10 $ cos a2
                                        v-scale right-direction $ * 10 $ sin a2
                                      , 2 ratio
                                    :: :vertex
                                      v+ position
                                        v-scale up-direction $ * -10 $ cos a2
                                        v-scale right-direction $ * -10 $ sin a2
                                      , 2 ratio
                                    , break-mark
                                      :: :vertex
                                        v+ position
                                          v-scale up-direction $ * 10 $ cos a3
                                          v-scale right-direction $ * 10 $ sin a3
                                        , 2 ratio
                                      :: :vertex
                                        v+ position
                                          v-scale up-direction $ * -10 $ cos a3
                                          v-scale right-direction $ * -10 $ sin a3
                                        , 2 ratio
                                      , break-mark
                              write! break-mark
                            write! $ [] $ :: :vertex position 2 ratio
                        write! break-mark
                  :get-params $ fn () $ wo-js-log
                    let
                        v $ * 0.000001 $ now-ms
                      shader-params
                        - v $ round-js v
                        , 0 0 0
                comp-polylines-marked $ {} (; :topology :line-strip) (:shader wgsl-tree-2-strip)
                  ; :attrs-list $ [] $ : float32x3 :position
                  :writer $ fn (write!)
                    let
                        size 40
                        angle-unit $ / (* 2 &PI) size
                      -> size inc range $ map $ fn (idx)
                        let
                            angle $ * idx angle-unit
                          write! $ [] $ :: :vertex
                            v3
                              * r0 $ cos angle
                              , 0 $ * r0 $ sin angle
                            , 1 1
                  :get-params $ fn () $ wo-js-log
                    let
                        v $ * 0.000001 $ now-ms
                      shader-params
                        - v $ round-js v
                        , 0 0 0
                comp-tree-1
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
        'comp-tree-3 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-tree-3 ()
            let
                r0 180
                h0 540
              group ({})
                comp-polylines-marked $ {} (; :topology :line-strip) (:shader wgsl-tree-3-strip)
                  ; :attrs-list $ [] $ : float32x3 :position
                  :writer $ fn (write!)
                    -> 28 range $ each $ fn (hi)
                      let
                          r $ - r0 $ * 6.4 hi
                          size $ floor r
                          angle-unit $ / (* 2 &PI) size
                          dh $ * 20 hi
                        -> size inc range $ each $ fn (idx)
                          let
                              angle $ * idx angle-unit
                            write! $ [] $ :: :vertex
                              v3
                                * r $ cos angle
                                , dh $ * r $ sin angle
                              , 8 hi
                        write! break-mark
                  :get-params $ fn () $ shader-params 0 0 0 0
                comp-tree-dark-area r0 h0
                ; comp-tree-1
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
        'comp-tree-dark-area $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-tree-dark-area (r0 h0)
            object $ {} (:shader wgsl-tree-2-dark) (:topology :triangle-list)
              :attrs-list $ [] $ :: :float32x3 :position
              :data $ let
                  size 10
                  angle-unit $ / (* 2 &PI) size
                -> size range $ map $ fn (idx)
                  let
                      angle $ * idx angle-unit
                      angle2 $ * (inc idx) angle-unit
                    []
                      :: :vertex $ v3 0 (- h0 4) 0
                      :: :vertex $ v3
                        * (- r0 4) (cos angle)
                        , 0 $ * (- r0 4) (sin angle)
                      :: :vertex $ v3
                        * (- r0 4) (cos angle2)
                        , 0 $ * (- r0 4) (sin angle2)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ [] 'Number 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.christmas-tree
          :require
            lagopus.alias :refer $ group object object-writer
            |../shaders/tree-1.wgsl :default wgsl-tree-1
            |../shaders/tree-2-strip.wgsl :default wgsl-tree-2-strip
            |../shaders/tree-2-dark.wgsl :default wgsl-tree-2-dark
            |../shaders/tree-3-strip.wgsl :default wgsl-tree-3-strip
            lagopus.comp.curves :refer $ comp-curves comp-polylines comp-polylines-marked break-mark
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
            |@calcit/std :refer $ rand rand-int rand-shift rand-between
            app.util :refer $ shader-params round-js random-number
            js-ffi.shared :refer $ now-ms
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-container (store)
            let
                states $ :states store
                show? $ :show-tabs? store
              ; js/console.log $ :tab store
              group nil $ match (:tab store)
                :cube $ comp-cubes
                :helicoid $ comp-helicoid
                :hyperbolic-helicoid $ comp-hyperbolic-helicoid $ cursor-state states ([] :hh)
                :globe $ comp-globe
                :fur $ comp-fur
                :petal-wireframe $ comp-petal-wireframe
                :mums $ comp-mums
                :flower-ball $ with-cpu-time $ comp-flower-ball
                :blow $ comp-blow
                :triangles $ comp-triangles
                :segments $ comp-segments-fractal
                :quaternion-fold $ comp-quaternion-fold
                :hopf $ comp-hopf-fiber
                  cursor-state states $ [] :hopf
                  , show?
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
                :snowing $ comp-snowflakes-demo
                _ $ do
                  eprintln "|Unknown tab" $ :tab store
                  group nil
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ [] 'app.state/Store
        'comp-fur $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-fur ()
            comp-curves $ {} (:shader wgsl-fur)
              :curves $ -> (range 200)
                map $ fn (idx)
                  let
                      radian $ * 0.2 idx
                      r $ * 0.8 $ sqrt idx
                      base $ v3
                        * r $ cos radian
                        , 0 $ * r (sin radian)
                    -> (range 100)
                      map $ fn (hi)
                        {}
                          :position $ v+ base $ v3 0 (* 2 hi) 0
                          :width 0.6
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            lagopus.alias :refer $ group object
            |../shaders/cube.wgsl :default cube-wgsl
            |../shaders/fur.wgsl :default wgsl-fur
            lagopus.comp.button :refer $ comp-button
            lagopus.comp.curves :refer $ comp-curves
            lagopus.comp.spots :refer $ comp-spots
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            app.comp.cube-combo :refer $ comp-cubes
            app.config :refer $ hide-tabs?
            app.comp.helicoid :refer $ comp-helicoid comp-hyperbolic-helicoid
            app.comp.globe :refer $ comp-globe
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
            app.comp.snowflakes-demo :refer $ comp-snowflakes-demo
            app.state :refer $ cursor-state
    'app.comp.cube-combo $ %{} 'FileEntry
      :defs $ {} $ 'comp-cubes
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-cubes ()
            let
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
                          :position $ &v+ base $ v3 &
                            -> offsets (update 0 negate) (update 1 negate)
                        {} (:idx idx)
                          :offsets $ v3 & offsets
                          :metrics $ [] 1 -1 1
                          :position $ &v+ base $ v3 &
                            -> offsets $ update 1 negate
                        {} (:idx idx)
                          :offsets $ v3 & offsets
                          :metrics $ [] 1 -1 -1
                          :position $ &v+ base $ v3 &
                            -> offsets (update 1 negate) (update 2 negate)
                        {} (:idx idx)
                          :offsets $ v3 & offsets
                          :metrics $ [] -1 -1 -1
                          :position $ &v+ base $ v3 &
                            -> offsets (update 0 negate) (update 1 negate) (update 2 negate)
                        {} (:idx idx)
                          :offsets $ v3 & offsets
                          :metrics $ [] -1 1 1
                          :position $ &v+ base $ v3 &
                            -> offsets $ update 0 negate
                        {} (:idx idx)
                          :offsets $ v3 & offsets
                          :metrics $ [] 1 1 1
                          :position $ &v+ base $ v3 & offsets
                        {} (:idx idx)
                          :offsets $ v3 & offsets
                          :metrics $ [] 1 1 -1
                          :position $ &v+ base $ v3 &
                            -> offsets $ update 2 negate
                        {} (:idx idx)
                          :offsets $ v3 & offsets
                          :metrics $ [] -1 1 -1
                          :position $ &v+ base $ v3 &
                            -> offsets (update 0 negate) (update 2 negate)
                :indices $ let
                    indices $ concat & $ [] ([] 0 1 2 0 2 3) ([] 0 1 5 0 4 5) ([] 1 2 6 1 6 5) ([] 2 3 6 3 6 7) ([] 0 3 4 3 4 7) ([] 4 5 6 4 6 7)
                  -> (range cube-count)
                    map $ fn (idx)
                      -> indices $ map $ fn (x)
                        + x $ * 8 idx
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.cube-combo
          :require
            lagopus.alias :refer $ group object
            |../shaders/cube-combo.wgsl :default cube-combo-wgsl
            lagopus.comp.button :refer $ comp-button
            lagopus.comp.curves :refer $ comp-curves
            lagopus.comp.spots :refer $ comp-spots
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ v3 &v+
            |@calcit/std :refer $ rand rand-shift
    'app.comp.cubes-tree $ %{} 'FileEntry
      :defs $ {}
        'Cube $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Cube
            :cube 'quaternion.vector/V3 'quaternion.vector/V3 'quaternion.vector/V3 'quaternion.vector/V3 'quaternion.vector/V3 'quaternion.vector/V3 'quaternion.vector/V3 'quaternion.vector/V3
          :examples $ []
          :schema $ :: 'EnumDef
        'branch-next $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn branch-next (cube write! level)
            when (>= level 0) (render-cube cube write!)
              let
                  cube2 $ rotate-d1 cube 0.2 0.8
                  cube3 $ rotate-d2 cube 0.1 0.9
                branch-next cube2 write! $ dec level
                branch-next cube3 write! $ dec level
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'app.comp.cubes-tree/Cube
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] $ :: 'List 'Enum
              , 'Number
          :tests $ [] $ %{} 'TestEntry (:name |cube-writer)
            :code $ quote $ branch-next
              Cube :cube (quaternion.vector/v3 0 0 0) (quaternion.vector/v3 1 0 0) (quaternion.vector/v3 1 0 -1) (quaternion.vector/v3 0 0 -1) (quaternion.vector/v3 0 1 0) (quaternion.vector/v3 1 1 0) (quaternion.vector/v3 1 1 -1) (quaternion.vector/v3 0 1 -1)
              fn (records)
                hint-fn $ {}
                  :args $ [] $ :: 'List 'Enum
                  :return 'Unit
                assert= 20 $ count records
                assert= break-mark $ .unwrap $ last records
              , 0
            :tags $ #{} :unit
        'comp-cubes-tree $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-cubes-tree ()
            comp-polylines-marked $ {} (; :shader wgsl-split-triangles)
              :writer $ fn (write!)
                let
                    cube $ Cube :cube (v3 0 0 0) (v3 100 0 0) (v3 100 0 -100) (v3 0 0 -100) (v3 0 100 0) (v3 100 100 0) (v3 100 100 -100) (v3 0 100 -100)
                  branch-next cube write! 10
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
        'reflect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reflect (a base)
            let
                base0 $ v-normalize base
                a-l $ v-dot a base0
                a-perp $ v-scale base0 a-l
                a-drop $ &v- a a-perp
              &v- a-perp a-drop
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'quaternion.vector/V3)
            :args $ [] 'quaternion.vector/V3 'quaternion.vector/V3
        'render-cube $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-cube (cube write!)
            let
                w 1
                l 2
              match cube $
                :cube p0 p1 p2 p3 p4 p5 p6 p7
                write! $ [] (:: :vertex p0 w l) (:: :vertex p1 w l) (:: :vertex p2 w l) (:: :vertex p3 w l) (:: :vertex p0 w l) (:: :vertex p4 w l) (:: :vertex p5 w l) (:: :vertex p6 w l) (:: :vertex p7 w l) (:: :vertex p4 w l) break-mark (:: :vertex p1 w l) (:: :vertex p5 w l) break-mark (:: :vertex p2 w l) (:: :vertex p6 w l) break-mark (:: :vertex p3 w l) (:: :vertex p7 w l) break-mark
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'app.comp.cubes-tree/Cube $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] $ :: 'List 'Enum
        'rotate-d1 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn rotate-d1 (cube ratio scale)
            match cube $
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
                  v2 $ &v+ p10 $ v-scale p40 ratio
                  p00' $ reflect (reflect p00 v1) v2
                  p10' $ reflect (reflect p10 v1) v2
                  p20' $ reflect (reflect p20 v1) v2
                  p30' $ reflect (reflect p30 v1) v2
                  p40' $ reflect (reflect p40 v1) v2
                  p50' $ reflect (reflect p50 v1) v2
                  p60' $ reflect (reflect p60 v1) v2
                  p70' $ reflect (reflect p70 v1) v2
                Cube :cube
                  v+ p0 p40 $ v-scale p00' scale
                  v+ p0 p40 $ v-scale p10' scale
                  v+ p0 p40 $ v-scale p20' scale
                  v+ p0 p40 $ v-scale p30' scale
                  v+ p0 p40 $ v-scale p40' scale
                  v+ p0 p40 $ v-scale p50' scale
                  v+ p0 p40 $ v-scale p60' scale
                  v+ p0 p40 $ v-scale p70' scale
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.comp.cubes-tree/Cube)
            :args $ [] 'app.comp.cubes-tree/Cube 'Number 'Number
        'rotate-d2 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn rotate-d2 (cube ratio scale)
            match cube $
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
                  v2 $ &v+ p21 $ v-scale p51 ratio
                  p01' $ reflect (reflect p01 v1) v2
                  p11' $ reflect (reflect p11 v1) v2
                  p21' $ reflect (reflect p21 v1) v2
                  p31' $ reflect (reflect p31 v1) v2
                  p41' $ reflect (reflect p41 v1) v2
                  p51' $ reflect (reflect p51 v1) v2
                  p61' $ reflect (reflect p61 v1) v2
                  p71' $ reflect (reflect p71 v1) v2
                Cube :cube
                  v+ p1 p51 $ v-scale p01' scale
                  v+ p1 p51 $ v-scale p11' scale
                  v+ p1 p51 $ v-scale p21' scale
                  v+ p1 p51 $ v-scale p31' scale
                  v+ p1 p51 $ v-scale p41' scale
                  v+ p1 p51 $ v-scale p51' scale
                  v+ p1 p51 $ v-scale p61' scale
                  v+ p1 p51 $ v-scale p71' scale
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.comp.cubes-tree/Cube)
            :args $ [] 'app.comp.cubes-tree/Cube 'Number 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.cubes-tree
          :require
            lagopus.alias :refer $ group object
            |../shaders/split-triangles.wgsl :default wgsl-split-triangles
            lagopus.comp.curves :refer $ comp-curves comp-polylines comp-polylines-marked break-mark
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v-dot v3
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
    'app.comp.fireworks $ %{} 'FileEntry
      :defs $ {} $ 'comp-fireworks
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-fireworks ()
            group nil $ comp-polylines-marked $ {} (:shader wgsl-fireworks)
              :writer $ fn (write!)
                loop
                    n 0
                  if (&< n 2000)
                    let
                        base $ v3 (rand-shift 0 20000) (rand-shift 0 2080) (rand-shift 0 20000)
                        color $ rand 10
                        w $ &+ 2 $ rand 6
                      ->
                        fibo-grid-range $ rand-int 40 400
                        each $ fn (v)
                          let
                              a1 $ rand 4
                              a2 $ rand 4
                              upper $ rand-int 12
                            loop
                                i 0
                              let
                                  n $ &+ i $ &+ 3 a2
                                  t $ &* 2.2 n
                                  p $ v+ base
                                    v-scale v $ &* 6 $ &* t a1
                                    v-scale (v3 0 -0.4 0)
                                      &* (&* t t) 0.5
                                write! $ : vertex p w color
                                if (&< i upper)
                                  recur $ inc i
                          write! break-mark
                      recur $ inc n
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.fireworks
          :require
            lagopus.alias :refer $ group object
            |../shaders/fireworks.wgsl :default wgsl-fireworks
            lagopus.comp.curves :refer $ comp-curves comp-polylines comp-polylines-marked break-mark
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
            |@calcit/std :refer $ rand rand-int rand-shift rand-between
    'app.comp.flower-ball $ %{} 'FileEntry
      :defs $ {}
        'build-umbrella $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn build-umbrella (p0 v0 relative parts elevation decay step write!)
            if (&> step 0)
              let
                  l0 $ v-length v0
                  forward $ v-scale v0 $ &/ 1 l0
                  rightward $ v-normalize $ v-cross v0 relative
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
                -> lines $ each $ fn (line)
                  build-umbrella p-next line v0 parts elevation decay (dec step) write!
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'quaternion.vector/V3 'quaternion.vector/V3 'quaternion.vector/V3 'Number 'Number 'Number 'Number $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] $ :: 'List 'Enum
        'comp-flower-ball $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-flower-ball ()
            let
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
                    each $ fn (pair)
                      build-umbrella origin
                        .unwrap $ nth pair 0
                        .unwrap $ nth pair 1
                        , parts elevation decay iteration write!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
        'v-zero $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def v-zero (v3 0 0 0)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.flower-ball
          :require
            lagopus.alias :refer $ group object
            |../shaders/flower-ball.wgsl :default wgsl-flower-ball
            lagopus.comp.curves :refer $ comp-curves comp-polylines break-mark
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
    'app.comp.globe $ %{} 'FileEntry
      :defs $ {}
        'comp-globe $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-globe ()
            comp-sphere $ {} (; :topology :line-strip) (:shader wgsl-globe) (:iteration 7) (:radius 1800)
              :color $ [] 0.6 0.9 0.7
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
        'wgsl-globe $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def wgsl-globe (inline-shader |globe)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.globe
          :require
            lagopus.alias :refer $ group object
            |../shaders/cube-combo.wgsl :default cube-combo-wgsl
            lagopus.comp.button :refer $ comp-button
            lagopus.comp.curves :refer $ comp-curves
            lagopus.comp.spots :refer $ comp-spots
            memof.once :refer $ memof1-call
            quaternion.core :refer $ c+ v+
            |@calcit/std :refer $ rand rand-shift
            lagopus.comp.sphere :refer $ comp-sphere
            app.config :refer $ inline-shader
    'app.comp.helicoid $ %{} 'FileEntry
      :defs $ {}
        'build-01-grid $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn build-01-grid (size s)
            -> (range-bothway size)
              map $ fn (x)
                -> (range-bothway size)
                  map $ fn (y)
                    let
                        r $ * s $ &/ 1 size
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
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Number 'Number
            :return $ :: 'List $ :: 'List
              :: 'List $ :: 'Map 'Tag $ :: 'List 'Number
        'comp-helicoid $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-helicoid ()
            comp-plate $ {} (; :topology :line-strip)
              :shader $ inline-shader |helicoid
              :iteration 120
              :radius 160
              :color $ [] 0.56 0.8 0.84
              ; :x-direction $ [] 1 0 0
              ; :y-direction $ [] 0 1 0
              :chromatism 0.14
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
        'comp-hyperbolic-helicoid $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-hyperbolic-helicoid (states)
            let
                cursor $ :cursor states
                tau $ tau-at states
              group nil
                object $ {} (:shader hyperbolic-helicoid-wgsl)
                  :topology $ do :triangle-list :line-strip
                  :attrs-list $ [] $ :: :float32x2 :position
                  :data $ build-01-grid 80 6
                  :get-params $ fn () $ shader-params tau 0 0 0
                comp-slider
                  {}
                    :position $ [] 0 240 0
                    :size 12
                    :color $ [] 0.7 0.6 0.5 1.0
                  fn (delta d!)
                    match delta $
                      :complex dx _dy
                      d! $ Op :state cursor $ LocalState :hh
                        + tau $ * 0.01 dx
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ [] 'app.state/StateCursor
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.helicoid
          :require
            lagopus.alias :refer $ group object
            |../shaders/hyperbolic-helicoid.wgsl :default hyperbolic-helicoid-wgsl
            lagopus.comp.button :refer $ comp-button comp-slider
            lagopus.comp.curves :refer $ comp-curves
            lagopus.comp.spots :refer $ comp-spots
            memof.once :refer $ memof1-call
            quaternion.core :refer $ c+ v+
            |@calcit/std :refer $ rand rand-shift
            lagopus.comp.plate :refer $ comp-plate
            app.config :refer $ inline-shader
            app.state :refer $ tau-at LocalState Op
            app.util :refer $ shader-params
    'app.comp.hopf-fiber $ %{} 'FileEntry
      :defs $ {}
        'Circle $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Circle (:circle 'quaternion.vector/V3 'quaternion.vector/V3 'quaternion.vector/V3)
          :examples $ []
          :schema $ :: 'EnumDef
        'calc-k $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn calc-k (p0 p1)
            match p0 $
              :v3 x0 _y0 z0
              match p1 $
                :v3 x1 _y1 z1
                * 0.5 $ &/
                  - (v-length2 p1) (v-length2 p0)
                  + (* x0 x1) (* z0 z1)
                    negate $ v-length2 p0
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ [] 'quaternion.vector/V3 'quaternion.vector/V3
        'comp-hopf-fiber $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-hopf-fiber (states show?)
            let
                cursor $ :cursor states
                base $ base-at states
                rh $ v-normalize $ v-cross base (v3 0 1 0)
                rv $ v-normalize $ v-cross rh base
              group nil
                if show? (comp-axis) js/null
                if show?
                  comp-drag-point
                    {} (:position base)
                      :color $ [] 1.6 0.6 1.0 1.0
                    fn (move d!)
                      d! $ Op :state cursor $ LocalState :hopf-base move
                  , js/null
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
                                  alpha $ * 0.2 $ + 0.2 ring-idx
                                  start $ v-scale base $ cos alpha
                                  l $ * (v-length base) (sin alpha)
                                  rh1 $ v-scale rh l
                                  rv1 $ v-scale rv l
                                  theta $ * 2 0.333 idx $ / &PI circle-size
                                  p $ v+ start
                                    v-scale rh1 $ cos theta
                                    v-scale rv1 $ sin theta
                                if show? $ write! $ : vertex p 1 1
                                , p
                            map-indexed $ fn (i control)
                              let
                                  circle $ decide-circle control
                                  n 80
                                ->
                                  range $ inc n
                                  map $ fn (idx)
                                    let
                                        ratio $ * 2 idx $ / &PI n
                                      match circle $
                                        :circle center rh rv
                                        do nil $ write! $ : vertex
                                          v-scale
                                            v+ center
                                              v-scale rh $ cos ratio
                                              v-scale rv $ sin ratio
                                            , 200
                                          * 0.8 $ pow ring-idx 0.4
                                          , ring-idx
                                write! break-mark
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ [] 'app.state/StateCursor 'Bool
            :features $ #{} :js-ffi
        'decide-circle $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decide-circle (v0)
            let
                p1 $ v-normalize v0
              match p1 $
                :v3 x _y z
                let
                    p0 $ v3 z 0 $ negate x
                    k $ calc-k p0 p1
                    center $ v-scale p0 k
                    rh $ v- p0 center
                    v1 $ v-cross rh $ v- p1 center
                    rv $ v-scale
                      v-normalize $ v-cross v1 rh
                      v-length rh
                  Circle :circle center rh rv
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.comp.hopf-fiber/Circle)
            :args $ [] 'quaternion.vector/V3
        'v-length2 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn v-length2 (a)
            match a $
              :v3 x y z
              -> (&* x x)
                &+ $ &* y y
                &+ $ &* z z
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ [] 'quaternion.vector/V3
          :tests $ [] $ %{} 'TestEntry (:name |vector-and-quaternion-projection)
            :code $ quote $ do
              assert= 169 $ v-length2 $ quaternion.vector/v3 3 4 12
              assert= ([] 2 4 6)
                app.comp.quaterion-fold/take3 (quaternion.core/quaternion 9 1 2 3) 2
              assert= 1.5 $ calc-k (quaternion.vector/v3 1 0 0) (quaternion.vector/v3 2 0 0)
              assert=
                [] (quaternion.vector/v3 0 0 0) (quaternion.vector/v3 1 0 0) (quaternion.vector/v3 2 0 0)
                app.comp.patels/build-quadratic-curve (quaternion.vector/v3 0 0 0) (quaternion.vector/v3 2 0 0) 1 $ quaternion.vector/v3 0 0 0
            :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.hopf-fiber
          :require
            lagopus.alias :refer $ group object
            |../shaders/hopf.wgsl :default wgsl-hopf
            lagopus.comp.curves :refer $ comp-curves comp-polylines comp-polylines-marked break-mark comp-axis
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v- v-normalize v-cross v3
            quaternion.complex :refer $ complex
            app.config :refer $ hide-tabs?
            lagopus.math :refer $ fibo-grid-range rotate-3d
            lagopus.comp.button :refer $ comp-drag-point
            app.state :refer $ base-at LocalState Op
    'app.comp.mums $ %{} 'FileEntry
      :defs $ {}
        'comp-mums $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-mums ()
            let
                points $ fibo-grid-range 400
              comp-curves $ {} (:shader wgsl-mums)
                :curves $ -> points $ map
                  fn (p)
                    let
                        v $ v-scale p $ * 2
                          pow
                            v-length $ match p $
                              :v3 _x y z
                              v3 0 y z
                            , 3
                          + 0.3 $ random-number
                        path $ roll-curve v
                          v-normalize $ v-cross (v3 0 1 0) v
                          / 0.03 $ pow (v-length v) 2
                      ; js/console.log path
                      -> path $ map $ fn (p2)
                        {} (:position p2) (:width 2)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
        'roll-curve $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn roll-curve (v0 axis0 delta)
            let
                steps 80
                dt 2
                p0 $ v3 0 0 0
                ad $ v3 (random-number) (random-number) (random-number)
              apply-args
                  .empty $ [] p0
                  , p0 v0 axis0 0
                fn (acc position v axis s)
                  hint-fn $ {}
                    :args $ [] (:: 'List 'quaternion.vector/V3) 'quaternion.vector/V3 'quaternion.vector/V3 'quaternion.vector/V3 'Number
                    :return $ :: 'List 'quaternion.vector/V3
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
                        next $ &v+ position $ v-scale v dt
                      recur (conj acc position) next v-next axis-next $ inc s
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'quaternion.vector/V3 'quaternion.vector/V3 'Number
            :return $ :: 'List 'quaternion.vector/V3
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.mums
          :require
            lagopus.alias :refer $ group object
            |../shaders/mums.wgsl :default wgsl-mums
            lagopus.comp.curves :refer $ comp-curves
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
            app.util :refer $ random-number
    'app.comp.nav $ %{} 'FileEntry
      :defs $ {}
        'NavTab $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct NavTab (:key 'Tag) (:title 'String) (:theme 'Tag)
          :examples $ []
          :schema $ :: 'StructDef
        'comp-nav $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-nav (store)
            let
                tab $ :tab store
                show-tabs? $ and (not hide-tabs?) (:show-tabs? store)
              div
                {} $ :class-name style-nav
                if show-tabs? $ list-> ({})
                  -> tabs $ map $ fn (pair)
                    let
                        t $ :key pair
                        name $ :title pair
                      [] t $ div
                        {}
                          :class-name $ str-spaced style-tab css/font-fancy!
                          :on-click $ fn (e d!)
                            d! $ Op :tab t $ :theme pair
                          :style $ if (= tab t)
                            {} $ :color :white
                        <> name
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'app.state/Store
        'style-nav $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-nav
            {} $ |& $ {} (:position :absolute) (:top 12)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-tab $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tab
            {}
              |& $ {} (:line-height |1.4) (:margin-top 2) (:padding "|0 8px") (:width :fit-content)
                :color $ hsl 0 0 100 0.5
                :cursor :pointer
                :transition-duration |200ms
                :border-radius |4px
                :background-color $ hsl 0 0 0 0.2
              |&:hover $ {}
                :background-color $ hsl 0 0 0 0.5
                :color :white
          :examples $ []
          :schema $ :: 'Dynamic
        'tabs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def tabs
            [] (NavTab :key :cube :title |Cube :theme :light) (NavTab :key :helicoid :title |Helicoid :theme :dark) (NavTab :key :hyperbolic-helicoid :title |Hyperbolic-helicoid :theme :light) (NavTab :key :globe :title |Globe :theme :light) (NavTab :key :fur :title |Fur :theme :light) (NavTab :key :petal-wireframe :title |Petal-wireframe :theme :light) (NavTab :key :mums :title |Mums :theme :light) (NavTab :key :flower-ball :title |Ball :theme :light) (NavTab :key :blow :title |Blow :theme :light) (NavTab :key :triangles :title |Triangles :theme :light) (NavTab :key :segments :title |Segments :theme :light) (NavTab :key :quaternion-fold :title |Quaternion-fold :theme :dark) (NavTab :key :hopf :title |Hopf :theme :dark) (NavTab :key :fireworks :title |Fireworks :theme :dark) (NavTab :key :blinks :title |Blinks :theme :dark) (NavTab :key :split-triangles :title "|Split Triangles" :theme :light) (NavTab :key :cubes-tree :title "|Cubes tree" :theme :light) (NavTab :key :prime-walk :title "|Prime Walk" :theme :dark) (NavTab :key :prime-pyramid :title "|Prime pyramid" :theme :dark) (NavTab :key :tree-1 :title "|Tree 1" :theme :dark) (NavTab :key :tree-2 :title "|Tree 2" :theme :dark) (NavTab :key :tree-3 :title "|Tree 3" :theme :dark) (NavTab :key :sedimentary :title |Sedimentary :theme :dark) (NavTab :key :concentric :title |Concenytic :theme :dark) (NavTab :key :snowing :title |Snowing :theme :dark)
          :examples $ []
          :schema $ :: 'List 'app.comp.nav/NavTab
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.nav
          :require
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input list->
            respo.comp.space :refer $ =<
            respo.css :refer $ defstyle
            respo-ui.css :as css
            respo.util.format :refer $ hsl
            app.config :refer $ hide-tabs?
            app.state :refer $ Op
    'app.comp.patels $ %{} 'FileEntry
      :defs $ {}
        'build-quadratic-curve $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn build-quadratic-curve (p q step gravity)
            let
                v $ &v- q p
                l $ v-length v
                dd $ &/ l step
                size $ floor dd
                left $ &* 0.5 $ - l (&* size step)
                unit $ v-normalize v
                dist $ ->
                  range $ inc size
                  map $ fn (idx)
                    + left $ * idx step
                l-middle $ * 0.25 l l
              -> dist $ map $ fn (ratio)
                let
                    s $ abs $ &- ratio (&* 0.5 l)
                  &v+
                    &v+ p $ v-scale unit ratio
                    v-scale gravity $ &- l-middle $ pow s 2
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'quaternion.vector/V3 'quaternion.vector/V3 'Number 'quaternion.vector/V3
            :return $ :: 'List 'quaternion.vector/V3
        'comp-petal-wireframe $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-petal-wireframe ()
            let
                large-frame $ fibo-grid-range 48
                small-frame $ fibo-grid-range 12
                lines $ -> large-frame $ mapcat
                  fn (x)
                    map small-frame $ fn (y) ([] x y)
              comp-curves $ {} (:shader wgsl-petal-wireframe)
                :curves $ -> lines $ map
                  fn (pair)
                    let
                        from $ .unwrap $ nth pair 0
                        to $ .unwrap $ nth pair 1
                        points $ build-quadratic-curve
                          v-scale
                            match from $
                              :v3 x y z
                              v3 (* 0.4 x) y z
                            , 400
                          v-scale
                            match to $
                              :v3 x y z
                              v3
                                - (* 0.4 x) 0.5
                                , y z
                            , 180
                          , 16 $ v3 0 -0.0016 0
                      map points $ fn (p)
                        {} (:position p) (:width 1.)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.patels
          :require
            lagopus.alias :refer $ group object
            |../shaders/petal-wireframe.wgsl :default wgsl-petal-wireframe
            lagopus.comp.curves :refer $ comp-curves
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
    'app.comp.prime-walk $ %{} 'FileEntry
      :defs $ {}
        'comp-prime-pyramid $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-prime-pyramid ()
            comp-polylines-marked $ {} (:shader wgsl-prime-walk)
              :writer $ fn (write!)
                prime-pyramid (v3 0 0 0) (do primes) write! 8 0 0
                , &unit
              :get-params $ fn () $ shader-params
                wo-log $ * 0.8 $ - (now-ms) start-time 8000
                , 0 0 0
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
        'comp-prime-walk $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-prime-walk ()
            comp-polylines-marked $ {} (:shader wgsl-prime-walk)
              :writer $ fn (write!)
                prime-walk (v3 0 0 0) primes write! 8 0 0
                , &unit
              :get-params $ fn () $ shader-params
                wo-log $ * 0.4 $ - (now-ms) start-time 8000
                , 0 0 0
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
        'cube-middle-moves $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def cube-middle-moves
            [] (v3 1 0 0) (v3 0 1 0) (v3 0 0 -1) (v3 1 0 0) (v3 0 -1 0) (v3 0 0 -1) (v3 -1 0 0) (v3 0 -1 0) (v3 0 0 1) (v3 -1 0 0) (v3 0 1 0) (v3 0 0 1)
          :examples $ []
          :schema $ :: 'Dynamic
        'load-primes $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro load-primes ()
            &data-to-code $ parse-cirru-edn $ read-file |./primes.cirru
          :examples $ []
          :schema $ :: 'Macro $ {}
            :capabilities $ #{} :fs-read
            :expansion $ :: 'Expr $ :: 'List 'Number
            :required $ []
        'moves $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def moves
            [] (v3 1 0 0) (v3 0 0 -1) (v3 0 1 0) (v3 -1 0 0) (v3 0 0 1) (v3 0 -1 0)
          :examples $ []
          :schema $ :: 'List 'quaternion.vector/V3
        'oct-moves $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def oct-moves
            [] (v3 1 0 0) (v3 -1 0 0) (v3 -1 0 0) (v3 1 0 0) (v3 0 1 0) (v3 0 -1 0) (v3 0 -1 0) (v3 0 1 0) (v3 0 0 1) (v3 0 0 -1) (v3 0 0 -1) (v3 0 0 1)
          :examples $ []
          :schema $ :: 'Dynamic
        'octahedron-moves $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def octahedron-moves
            [] (v3 1 0 1) (v3 0 1 -1) (v3 1 -1 0) (v3 -1 0 -1) (v3 0 -1 1) (v3 -1 1 0)
          :examples $ []
          :schema $ :: 'List 'quaternion.vector/V3
        'prime-pyramid $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn prime-pyramid (base primes write! width step prev)
            match (destruct-list primes)
              (:some p0 ps)
                let
                    m octahedron-moves
                    move-direction $ .unwrap $ nth m
                      &number:rem step $ count m
                    len $ - p0 prev
                    move $ v-scale move-direction $ * len 10
                    next $ &v+ base move
                  write! $ :: :vertex base width prev
                  recur next ps write! width (inc step) p0
              (:none) :ok
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Tag)
            :args $ [] 'quaternion.vector/V3 (:: 'List 'Number)
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'Enum
              , 'Number 'Number 'Number
        'prime-walk $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn prime-walk (base primes write! width step prev)
            match (destruct-list primes)
              (:some p0 ps)
                let
                    move-direction $ .unwrap $ nth moves (&number:rem step 6)
                    len $ - p0 prev
                    move $ v-scale move-direction $ * len 10
                    next $ &v+ base move
                  write! $ :: :vertex base width prev
                  recur next ps write! width (inc step) p0
              (:none) :ok
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Tag)
            :args $ [] 'quaternion.vector/V3 (:: 'List 'Number)
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'Enum
              , 'Number 'Number 'Number
          :tests $ [] $ %{} 'TestEntry (:name |prime-path-writers)
            :code $ quote $ do
              assert= :ok $ prime-walk (quaternion.vector/v3 0 0 0) ([] 2)
                fn (record)
                  hint-fn $ {}
                    :args $ [] 'Enum
                    :return 'Unit
                  assert=
                    :: :vertex (quaternion.vector/v3 0 0 0) 1 0
                    , record
                , 1 0 0
              assert= :ok $ prime-pyramid (quaternion.vector/v3 0 0 0) ([] 2)
                fn (record)
                  hint-fn $ {}
                    :args $ [] 'Enum
                    :return 'Unit
                  assert=
                    :: :vertex (quaternion.vector/v3 0 0 0) 1 0
                    , record
                , 1 0 0
            :tags $ #{} :unit
        'primes $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def primes (load-primes)
          :examples $ []
          :schema $ :: 'List 'Number
        'pyramid-moves $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def pyramid-moves
            let
                p1 $ v3 -1 0 $ / -1 (sqrt 2)
                p2 $ v3 1 0 $ / -1 (sqrt 2)
                p3 $ v3 0 -1 $ / 1 (sqrt 2)
                p4 $ v3 0 1 $ / 1 (sqrt 2)
              [] (&v- p2 p1) (&v- p3 p2) (&v- p4 p3) (&v- p1 p4)
          :examples $ []
          :schema $ :: 'Dynamic
        'start-time $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def start-time (now-ms)
          :examples $ []
          :schema $ :: 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.prime-walk
          :require
            lagopus.alias :refer $ group object
            |../shaders/prime-walk.wgsl :default wgsl-prime-walk
            lagopus.comp.curves :refer $ comp-curves comp-polylines break-mark comp-polylines-marked
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
            js-ffi.shared :refer $ now-ms
            app.util :refer $ shader-params
    'app.comp.quaterion-fold $ %{} 'FileEntry
      :defs $ {}
        'comp-quaternion-fold $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-quaternion-fold ()
            let () $ with-cpu-time $ object-writer
              {} (:topology :line-strip) (:shader wgsl-quaternion-fold)
                :attrs-list $ [] $ : float32x3 :position
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
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
        'fold-line3 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn fold-line3
            level base v a b c full' minimal-seg write!
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
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Number 'quaternion.core/Quaternion 'quaternion.core/Quaternion 'quaternion.core/Quaternion 'quaternion.core/Quaternion 'quaternion.core/Quaternion 'quaternion.core/Quaternion 'Number $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] $ :: 'List 'Enum
        'fold-line4 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn fold-line4
            level base v a b c d full' minimal-seg write!
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
                do
                  fold-line4 dec-level base branch-a a b c d full' minimal-seg write!
                  fold-line4 dec-level (&q+ base branch-a) (&q- branch-b branch-a) a b c d full' minimal-seg write!
                  fold-line4 dec-level (&q+ base branch-b) (&q- branch-c branch-b) a b c d full' minimal-seg write!
                  fold-line4 dec-level (&q+ base branch-c) (&q- branch-d branch-c) a b c d full' minimal-seg write!
                  fold-line4 dec-level (&q+ base branch-d) (&q- v branch-d) a b c d full' minimal-seg write!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Number 'quaternion.core/Quaternion 'quaternion.core/Quaternion 'quaternion.core/Quaternion 'quaternion.core/Quaternion 'quaternion.core/Quaternion 'quaternion.core/Quaternion 'quaternion.core/Quaternion 'Number $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] $ :: 'List 'Enum
        'take3 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn take3 (v s)
            match v $
              :quaternion w x y z
              [] (&* s x) (&* s y) (&* s z)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'quaternion.core/Quaternion 'Number
            :return $ :: 'List 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.quaterion-fold
          :require
            lagopus.alias :refer $ group object object-writer
            |../shaders/petal-wireframe.wgsl :default wgsl-petal-wireframe
            lagopus.comp.curves :refer $ comp-polylines break-mark
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
            quaternion.core :refer $ &q* &q+ &q- q-length2 q-inverse quaternion
            |../shaders/quaternion-fold.wgsl :default wgsl-quaternion-fold
    'app.comp.segments-fractal $ %{} 'FileEntry
      :defs $ {}
        'apply-basis $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn apply-basis (p forward upward right)
            match p $
              :v3 x y z
              v+ (v-scale forward x) (v-scale upward y) (v-scale right z)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'quaternion.vector/V3)
            :args $ [] 'quaternion.vector/V3 'quaternion.vector/V3 'quaternion.vector/V3 'quaternion.vector/V3
        'comp-segments-fractal $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-segments-fractal ()
            let
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
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
        'fold-fractal $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn fold-fractal
            base target right p1 p2 p3 p4 p5 level write!
            let
                w $ / 0.5 $ pow level 1.6
                next $ &v- target base
                forward $ v-normalize next
                upward $ v-cross right forward
                l $ v-length next
                point1 $ &v+ base $ v-scale (apply-basis p1 forward upward right) l
                point2 $ &v+ base $ v-scale (apply-basis p2 forward upward right) l
                point3 $ &v+ base $ v-scale (apply-basis p3 forward upward right) l
                point4 $ &v+ base $ v-scale (apply-basis p4 forward upward right) l
                point5 $ &v+ base $ v-scale (apply-basis p5 forward upward right) l
                m $ middle base target
              if (&> level 1)
                do nil
                  ; write! $ [] (: vertex base w) (: vertex point1 w) (: vertex point2 w) (: vertex point3 w) (: vertex point4 w) (: vertex target w) break-mark
                  let
                      right1 $ v-normalize $ safe-right
                        v-cross (&v- point1 base)
                          &v- (middle base point1) m
                        , right
                    fold-fractal base point1 right1 p1 p2 p3 p4 p5 (dec level) write!
                  let
                      right2 $ v-normalize $ safe-right
                        v-cross (&v- point2 point1)
                          &v- (middle point1 point2) m
                        , right
                    fold-fractal point1 point2 right2 p1 p2 p3 p4 p5 (dec level) write!
                  let
                      right3 $ v-normalize $ safe-right
                        v-cross (&v- point3 point2)
                          &v- (middle point2 point3) m
                        , right
                    fold-fractal point2 point3 right3 p1 p2 p3 p4 p5 (dec level) write!
                  let
                      right4 $ v-normalize $ safe-right
                        v-cross (&v- point4 point3)
                          &v- (middle point3 point4) m
                        , right
                    fold-fractal point3 point4 right4 p1 p2 p3 p4 p5 (dec level) write!
                  let
                      right5 $ v-normalize $ safe-right
                        v-cross (&v- point4 point4)
                          &v- (middle point4 point5) m
                        , right
                    fold-fractal point4 target right5 p1 p2 p3 p4 p5 (dec level) write!
                  let
                      right6 $ v-normalize $ safe-right
                        v-cross (&v- target point5)
                          &v- (middle point5 target) m
                        , right
                    fold-fractal point4 target right6 p1 p2 p3 p4 p5 (dec level) write!
                write! $ [] (: vertex base w) (: vertex point1 w) (: vertex point2 w) (: vertex point3 w) (: vertex point4 w) (: vertex point5 w) (: vertex target w) break-mark
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'quaternion.vector/V3 'quaternion.vector/V3 'quaternion.vector/V3 'quaternion.vector/V3 'quaternion.vector/V3 'quaternion.vector/V3 'quaternion.vector/V3 'quaternion.vector/V3 'Number $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] $ :: 'List 'Enum
        'middle $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn middle (base target)
            v-scale (&v+ base target) 0.5
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'quaternion.vector/V3)
            :args $ [] 'quaternion.vector/V3 'quaternion.vector/V3
        'safe-right $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn safe-right (v right)
            if
              &= 0 $ v-length v
              , right v
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'quaternion.vector/V3)
            :args $ [] 'quaternion.vector/V3 'quaternion.vector/V3
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.segments-fractal
          :require
            lagopus.alias :refer $ group object
            |../shaders/petal-wireframe.wgsl :default wgsl-petal-wireframe
            lagopus.comp.curves :refer $ comp-polylines break-mark
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
    'app.comp.snowflakes-demo $ %{} 'FileEntry
      :defs $ {}
        'Placement $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Placement (:x 'quaternion.vector/V3) (:y 'quaternion.vector/V3) (:p 'quaternion.vector/V3) (:size 'Number)
          :examples $ []
          :schema $ :: 'StructDef
        'comp-snowflakes-demo $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-snowflakes-demo ()
            let
                area 80
                item-count 6000
                d-size 2.2
                placements $ -> (range item-count)
                  map $ fn (i)
                    let
                        p $ v3 (random-shift 0 area)
                          do (random-shift 0 area) 0
                          random-shift 0 area
                        a $ v3 (random-scaled 100) (random-scaled 100) (random-scaled 100)
                        b $ v3 (random-scaled 100) (random-scaled 100) (random-scaled 100)
                        c $ v-cross a b
                        a1 $ v-normalize a
                        c1 $ v-normalize c
                      %{} Placement (:x a1) (:y c1) (:p p)
                        :size $ pow (random-scaled d-size) 2
              comp-polylines-marked $ {} (:shader wgsl-snowing)
                :writer $ fn (write!)
                  each
                    range $ .len placements
                    fn (idx)
                      let
                          info $ .unwrap $ get placements idx
                          x $ :x info
                          y $ :y info
                          size $ :size info
                          picked-shape $ match
                            floor $ * (random-scaled 1) 7
                            0 snowflake-shape
                            1 snowflake-shape-bare
                            2 snowflake-shape-sparse
                            3 snowflake-shape-hairy
                            4 snowflake-shape-ring
                            5 snowflake-shape-branch
                            6 snowflake-shape-star
                            _ snowflake-shape-sparse
                          seed $ random-scaled 20
                        each picked-shape $ fn (path)
                          let
                              from $ .unwrap $ get path :from
                              to $ .unwrap $ get path :to
                            write! $ []
                              :: :vertex (project-point x y size from) 0.4 idx
                              :: :vertex (project-point x y size to) 0.4 idx
                              , break-mark
                            , &unit
                  , &unit
                :get-params $ fn () $ time-params
                  &* 0.08 $ - (performance-now) start-time
                :compute-options $ particle-options item-count
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
        'particle-options $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn particle-options (item-count)
            let
                values $ mapcat (range item-count)
                  fn (_idx)
                    map (range 12)
                      fn (_component) (random-shift 0 100)
              js-object (:particleCount item-count)
                :initialBuffer $ new js/Float32Array $ to-js-data values
          :examples $ []
          :ffi $ {} (:backend :js) (:target :browser)
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ [] 'Number
            :features $ #{} :js-ffi
        'project-point $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn project-point (x y size point)
            match point $
              :complex a b
              v+
                v-scale x $ * size a
                v-scale y $ * size b
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'quaternion.vector/V3)
            :args $ [] 'quaternion.vector/V3 'quaternion.vector/V3 'Number 'quaternion.complex/Complex
        'random-scaled $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn random-scaled (size)
            js-ffi.contract/expect-number |rand $ rand size
          :examples $ []
          :ffi $ {} (:backend :js) (:target :browser)
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ [] 'Number
            :features $ #{} :js-ffi
        'random-shift $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn random-shift (center radius)
            js-ffi.contract/expect-number |rand_shift $ rand-shift center radius
          :examples $ []
          :ffi $ {} (:backend :js) (:target :browser)
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ [] 'Number 'Number
            :features $ #{} :js-ffi
        'rotate-branches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn rotate-branches (branch0)
            apply-args (branch0 branch0 5)
              fn (acc template level)
                if (= level 0) acc $ let
                    xs $ -> template $ map
                      fn (info)
                        let
                            from $ .unwrap $ get info :from
                            to $ .unwrap $ get info :to
                          {}
                            :from $ &c* from snowflake-rotation
                            :to $ &c* to snowflake-rotation
                  recur (concat acc xs) xs $ dec level
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'List (:: 'Map 'Tag 'quaternion.complex/Complex)
            :return $ :: 'List $ :: 'Map 'Tag 'quaternion.complex/Complex
        'snowflake-rotation $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def snowflake-rotation
            complex 0.5 $ * 0.5 sqrt3
          :examples $ []
          :schema $ :: 'quaternion.complex/Complex
        'snowflake-shape $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def snowflake-shape
            let
                branch0 $ []
                  {}
                    :from $ complex 0 0
                    :to $ complex 1 0
                  {}
                    :from $ complex 0 0
                    :to $ complex 0.24 0.16
                  {}
                    :from $ complex 0.6 0
                    :to $ complex 0.84 0.34
                  {}
                    :from $ complex 0.6 0
                    :to $ complex 0.84 -0.34
                  {}
                    :from $ complex 0.3 0
                    :to $ complex 0.56 0.26
                  {}
                    :from $ complex 0.3 0
                    :to $ complex 0.56 -0.26
                  {}
                    :from $ complex 0.80 0
                    :to $ complex 0.92 0.16
                  {}
                    :from $ complex 0.80 0
                    :to $ complex 0.92 -0.16
                branches $ rotate-branches branch0
              ; js/console.log branches
              , branches
          :examples $ []
          :schema $ :: 'List $ :: 'Map 'Tag 'quaternion.complex/Complex
        'snowflake-shape-bare $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def snowflake-shape-bare
            let
                branch0 $ [] $ {}
                  :from $ complex 0 0
                  :to $ complex 0.6 0
                branches $ rotate-branches branch0
              ; js/console.log branches
              , branches
          :examples $ []
          :schema $ :: 'List $ :: 'Map 'Tag 'quaternion.complex/Complex
        'snowflake-shape-branch $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def snowflake-shape-branch
            let
                branch0 $ []
                  {}
                    :from $ complex 0 0
                    :to $ complex 0.8 0
                  {}
                    :from $ complex 0 0
                    :to $ complex 0.4 0.16
                branches $ rotate-branches branch0
              ; js/console.log branches
              , branches
          :examples $ []
          :schema $ :: 'List $ :: 'Map 'Tag 'quaternion.complex/Complex
        'snowflake-shape-hairy $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def snowflake-shape-hairy
            let
                branch0 $ []
                  {}
                    :from $ complex 0 0
                    :to $ complex 1 0
                  {}
                    :from $ complex 0.6 0
                    :to $ complex 0.84 0.34
                  {}
                    :from $ complex 0.6 0
                    :to $ complex 0.84 -0.34
                  {}
                    :from $ complex 0.7 0
                    :to $ complex 0.9 0.27
                  {}
                    :from $ complex 0.7 0
                    :to $ complex 0.9 -0.27
                  {}
                    :from $ complex 0.80 0
                    :to $ complex 0.92 0.16
                  {}
                    :from $ complex 0.80 0
                    :to $ complex 0.92 -0.16
                branches $ rotate-branches branch0
              ; js/console.log branches
              , branches
          :examples $ []
          :schema $ :: 'List $ :: 'Map 'Tag 'quaternion.complex/Complex
        'snowflake-shape-ring $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def snowflake-shape-ring
            let
                branch0 $ [] $ {}
                  :from $ complex 0.4 0.44
                  :to $ complex 0.4 -0.44
                branches $ rotate-branches branch0
              ; js/console.log branches
              , branches
          :examples $ []
          :schema $ :: 'List $ :: 'Map 'Tag 'quaternion.complex/Complex
        'snowflake-shape-sparse $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def snowflake-shape-sparse
            let
                branch0 $ []
                  {}
                    :from $ complex 0 0
                    :to $ complex 0.9 0
                  {}
                    :from $ complex 0.32 0
                    :to $ complex 0.66 0.54
                  {}
                    :from $ complex 0.32 0
                    :to $ complex 0.66 -0.54
                branches $ rotate-branches branch0
              ; js/console.log branches
              , branches
          :examples $ []
          :schema $ :: 'List $ :: 'Map 'Tag 'quaternion.complex/Complex
        'snowflake-shape-star $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def snowflake-shape-star
            let
                branch0 $ []
                  {}
                    :from $ complex 0 0
                    :to $ complex 0.8 0
                  {}
                    :from $ complex 0.42 0.12
                    :to $ complex 0.58 -0.12
                  {}
                    :from $ complex 0.58 0.12
                    :to $ complex 0.42 -0.12
                branches $ rotate-branches branch0
              ; js/console.log branches
              , branches
          :examples $ []
          :schema $ :: 'List $ :: 'Map 'Tag 'quaternion.complex/Complex
        'sqrt3 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def sqrt3 (sqrt 3)
          :examples $ []
          :schema $ :: 'Number
        'start-time $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def start-time (performance-now)
          :examples $ []
          :schema $ :: 'Number
        'time-params $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn time-params (elapsed) (js-array elapsed)
          :examples $ []
          :ffi $ {} (:backend :js) (:target :browser)
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ [] 'Number
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.snowflakes-demo
          :require
            quaternion.vector :refer $ v+ v-scale v-cross v-normalize v3
            quaternion.complex :refer $ &c* complex
            |../shaders/snowing.wgsl :default wgsl-snowing
            lagopus.comp.curves :refer $ comp-polylines-marked break-mark
            |@calcit/std :refer $ rand rand-shift
            js-ffi.shared :refer $ performance-now
    'app.comp.split-triangles $ %{} 'FileEntry
      :defs $ {}
        'comp-split-triangles $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-split-triangles ()
            comp-polylines-marked $ {} (:shader wgsl-split-triangles)
              :writer $ fn (write!)
                let
                    s 1
                  split-triangles
                    v-scale (v3 1000 0 0) s
                    v-scale (v3 -500 0 -800) s
                    v-scale (v3 -500 0 800) s
                    v-scale (v3 0 1200 0) s
                    , 0 true write!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
        'split-triangles $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn split-triangles (p1 p2 p3 p4 level root? write!)
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
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'quaternion.vector/V3 'quaternion.vector/V3 'quaternion.vector/V3 'quaternion.vector/V3 'Number 'Bool $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] $ :: 'List 'Enum
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.split-triangles
          :require
            lagopus.alias :refer $ group object
            |../shaders/split-triangles.wgsl :default wgsl-split-triangles
            lagopus.comp.curves :refer $ comp-curves comp-polylines comp-polylines-marked break-mark
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
    'app.comp.triangles $ %{} 'FileEntry
      :defs $ {}
        'build-sierpinski-triangles $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn build-sierpinski-triangles (p1 p2 p3 p4 level w dup? write!)
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
                  > (random-number) 0.1
                  build-sierpinski-triangles p1 p1-2 p1-3 p1-4 (dec level) w true write!
                build-sierpinski-triangles p2 p1-2 p2-3 p2-4 (dec level) w true write!
                build-sierpinski-triangles p3 p1-3 p2-3 p3-4 (dec level) w true write!
                build-sierpinski-triangles p4 p1-4 p2-4 p3-4 (dec level) w true write!
                ; build-sierpinski-triangles p-01 p-02 p-03 p-04 (dec level) w false write!
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'quaternion.vector/V3 'quaternion.vector/V3 'quaternion.vector/V3 'quaternion.vector/V3 'Number 'Number 'Bool $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] $ :: 'List 'Enum
        'comp-triangles $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-triangles ()
            comp-polylines $ {} (:shader wgsl-triangles)
              :writer $ fn (write!)
                build-sierpinski-triangles (v3 1000 0 0) (v3 -500 0 -800) (v3 -500 0 800) (v3 0 1200 0) 10 0.1 false write!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
        'third $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def third (&/ 1 3)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.triangles
          :require
            lagopus.alias :refer $ group object
            |../shaders/triangles.wgsl :default wgsl-triangles
            lagopus.comp.curves :refer $ comp-curves comp-polylines break-mark
            memof.once :refer $ memof1-call
            quaternion.vector :refer $ v+ &v+ v-scale v-length &v- v-normalize v-cross v3
            app.config :refer $ hide-tabs?
            lagopus.cursor :refer $ >>
            lagopus.math :refer $ fibo-grid-range rotate-3d
            app.util :refer $ random-number
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'bloom? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def bloom?
            = |true $ .unwrap-or (get-env |bloom) |false
          :examples $ []
          :schema $ :: 'Bool
        'detect-mobile? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn detect-mobile? ()
            expect-bool |ismobile.any $ .-any $ ismobile js/window.navigator
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ []
            :features $ #{} :js-ffi
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            &= |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'hide-tabs? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def hide-tabs?
            = |true $ .unwrap-or (get-env |hide-tabs) |false
          :examples $ []
          :schema $ :: 'Bool
        'inline-shader $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro inline-shader (path)
            read-file $ str |shaders/ path |.wgsl
          :examples $ []
          :schema $ :: 'Macro $ {}
            :capabilities $ #{} :fs-read
            :expansion $ :: 'Expr 'String
            :required $ [] $ :: 'Expr 'String
        'mobile? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mobile? (detect-mobile?)
          :examples $ []
          :schema $ :: 'Bool
        'remote-control? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def remote-control?
            .some? $ get-env |remote-control
          :examples $ []
          :schema $ :: 'Bool
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
          :require (|ismobilejs :default ismobile)
            js-ffi.contract :refer $ expect-bool
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *store
            Store :states (empty-tree) :tab
              turn-tag $ .unwrap-or (get-env |tab) |concentric
              , :theme :dark :show-tabs? true :show-controls? true
          :examples $ []
          :schema $ :: 'Ref 'app.state/Store
        'canvas $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def canvas
            .unwrap $ query-selector |canvas
          :examples $ []
          :schema $ :: 'js-ffi.browser/DomElementHost
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            if dev? $ log-op! op
            let
                store @*store
                next-store $ updater store op
              if (not= next-store store) (reset! *store next-store)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'app.state/Op
        'log-op! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-op! (op) (js/console.log op) &unit
          :examples $ []
          :ffi $ {} (:backend :js) (:target :browser)
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'app.state/Op
            :features $ #{} :js-ffi
        'loop-paint! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn loop-paint! ()
            request-animation-frame! $ fn (_timestamp) (paintLagopusTree) (loop-paint!) &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ []
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (hint-fn async)
            if
              and bloom? $ not mobile?
              enableBloom
            if dev? $ load-console-formatter!
            js-await $ initializeContext
            initializeCanvasTextures
            ; reset-clear-color! $ either bg-color $ :: :rgba 0.04 0 0.1 0.98
            render-app!
            ; renderControl
            startControlLoop 10 onControlEvent
            registerShaderResult handle-compilation
            set! js/window.onresize $ fn (e) (resetCanvasSize canvas) (initializeCanvasTextures) (; paintLagopusTree)
            resetCanvasSize canvas
            add-watch *store :change $ fn (next store) (render-app!) (; paintLagopusTree)
            setupMouseEvents canvas
            if remote-control? $ setupRemoteControl $ fn (action)
              case-default (.-button action) (js/console.warn "|Unknown Action" action)
                |toggle $ dispatch! $ Op :toggle
                |switch $ dispatch! $ Op :switch
            loop-paint!
            loadGamepadControl
            ; paintLagopusTree
          :examples $ []
          :schema $ :: 'Dynamic
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            .unwrap $ respo-browser/query-selector |.app
          :examples $ []
          :schema $ :: 'respo.dom/DomElement
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (reset-memof1-caches!) (render-app!) (clear-cache!) (remove-watch *store :change)
                add-watch *store :change $ fn (next store) (render-app!)
                println |Reloaded.
                hud! |ok~ |OK
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Dynamic
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            let
                store @*store
                tree $ memof1-call comp-container store
                nav $ memof1-call comp-nav store
              reset-clear-color! $ .unwrap-or bg-color $ theme-color (:theme store)
              renderLagopusTree tree dispatch!
              render! mount-target nav dispatch!
              , &unit
          :examples $ []
          :ffi $ {} (:backend :js) (:target :browser)
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'theme-color $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn theme-color (theme)
            match theme
              :white $ :: :rgba 0.9 0.9 0.9 0.98
              :dark $ :: :rgba 0.04 0 0.1 0.98
              :gray $ :: :rgba 0.3 0.3 0.3 0.98
              _ $ :: :rgba 0.04 0 0.1 0.98
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Enum)
            :args $ [] 'Tag
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            app.comp.container :refer $ comp-container
            |@triadica/lagopus :refer $ setupMouseEvents onControlEvent paintLagopusTree renderLagopusTree initializeContext resetCanvasSize initializeCanvasTextures registerShaderResult enableBloom loadGamepadControl
            |@triadica/touch-control :refer $ renderControl startControlLoop
            app.config :refer $ dev? mobile? bloom? remote-control?
            |bottom-tip :default hud!
            |./calcit.build-errors :default build-errors
            memof.once :refer $ memof1-call reset-memof1-caches!
            lagopus.util :refer $ handle-compilation reset-clear-color!
            app.updater :refer $ updater
            |@triadica/lagopus/lib/remote-control.mjs :refer $ setupRemoteControl
            app.comp.nav :refer $ comp-nav
            respo.core :refer $ render! clear-cache!
            js-ffi.browser :refer $ query-selector request-animation-frame!
            app.state :refer $ Store empty-tree Op
            lagopus.config :refer $ bg-color
            respo.ffi.browser :as respo-browser
    'app.state $ %{} 'FileEntry
      :defs $ {}
        'LocalState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum LocalState (:hh 'Number) (:hopf-base 'quaternion.vector/V3)
          :examples $ []
          :schema $ :: 'EnumDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :state (:: 'List 'Tag) 'app.state/LocalState
            :tab 'Tag 'Tag
            :tau 'Number
            :toggle
            :switch
          :examples $ []
          :schema $ :: 'EnumDef
        'StateCursor $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct StateCursor
            :cursor $ :: 'List 'Tag
            :data $ :: 'Option 'app.state/LocalState
          :examples $ []
          :schema $ :: 'StructDef
        'StateTree $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct StateTree
            :data $ :: 'Option 'app.state/LocalState
            :branches $ :: 'Map 'Tag 'app.state/StateTree
          :examples $ []
          :schema $ :: 'StructDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store (:states 'app.state/StateTree) (:tab 'Tag) (:theme 'Tag) (:show-tabs? 'Bool) (:show-controls? 'Bool)
            :tau $ :: 'Option 'Number
          :examples $ []
          :schema $ :: 'StructDef
        'base-at $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn base-at (states)
            match (:data states)
              (:none) (quaternion.vector/v3 90 8 4)
              (:some value)
                match value
                  (:hopf-base base) base
                  _ $ raise |Expected-Hopf-state
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'quaternion.vector/V3)
            :args $ [] 'app.state/StateCursor
        'cursor-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn cursor-state (tree cursor)
            StateCursor :cursor cursor :data $ state-at tree cursor
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.state/StateCursor)
            :args $ [] 'app.state/StateTree $ :: 'List 'Tag
        'empty-tree $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn empty-tree ()
            StateTree :data (%none) :branches $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.state/StateTree)
            :args $ []
        'put-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn put-state (tree cursor value)
            match (destruct-list cursor)
              (:none)
                assoc tree :data $ %some value
              (:some key more)
                assoc tree :branches $ assoc (:branches tree) key $ put-state
                  .unwrap-or
                    get (:branches tree) key
                    empty-tree
                  , more value
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.state/StateTree)
            :args $ [] 'app.state/StateTree (:: 'List 'Tag) 'app.state/LocalState
        'state-at $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn state-at (tree cursor)
            match (destruct-list cursor)
              (:some key more)
                state-at
                  .unwrap-or
                    get (:branches tree) key
                    empty-tree
                  , more
              (:none) (:data tree)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'app.state/StateTree $ :: 'List 'Tag
            :return $ :: 'Option 'app.state/LocalState
        'tau-at $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn tau-at (states)
            match (:data states)
              (:none) 4.0
              (:some value)
                match value
                  (:hh tau) tau
                  _ $ raise |Expected-helicoid-state
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ [] 'app.state/StateCursor
        'warn-op! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn warn-op! (op) (js/console.warn "|Unknown op:" op) &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'app.state/Op
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.state
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op)
            match op
              (:state cursor state)
                assoc store :states $ put-state (:states store) cursor state
              (:tab tab theme)
                -> store (assoc :tab tab) (assoc :theme theme)
              (:tau tau)
                assoc store :tau $ %some tau
              (:toggle)
                assoc store :show-tabs? $ not $ :show-tabs? store
              _ $ do (warn-op! op) store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.state/Store)
            :args $ [] 'app.state/Store 'app.state/Op
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ app.state :refer $ put-state warn-op!
    'app.util $ %{} 'FileEntry
      :defs $ {}
        'interoplate-line $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn interoplate-line (from to n)
            ->
              range $ inc n
              map $ fn (i)
                let
                    a $ / i n
                    b $ - 1 a
                  v+ (v-scale from a) (v-scale to b)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'quaternion.vector/V3 'quaternion.vector/V3 'Number
            :return $ :: 'List 'quaternion.vector/V3
        'random-number $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn random-number ()
            js-ffi.contract/expect-number |Math.random $ js/Math.random
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ []
            :features $ #{} :js-ffi
        'round-js $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn round-js (value)
            js-ffi.contract/expect-number |Math.round $ js/Math.round value
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ [] 'Number
            :features $ #{} :js-ffi
        'shader-params $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn shader-params (a b c d) (js-array a b c d)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ [] 'Number 'Number 'Number 'Number
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.util
          :require $ quaternion.vector :refer $ v+ v-scale
