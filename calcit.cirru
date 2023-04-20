
{}
  :configs $ {} (:compact-output? true) (:extension |.cljs) (:init-fn |app.main/main!) (:output |src) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |memof/ |quaternion/ |lagopus/
  :entries $ {}
  :ir $ {} (:package |app)
    :files $ {}
      |app.comp.container $ {}
        :configs $ {}
        :defs $ {}
          |comp-container $ {} (:at 1677433056435) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1677433056435) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |b $ {} (:at 1677433056435) (:by |rJG4IHzWf) (:text |comp-container) (:type :leaf)
              |h $ {} (:at 1677433056435) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1677948598306) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
              |l $ {} (:at 1682011302918) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1682011304182) (:by |rJG4IHzWf) (:text |let) (:type :leaf)
                  |L $ {} (:at 1682011304698) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1682011304904) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1682011305765) (:by |rJG4IHzWf) (:text |states) (:type :leaf)
                          |b $ {} (:at 1682011306155) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1682011315854) (:by |rJG4IHzWf) (:text |:states) (:type :leaf)
                              |b $ {} (:at 1682011317424) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                  |T $ {} (:at 1677433063041) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1677433065889) (:by |rJG4IHzWf) (:text |group) (:type :leaf)
                      |a $ {} (:at 1677525513079) (:by |rJG4IHzWf) (:text |nil) (:type :leaf)
                      |h $ {} (:at 1680407403613) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1680407404794) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                          |L $ {} (:at 1680407405150) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1680407405427) (:by |rJG4IHzWf) (:text |not) (:type :leaf)
                              |b $ {} (:at 1680407408061) (:by |rJG4IHzWf) (:text |hide-tabs?) (:type :leaf)
                          |T $ {} (:at 1677952357899) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1677952388469) (:by |rJG4IHzWf) (:text |memof1-call) (:type :leaf)
                              |T $ {} (:at 1677952361169) (:by |rJG4IHzWf) (:text |comp-tabs) (:type :leaf)
                      |k $ {} (:at 1677948615027) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1677948616873) (:by |rJG4IHzWf) (:text |case-default) (:type :leaf)
                          |L $ {} (:at 1677948619406) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677948619961) (:by |rJG4IHzWf) (:text |:tab) (:type :leaf)
                              |b $ {} (:at 1677948620619) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                          |P $ {} (:at 1677948636611) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677948637868) (:by |rJG4IHzWf) (:text |group) (:type :leaf)
                              |b $ {} (:at 1677948638957) (:by |rJG4IHzWf) (:text |nil) (:type :leaf)
                          |h $ {} (:at 1677948624850) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1678986175707) (:by |rJG4IHzWf) (:text |:cube) (:type :leaf)
                              |b $ {} (:at 1680406632503) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1680406644298) (:by |rJG4IHzWf) (:text |comp-cubes) (:type :leaf)
                          |l $ {} (:at 1677948624850) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1681405413098) (:by |rJG4IHzWf) (:text |:helicoid) (:type :leaf)
                              |b $ {} (:at 1680406632503) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1681492471956) (:by |rJG4IHzWf) (:text |comp-helicoid) (:type :leaf)
                          |o $ {} (:at 1681492433467) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1681494274365) (:by |rJG4IHzWf) (:text |:hyperbolic-helicoid) (:type :leaf)
                              |b $ {} (:at 1681492448074) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1681492574074) (:by |rJG4IHzWf) (:text |comp-hyperbolic-helicoid) (:type :leaf)
                                  |X $ {} (:at 1682011298307) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1682011298803) (:by |rJG4IHzWf) (:text |>>) (:type :leaf)
                                      |X $ {} (:at 1682011321132) (:by |rJG4IHzWf) (:text |states) (:type :leaf)
                                      |Z $ {} (:at 1682011325739) (:by |rJG4IHzWf) (:text |:hh) (:type :leaf)
                                      |b $ {} (:at 1682011299153) (:by |rJG4IHzWf) (:text |) (:type :leaf)
                          |q $ {} (:at 1681920291608) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1681920293377) (:by |rJG4IHzWf) (:text |:globe) (:type :leaf)
                              |b $ {} (:at 1681920293976) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1681920296563) (:by |rJG4IHzWf) (:text |comp-globe) (:type :leaf)
          |comp-tabs $ {} (:at 1677952370971) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1677952370971) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |b $ {} (:at 1677952370971) (:by |rJG4IHzWf) (:text |comp-tabs) (:type :leaf)
              |h $ {} (:at 1677952370971) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
              |l $ {} (:at 1677952379151) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1677952380021) (:by |rJG4IHzWf) (:text |group) (:type :leaf)
                  |L $ {} (:at 1677952382178) (:by |rJG4IHzWf) (:text |nil) (:type :leaf)
                  |l $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |comp-button) (:type :leaf)
                      |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |:position) (:type :leaf)
                              |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                  |b $ {} (:at 1680333420049) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                  |h $ {} (:at 1680333438067) (:by |rJG4IHzWf) (:text |200) (:type :leaf)
                                  |l $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                          |h $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |:color) (:type :leaf)
                              |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                  |b $ {} (:at 1678986254482) (:by |rJG4IHzWf) (:text |0.3) (:type :leaf)
                                  |h $ {} (:at 1678810089475) (:by |rJG4IHzWf) (:text |0.9) (:type :leaf)
                                  |l $ {} (:at 1678810090679) (:by |rJG4IHzWf) (:text |0.2) (:type :leaf)
                                  |o $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                          |l $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |:size) (:type :leaf)
                              |b $ {} (:at 1677952432581) (:by |rJG4IHzWf) (:text |20) (:type :leaf)
                      |h $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                          |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |e) (:type :leaf)
                              |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |d!) (:type :leaf)
                          |h $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |d!) (:type :leaf)
                              |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |:tab) (:type :leaf)
                              |h $ {} (:at 1678986258598) (:by |rJG4IHzWf) (:text |:cube) (:type :leaf)
                  |o $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |comp-button) (:type :leaf)
                      |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |:position) (:type :leaf)
                              |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                  |b $ {} (:at 1680333447115) (:by |rJG4IHzWf) (:text |40) (:type :leaf)
                                  |h $ {} (:at 1680333438067) (:by |rJG4IHzWf) (:text |200) (:type :leaf)
                                  |l $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                          |h $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |:color) (:type :leaf)
                              |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                  |b $ {} (:at 1680333465483) (:by |rJG4IHzWf) (:text |0.8) (:type :leaf)
                                  |h $ {} (:at 1680333461751) (:by |rJG4IHzWf) (:text |0.3) (:type :leaf)
                                  |l $ {} (:at 1680333468696) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                  |o $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                          |l $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |:size) (:type :leaf)
                              |b $ {} (:at 1677952432581) (:by |rJG4IHzWf) (:text |20) (:type :leaf)
                      |h $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                          |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |e) (:type :leaf)
                              |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |d!) (:type :leaf)
                          |h $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |d!) (:type :leaf)
                              |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |:tab) (:type :leaf)
                              |h $ {} (:at 1681405483190) (:by |rJG4IHzWf) (:text |:helicoid) (:type :leaf)
                  |q $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |comp-button) (:type :leaf)
                      |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |:position) (:type :leaf)
                              |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                  |b $ {} (:at 1681492409317) (:by |rJG4IHzWf) (:text |80) (:type :leaf)
                                  |h $ {} (:at 1680333438067) (:by |rJG4IHzWf) (:text |200) (:type :leaf)
                                  |l $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                          |h $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |:color) (:type :leaf)
                              |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                  |b $ {} (:at 1681492412203) (:by |rJG4IHzWf) (:text |0.6) (:type :leaf)
                                  |h $ {} (:at 1680333461751) (:by |rJG4IHzWf) (:text |0.3) (:type :leaf)
                                  |l $ {} (:at 1680333468696) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                  |o $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                          |l $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |:size) (:type :leaf)
                              |b $ {} (:at 1677952432581) (:by |rJG4IHzWf) (:text |20) (:type :leaf)
                      |h $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                          |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |e) (:type :leaf)
                              |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |d!) (:type :leaf)
                          |h $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |d!) (:type :leaf)
                              |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |:tab) (:type :leaf)
                              |h $ {} (:at 1681494279266) (:by |rJG4IHzWf) (:text |:hyperbolic-helicoid) (:type :leaf)
                  |s $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |comp-button) (:type :leaf)
                      |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |:position) (:type :leaf)
                              |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                  |b $ {} (:at 1681920337689) (:by |rJG4IHzWf) (:text |120) (:type :leaf)
                                  |h $ {} (:at 1680333438067) (:by |rJG4IHzWf) (:text |200) (:type :leaf)
                                  |l $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                          |h $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |:color) (:type :leaf)
                              |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                  |b $ {} (:at 1681920341694) (:by |rJG4IHzWf) (:text |0.3) (:type :leaf)
                                  |h $ {} (:at 1681920346258) (:by |rJG4IHzWf) (:text |0.9) (:type :leaf)
                                  |l $ {} (:at 1681920344696) (:by |rJG4IHzWf) (:text |0.5) (:type :leaf)
                                  |o $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                          |l $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |:size) (:type :leaf)
                              |b $ {} (:at 1677952432581) (:by |rJG4IHzWf) (:text |20) (:type :leaf)
                      |h $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                          |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |e) (:type :leaf)
                              |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |d!) (:type :leaf)
                          |h $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |d!) (:type :leaf)
                              |b $ {} (:at 1677952383571) (:by |rJG4IHzWf) (:text |:tab) (:type :leaf)
                              |h $ {} (:at 1681920353019) (:by |rJG4IHzWf) (:text |:globe) (:type :leaf)
        :ns $ {} (:at 1677433051244) (:by |rJG4IHzWf) (:type :expr)
          :data $ {}
            |T $ {} (:at 1677433051244) (:by |rJG4IHzWf) (:text |ns) (:type :leaf)
            |b $ {} (:at 1677433051244) (:by |rJG4IHzWf) (:text |app.comp.container) (:type :leaf)
            |h $ {} (:at 1677433079126) (:by |rJG4IHzWf) (:type :expr)
              :data $ {}
                |T $ {} (:at 1677433080972) (:by |rJG4IHzWf) (:text |:require) (:type :leaf)
                |b $ {} (:at 1677433081355) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1680327729040) (:by |rJG4IHzWf) (:text |lagopus.alias) (:type :leaf)
                    |b $ {} (:at 1677433092940) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1677433105529) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1677433106293) (:by |rJG4IHzWf) (:text |group) (:type :leaf)
                        |b $ {} (:at 1677433417824) (:by |rJG4IHzWf) (:text |object) (:type :leaf)
                |k $ {} (:at 1677433786320) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |D $ {} (:at 1678986201758) (:by |rJG4IHzWf) (:text "|\"../shaders/cube.wgsl") (:type :leaf)
                    |T $ {} (:at 1677433797065) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |b $ {} (:at 1678986203567) (:by |rJG4IHzWf) (:text |cube-wgsl) (:type :leaf)
                |l $ {} (:at 1677932595907) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1680327727098) (:by |rJG4IHzWf) (:text |lagopus.comp.button) (:type :leaf)
                    |b $ {} (:at 1677932602874) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1677932603063) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1677932605353) (:by |rJG4IHzWf) (:text |comp-button) (:type :leaf)
                |m $ {} (:at 1679327340996) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1680327738442) (:by |rJG4IHzWf) (:text |lagopus.comp.curves) (:type :leaf)
                    |b $ {} (:at 1679327347332) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1679327347586) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1679327350157) (:by |rJG4IHzWf) (:text |comp-curves) (:type :leaf)
                |n $ {} (:at 1680200122550) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1680327740794) (:by |rJG4IHzWf) (:text |lagopus.comp.spots) (:type :leaf)
                    |b $ {} (:at 1680200128259) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1680200128454) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1680200133485) (:by |rJG4IHzWf) (:text |comp-spots) (:type :leaf)
                |o $ {} (:at 1677952303627) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1677952307124) (:by |rJG4IHzWf) (:text |memof.once) (:type :leaf)
                    |b $ {} (:at 1677952307932) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1677952308209) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1677952308571) (:by |rJG4IHzWf) (:text |memof1-call) (:type :leaf)
                |q $ {} (:at 1678729925437) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1678729941423) (:by |rJG4IHzWf) (:text |quaternion.core) (:type :leaf)
                    |b $ {} (:at 1678729930201) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1678729932287) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1678729932961) (:by |rJG4IHzWf) (:text |c+) (:type :leaf)
                |s $ {} (:at 1680346345483) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1680346353697) (:by |rJG4IHzWf) (:text |app.comp.cube-combo) (:type :leaf)
                    |b $ {} (:at 1680346354588) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1680346354807) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1680406657776) (:by |rJG4IHzWf) (:text |comp-cubes) (:type :leaf)
                |t $ {} (:at 1680407411784) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1680407413957) (:by |rJG4IHzWf) (:text |app.config) (:type :leaf)
                    |b $ {} (:at 1680407414969) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1680407417466) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1680407417274) (:by |rJG4IHzWf) (:text |hide-tabs?) (:type :leaf)
                |u $ {} (:at 1681405460547) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681405460547) (:by |rJG4IHzWf) (:text |app.comp.helicoid) (:type :leaf)
                    |b $ {} (:at 1681405460547) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1681405460547) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |D $ {} (:at 1681492469044) (:by |rJG4IHzWf) (:text |comp-helicoid) (:type :leaf)
                        |T $ {} (:at 1681405460547) (:by |rJG4IHzWf) (:text |comp-hyperbolic-helicoid) (:type :leaf)
                |v $ {} (:at 1681920289344) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681920289344) (:by |rJG4IHzWf) (:text |app.comp.globe) (:type :leaf)
                    |b $ {} (:at 1681920289344) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1681920289344) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1681920289344) (:by |rJG4IHzWf) (:text |comp-globe) (:type :leaf)
                |w $ {} (:at 1682011431911) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1682011435233) (:by |rJG4IHzWf) (:text |lagopus.cursor) (:type :leaf)
                    |b $ {} (:at 1682011435937) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1682011436629) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1682011437068) (:by |rJG4IHzWf) (:text |>>) (:type :leaf)
      |app.comp.cube-combo $ {}
        :configs $ {}
        :defs $ {}
          |comp-cubes $ {} (:at 1678986191601) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1678986191601) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |b $ {} (:at 1680406653738) (:by |rJG4IHzWf) (:text |comp-cubes) (:type :leaf)
              |h $ {} (:at 1678986191601) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
              |l $ {} (:at 1680406739415) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1680406740074) (:by |rJG4IHzWf) (:text |let) (:type :leaf)
                  |H $ {} (:at 1680406751193) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1680406751525) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1680406758323) (:by |rJG4IHzWf) (:text |cube-count) (:type :leaf)
                          |b $ {} (:at 1680407167525) (:by |rJG4IHzWf) (:text |60) (:type :leaf)
                  |T $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:text |object) (:type :leaf)
                      |b $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:text |:shader) (:type :leaf)
                              |b $ {} (:at 1680346684961) (:by |rJG4IHzWf) (:text |cube-combo-wgsl) (:type :leaf)
                          |h $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:text |:topology) (:type :leaf)
                              |b $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:text |do) (:type :leaf)
                                  |h $ {} (:at 1680347457533) (:by |rJG4IHzWf) (:text |:line-strip) (:type :leaf)
                                  |l $ {} (:at 1680347499019) (:by |rJG4IHzWf) (:text |:triangle-list) (:type :leaf)
                          |l $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:text |:attrs-list) (:type :leaf)
                              |b $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                  |b $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                      |b $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:text |:field) (:type :leaf)
                                          |b $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:text |:position) (:type :leaf)
                                      |h $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:text |:format) (:type :leaf)
                                          |b $ {} (:at 1678986215052) (:by |rJG4IHzWf) (:text "|\"float32x3") (:type :leaf)
                                  |h $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                      |b $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:text |:field) (:type :leaf)
                                          |b $ {} (:at 1680348048227) (:by |rJG4IHzWf) (:text |:metrics) (:type :leaf)
                                      |h $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:text |:format) (:type :leaf)
                                          |b $ {} (:at 1678986215052) (:by |rJG4IHzWf) (:text "|\"float32x3") (:type :leaf)
                                  |l $ {} (:at 1680349313882) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1680349314429) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                      |b $ {} (:at 1680349315159) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1680349329456) (:by |rJG4IHzWf) (:text |:field) (:type :leaf)
                                          |b $ {} (:at 1680349332740) (:by |rJG4IHzWf) (:text |:idx) (:type :leaf)
                                      |h $ {} (:at 1680349333989) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1680349335459) (:by |rJG4IHzWf) (:text |:format) (:type :leaf)
                                          |b $ {} (:at 1680349339706) (:by |rJG4IHzWf) (:text "|\"uint32") (:type :leaf)
                                  |o $ {} (:at 1680349313882) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1680349314429) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                      |b $ {} (:at 1680349315159) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1680349329456) (:by |rJG4IHzWf) (:text |:field) (:type :leaf)
                                          |b $ {} (:at 1680406193329) (:by |rJG4IHzWf) (:text |:offsets) (:type :leaf)
                                      |h $ {} (:at 1680349333989) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1680349335459) (:by |rJG4IHzWf) (:text |:format) (:type :leaf)
                                          |b $ {} (:at 1680406196957) (:by |rJG4IHzWf) (:text "|\"float32x3") (:type :leaf)
                          |o $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1678986193719) (:by |rJG4IHzWf) (:text |:data) (:type :leaf)
                              |X $ {} (:at 1680406741064) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1680406666231) (:by |rJG4IHzWf) (:text |->) (:type :leaf)
                                  |b $ {} (:at 1680406666231) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1680406666231) (:by |rJG4IHzWf) (:text |range) (:type :leaf)
                                      |b $ {} (:at 1680406778492) (:by |rJG4IHzWf) (:text |cube-count) (:type :leaf)
                                  |h $ {} (:at 1680406666231) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1680406666231) (:by |rJG4IHzWf) (:text |map) (:type :leaf)
                                      |b $ {} (:at 1680406666231) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1680406666231) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                                          |b $ {} (:at 1680406666231) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1680406666231) (:by |rJG4IHzWf) (:text |idx) (:type :leaf)
                                          |l $ {} (:at 1680406692043) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |5 $ {} (:at 1680406694442) (:by |rJG4IHzWf) (:text |let) (:type :leaf)
                                              |D $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |area) (:type :leaf)
                                                      |b $ {} (:at 1680407452201) (:by |rJG4IHzWf) (:text |460) (:type :leaf)
                                                  |b $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |base) (:type :leaf)
                                                      |b $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                          |b $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |rand-shift) (:type :leaf)
                                                              |b $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                                              |h $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |area) (:type :leaf)
                                                          |h $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |rand-shift) (:type :leaf)
                                                              |b $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                                              |h $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |area) (:type :leaf)
                                                          |l $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |rand-shift) (:type :leaf)
                                                              |b $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                                              |h $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |area) (:type :leaf)
                                                  |h $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |size-bound) (:type :leaf)
                                                      |b $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |80) (:type :leaf)
                                                  |l $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |offsets) (:type :leaf)
                                                      |b $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                          |b $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |+) (:type :leaf)
                                                              |b $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |10) (:type :leaf)
                                                              |h $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |rand) (:type :leaf)
                                                                  |b $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |size-bound) (:type :leaf)
                                                          |h $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |+) (:type :leaf)
                                                              |b $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |10) (:type :leaf)
                                                              |h $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |rand) (:type :leaf)
                                                                  |b $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |size-bound) (:type :leaf)
                                                          |l $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |+) (:type :leaf)
                                                              |b $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |10) (:type :leaf)
                                                              |h $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |rand) (:type :leaf)
                                                                  |b $ {} (:at 1680406692760) (:by |rJG4IHzWf) (:text |size-bound) (:type :leaf)
                                              |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                  |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                                      |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:idx) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |idx) (:type :leaf)
                                                      |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:offsets) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |offsets) (:type :leaf)
                                                      |l $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:metrics) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                              |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |-1) (:type :leaf)
                                                              |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |-1) (:type :leaf)
                                                              |l $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                      |o $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:position) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |v+) (:type :leaf)
                                                              |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |base) (:type :leaf)
                                                              |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |->) (:type :leaf)
                                                                  |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |offsets) (:type :leaf)
                                                                  |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |update) (:type :leaf)
                                                                      |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                                                      |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |negate) (:type :leaf)
                                                                  |l $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |update) (:type :leaf)
                                                                      |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                                      |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |negate) (:type :leaf)
                                                  |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                                      |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:idx) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |idx) (:type :leaf)
                                                      |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:offsets) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |offsets) (:type :leaf)
                                                      |l $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:metrics) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                              |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                              |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |-1) (:type :leaf)
                                                              |l $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                      |o $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:position) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |v+) (:type :leaf)
                                                              |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |base) (:type :leaf)
                                                              |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |->) (:type :leaf)
                                                                  |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |offsets) (:type :leaf)
                                                                  |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |update) (:type :leaf)
                                                                      |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                                      |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |negate) (:type :leaf)
                                                  |l $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                                      |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:idx) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |idx) (:type :leaf)
                                                      |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:offsets) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |offsets) (:type :leaf)
                                                      |l $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:metrics) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                              |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                              |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |-1) (:type :leaf)
                                                              |l $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |-1) (:type :leaf)
                                                      |o $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:position) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |v+) (:type :leaf)
                                                              |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |base) (:type :leaf)
                                                              |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |->) (:type :leaf)
                                                                  |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |offsets) (:type :leaf)
                                                                  |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |update) (:type :leaf)
                                                                      |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                                      |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |negate) (:type :leaf)
                                                                  |l $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |update) (:type :leaf)
                                                                      |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |2) (:type :leaf)
                                                                      |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |negate) (:type :leaf)
                                                  |o $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                                      |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:idx) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |idx) (:type :leaf)
                                                      |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:offsets) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |offsets) (:type :leaf)
                                                      |l $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:metrics) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                              |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |-1) (:type :leaf)
                                                              |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |-1) (:type :leaf)
                                                              |l $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |-1) (:type :leaf)
                                                      |o $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:position) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |v+) (:type :leaf)
                                                              |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |base) (:type :leaf)
                                                              |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |->) (:type :leaf)
                                                                  |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |offsets) (:type :leaf)
                                                                  |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |update) (:type :leaf)
                                                                      |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                                                      |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |negate) (:type :leaf)
                                                                  |l $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |update) (:type :leaf)
                                                                      |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                                      |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |negate) (:type :leaf)
                                                                  |o $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |update) (:type :leaf)
                                                                      |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |2) (:type :leaf)
                                                                      |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |negate) (:type :leaf)
                                                  |q $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                                      |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:idx) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |idx) (:type :leaf)
                                                      |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:offsets) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |offsets) (:type :leaf)
                                                      |l $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:metrics) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                              |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |-1) (:type :leaf)
                                                              |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                              |l $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                      |o $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:position) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |v+) (:type :leaf)
                                                              |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |base) (:type :leaf)
                                                              |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |->) (:type :leaf)
                                                                  |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |offsets) (:type :leaf)
                                                                  |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |update) (:type :leaf)
                                                                      |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                                                      |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |negate) (:type :leaf)
                                                  |s $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                                      |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:idx) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |idx) (:type :leaf)
                                                      |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:offsets) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |offsets) (:type :leaf)
                                                      |l $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:metrics) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                              |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                              |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                              |l $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                      |o $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:position) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |v+) (:type :leaf)
                                                              |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |base) (:type :leaf)
                                                              |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |offsets) (:type :leaf)
                                                  |t $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                                      |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:idx) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |idx) (:type :leaf)
                                                      |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:offsets) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |offsets) (:type :leaf)
                                                      |l $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:metrics) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                              |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                              |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                              |l $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |-1) (:type :leaf)
                                                      |o $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:position) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |v+) (:type :leaf)
                                                              |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |base) (:type :leaf)
                                                              |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |->) (:type :leaf)
                                                                  |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |offsets) (:type :leaf)
                                                                  |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |update) (:type :leaf)
                                                                      |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |2) (:type :leaf)
                                                                      |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |negate) (:type :leaf)
                                                  |u $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                                      |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:idx) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |idx) (:type :leaf)
                                                      |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:offsets) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |offsets) (:type :leaf)
                                                      |l $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:metrics) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                              |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |-1) (:type :leaf)
                                                              |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                              |l $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |-1) (:type :leaf)
                                                      |o $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |:position) (:type :leaf)
                                                          |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |v+) (:type :leaf)
                                                              |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |base) (:type :leaf)
                                                              |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |->) (:type :leaf)
                                                                  |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |offsets) (:type :leaf)
                                                                  |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |update) (:type :leaf)
                                                                      |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                                                      |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |negate) (:type :leaf)
                                                                  |l $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |update) (:type :leaf)
                                                                      |b $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |2) (:type :leaf)
                                                                      |h $ {} (:at 1680406670261) (:by |rJG4IHzWf) (:text |negate) (:type :leaf)
                          |q $ {} (:at 1678986265077) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1678986266801) (:by |rJG4IHzWf) (:text |:indices) (:type :leaf)
                              |b $ {} (:at 1680406784449) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1680406785102) (:by |rJG4IHzWf) (:text |let) (:type :leaf)
                                  |T $ {} (:at 1680406785672) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1680406786155) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1680406795740) (:by |rJG4IHzWf) (:text |indices) (:type :leaf)
                                          |T $ {} (:at 1680406812977) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1680406818335) (:by |rJG4IHzWf) (:text |concat) (:type :leaf)
                                              |L $ {} (:at 1680406818883) (:by |rJG4IHzWf) (:text |&) (:type :leaf)
                                              |T $ {} (:at 1678988515373) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1678988515857) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                  |T $ {} (:at 1678986267604) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1678986267718) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                      |b $ {} (:at 1678988057365) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                                      |h $ {} (:at 1678987372503) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                      |l $ {} (:at 1678988051947) (:by |rJG4IHzWf) (:text |2) (:type :leaf)
                                                      |o $ {} (:at 1678987374434) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                                      |q $ {} (:at 1678987375298) (:by |rJG4IHzWf) (:text |2) (:type :leaf)
                                                      |s $ {} (:at 1678987375964) (:by |rJG4IHzWf) (:text |3) (:type :leaf)
                                                      |t $ {} (:at 1678988573286) (:by |rJG4IHzWf) (:text |) (:type :leaf)
                                                  |TT $ {} (:at 1678988574804) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1678988576578) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                      |b $ {} (:at 1678988577405) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                                      |h $ {} (:at 1678988577905) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                      |l $ {} (:at 1678988578727) (:by |rJG4IHzWf) (:text |5) (:type :leaf)
                                                      |o $ {} (:at 1678988579741) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                                      |q $ {} (:at 1678988580126) (:by |rJG4IHzWf) (:text |4) (:type :leaf)
                                                      |s $ {} (:at 1678988580362) (:by |rJG4IHzWf) (:text |5) (:type :leaf)
                                                  |U $ {} (:at 1678988563475) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1678988564242) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                      |b $ {} (:at 1678988565764) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                      |h $ {} (:at 1678988566262) (:by |rJG4IHzWf) (:text |2) (:type :leaf)
                                                      |l $ {} (:at 1678988567607) (:by |rJG4IHzWf) (:text |6) (:type :leaf)
                                                      |o $ {} (:at 1678988569051) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                      |q $ {} (:at 1678988569686) (:by |rJG4IHzWf) (:text |6) (:type :leaf)
                                                      |s $ {} (:at 1678988569972) (:by |rJG4IHzWf) (:text |5) (:type :leaf)
                                                  |V $ {} (:at 1678988552917) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1678988554370) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                      |b $ {} (:at 1678988556356) (:by |rJG4IHzWf) (:text |2) (:type :leaf)
                                                      |h $ {} (:at 1678988556615) (:by |rJG4IHzWf) (:text |3) (:type :leaf)
                                                      |l $ {} (:at 1678988556974) (:by |rJG4IHzWf) (:text |6) (:type :leaf)
                                                      |o $ {} (:at 1678988557597) (:by |rJG4IHzWf) (:text |3) (:type :leaf)
                                                      |q $ {} (:at 1678988557989) (:by |rJG4IHzWf) (:text |6) (:type :leaf)
                                                      |s $ {} (:at 1678988558268) (:by |rJG4IHzWf) (:text |7) (:type :leaf)
                                                  |X $ {} (:at 1678988541701) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1678988542042) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                      |b $ {} (:at 1678988545377) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                                      |h $ {} (:at 1678988545694) (:by |rJG4IHzWf) (:text |3) (:type :leaf)
                                                      |l $ {} (:at 1678988546012) (:by |rJG4IHzWf) (:text |4) (:type :leaf)
                                                      |o $ {} (:at 1678988546770) (:by |rJG4IHzWf) (:text |3) (:type :leaf)
                                                      |q $ {} (:at 1678988547152) (:by |rJG4IHzWf) (:text |4) (:type :leaf)
                                                      |s $ {} (:at 1678988547518) (:by |rJG4IHzWf) (:text |7) (:type :leaf)
                                                  |b $ {} (:at 1678988530122) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1678988531158) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                      |b $ {} (:at 1678988534662) (:by |rJG4IHzWf) (:text |4) (:type :leaf)
                                                      |h $ {} (:at 1678988535001) (:by |rJG4IHzWf) (:text |5) (:type :leaf)
                                                      |l $ {} (:at 1678988535303) (:by |rJG4IHzWf) (:text |6) (:type :leaf)
                                                      |o $ {} (:at 1678988535704) (:by |rJG4IHzWf) (:text |4) (:type :leaf)
                                                      |q $ {} (:at 1678988536033) (:by |rJG4IHzWf) (:text |6) (:type :leaf)
                                                      |s $ {} (:at 1678988536299) (:by |rJG4IHzWf) (:text |7) (:type :leaf)
                                  |b $ {} (:at 1680406938415) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1680406939095) (:by |rJG4IHzWf) (:text |->) (:type :leaf)
                                      |L $ {} (:at 1680406939902) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1680406939902) (:by |rJG4IHzWf) (:text |range) (:type :leaf)
                                          |b $ {} (:at 1680406939902) (:by |rJG4IHzWf) (:text |cube-count) (:type :leaf)
                                      |T $ {} (:at 1680406798382) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1680406798936) (:by |rJG4IHzWf) (:text |map) (:type :leaf)
                                          |h $ {} (:at 1680406804798) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1680406805043) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                                              |b $ {} (:at 1680406805321) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1680406806521) (:by |rJG4IHzWf) (:text |idx) (:type :leaf)
                                              |h $ {} (:at 1680406946659) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1680406947361) (:by |rJG4IHzWf) (:text |->) (:type :leaf)
                                                  |L $ {} (:at 1680406947839) (:by |rJG4IHzWf) (:text |indices) (:type :leaf)
                                                  |T $ {} (:at 1680406855986) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1680406856625) (:by |rJG4IHzWf) (:text |map) (:type :leaf)
                                                      |T $ {} (:at 1680406860344) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1680406861271) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                                                          |L $ {} (:at 1680406861595) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1680406861821) (:by |rJG4IHzWf) (:text |x) (:type :leaf)
                                                          |T $ {} (:at 1680406869769) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |D $ {} (:at 1680406870246) (:by |rJG4IHzWf) (:text |+) (:type :leaf)
                                                              |L $ {} (:at 1680406870715) (:by |rJG4IHzWf) (:text |x) (:type :leaf)
                                                              |T $ {} (:at 1680406807817) (:by |rJG4IHzWf) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1680406844519) (:by |rJG4IHzWf) (:text |*) (:type :leaf)
                                                                  |b $ {} (:at 1680406999684) (:by |rJG4IHzWf) (:text |8) (:type :leaf)
                                                                  |h $ {} (:at 1680406846447) (:by |rJG4IHzWf) (:text |idx) (:type :leaf)
        :ns $ {} (:at 1680346316431) (:by |rJG4IHzWf) (:type :expr)
          :data $ {}
            |T $ {} (:at 1680346316431) (:by |rJG4IHzWf) (:text |ns) (:type :leaf)
            |b $ {} (:at 1680346316431) (:by |rJG4IHzWf) (:text |app.comp.cube-combo) (:type :leaf)
            |h $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:type :expr)
              :data $ {}
                |T $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:text |:require) (:type :leaf)
                |b $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:text |lagopus.alias) (:type :leaf)
                    |b $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:text |group) (:type :leaf)
                        |b $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:text |object) (:type :leaf)
                |h $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1680346682411) (:by |rJG4IHzWf) (:text "|\"../shaders/cube-combo.wgsl") (:type :leaf)
                    |b $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |h $ {} (:at 1680346679067) (:by |rJG4IHzWf) (:text |cube-combo-wgsl) (:type :leaf)
                |l $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:text |lagopus.comp.button) (:type :leaf)
                    |b $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:text |comp-button) (:type :leaf)
                |o $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:text |lagopus.comp.curves) (:type :leaf)
                    |b $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:text |comp-curves) (:type :leaf)
                |q $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:text |lagopus.comp.spots) (:type :leaf)
                    |b $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:text |comp-spots) (:type :leaf)
                |s $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:text |memof.once) (:type :leaf)
                    |b $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:text |memof1-call) (:type :leaf)
                |t $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:text |quaternion.core) (:type :leaf)
                    |b $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1680346336848) (:by |rJG4IHzWf) (:text |c+) (:type :leaf)
                        |b $ {} (:at 1680347223424) (:by |rJG4IHzWf) (:text |v+) (:type :leaf)
                |u $ {} (:at 1680347132019) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1680347136030) (:by |rJG4IHzWf) (:text "|\"@calcit/std") (:type :leaf)
                    |b $ {} (:at 1680347137342) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1680347137878) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1680347139040) (:by |rJG4IHzWf) (:text |rand) (:type :leaf)
                        |b $ {} (:at 1680347732349) (:by |rJG4IHzWf) (:text |rand-shift) (:type :leaf)
      |app.comp.globe $ {}
        :configs $ {}
        :defs $ {}
          |comp-globe $ {} (:at 1681920245936) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1681920245936) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |b $ {} (:at 1681920245936) (:by |rJG4IHzWf) (:text |comp-globe) (:type :leaf)
              |h $ {} (:at 1681920245936) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
              |l $ {} (:at 1681920249432) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1681920249432) (:by |rJG4IHzWf) (:text |comp-sphere) (:type :leaf)
                  |b $ {} (:at 1681920249432) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1681920249432) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1681920249432) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |H $ {} (:at 1681923269663) (:by |rJG4IHzWf) (:text |;) (:type :leaf)
                          |b $ {} (:at 1681920249432) (:by |rJG4IHzWf) (:text |:topology) (:type :leaf)
                          |h $ {} (:at 1681920249432) (:by |rJG4IHzWf) (:text |:line-strip) (:type :leaf)
                      |e $ {} (:at 1681921594588) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1681921596372) (:by |rJG4IHzWf) (:text |:shader) (:type :leaf)
                          |b $ {} (:at 1681921621734) (:by |rJG4IHzWf) (:text |wgsl-globe) (:type :leaf)
                      |h $ {} (:at 1681920249432) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1681920249432) (:by |rJG4IHzWf) (:text |:iteration) (:type :leaf)
                          |b $ {} (:at 1681924744322) (:by |rJG4IHzWf) (:text |7) (:type :leaf)
                      |l $ {} (:at 1681920249432) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1681920249432) (:by |rJG4IHzWf) (:text |:radius) (:type :leaf)
                          |b $ {} (:at 1681924393870) (:by |rJG4IHzWf) (:text |1800) (:type :leaf)
                      |o $ {} (:at 1681920249432) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1681920249432) (:by |rJG4IHzWf) (:text |:color) (:type :leaf)
                          |b $ {} (:at 1681920249432) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1681920249432) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                              |b $ {} (:at 1681920249432) (:by |rJG4IHzWf) (:text |0.6) (:type :leaf)
                              |h $ {} (:at 1681920249432) (:by |rJG4IHzWf) (:text |0.9) (:type :leaf)
                              |l $ {} (:at 1681920249432) (:by |rJG4IHzWf) (:text |0.7) (:type :leaf)
          |wgsl-globe $ {} (:at 1681921622173) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1681921622173) (:by |rJG4IHzWf) (:text |def) (:type :leaf)
              |b $ {} (:at 1681921622173) (:by |rJG4IHzWf) (:text |wgsl-globe) (:type :leaf)
              |h $ {} (:at 1681921623479) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1681921623479) (:by |rJG4IHzWf) (:text |inline-shader) (:type :leaf)
                  |b $ {} (:at 1681921623479) (:by |rJG4IHzWf) (:text "|\"globe") (:type :leaf)
        :ns $ {} (:at 1681920238455) (:by |rJG4IHzWf) (:type :expr)
          :data $ {}
            |T $ {} (:at 1681920238455) (:by |rJG4IHzWf) (:text |ns) (:type :leaf)
            |b $ {} (:at 1681920238455) (:by |rJG4IHzWf) (:text |app.comp.globe) (:type :leaf)
            |h $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:type :expr)
              :data $ {}
                |T $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |:require) (:type :leaf)
                |b $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |lagopus.alias) (:type :leaf)
                    |b $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |group) (:type :leaf)
                        |b $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |object) (:type :leaf)
                |h $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text "|\"../shaders/cube-combo.wgsl") (:type :leaf)
                    |b $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |h $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |cube-combo-wgsl) (:type :leaf)
                |l $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |lagopus.comp.button) (:type :leaf)
                    |b $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |comp-button) (:type :leaf)
                |o $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |lagopus.comp.curves) (:type :leaf)
                    |b $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |comp-curves) (:type :leaf)
                |q $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |lagopus.comp.spots) (:type :leaf)
                    |b $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |comp-spots) (:type :leaf)
                |s $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |memof.once) (:type :leaf)
                    |b $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |memof1-call) (:type :leaf)
                |t $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |quaternion.core) (:type :leaf)
                    |b $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |c+) (:type :leaf)
                        |b $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |v+) (:type :leaf)
                |u $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text "|\"@calcit/std") (:type :leaf)
                    |b $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |rand) (:type :leaf)
                        |b $ {} (:at 1681920264235) (:by |rJG4IHzWf) (:text |rand-shift) (:type :leaf)
                |v $ {} (:at 1681920265625) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681920484756) (:by |rJG4IHzWf) (:text |lagopus.comp.sphere) (:type :leaf)
                    |b $ {} (:at 1681920272787) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1681920273005) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1681920275402) (:by |rJG4IHzWf) (:text |comp-sphere) (:type :leaf)
                |w $ {} (:at 1681921603854) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681921605348) (:by |rJG4IHzWf) (:text |app.config) (:type :leaf)
                    |b $ {} (:at 1681921606097) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1681921606301) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1681921610220) (:by |rJG4IHzWf) (:text |inline-shader) (:type :leaf)
      |app.comp.helicoid $ {}
        :configs $ {}
        :defs $ {}
          |build-01-grid $ {} (:at 1681493013423) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1681493013423) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |b $ {} (:at 1681493013423) (:by |rJG4IHzWf) (:text |build-01-grid) (:type :leaf)
              |h $ {} (:at 1681493013423) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1681493015876) (:by |rJG4IHzWf) (:text |size) (:type :leaf)
                  |b $ {} (:at 1681493692494) (:by |rJG4IHzWf) (:text |s) (:type :leaf)
              |l $ {} (:at 1681493022201) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1681493023169) (:by |rJG4IHzWf) (:text |->) (:type :leaf)
                  |T $ {} (:at 1681493017961) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1681493664080) (:by |rJG4IHzWf) (:text |range-bothway) (:type :leaf)
                      |b $ {} (:at 1681493021637) (:by |rJG4IHzWf) (:text |size) (:type :leaf)
                  |b $ {} (:at 1681493024470) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1681493025669) (:by |rJG4IHzWf) (:text |map) (:type :leaf)
                      |b $ {} (:at 1681493026438) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1681493026771) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                          |b $ {} (:at 1681493027057) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1681493028512) (:by |rJG4IHzWf) (:text |x) (:type :leaf)
                          |h $ {} (:at 1681493029664) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1681493032909) (:by |rJG4IHzWf) (:text |->) (:type :leaf)
                              |b $ {} (:at 1681493035285) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1681493667782) (:by |rJG4IHzWf) (:text |range-bothway) (:type :leaf)
                                  |b $ {} (:at 1681493036337) (:by |rJG4IHzWf) (:text |size) (:type :leaf)
                              |h $ {} (:at 1681493036970) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1681493038655) (:by |rJG4IHzWf) (:text |map) (:type :leaf)
                                  |b $ {} (:at 1681493039669) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1681493040482) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                                      |b $ {} (:at 1681493040797) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1681493040906) (:by |rJG4IHzWf) (:text |y) (:type :leaf)
                                      |h $ {} (:at 1681493091890) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1681493092555) (:by |rJG4IHzWf) (:text |let) (:type :leaf)
                                          |L $ {} (:at 1681493092815) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1681493695212) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1681493145622) (:by |rJG4IHzWf) (:text |r) (:type :leaf)
                                                  |b $ {} (:at 1681493696779) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1681493697578) (:by |rJG4IHzWf) (:text |*) (:type :leaf)
                                                      |L $ {} (:at 1681493697886) (:by |rJG4IHzWf) (:text |s) (:type :leaf)
                                                      |T $ {} (:at 1681493146530) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1681493148238) (:by |rJG4IHzWf) (:text |&/) (:type :leaf)
                                                          |b $ {} (:at 1681493148663) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                          |h $ {} (:at 1681493149460) (:by |rJG4IHzWf) (:text |size) (:type :leaf)
                                              |T $ {} (:at 1681493092945) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1681493093785) (:by |rJG4IHzWf) (:text |p0) (:type :leaf)
                                                  |b $ {} (:at 1681493095055) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1681493095526) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                      |b $ {} (:at 1681493152406) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1681493153058) (:by |rJG4IHzWf) (:text |*) (:type :leaf)
                                                          |L $ {} (:at 1681493153672) (:by |rJG4IHzWf) (:text |r) (:type :leaf)
                                                          |T $ {} (:at 1681493096053) (:by |rJG4IHzWf) (:text |x) (:type :leaf)
                                                      |h $ {} (:at 1681493154926) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1681493156097) (:by |rJG4IHzWf) (:text |*) (:type :leaf)
                                                          |L $ {} (:at 1681493156534) (:by |rJG4IHzWf) (:text |r) (:type :leaf)
                                                          |T $ {} (:at 1681493097284) (:by |rJG4IHzWf) (:text |y) (:type :leaf)
                                              |b $ {} (:at 1681493098211) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1681493099501) (:by |rJG4IHzWf) (:text |p1) (:type :leaf)
                                                  |b $ {} (:at 1681493100241) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1681493101105) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                      |b $ {} (:at 1681493159237) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1681493160587) (:by |rJG4IHzWf) (:text |*) (:type :leaf)
                                                          |L $ {} (:at 1681493160912) (:by |rJG4IHzWf) (:text |r) (:type :leaf)
                                                          |T $ {} (:at 1681493101986) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1681493102495) (:by |rJG4IHzWf) (:text |inc) (:type :leaf)
                                                              |b $ {} (:at 1681493103343) (:by |rJG4IHzWf) (:text |x) (:type :leaf)
                                                      |h $ {} (:at 1681493162254) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1681493164028) (:by |rJG4IHzWf) (:text |*) (:type :leaf)
                                                          |L $ {} (:at 1681493164443) (:by |rJG4IHzWf) (:text |r) (:type :leaf)
                                                          |T $ {} (:at 1681493104653) (:by |rJG4IHzWf) (:text |y) (:type :leaf)
                                              |h $ {} (:at 1681493098211) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1681493109126) (:by |rJG4IHzWf) (:text |p2) (:type :leaf)
                                                  |b $ {} (:at 1681493100241) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1681493101105) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                      |b $ {} (:at 1681493165675) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1681493166638) (:by |rJG4IHzWf) (:text |*) (:type :leaf)
                                                          |L $ {} (:at 1681493167056) (:by |rJG4IHzWf) (:text |r) (:type :leaf)
                                                          |T $ {} (:at 1681493103343) (:by |rJG4IHzWf) (:text |x) (:type :leaf)
                                                      |h $ {} (:at 1681493168313) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1681493170379) (:by |rJG4IHzWf) (:text |*) (:type :leaf)
                                                          |L $ {} (:at 1681493170887) (:by |rJG4IHzWf) (:text |r) (:type :leaf)
                                                          |T $ {} (:at 1681493111932) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |D $ {} (:at 1681493112783) (:by |rJG4IHzWf) (:text |inc) (:type :leaf)
                                                              |T $ {} (:at 1681493104653) (:by |rJG4IHzWf) (:text |y) (:type :leaf)
                                              |l $ {} (:at 1681493113854) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1681493114817) (:by |rJG4IHzWf) (:text |p3) (:type :leaf)
                                                  |b $ {} (:at 1681493115313) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1681493115601) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                      |b $ {} (:at 1681493176715) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1681493177806) (:by |rJG4IHzWf) (:text |*) (:type :leaf)
                                                          |L $ {} (:at 1681493178115) (:by |rJG4IHzWf) (:text |r) (:type :leaf)
                                                          |T $ {} (:at 1681493119239) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |D $ {} (:at 1681493120656) (:by |rJG4IHzWf) (:text |inc) (:type :leaf)
                                                              |T $ {} (:at 1681493116363) (:by |rJG4IHzWf) (:text |x) (:type :leaf)
                                                      |h $ {} (:at 1681493179282) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1681493180471) (:by |rJG4IHzWf) (:text |*) (:type :leaf)
                                                          |L $ {} (:at 1681493180843) (:by |rJG4IHzWf) (:text |r) (:type :leaf)
                                                          |T $ {} (:at 1681493121264) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1681493121987) (:by |rJG4IHzWf) (:text |inc) (:type :leaf)
                                                              |b $ {} (:at 1681493122379) (:by |rJG4IHzWf) (:text |y) (:type :leaf)
                                          |T $ {} (:at 1681493041855) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1681493053757) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                              |b $ {} (:at 1681493056590) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1681493063903) (:by |rJG4IHzWf) (:text |&{}) (:type :leaf)
                                                  |b $ {} (:at 1681493066058) (:by |rJG4IHzWf) (:text |:position) (:type :leaf)
                                                  |h $ {} (:at 1681493190195) (:by |rJG4IHzWf) (:text |p0) (:type :leaf)
                                              |h $ {} (:at 1681493056590) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1681493063903) (:by |rJG4IHzWf) (:text |&{}) (:type :leaf)
                                                  |b $ {} (:at 1681493066058) (:by |rJG4IHzWf) (:text |:position) (:type :leaf)
                                                  |h $ {} (:at 1681493127070) (:by |rJG4IHzWf) (:text |p1) (:type :leaf)
                                              |l $ {} (:at 1681493056590) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1681493063903) (:by |rJG4IHzWf) (:text |&{}) (:type :leaf)
                                                  |b $ {} (:at 1681493066058) (:by |rJG4IHzWf) (:text |:position) (:type :leaf)
                                                  |h $ {} (:at 1681493191765) (:by |rJG4IHzWf) (:text |p2) (:type :leaf)
                                              |o $ {} (:at 1681493056590) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1681493063903) (:by |rJG4IHzWf) (:text |&{}) (:type :leaf)
                                                  |b $ {} (:at 1681493066058) (:by |rJG4IHzWf) (:text |:position) (:type :leaf)
                                                  |h $ {} (:at 1681493127070) (:by |rJG4IHzWf) (:text |p1) (:type :leaf)
                                              |q $ {} (:at 1681493056590) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1681493063903) (:by |rJG4IHzWf) (:text |&{}) (:type :leaf)
                                                  |b $ {} (:at 1681493066058) (:by |rJG4IHzWf) (:text |:position) (:type :leaf)
                                                  |h $ {} (:at 1681493194118) (:by |rJG4IHzWf) (:text |p2) (:type :leaf)
                                              |s $ {} (:at 1681493056590) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1681493063903) (:by |rJG4IHzWf) (:text |&{}) (:type :leaf)
                                                  |b $ {} (:at 1681493066058) (:by |rJG4IHzWf) (:text |:position) (:type :leaf)
                                                  |h $ {} (:at 1681493195492) (:by |rJG4IHzWf) (:text |p3) (:type :leaf)
          |comp-helicoid $ {} (:at 1681405432844) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1681405432844) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |b $ {} (:at 1681492462005) (:by |rJG4IHzWf) (:text |comp-helicoid) (:type :leaf)
              |e $ {} (:at 1681405502462) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
              |h $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |comp-plate) (:type :leaf)
                  |b $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |;) (:type :leaf)
                          |b $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |:topology) (:type :leaf)
                          |h $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |:line-strip) (:type :leaf)
                      |e $ {} (:at 1681405936386) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1681405938457) (:by |rJG4IHzWf) (:text |:shader) (:type :leaf)
                          |b $ {} (:at 1681405961894) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1681405961509) (:by |rJG4IHzWf) (:text |inline-shader) (:type :leaf)
                              |b $ {} (:at 1681405972911) (:by |rJG4IHzWf) (:text "|\"helicoid") (:type :leaf)
                      |h $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |:iteration) (:type :leaf)
                          |b $ {} (:at 1681407697163) (:by |rJG4IHzWf) (:text |120) (:type :leaf)
                      |l $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |:radius) (:type :leaf)
                          |b $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |160) (:type :leaf)
                      |o $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |:color) (:type :leaf)
                          |b $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                              |b $ {} (:at 1681406270806) (:by |rJG4IHzWf) (:text |0.56) (:type :leaf)
                              |h $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |0.8) (:type :leaf)
                              |l $ {} (:at 1681407017594) (:by |rJG4IHzWf) (:text |0.84) (:type :leaf)
                      |s $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |;) (:type :leaf)
                          |b $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |:x-direction) (:type :leaf)
                          |h $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                              |b $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                              |h $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                              |l $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                      |t $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |;) (:type :leaf)
                          |b $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |:y-direction) (:type :leaf)
                          |h $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                              |b $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                              |h $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                              |l $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                      |u $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |:chromatism) (:type :leaf)
                          |b $ {} (:at 1681405549501) (:by |rJG4IHzWf) (:text |0.14) (:type :leaf)
          |comp-hyperbolic-helicoid $ {} (:at 1681492476033) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1681492477169) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |b $ {} (:at 1681492601148) (:by |rJG4IHzWf) (:text |comp-hyperbolic-helicoid) (:type :leaf)
              |e $ {} (:at 1681492482496) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1682011336765) (:by |rJG4IHzWf) (:text |states) (:type :leaf)
              |h $ {} (:at 1682011339540) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1682011340257) (:by |rJG4IHzWf) (:text |let) (:type :leaf)
                  |L $ {} (:at 1682011340776) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1682011357244) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1682011359980) (:by |rJG4IHzWf) (:text |cursor) (:type :leaf)
                          |T $ {} (:at 1682011350017) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1682011351441) (:by |rJG4IHzWf) (:text |:cursor) (:type :leaf)
                              |b $ {} (:at 1682011355634) (:by |rJG4IHzWf) (:text |states) (:type :leaf)
                      |T $ {} (:at 1682011340972) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1682011342689) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                          |b $ {} (:at 1682011362066) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1682011363876) (:by |rJG4IHzWf) (:text |either) (:type :leaf)
                              |T $ {} (:at 1682011343979) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1682011347999) (:by |rJG4IHzWf) (:text |:data) (:type :leaf)
                                  |b $ {} (:at 1682011348972) (:by |rJG4IHzWf) (:text |states) (:type :leaf)
                              |b $ {} (:at 1682011364494) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1682011365524) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1682011366303) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1682011367557) (:by |rJG4IHzWf) (:text |:tau) (:type :leaf)
                                      |b $ {} (:at 1682011399316) (:by |rJG4IHzWf) (:text |4.0) (:type :leaf)
                      |b $ {} (:at 1682011400459) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1682011403033) (:by |rJG4IHzWf) (:text |tau) (:type :leaf)
                          |b $ {} (:at 1682011403409) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1682011405404) (:by |rJG4IHzWf) (:text |:tau) (:type :leaf)
                              |b $ {} (:at 1682011406106) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                  |T $ {} (:at 1681492720144) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1681492721547) (:by |rJG4IHzWf) (:text |group) (:type :leaf)
                      |L $ {} (:at 1681492725983) (:by |rJG4IHzWf) (:text |nil) (:type :leaf)
                      |T $ {} (:at 1681492522072) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1681492522072) (:by |rJG4IHzWf) (:text |object) (:type :leaf)
                          |b $ {} (:at 1681492522072) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1681492522072) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                              |b $ {} (:at 1681492522072) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1681492522072) (:by |rJG4IHzWf) (:text |:shader) (:type :leaf)
                                  |b $ {} (:at 1681492676072) (:by |rJG4IHzWf) (:text |hyperbolic-helicoid-wgsl) (:type :leaf)
                              |h $ {} (:at 1681492522072) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1681492522072) (:by |rJG4IHzWf) (:text |:topology) (:type :leaf)
                                  |b $ {} (:at 1681493252957) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1681493253514) (:by |rJG4IHzWf) (:text |do) (:type :leaf)
                                      |T $ {} (:at 1681492522072) (:by |rJG4IHzWf) (:text |:triangle-list) (:type :leaf)
                                      |b $ {} (:at 1681493259350) (:by |rJG4IHzWf) (:text |:line-strip) (:type :leaf)
                              |l $ {} (:at 1681492522072) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1681492522072) (:by |rJG4IHzWf) (:text |:attrs-list) (:type :leaf)
                                  |b $ {} (:at 1681492522072) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1681492522072) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                      |b $ {} (:at 1681492522072) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1681492522072) (:by |rJG4IHzWf) (:text |::) (:type :leaf)
                                          |b $ {} (:at 1681493208961) (:by |rJG4IHzWf) (:text |:float32x2) (:type :leaf)
                                          |h $ {} (:at 1681492522072) (:by |rJG4IHzWf) (:text |:position) (:type :leaf)
                              |o $ {} (:at 1681492522072) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1681492522072) (:by |rJG4IHzWf) (:text |:data) (:type :leaf)
                                  |b $ {} (:at 1681492983923) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1681492987907) (:by |rJG4IHzWf) (:text |build-01-grid) (:type :leaf)
                                      |b $ {} (:at 1681494799241) (:by |rJG4IHzWf) (:text |80) (:type :leaf)
                                      |h $ {} (:at 1681494795309) (:by |rJG4IHzWf) (:text |6) (:type :leaf)
                              |q $ {} (:at 1681494423969) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1681494427206) (:by |rJG4IHzWf) (:text |:add-uniform) (:type :leaf)
                                  |b $ {} (:at 1681494427727) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1681494428027) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                                      |b $ {} (:at 1681494428328) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                      |h $ {} (:at 1681494429098) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1681494431200) (:by |rJG4IHzWf) (:text |js-array) (:type :leaf)
                                          |b $ {} (:at 1681494434435) (:by |rJG4IHzWf) (:text |tau) (:type :leaf)
                                          |h $ {} (:at 1681494626748) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                          |l $ {} (:at 1681494626996) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                          |o $ {} (:at 1681494627299) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                      |b $ {} (:at 1681494086947) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1681494087599) (:by |rJG4IHzWf) (:text |compSlider) (:type :leaf)
                          |b $ {} (:at 1681494108455) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1681494110561) (:by |rJG4IHzWf) (:text |to-js-data) (:type :leaf)
                              |b $ {} (:at 1681494111646) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1681494111971) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1681494114403) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1681494115428) (:by |rJG4IHzWf) (:text |:position) (:type :leaf)
                                      |b $ {} (:at 1681494116852) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1681494117024) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                          |b $ {} (:at 1681494846065) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                          |h $ {} (:at 1681494832695) (:by |rJG4IHzWf) (:text |240) (:type :leaf)
                                          |l $ {} (:at 1681494118144) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                  |h $ {} (:at 1681494120262) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1681494122191) (:by |rJG4IHzWf) (:text |:size) (:type :leaf)
                                      |b $ {} (:at 1681494762535) (:by |rJG4IHzWf) (:text |12) (:type :leaf)
                                  |l $ {} (:at 1681494184011) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1681494185749) (:by |rJG4IHzWf) (:text |:color) (:type :leaf)
                                      |b $ {} (:at 1681494186059) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1681494186229) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                          |b $ {} (:at 1681494338026) (:by |rJG4IHzWf) (:text |0.7) (:type :leaf)
                                          |h $ {} (:at 1681494330508) (:by |rJG4IHzWf) (:text |0.6) (:type :leaf)
                                          |l $ {} (:at 1681494333268) (:by |rJG4IHzWf) (:text |0.5) (:type :leaf)
                                          |o $ {} (:at 1681494201370) (:by |rJG4IHzWf) (:text |1.0) (:type :leaf)
                          |h $ {} (:at 1681494135288) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1681494135547) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                              |b $ {} (:at 1681494135851) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1681494148783) (:by |rJG4IHzWf) (:text |delta) (:type :leaf)
                                  |b $ {} (:at 1681494152198) (:by |rJG4IHzWf) (:text |d!) (:type :leaf)
                              |h $ {} (:at 1682011411857) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1682011413703) (:by |rJG4IHzWf) (:text |d!) (:type :leaf)
                                  |L $ {} (:at 1682011415605) (:by |rJG4IHzWf) (:text |cursor) (:type :leaf)
                                  |T $ {} (:at 1681494156702) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1682011419128) (:by |rJG4IHzWf) (:text |assoc) (:type :leaf)
                                      |V $ {} (:at 1682011422060) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                                      |X $ {} (:at 1681494441971) (:by |rJG4IHzWf) (:text |:tau) (:type :leaf)
                                      |b $ {} (:at 1681494452161) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1681494452634) (:by |rJG4IHzWf) (:text |+) (:type :leaf)
                                          |L $ {} (:at 1681494454791) (:by |rJG4IHzWf) (:text |tau) (:type :leaf)
                                          |T $ {} (:at 1681494526080) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1681494526896) (:by |rJG4IHzWf) (:text |*) (:type :leaf)
                                              |L $ {} (:at 1681494528740) (:by |rJG4IHzWf) (:text |0.01) (:type :leaf)
                                              |T $ {} (:at 1681494449193) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1681494512025) (:by |rJG4IHzWf) (:text |.-0) (:type :leaf)
                                                  |T $ {} (:at 1681494159839) (:by |rJG4IHzWf) (:text |delta) (:type :leaf)
        :ns $ {} (:at 1681405425792) (:by |rJG4IHzWf) (:type :expr)
          :data $ {}
            |T $ {} (:at 1681405425792) (:by |rJG4IHzWf) (:text |ns) (:type :leaf)
            |b $ {} (:at 1681405425792) (:by |rJG4IHzWf) (:text |app.comp.helicoid) (:type :leaf)
            |h $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:type :expr)
              :data $ {}
                |T $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |:require) (:type :leaf)
                |b $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |lagopus.alias) (:type :leaf)
                    |b $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |group) (:type :leaf)
                        |b $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |object) (:type :leaf)
                |h $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681492668977) (:by |rJG4IHzWf) (:text "|\"../shaders/hyperbolic-helicoid.wgsl") (:type :leaf)
                    |b $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |h $ {} (:at 1681492663260) (:by |rJG4IHzWf) (:text |hyperbolic-helicoid-wgsl) (:type :leaf)
                |l $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |lagopus.comp.button) (:type :leaf)
                    |b $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |comp-button) (:type :leaf)
                |o $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |lagopus.comp.curves) (:type :leaf)
                    |b $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |comp-curves) (:type :leaf)
                |q $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |lagopus.comp.spots) (:type :leaf)
                    |b $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |comp-spots) (:type :leaf)
                |s $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |memof.once) (:type :leaf)
                    |b $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |memof1-call) (:type :leaf)
                |t $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |quaternion.core) (:type :leaf)
                    |b $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |c+) (:type :leaf)
                        |b $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |v+) (:type :leaf)
                |u $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text "|\"@calcit/std") (:type :leaf)
                    |b $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |rand) (:type :leaf)
                        |b $ {} (:at 1681405445492) (:by |rJG4IHzWf) (:text |rand-shift) (:type :leaf)
                |v $ {} (:at 1681405556208) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681405560213) (:by |rJG4IHzWf) (:text |lagopus.comp.plate) (:type :leaf)
                    |b $ {} (:at 1681405560998) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1681405561440) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1681405561691) (:by |rJG4IHzWf) (:text |comp-plate) (:type :leaf)
                |w $ {} (:at 1681405947594) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681405957362) (:by |rJG4IHzWf) (:text |app.config) (:type :leaf)
                    |b $ {} (:at 1681405950880) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1681405951086) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1681405952653) (:by |rJG4IHzWf) (:text |inline-shader) (:type :leaf)
                |x $ {} (:at 1681494092490) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681494099134) (:by |rJG4IHzWf) (:text "|\"@triadica/lagopus") (:type :leaf)
                    |b $ {} (:at 1681494102001) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1681494102943) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1681494104922) (:by |rJG4IHzWf) (:text |compSlider) (:type :leaf)
      |app.config $ {}
        :configs $ {}
        :defs $ {}
          |bloom? $ {} (:at 1681145746050) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1681145746050) (:by |rJG4IHzWf) (:text |def) (:type :leaf)
              |b $ {} (:at 1681145746050) (:by |rJG4IHzWf) (:text |bloom?) (:type :leaf)
              |h $ {} (:at 1681145746050) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1681145746050) (:by |rJG4IHzWf) (:text |=) (:type :leaf)
                  |b $ {} (:at 1681145746050) (:by |rJG4IHzWf) (:text "|\"true") (:type :leaf)
                  |h $ {} (:at 1681145746050) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1681145746050) (:by |rJG4IHzWf) (:text |get-env) (:type :leaf)
                      |b $ {} (:at 1681145746050) (:by |rJG4IHzWf) (:text "|\"bloom") (:type :leaf)
                      |h $ {} (:at 1681145746050) (:by |rJG4IHzWf) (:text "|\"false") (:type :leaf)
          |dev? $ {} (:at 1677605432427) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1677605434118) (:by |rJG4IHzWf) (:text |def) (:type :leaf)
              |b $ {} (:at 1677605432427) (:by |rJG4IHzWf) (:text |dev?) (:type :leaf)
              |h $ {} (:at 1677605432427) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1677605449054) (:by |rJG4IHzWf) (:text |&=) (:type :leaf)
                  |b $ {} (:at 1677605476519) (:by |rJG4IHzWf) (:text "|\"dev") (:type :leaf)
                  |h $ {} (:at 1677605439035) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1677605442105) (:by |rJG4IHzWf) (:text |get-env) (:type :leaf)
                      |b $ {} (:at 1677605442879) (:by |rJG4IHzWf) (:text "|\"mode") (:type :leaf)
                      |h $ {} (:at 1677605444997) (:by |rJG4IHzWf) (:text "|\"release") (:type :leaf)
          |hide-tabs? $ {} (:at 1680407375067) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1680407380718) (:by |rJG4IHzWf) (:text |def) (:type :leaf)
              |b $ {} (:at 1680407379570) (:by |rJG4IHzWf) (:text |hide-tabs?) (:type :leaf)
              |h $ {} (:at 1680407375067) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1680407382373) (:by |rJG4IHzWf) (:text |=) (:type :leaf)
                  |b $ {} (:at 1680407390362) (:by |rJG4IHzWf) (:text "|\"true") (:type :leaf)
                  |h $ {} (:at 1680407391839) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1680407392628) (:by |rJG4IHzWf) (:text |get-env) (:type :leaf)
                      |b $ {} (:at 1680407395801) (:by |rJG4IHzWf) (:text "|\"hide-tabs") (:type :leaf)
                      |h $ {} (:at 1680407397810) (:by |rJG4IHzWf) (:text "|\"false") (:type :leaf)
          |inline-shader $ {} (:at 1677692440520) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1677692445759) (:by |rJG4IHzWf) (:text |defmacro) (:type :leaf)
              |b $ {} (:at 1677692440520) (:by |rJG4IHzWf) (:text |inline-shader) (:type :leaf)
              |h $ {} (:at 1677692440520) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1677692448017) (:by |rJG4IHzWf) (:text |path) (:type :leaf)
              |l $ {} (:at 1677692452080) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1677692522637) (:by |rJG4IHzWf) (:text |read-file) (:type :leaf)
                  |b $ {} (:at 1677692456154) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1677692458583) (:by |rJG4IHzWf) (:text |str) (:type :leaf)
                      |L $ {} (:at 1677692463151) (:by |rJG4IHzWf) (:text "|\"shaders/") (:type :leaf)
                      |T $ {} (:at 1677692455592) (:by |rJG4IHzWf) (:text |path) (:type :leaf)
                      |b $ {} (:at 1677692479319) (:by |rJG4IHzWf) (:text "|\".wgsl") (:type :leaf)
          |mobile-info $ {} (:at 1681145773199) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1681145773199) (:by |rJG4IHzWf) (:text |def) (:type :leaf)
              |b $ {} (:at 1681145773199) (:by |rJG4IHzWf) (:text |mobile-info) (:type :leaf)
              |h $ {} (:at 1681145773199) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1681145773199) (:by |rJG4IHzWf) (:text |ismobile) (:type :leaf)
                  |b $ {} (:at 1681145773199) (:by |rJG4IHzWf) (:text |js/window.navigator) (:type :leaf)
        :ns $ {} (:at 1677605429745) (:by |rJG4IHzWf) (:type :expr)
          :data $ {}
            |T $ {} (:at 1677605429745) (:by |rJG4IHzWf) (:text |ns) (:type :leaf)
            |b $ {} (:at 1677605429745) (:by |rJG4IHzWf) (:text |app.config) (:type :leaf)
            |h $ {} (:at 1681145751908) (:by |rJG4IHzWf) (:type :expr)
              :data $ {}
                |T $ {} (:at 1681145754636) (:by |rJG4IHzWf) (:text |:require) (:type :leaf)
                |b $ {} (:at 1681145755183) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1681145755183) (:by |rJG4IHzWf) (:text "|\"ismobilejs") (:type :leaf)
                    |b $ {} (:at 1681145755183) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |h $ {} (:at 1681145755183) (:by |rJG4IHzWf) (:text |ismobile) (:type :leaf)
      |app.main $ {}
        :configs $ {}
        :defs $ {}
          |*store $ {} (:at 1677948378750) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1677948380199) (:by |rJG4IHzWf) (:text |defatom) (:type :leaf)
              |b $ {} (:at 1677948378750) (:by |rJG4IHzWf) (:text |*store) (:type :leaf)
              |h $ {} (:at 1677948378750) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1677948381871) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                  |X $ {} (:at 1682011311450) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1682011312439) (:by |rJG4IHzWf) (:text |:states) (:type :leaf)
                      |b $ {} (:at 1682011312833) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1682011313140) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                  |b $ {} (:at 1677948383921) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1677948383429) (:by |rJG4IHzWf) (:text |:tab) (:type :leaf)
                      |b $ {} (:at 1681494239004) (:by |rJG4IHzWf) (:text |:hyperbolic-helicoid) (:type :leaf)
          |canvas $ {} (:at 1677932989462) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1677932989462) (:by |rJG4IHzWf) (:text |def) (:type :leaf)
              |b $ {} (:at 1677932989462) (:by |rJG4IHzWf) (:text |canvas) (:type :leaf)
              |h $ {} (:at 1677932989462) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1677932998984) (:by |rJG4IHzWf) (:text |js/document.querySelector) (:type :leaf)
                  |b $ {} (:at 1677933000721) (:by |rJG4IHzWf) (:text "|\"canvas") (:type :leaf)
          |dispatch! $ {} (:at 1677932176075) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1677932177737) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |b $ {} (:at 1677932176075) (:by |rJG4IHzWf) (:text |dispatch!) (:type :leaf)
              |h $ {} (:at 1677932176075) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1677932178985) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                  |b $ {} (:at 1677932179715) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
              |j $ {} (:at 1677948512581) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1677948512997) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                  |b $ {} (:at 1677948514628) (:by |rJG4IHzWf) (:text |dev?) (:type :leaf)
                  |h $ {} (:at 1677948517910) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1677948736320) (:by |rJG4IHzWf) (:text |js/console.log) (:type :leaf)
                      |b $ {} (:at 1677948520970) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                      |h $ {} (:at 1677948521676) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
              |l $ {} (:at 1677948369357) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1677948370065) (:by |rJG4IHzWf) (:text |let) (:type :leaf)
                  |L $ {} (:at 1677948371444) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1677948371603) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1677948372884) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                          |b $ {} (:at 1677948377760) (:by |rJG4IHzWf) (:text |@*store) (:type :leaf)
                      |b $ {} (:at 1677948395691) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1677948398078) (:by |rJG4IHzWf) (:text |next-store) (:type :leaf)
                          |b $ {} (:at 1682011477789) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1682011478291) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                              |L $ {} (:at 1682011478576) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1682011480325) (:by |rJG4IHzWf) (:text |list?) (:type :leaf)
                                  |b $ {} (:at 1682011480894) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                              |P $ {} (:at 1682011481800) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1682011510515) (:by |rJG4IHzWf) (:text |update-states) (:type :leaf)
                                  |b $ {} (:at 1682011512467) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                                  |h $ {} (:at 1682011512854) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                                  |l $ {} (:at 1682011515505) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
                              |Y $ {} (:at 1682011615270) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1682011611052) (:by |rJG4IHzWf) (:text |updater) (:type :leaf)
                                  |b $ {} (:at 1682011618133) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                                  |h $ {} (:at 1682011618486) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                                  |l $ {} (:at 1682011619849) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
                  |V $ {} (:at 1677948401036) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1677948406785) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                      |b $ {} (:at 1677948407446) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1677948409654) (:by |rJG4IHzWf) (:text |not=) (:type :leaf)
                          |b $ {} (:at 1677948414299) (:by |rJG4IHzWf) (:text |next-store) (:type :leaf)
                          |h $ {} (:at 1677948417299) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                      |h $ {} (:at 1677948419563) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1677948422569) (:by |rJG4IHzWf) (:text |reset!) (:type :leaf)
                          |b $ {} (:at 1677948425297) (:by |rJG4IHzWf) (:text |*store) (:type :leaf)
                          |h $ {} (:at 1677948427387) (:by |rJG4IHzWf) (:text |next-store) (:type :leaf)
          |main! $ {} (:at 1677432887802) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1677432887802) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |b $ {} (:at 1677432887802) (:by |rJG4IHzWf) (:text |main!) (:type :leaf)
              |h $ {} (:at 1677432887802) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
              |m $ {} (:at 1677433196591) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1677433200584) (:by |rJG4IHzWf) (:text |hint-fn) (:type :leaf)
                  |b $ {} (:at 1677433201589) (:by |rJG4IHzWf) (:text |async) (:type :leaf)
              |mD $ {} (:at 1681145805769) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1681145805769) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                  |b $ {} (:at 1681145805769) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1681145805769) (:by |rJG4IHzWf) (:text |and) (:type :leaf)
                      |b $ {} (:at 1681145805769) (:by |rJG4IHzWf) (:text |bloom?) (:type :leaf)
                      |h $ {} (:at 1681145805769) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1681145805769) (:by |rJG4IHzWf) (:text |not) (:type :leaf)
                          |b $ {} (:at 1681145805769) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1681145805769) (:by |rJG4IHzWf) (:text |.-any) (:type :leaf)
                              |b $ {} (:at 1681145805769) (:by |rJG4IHzWf) (:text |mobile-info) (:type :leaf)
                  |h $ {} (:at 1681145805769) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1681145805769) (:by |rJG4IHzWf) (:text |enableBloom) (:type :leaf)
              |mT $ {} (:at 1677605414138) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1677605414611) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                  |b $ {} (:at 1677605462653) (:by |rJG4IHzWf) (:text |dev?) (:type :leaf)
                  |h $ {} (:at 1677605464543) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1677605467481) (:by |rJG4IHzWf) (:text |load-console-formatter!) (:type :leaf)
              |n $ {} (:at 1677433208610) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1677433212563) (:by |rJG4IHzWf) (:text |js-await) (:type :leaf)
                  |b $ {} (:at 1677433401569) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1677433216378) (:by |rJG4IHzWf) (:text |initializeContext) (:type :leaf)
              |nD $ {} (:at 1681145795219) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1681145795219) (:by |rJG4IHzWf) (:text |initializeCanvasTextures) (:type :leaf)
              |nT $ {} (:at 1680375075869) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1680375116827) (:by |rJG4IHzWf) (:text |reset-clear-color!) (:type :leaf)
                  |b $ {} (:at 1680375080677) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1680375081032) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1680375081462) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1680375081908) (:by |rJG4IHzWf) (:text |:r) (:type :leaf)
                          |b $ {} (:at 1680375171259) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                      |h $ {} (:at 1680375084241) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1680375084694) (:by |rJG4IHzWf) (:text |:g) (:type :leaf)
                          |b $ {} (:at 1680375172779) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                      |l $ {} (:at 1680375085811) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1680375086440) (:by |rJG4IHzWf) (:text |:b) (:type :leaf)
                          |b $ {} (:at 1680375173786) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                      |o $ {} (:at 1680375087219) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1680375088081) (:by |rJG4IHzWf) (:text |:a) (:type :leaf)
                          |b $ {} (:at 1681406846925) (:by |rJG4IHzWf) (:text |0.16) (:type :leaf)
              |o $ {} (:at 1677433135290) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1677433136904) (:by |rJG4IHzWf) (:text |render-app!) (:type :leaf)
              |s $ {} (:at 1677433285471) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1677433286108) (:by |rJG4IHzWf) (:text |renderControl) (:type :leaf)
              |t $ {} (:at 1677433304329) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1677433306479) (:by |rJG4IHzWf) (:text |startControlLoop) (:type :leaf)
                  |b $ {} (:at 1677433308382) (:by |rJG4IHzWf) (:text |10) (:type :leaf)
                  |h $ {} (:at 1677433330679) (:by |rJG4IHzWf) (:text |onControlEvent) (:type :leaf)
              |tT $ {} (:at 1677607896853) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1681145788468) (:by |rJG4IHzWf) (:text |registerShaderResult) (:type :leaf)
                  |h $ {} (:at 1677607942741) (:by |rJG4IHzWf) (:text |handle-compilation) (:type :leaf)
              |u $ {} (:at 1677433332929) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1677433342158) (:by |rJG4IHzWf) (:text |set!) (:type :leaf)
                  |b $ {} (:at 1677433345827) (:by |rJG4IHzWf) (:text |js/window.onresize) (:type :leaf)
                  |h $ {} (:at 1677433351910) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1677433353311) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                      |b $ {} (:at 1677433353669) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1677604731253) (:by |rJG4IHzWf) (:text |e) (:type :leaf)
                      |e $ {} (:at 1679819899455) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1681238559900) (:by |rJG4IHzWf) (:text |resetCanvasSize) (:type :leaf)
                          |b $ {} (:at 1679819936880) (:by |rJG4IHzWf) (:text |canvas) (:type :leaf)
                      |f $ {} (:at 1681145884300) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1681145884300) (:by |rJG4IHzWf) (:text |initializeCanvasTextures) (:type :leaf)
                      |h $ {} (:at 1677433354368) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1678027099048) (:by |rJG4IHzWf) (:text |paintLagopusTree) (:type :leaf)
              |uD $ {} (:at 1679819952782) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1681238561691) (:by |rJG4IHzWf) (:text |resetCanvasSize) (:type :leaf)
                  |b $ {} (:at 1679819952782) (:by |rJG4IHzWf) (:text |canvas) (:type :leaf)
              |uT $ {} (:at 1677948445310) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1677948447140) (:by |rJG4IHzWf) (:text |add-watch) (:type :leaf)
                  |b $ {} (:at 1677948449255) (:by |rJG4IHzWf) (:text |*store) (:type :leaf)
                  |h $ {} (:at 1677948451009) (:by |rJG4IHzWf) (:text |:change) (:type :leaf)
                  |l $ {} (:at 1677948451363) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1677948451657) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                      |b $ {} (:at 1677948451941) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1677948454707) (:by |rJG4IHzWf) (:text |next) (:type :leaf)
                          |b $ {} (:at 1677948455936) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                      |h $ {} (:at 1677948457564) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1677948459886) (:by |rJG4IHzWf) (:text |render-app!) (:type :leaf)
              |v $ {} (:at 1677932976878) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1677932976564) (:by |rJG4IHzWf) (:text |setupMouseEvents) (:type :leaf)
                  |b $ {} (:at 1677932986654) (:by |rJG4IHzWf) (:text |canvas) (:type :leaf)
          |reload! $ {} (:at 1677433362201) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1677433362201) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |b $ {} (:at 1677433362201) (:by |rJG4IHzWf) (:text |reload!) (:type :leaf)
              |h $ {} (:at 1677433362201) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
              |i $ {} (:at 1677608676587) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1677608676587) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                  |b $ {} (:at 1677608676587) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1677608676587) (:by |rJG4IHzWf) (:text |nil?) (:type :leaf)
                      |b $ {} (:at 1677608676587) (:by |rJG4IHzWf) (:text |build-errors) (:type :leaf)
                  |e $ {} (:at 1677608683340) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1677608683844) (:by |rJG4IHzWf) (:text |do) (:type :leaf)
                      |X $ {} (:at 1678726594371) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1678726594371) (:by |rJG4IHzWf) (:text |reset-memof1-caches!) (:type :leaf)
                      |b $ {} (:at 1677608686546) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1677608686546) (:by |rJG4IHzWf) (:text |render-app!) (:type :leaf)
                      |i $ {} (:at 1677948480368) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1677948481961) (:by |rJG4IHzWf) (:text |remove-watch) (:type :leaf)
                          |b $ {} (:at 1677948483854) (:by |rJG4IHzWf) (:text |*store) (:type :leaf)
                          |h $ {} (:at 1677948485053) (:by |rJG4IHzWf) (:text |:change) (:type :leaf)
                      |j $ {} (:at 1677948469078) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1677948469078) (:by |rJG4IHzWf) (:text |add-watch) (:type :leaf)
                          |b $ {} (:at 1677948469078) (:by |rJG4IHzWf) (:text |*store) (:type :leaf)
                          |h $ {} (:at 1677948469078) (:by |rJG4IHzWf) (:text |:change) (:type :leaf)
                          |l $ {} (:at 1677948469078) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677948469078) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                              |b $ {} (:at 1677948469078) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1677948469078) (:by |rJG4IHzWf) (:text |next) (:type :leaf)
                                  |b $ {} (:at 1677948469078) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                              |h $ {} (:at 1677948469078) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1677948469078) (:by |rJG4IHzWf) (:text |render-app!) (:type :leaf)
                      |l $ {} (:at 1677608692117) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1677608692117) (:by |rJG4IHzWf) (:text |println) (:type :leaf)
                          |b $ {} (:at 1677608692117) (:by |rJG4IHzWf) (:text "|\"Reloaded.") (:type :leaf)
                      |o $ {} (:at 1677609067967) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1677609067967) (:by |rJG4IHzWf) (:text |hud!) (:type :leaf)
                          |b $ {} (:at 1677609067967) (:by |rJG4IHzWf) (:text "|\"ok~") (:type :leaf)
                          |h $ {} (:at 1677609067967) (:by |rJG4IHzWf) (:text "|\"OK") (:type :leaf)
                  |h $ {} (:at 1677608682298) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1677608682298) (:by |rJG4IHzWf) (:text |hud!) (:type :leaf)
                      |b $ {} (:at 1677608682298) (:by |rJG4IHzWf) (:text "|\"error") (:type :leaf)
                      |h $ {} (:at 1677608682298) (:by |rJG4IHzWf) (:text |build-errors) (:type :leaf)
          |render-app! $ {} (:at 1677433138757) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1677433138757) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |b $ {} (:at 1677433138757) (:by |rJG4IHzWf) (:text |render-app!) (:type :leaf)
              |h $ {} (:at 1677433138757) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
              |l $ {} (:at 1677433140448) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1677433141707) (:by |rJG4IHzWf) (:text |let) (:type :leaf)
                  |b $ {} (:at 1677433142273) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1677433142424) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1677433143114) (:by |rJG4IHzWf) (:text |tree) (:type :leaf)
                          |b $ {} (:at 1677433144848) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1677433144499) (:by |rJG4IHzWf) (:text |comp-container) (:type :leaf)
                              |b $ {} (:at 1677948595311) (:by |rJG4IHzWf) (:text |@*store) (:type :leaf)
                  |l $ {} (:at 1678027054995) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1678027058925) (:by |rJG4IHzWf) (:text |renderLagopusTree) (:type :leaf)
                      |b $ {} (:at 1678027060738) (:by |rJG4IHzWf) (:text |tree) (:type :leaf)
                      |h $ {} (:at 1678027062952) (:by |rJG4IHzWf) (:text |dispatch!) (:type :leaf)
        :ns $ {} (:at 1677432884829) (:by |rJG4IHzWf) (:type :expr)
          :data $ {}
            |T $ {} (:at 1677432884829) (:by |rJG4IHzWf) (:text |ns) (:type :leaf)
            |b $ {} (:at 1677432884829) (:by |rJG4IHzWf) (:text |app.main) (:type :leaf)
            |h $ {} (:at 1677433113206) (:by |rJG4IHzWf) (:type :expr)
              :data $ {}
                |T $ {} (:at 1677433114263) (:by |rJG4IHzWf) (:text |:require) (:type :leaf)
                |b $ {} (:at 1677433114924) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1677433118593) (:by |rJG4IHzWf) (:text |app.comp.container) (:type :leaf)
                    |b $ {} (:at 1677433119515) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1677433119637) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1677433121299) (:by |rJG4IHzWf) (:text |comp-container) (:type :leaf)
                |e $ {} (:at 1678027004911) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1678027011285) (:by |rJG4IHzWf) (:text "|\"@triadica/lagopus") (:type :leaf)
                    |b $ {} (:at 1678027012149) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1678027012727) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1678027015751) (:by |rJG4IHzWf) (:text |setupMouseEvents) (:type :leaf)
                        |b $ {} (:at 1678027018501) (:by |rJG4IHzWf) (:text |onControlEvent) (:type :leaf)
                        |h $ {} (:at 1678027026259) (:by |rJG4IHzWf) (:text |paintLagopusTree) (:type :leaf)
                        |l $ {} (:at 1678027030023) (:by |rJG4IHzWf) (:text |renderLagopusTree) (:type :leaf)
                        |o $ {} (:at 1678027037402) (:by |rJG4IHzWf) (:text |initializeContext) (:type :leaf)
                        |q $ {} (:at 1681238564933) (:by |rJG4IHzWf) (:text |resetCanvasSize) (:type :leaf)
                        |s $ {} (:at 1681145715065) (:by |rJG4IHzWf) (:text |initializeCanvasTextures) (:type :leaf)
                        |t $ {} (:at 1681145719885) (:by |rJG4IHzWf) (:text |registerShaderResult) (:type :leaf)
                        |u $ {} (:at 1681145723570) (:by |rJG4IHzWf) (:text |enableBloom) (:type :leaf)
                |q $ {} (:at 1677433288307) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1677433295405) (:by |rJG4IHzWf) (:text "|\"@triadica/touch-control") (:type :leaf)
                    |b $ {} (:at 1677433296607) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1677433297147) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1677433300163) (:by |rJG4IHzWf) (:text |renderControl) (:type :leaf)
                        |b $ {} (:at 1677433302504) (:by |rJG4IHzWf) (:text |startControlLoop) (:type :leaf)
                |s $ {} (:at 1677605453529) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1677605456722) (:by |rJG4IHzWf) (:text |app.config) (:type :leaf)
                    |b $ {} (:at 1677605457485) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1677605457731) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1677605458461) (:by |rJG4IHzWf) (:text |dev?) (:type :leaf)
                        |b $ {} (:at 1681145730287) (:by |rJG4IHzWf) (:text |mobile-info) (:type :leaf)
                        |h $ {} (:at 1681145738513) (:by |rJG4IHzWf) (:text |bloom?) (:type :leaf)
                |t $ {} (:at 1677608567728) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1677608568258) (:by |rJG4IHzWf) (:text "|\"bottom-tip") (:type :leaf)
                    |b $ {} (:at 1677608572478) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |h $ {} (:at 1677608573439) (:by |rJG4IHzWf) (:text |hud!) (:type :leaf)
                |u $ {} (:at 1677608666219) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1677608666219) (:by |rJG4IHzWf) (:text "|\"./calcit.build-errors") (:type :leaf)
                    |b $ {} (:at 1677608666219) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |h $ {} (:at 1677608666219) (:by |rJG4IHzWf) (:text |build-errors) (:type :leaf)
                |v $ {} (:at 1678726583051) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1678726587340) (:by |rJG4IHzWf) (:text |memof.once) (:type :leaf)
                    |b $ {} (:at 1678726588273) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1678726588568) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1678726589897) (:by |rJG4IHzWf) (:text |reset-memof1-caches!) (:type :leaf)
                |w $ {} (:at 1680333651043) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1680375016798) (:by |rJG4IHzWf) (:text |lagopus.util) (:type :leaf)
                    |b $ {} (:at 1680333655501) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1680333656298) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1680333659123) (:by |rJG4IHzWf) (:text |handle-compilation) (:type :leaf)
                        |b $ {} (:at 1680375094752) (:by |rJG4IHzWf) (:text |reset-clear-color!) (:type :leaf)
                |x $ {} (:at 1682011518290) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1682011521627) (:by |rJG4IHzWf) (:text |lagopus.cursor) (:type :leaf)
                    |b $ {} (:at 1682011522839) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1682011523081) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1682011525131) (:by |rJG4IHzWf) (:text |update-states) (:type :leaf)
                |y $ {} (:at 1682011649318) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1682011651383) (:by |rJG4IHzWf) (:text |app.updater) (:type :leaf)
                    |b $ {} (:at 1682011652091) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1682011652375) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1682011653172) (:by |rJG4IHzWf) (:text |updater) (:type :leaf)
      |app.updater $ {}
        :configs $ {}
        :defs $ {}
          |updater $ {} (:at 1682011620621) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1682011620621) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |b $ {} (:at 1682011645781) (:by |rJG4IHzWf) (:text |updater) (:type :leaf)
              |h $ {} (:at 1682011620621) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1682011620621) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                  |b $ {} (:at 1682011620621) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                  |h $ {} (:at 1682011620621) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
              |l $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:text |case-default) (:type :leaf)
                  |b $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                  |h $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:text |do) (:type :leaf)
                      |b $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:text |js/console.warn) (:type :leaf)
                          |b $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:text "|:unknown op") (:type :leaf)
                          |h $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                          |l $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
                      |h $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                  |l $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:text |:tab) (:type :leaf)
                      |b $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:text |assoc) (:type :leaf)
                          |b $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                          |h $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:text |:tab) (:type :leaf)
                          |l $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
                  |o $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:text |:tau) (:type :leaf)
                      |b $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:text |assoc) (:type :leaf)
                          |b $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                          |h $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:text |:tau) (:type :leaf)
                          |l $ {} (:at 1682011623022) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
        :ns $ {} (:at 1682011634806) (:by |rJG4IHzWf) (:type :expr)
          :data $ {}
            |T $ {} (:at 1682011634806) (:by |rJG4IHzWf) (:text |ns) (:type :leaf)
            |b $ {} (:at 1682011634806) (:by |rJG4IHzWf) (:text |app.updater) (:type :leaf)
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
