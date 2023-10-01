
{} (:package |app)
  :configs $ {} (:extension |.cljs) (:init-fn |app.main/main!) (:output |src) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-feather.calcit/ |respo-message.calcit/ |cumulo-util.calcit/
  :entries $ {}
  :files $ {}
    |app.ast $ {}
      :configs $ {}
      :defs $ {}
        |build-deps-graph $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1630773642597) (:by |qvLe3TKxz)
            :data $ {}
              |T $ %{} :Leaf (:at 1630773642597) (:by |qvLe3TKxz) (:text |defn)
              |j $ %{} :Leaf (:at 1630773642597) (:by |qvLe3TKxz) (:text |build-deps-graph)
              |r $ %{} :Expr (:at 1630773642597) (:by |qvLe3TKxz)
                :data $ {}
                  |5 $ %{} :Leaf (:at 1630773680294) (:by |qvLe3TKxz) (:text |entry-ns)
                  |9 $ %{} :Leaf (:at 1630773703796) (:by |qvLe3TKxz) (:text |entry-def)
                  |D $ %{} :Leaf (:at 1630773653740) (:by |qvLe3TKxz) (:text |files)
                  |T $ %{} :Leaf (:at 1630773649626) (:by |qvLe3TKxz) (:text |pkg)
              |v $ %{} :Expr (:at 1630775905354) (:by |qvLe3TKxz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1630780974568) (:by |qvLe3TKxz) (:text |;)
                  |T $ %{} :Leaf (:at 1630775913384) (:by |qvLe3TKxz) (:text |println)
                  |j $ %{} :Leaf (:at 1630775915357) (:by |qvLe3TKxz) (:text |entry-ns)
                  |r $ %{} :Leaf (:at 1630775916696) (:by |qvLe3TKxz) (:text |entry-def)
                  |v $ %{} :Leaf (:at 1630775919580) (:by |qvLe3TKxz) (:text |pkg)
              |x $ %{} :Expr (:at 1630775920121) (:by |qvLe3TKxz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1630780973729) (:by |qvLe3TKxz) (:text |;)
                  |T $ %{} :Leaf (:at 1630775922821) (:by |qvLe3TKxz) (:text |js/console.log)
                  |j $ %{} :Leaf (:at 1630775924627) (:by |qvLe3TKxz) (:text |files)
              |y $ %{} :Expr (:at 1630776597437) (:by |qvLe3TKxz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1630776598841) (:by |qvLe3TKxz) (:text |let)
                  |j $ %{} :Expr (:at 1630776599089) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1630776599251) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630776614253) (:by |qvLe3TKxz) (:text |ns-deps-map)
                          |j $ %{} :Expr (:at 1630776614708) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630776615658) (:by |qvLe3TKxz) (:text |->)
                              |j $ %{} :Leaf (:at 1630776618070) (:by |qvLe3TKxz) (:text |files)
                              |r $ %{} :Expr (:at 1630776618444) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630776878716) (:by |qvLe3TKxz) (:text |.map-kv)
                                  |j $ %{} :Expr (:at 1630776621916) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630776623220) (:by |qvLe3TKxz) (:text |fn)
                                      |j $ %{} :Expr (:at 1630776623475) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630776627369) (:by |qvLe3TKxz) (:text |ns')
                                          |j $ %{} :Leaf (:at 1630776631203) (:by |qvLe3TKxz) (:text |file)
                                      |r $ %{} :Expr (:at 1630776679292) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1630776679893) (:by |qvLe3TKxz) (:text |let)
                                          |T $ %{} :Expr (:at 1630776680292) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1630776663481) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630776667978) (:by |qvLe3TKxz) (:text |ns-form)
                                                  |j $ %{} :Expr (:at 1630776672700) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1630776676817) (:by |qvLe3TKxz) (:text |tree->cirru)
                                                      |T $ %{} :Expr (:at 1630776668471) (:by |qvLe3TKxz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1696151474688) (:by |qvLe3TKxz) (:text |get-in)
                                                          |j $ %{} :Leaf (:at 1630776671698) (:by |qvLe3TKxz) (:text |file)
                                                          |n $ %{} :Expr (:at 1696151475450) (:by |qvLe3TKxz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1696151475560) (:by |qvLe3TKxz) (:text |[])
                                                              |b $ %{} :Leaf (:at 1696151476371) (:by |qvLe3TKxz) (:text |:ns)
                                                              |h $ %{} :Leaf (:at 1696151477740) (:by |qvLe3TKxz) (:text |:code)
                                              |j $ %{} :Expr (:at 1630776709306) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630776709962) (:by |qvLe3TKxz) (:text |rules)
                                                  |j $ %{} :Expr (:at 1630776711668) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1630776711668) (:by |qvLe3TKxz) (:text |if)
                                                      |j $ %{} :Expr (:at 1630776711668) (:by |qvLe3TKxz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1630776711668) (:by |qvLe3TKxz) (:text |=)
                                                          |j $ %{} :Leaf (:at 1630777542535) (:by |qvLe3TKxz) (:text |3)
                                                          |r $ %{} :Expr (:at 1630776711668) (:by |qvLe3TKxz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1630776711668) (:by |qvLe3TKxz) (:text |count)
                                                              |j $ %{} :Leaf (:at 1630776711668) (:by |qvLe3TKxz) (:text |ns-form)
                                                      |r $ %{} :Expr (:at 1630777615461) (:by |qvLe3TKxz)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1630777616631) (:by |qvLe3TKxz) (:text |.slice)
                                                          |T $ %{} :Expr (:at 1630776714128) (:by |qvLe3TKxz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1630776714792) (:by |qvLe3TKxz) (:text |nth)
                                                              |j $ %{} :Leaf (:at 1630776717608) (:by |qvLe3TKxz) (:text |ns-form)
                                                              |r $ %{} :Leaf (:at 1630777541035) (:by |qvLe3TKxz) (:text |2)
                                                          |j $ %{} :Leaf (:at 1630777618202) (:by |qvLe3TKxz) (:text |1)
                                                      |v $ %{} :Expr (:at 1630776720231) (:by |qvLe3TKxz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1630776720369) (:by |qvLe3TKxz) (:text |[])
                                              |r $ %{} :Expr (:at 1630779703435) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630779704561) (:by |qvLe3TKxz) (:text |defs)
                                                  |j $ %{} :Expr (:at 1630779705925) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1630779706512) (:by |qvLe3TKxz) (:text |:defs)
                                                      |j $ %{} :Leaf (:at 1630779708130) (:by |qvLe3TKxz) (:text |file)
                                          |b $ %{} :Expr (:at 1630777465449) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1630778665713) (:by |qvLe3TKxz) (:text |;)
                                              |T $ %{} :Leaf (:at 1630777476955) (:by |qvLe3TKxz) (:text |js/console.log)
                                              |j $ %{} :Leaf (:at 1630777470358) (:by |qvLe3TKxz) (:text "|\"entry")
                                              |r $ %{} :Leaf (:at 1630777471906) (:by |qvLe3TKxz) (:text |ns')
                                              |v $ %{} :Leaf (:at 1630777494698) (:by |qvLe3TKxz) (:text |ns-form)
                                          |j $ %{} :Expr (:at 1630777349302) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1630777350662) (:by |qvLe3TKxz) (:text |[])
                                              |L $ %{} :Leaf (:at 1630777351479) (:by |qvLe3TKxz) (:text |ns')
                                              |T $ %{} :Expr (:at 1630779243566) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1630779244300) (:by |qvLe3TKxz) (:text |let)
                                                  |L $ %{} :Expr (:at 1630779244560) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Expr (:at 1630779245074) (:by |qvLe3TKxz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1630779248176) (:by |qvLe3TKxz) (:text |results)
                                                          |j $ %{} :Expr (:at 1630779249247) (:by |qvLe3TKxz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1630779255755) (:by |qvLe3TKxz) (:text |map)
                                                              |j $ %{} :Leaf (:at 1630779257012) (:by |qvLe3TKxz) (:text |rules)
                                                              |r $ %{} :Expr (:at 1630779257425) (:by |qvLe3TKxz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1630779259755) (:by |qvLe3TKxz) (:text |fn)
                                                                  |j $ %{} :Expr (:at 1630779260062) (:by |qvLe3TKxz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1630779261089) (:by |qvLe3TKxz) (:text |rule)
                                                                  |r $ %{} :Expr (:at 1630779261961) (:by |qvLe3TKxz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1630779263930) (:by |qvLe3TKxz) (:text |parse-rule)
                                                                      |j $ %{} :Expr (:at 1630779265640) (:by |qvLe3TKxz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1630779269716) (:by |qvLe3TKxz) (:text |unify-rule)
                                                                          |j $ %{} :Leaf (:at 1630779273568) (:by |qvLe3TKxz) (:text |rule)
                                                      |j $ %{} :Expr (:at 1630779275866) (:by |qvLe3TKxz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1630779285584) (:by |qvLe3TKxz) (:text |ns-dict)
                                                          |j $ %{} :Expr (:at 1630779377663) (:by |qvLe3TKxz)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1630779378934) (:by |qvLe3TKxz) (:text |merge)
                                                              |L $ %{} :Expr (:at 1630779379952) (:by |qvLe3TKxz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1630779380155) (:by |qvLe3TKxz) (:text |{})
                                                              |P $ %{} :Leaf (:at 1630779381918) (:by |qvLe3TKxz) (:text |&)
                                                              |T $ %{} :Expr (:at 1630779352466) (:by |qvLe3TKxz)
                                                                :data $ {}
                                                                  |D $ %{} :Leaf (:at 1630779354159) (:by |qvLe3TKxz) (:text |->)
                                                                  |L $ %{} :Leaf (:at 1630779356089) (:by |qvLe3TKxz) (:text |results)
                                                                  |T $ %{} :Expr (:at 1630779315289) (:by |qvLe3TKxz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1630779316894) (:by |qvLe3TKxz) (:text |filter)
                                                                      |r $ %{} :Expr (:at 1630779326389) (:by |qvLe3TKxz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1630779326753) (:by |qvLe3TKxz) (:text |fn)
                                                                          |j $ %{} :Expr (:at 1630779330073) (:by |qvLe3TKxz)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1630779335497) (:by |qvLe3TKxz) (:text |paired)
                                                                          |r $ %{} :Expr (:at 1630779336624) (:by |qvLe3TKxz)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1630779348324) (:by |qvLe3TKxz) (:text |=)
                                                                              |b $ %{} :Leaf (:at 1630779349712) (:by |qvLe3TKxz) (:text |:ns)
                                                                              |j $ %{} :Expr (:at 1630779342803) (:by |qvLe3TKxz)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1630779343380) (:by |qvLe3TKxz) (:text |get)
                                                                                  |j $ %{} :Leaf (:at 1630779344846) (:by |qvLe3TKxz) (:text |paired)
                                                                                  |r $ %{} :Leaf (:at 1630779347086) (:by |qvLe3TKxz) (:text |0)
                                                                  |j $ %{} :Expr (:at 1630779357899) (:by |qvLe3TKxz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1630779358480) (:by |qvLe3TKxz) (:text |map)
                                                                      |j $ %{} :Leaf (:at 1630779359450) (:by |qvLe3TKxz) (:text |last)
                                                      |r $ %{} :Expr (:at 1630779383115) (:by |qvLe3TKxz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1630779401414) (:by |qvLe3TKxz) (:text |defs-dict)
                                                          |j $ %{} :Expr (:at 1630779403617) (:by |qvLe3TKxz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1630779404914) (:by |qvLe3TKxz) (:text |merge)
                                                              |j $ %{} :Expr (:at 1630779405906) (:by |qvLe3TKxz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1630779406060) (:by |qvLe3TKxz) (:text |{})
                                                              |r $ %{} :Leaf (:at 1630779408432) (:by |qvLe3TKxz) (:text |&)
                                                              |v $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |->)
                                                                  |j $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |results)
                                                                  |r $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |filter)
                                                                      |j $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |fn)
                                                                          |j $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |paired)
                                                                          |r $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |=)
                                                                              |j $ %{} :Leaf (:at 1630779414693) (:by |qvLe3TKxz) (:text |:def)
                                                                              |r $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |get)
                                                                                  |j $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |paired)
                                                                                  |r $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |0)
                                                                  |v $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |map)
                                                                      |j $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |last)
                                                      |t $ %{} :Expr (:at 1630779383115) (:by |qvLe3TKxz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1630782815131) (:by |qvLe3TKxz) (:text |defaults-dict)
                                                          |j $ %{} :Expr (:at 1630779403617) (:by |qvLe3TKxz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1630779404914) (:by |qvLe3TKxz) (:text |merge)
                                                              |j $ %{} :Expr (:at 1630779405906) (:by |qvLe3TKxz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1630779406060) (:by |qvLe3TKxz) (:text |{})
                                                              |r $ %{} :Leaf (:at 1630779408432) (:by |qvLe3TKxz) (:text |&)
                                                              |v $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |->)
                                                                  |j $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |results)
                                                                  |r $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |filter)
                                                                      |j $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |fn)
                                                                          |j $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |paired)
                                                                          |r $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |=)
                                                                              |j $ %{} :Leaf (:at 1630782819870) (:by |qvLe3TKxz) (:text |:default)
                                                                              |r $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |get)
                                                                                  |j $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |paired)
                                                                                  |r $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |0)
                                                                  |v $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |map)
                                                                      |j $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |last)
                                                      |v $ %{} :Expr (:at 1630779602691) (:by |qvLe3TKxz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1630779605947) (:by |qvLe3TKxz) (:text |defs-deps)
                                                          |j $ %{} :Expr (:at 1630779607417) (:by |qvLe3TKxz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1630779610373) (:by |qvLe3TKxz) (:text |->)
                                                              |j $ %{} :Leaf (:at 1630779711571) (:by |qvLe3TKxz) (:text |defs)
                                                              |r $ %{} :Expr (:at 1630779624202) (:by |qvLe3TKxz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1630779758807) (:by |qvLe3TKxz) (:text |.map-kv)
                                                                  |j $ %{} :Expr (:at 1630779633012) (:by |qvLe3TKxz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1630779633347) (:by |qvLe3TKxz) (:text |fn)
                                                                      |j $ %{} :Expr (:at 1630779633515) (:by |qvLe3TKxz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1630779765575) (:by |qvLe3TKxz) (:text |k)
                                                                          |j $ %{} :Leaf (:at 1696151534689) (:by |qvLe3TKxz) (:text |entry)
                                                                      |r $ %{} :Expr (:at 1630779636904) (:by |qvLe3TKxz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1630779640950) (:by |qvLe3TKxz) (:text |[])
                                                                          |j $ %{} :Leaf (:at 1630779773917) (:by |qvLe3TKxz) (:text |k)
                                                                          |r $ %{} :Expr (:at 1630779641999) (:by |qvLe3TKxz)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1630779686309) (:by |qvLe3TKxz) (:text |match-references)
                                                                              |b $ %{} :Expr (:at 1630780069593) (:by |qvLe3TKxz)
                                                                                :data $ {}
                                                                                  |D $ %{} :Leaf (:at 1630780070166) (:by |qvLe3TKxz) (:text |tree->cirru)
                                                                                  |T $ %{} :Expr (:at 1696151535948) (:by |qvLe3TKxz)
                                                                                    :data $ {}
                                                                                      |D $ %{} :Leaf (:at 1696151540393) (:by |qvLe3TKxz) (:text |:code)
                                                                                      |T $ %{} :Leaf (:at 1696151550559) (:by |qvLe3TKxz) (:text |entry)
                                                                              |d $ %{} :Leaf (:at 1630779796210) (:by |qvLe3TKxz) (:text |ns-dict)
                                                                              |f $ %{} :Leaf (:at 1630779791056) (:by |qvLe3TKxz) (:text |defs-dict)
                                                                              |k $ %{} :Leaf (:at 1630782824220) (:by |qvLe3TKxz) (:text |defaults-dict)
                                                                              |p $ %{} :Expr (:at 1630779817832) (:by |qvLe3TKxz)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1630779820041) (:by |qvLe3TKxz) (:text |keys)
                                                                                  |j $ %{} :Leaf (:at 1630779822656) (:by |qvLe3TKxz) (:text |defs)
                                                                              |u $ %{} :Leaf (:at 1630780519028) (:by |qvLe3TKxz) (:text |ns')
                                                  |f $ %{} :Leaf (:at 1630780911883) (:by |qvLe3TKxz) (:text |defs-deps)
                  |r $ %{} :Expr (:at 1630776853956) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630780980411) (:by |qvLe3TKxz) (:text |js/console.log)
                      |b $ %{} :Leaf (:at 1630780993644) (:by |qvLe3TKxz) (:text "|\"Deps Map")
                      |j $ %{} :Leaf (:at 1630776862270) (:by |qvLe3TKxz) (:text |ns-deps-map)
                  |v $ %{} :Leaf (:at 1630780998184) (:by |qvLe3TKxz) (:text |ns-deps-map)
        |flatten-form $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1630779935687) (:by |qvLe3TKxz)
            :data $ {}
              |T $ %{} :Leaf (:at 1630779935687) (:by |qvLe3TKxz) (:text |defn)
              |j $ %{} :Leaf (:at 1630779935687) (:by |qvLe3TKxz) (:text |flatten-form)
              |r $ %{} :Expr (:at 1630779935687) (:by |qvLe3TKxz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1630779937736) (:by |qvLe3TKxz) (:text |xs)
              |v $ %{} :Expr (:at 1630779938329) (:by |qvLe3TKxz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1630779939615) (:by |qvLe3TKxz) (:text |if)
                  |j $ %{} :Expr (:at 1630779939768) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630779947357) (:by |qvLe3TKxz) (:text |list?)
                      |j $ %{} :Leaf (:at 1630779947836) (:by |qvLe3TKxz) (:text |xs)
                  |r $ %{} :Expr (:at 1630779948807) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630779950467) (:by |qvLe3TKxz) (:text |mapcat)
                      |j $ %{} :Leaf (:at 1630779953108) (:by |qvLe3TKxz) (:text |xs)
                      |r $ %{} :Leaf (:at 1630779957832) (:by |qvLe3TKxz) (:text |flatten-form)
                  |v $ %{} :Expr (:at 1630779959126) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630779961697) (:by |qvLe3TKxz) (:text |[])
                      |j $ %{} :Leaf (:at 1630779962399) (:by |qvLe3TKxz) (:text |xs)
        |match-references $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1630779827667) (:by |qvLe3TKxz)
            :data $ {}
              |T $ %{} :Leaf (:at 1630779827667) (:by |qvLe3TKxz) (:text |defn)
              |j $ %{} :Leaf (:at 1630779827667) (:by |qvLe3TKxz) (:text |match-references)
              |r $ %{} :Expr (:at 1630779827667) (:by |qvLe3TKxz)
                :data $ {}
                  |j $ %{} :Leaf (:at 1630779827667) (:by |qvLe3TKxz) (:text |form)
                  |r $ %{} :Leaf (:at 1630779827667) (:by |qvLe3TKxz) (:text |ns-dict)
                  |v $ %{} :Leaf (:at 1630779827667) (:by |qvLe3TKxz) (:text |defs-dict)
                  |w $ %{} :Leaf (:at 1630783282549) (:by |qvLe3TKxz) (:text |defaults-dict)
                  |x $ %{} :Leaf (:at 1630779845658) (:by |qvLe3TKxz) (:text |current-defs)
                  |y $ %{} :Leaf (:at 1630780527831) (:by |qvLe3TKxz) (:text |current-ns)
              |t $ %{} :Expr (:at 1630783434387) (:by |qvLe3TKxz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1630783439521) (:by |qvLe3TKxz) (:text |js/console.log)
                  |j $ %{} :Leaf (:at 1630783441704) (:by |qvLe3TKxz) (:text "|\"Defaults")
                  |r $ %{} :Leaf (:at 1630783443705) (:by |qvLe3TKxz) (:text |defaults-dict)
              |v $ %{} :Expr (:at 1630779915649) (:by |qvLe3TKxz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1630779917541) (:by |qvLe3TKxz) (:text |let)
                  |j $ %{} :Expr (:at 1630779917834) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1630779917996) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630779921391) (:by |qvLe3TKxz) (:text |tokens)
                          |j $ %{} :Expr (:at 1630780117319) (:by |qvLe3TKxz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1630780118048) (:by |qvLe3TKxz) (:text |->)
                              |L $ %{} :Leaf (:at 1630780120643) (:by |qvLe3TKxz) (:text |form)
                              |P $ %{} :Expr (:at 1630780122526) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630780122526) (:by |qvLe3TKxz) (:text |.slice)
                                  |r $ %{} :Leaf (:at 1630780122526) (:by |qvLe3TKxz) (:text |2)
                              |R $ %{} :Expr (:at 1630780130521) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630780128584) (:by |qvLe3TKxz) (:text |flatten-form)
                              |j $ %{} :Expr (:at 1630780133934) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630780136137) (:by |qvLe3TKxz) (:text |.filter)
                                  |j $ %{} :Expr (:at 1630780136734) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630780136970) (:by |qvLe3TKxz) (:text |fn)
                                      |j $ %{} :Expr (:at 1630780137362) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630780137649) (:by |qvLe3TKxz) (:text |x)
                                      |r $ %{} :Expr (:at 1630780140309) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630780143276) (:by |qvLe3TKxz) (:text |cond)
                                          |j $ %{} :Expr (:at 1630780145337) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1630780145491) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630780152915) (:by |qvLe3TKxz) (:text |.starts-with?)
                                                  |j $ %{} :Leaf (:at 1630780150510) (:by |qvLe3TKxz) (:text |x)
                                                  |r $ %{} :Leaf (:at 1630780154203) (:by |qvLe3TKxz) (:text "|\":")
                                              |j $ %{} :Leaf (:at 1630780156445) (:by |qvLe3TKxz) (:text |false)
                                          |n $ %{} :Expr (:at 1630780145337) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1630780145491) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630780152915) (:by |qvLe3TKxz) (:text |.starts-with?)
                                                  |j $ %{} :Leaf (:at 1630780150510) (:by |qvLe3TKxz) (:text |x)
                                                  |r $ %{} :Leaf (:at 1630780172585) (:by |qvLe3TKxz) (:text "|\".")
                                              |j $ %{} :Leaf (:at 1630780156445) (:by |qvLe3TKxz) (:text |false)
                                          |p $ %{} :Expr (:at 1630780145337) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1630780145491) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630780152915) (:by |qvLe3TKxz) (:text |.starts-with?)
                                                  |j $ %{} :Leaf (:at 1630780150510) (:by |qvLe3TKxz) (:text |x)
                                                  |r $ %{} :Leaf (:at 1630780184933) (:by |qvLe3TKxz) (:text "|\"|")
                                              |j $ %{} :Leaf (:at 1630780156445) (:by |qvLe3TKxz) (:text |false)
                                          |q $ %{} :Expr (:at 1630780145337) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1630780145491) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630780152915) (:by |qvLe3TKxz) (:text |.starts-with?)
                                                  |j $ %{} :Leaf (:at 1630780150510) (:by |qvLe3TKxz) (:text |x)
                                                  |r $ %{} :Leaf (:at 1630780187838) (:by |qvLe3TKxz) (:text "|\"\"")
                                              |j $ %{} :Leaf (:at 1630780156445) (:by |qvLe3TKxz) (:text |false)
                                          |qT $ %{} :Expr (:at 1630780309281) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1630780296133) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630780299030) (:by |qvLe3TKxz) (:text |.!test)
                                                  |j $ %{} :Leaf (:at 1630780303661) (:by |qvLe3TKxz) (:text |pattern-number)
                                                  |r $ %{} :Leaf (:at 1630780306946) (:by |qvLe3TKxz) (:text |x)
                                              |j $ %{} :Leaf (:at 1630780310397) (:by |qvLe3TKxz) (:text |false)
                                          |r $ %{} :Expr (:at 1630780157685) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1630780158241) (:by |qvLe3TKxz) (:text |true)
                                              |j $ %{} :Leaf (:at 1630780158896) (:by |qvLe3TKxz) (:text |true)
                              |n $ %{} :Expr (:at 1630780213836) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630780216079) (:by |qvLe3TKxz) (:text |.map)
                                  |j $ %{} :Expr (:at 1630780217693) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630780218774) (:by |qvLe3TKxz) (:text |fn)
                                      |j $ %{} :Expr (:at 1630780219407) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630780219683) (:by |qvLe3TKxz) (:text |x)
                                      |r $ %{} :Expr (:at 1630780223941) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630780225643) (:by |qvLe3TKxz) (:text |->)
                                          |j $ %{} :Leaf (:at 1630780226912) (:by |qvLe3TKxz) (:text |x)
                                          |r $ %{} :Expr (:at 1630780227283) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1630780229618) (:by |qvLe3TKxz) (:text |.strip-prefix)
                                              |j $ %{} :Leaf (:at 1630780234141) (:by |qvLe3TKxz) (:text "|\"~@")
                                          |v $ %{} :Expr (:at 1630780227283) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1630780229618) (:by |qvLe3TKxz) (:text |.strip-prefix)
                                              |j $ %{} :Leaf (:at 1630780237411) (:by |qvLe3TKxz) (:text "|\"~")
                                          |x $ %{} :Expr (:at 1630780227283) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1630780229618) (:by |qvLe3TKxz) (:text |.strip-prefix)
                                              |j $ %{} :Leaf (:at 1630780239519) (:by |qvLe3TKxz) (:text "|\"@")
                              |r $ %{} :Expr (:at 1630780211886) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696151627007) (:by |qvLe3TKxz) (:text |distinct)
                              |v $ %{} :Expr (:at 1630780353919) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630780443416) (:by |qvLe3TKxz) (:text |.map)
                                  |j $ %{} :Expr (:at 1630780358662) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630780359584) (:by |qvLe3TKxz) (:text |fn)
                                      |j $ %{} :Expr (:at 1630780359843) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630780360125) (:by |qvLe3TKxz) (:text |x)
                                      |r $ %{} :Expr (:at 1630780361333) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630780447750) (:by |qvLe3TKxz) (:text |cond)
                                          |j $ %{} :Expr (:at 1630780448650) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1630780363815) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630780373127) (:by |qvLe3TKxz) (:text |.contains?)
                                                  |j $ %{} :Leaf (:at 1630780371276) (:by |qvLe3TKxz) (:text |current-defs)
                                                  |r $ %{} :Leaf (:at 1630780455931) (:by |qvLe3TKxz) (:text |x)
                                              |j $ %{} :Expr (:at 1630780531427) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630780531764) (:by |qvLe3TKxz) (:text |{})
                                                  |b $ %{} :Expr (:at 1630780540369) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1630780542869) (:by |qvLe3TKxz) (:text |:kind)
                                                      |j $ %{} :Leaf (:at 1630780544032) (:by |qvLe3TKxz) (:text |:def)
                                                  |j $ %{} :Expr (:at 1630780532014) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1630780533130) (:by |qvLe3TKxz) (:text |:ns)
                                                      |j $ %{} :Leaf (:at 1630780533685) (:by |qvLe3TKxz) (:text |current-ns)
                                                  |r $ %{} :Expr (:at 1630780534698) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1630780535261) (:by |qvLe3TKxz) (:text |:def)
                                                      |j $ %{} :Leaf (:at 1630780536169) (:by |qvLe3TKxz) (:text |x)
                                          |r $ %{} :Expr (:at 1630780448650) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1630780363815) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630780373127) (:by |qvLe3TKxz) (:text |.contains?)
                                                  |j $ %{} :Leaf (:at 1630780555865) (:by |qvLe3TKxz) (:text |defs-dict)
                                                  |r $ %{} :Leaf (:at 1630780455931) (:by |qvLe3TKxz) (:text |x)
                                              |j $ %{} :Expr (:at 1630780557936) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630780558383) (:by |qvLe3TKxz) (:text |get)
                                                  |j $ %{} :Leaf (:at 1630780560665) (:by |qvLe3TKxz) (:text |defs-dict)
                                                  |r $ %{} :Leaf (:at 1630780561000) (:by |qvLe3TKxz) (:text |x)
                                          |s $ %{} :Expr (:at 1630780448650) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1630780363815) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630780373127) (:by |qvLe3TKxz) (:text |.contains?)
                                                  |j $ %{} :Leaf (:at 1630782846336) (:by |qvLe3TKxz) (:text |defaults-dict)
                                                  |r $ %{} :Leaf (:at 1630780455931) (:by |qvLe3TKxz) (:text |x)
                                              |j $ %{} :Expr (:at 1630780557936) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630780558383) (:by |qvLe3TKxz) (:text |get)
                                                  |j $ %{} :Leaf (:at 1630782849092) (:by |qvLe3TKxz) (:text |defaults-dict)
                                                  |r $ %{} :Leaf (:at 1630780561000) (:by |qvLe3TKxz) (:text |x)
                                          |t $ %{} :Expr (:at 1630780613043) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1630780614024) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630780621505) (:by |qvLe3TKxz) (:text |.includes?)
                                                  |j $ %{} :Leaf (:at 1630780622379) (:by |qvLe3TKxz) (:text |x)
                                                  |r $ %{} :Leaf (:at 1630780625268) (:by |qvLe3TKxz) (:text "|\"/")
                                              |j $ %{} :Expr (:at 1630780625879) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630780627277) (:by |qvLe3TKxz) (:text |let[])
                                                  |j $ %{} :Expr (:at 1630780627621) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1630780631591) (:by |qvLe3TKxz) (:text |ns-part)
                                                      |j $ %{} :Leaf (:at 1630780633371) (:by |qvLe3TKxz) (:text |def-part)
                                                  |r $ %{} :Expr (:at 1630780634846) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1630780635615) (:by |qvLe3TKxz) (:text |.split)
                                                      |b $ %{} :Leaf (:at 1630780638967) (:by |qvLe3TKxz) (:text |x)
                                                      |j $ %{} :Leaf (:at 1630780638224) (:by |qvLe3TKxz) (:text "|\"/")
                                                  |v $ %{} :Expr (:at 1630780641388) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1630780661387) (:by |qvLe3TKxz) (:text |if)
                                                      |j $ %{} :Expr (:at 1630780661680) (:by |qvLe3TKxz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1630780666612) (:by |qvLe3TKxz) (:text |.contains?)
                                                          |j $ %{} :Leaf (:at 1630780670856) (:by |qvLe3TKxz) (:text |defs-dict)
                                                          |r $ %{} :Leaf (:at 1630780685815) (:by |qvLe3TKxz) (:text |ns-part)
                                                      |r $ %{} :Expr (:at 1630780689587) (:by |qvLe3TKxz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1630780689587) (:by |qvLe3TKxz) (:text |{})
                                                          |j $ %{} :Expr (:at 1630780689587) (:by |qvLe3TKxz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1630780689587) (:by |qvLe3TKxz) (:text |:kind)
                                                              |j $ %{} :Leaf (:at 1630780689587) (:by |qvLe3TKxz) (:text |:def)
                                                          |r $ %{} :Expr (:at 1630780689587) (:by |qvLe3TKxz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1630780689587) (:by |qvLe3TKxz) (:text |:ns)
                                                              |j $ %{} :Expr (:at 1630780702313) (:by |qvLe3TKxz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1630780703262) (:by |qvLe3TKxz) (:text |:ns)
                                                                  |j $ %{} :Expr (:at 1630780703826) (:by |qvLe3TKxz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1630780704388) (:by |qvLe3TKxz) (:text |get)
                                                                      |j $ %{} :Leaf (:at 1630780712672) (:by |qvLe3TKxz) (:text |ns-dict)
                                                                      |r $ %{} :Leaf (:at 1630780717300) (:by |qvLe3TKxz) (:text |ns-part)
                                                          |v $ %{} :Expr (:at 1630780689587) (:by |qvLe3TKxz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1630780689587) (:by |qvLe3TKxz) (:text |:def)
                                                              |j $ %{} :Leaf (:at 1630780689587) (:by |qvLe3TKxz) (:text |x)
                                          |v $ %{} :Expr (:at 1630780610341) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1630780611349) (:by |qvLe3TKxz) (:text |true)
                                              |j $ %{} :Leaf (:at 1630780611997) (:by |qvLe3TKxz) (:text |nil)
                              |x $ %{} :Expr (:at 1630780436374) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630780438225) (:by |qvLe3TKxz) (:text |.filter)
                                  |j $ %{} :Leaf (:at 1630780441025) (:by |qvLe3TKxz) (:text |some?)
                  |r $ %{} :Expr (:at 1630780025462) (:by |qvLe3TKxz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1630780860986) (:by |qvLe3TKxz) (:text |;)
                      |T $ %{} :Leaf (:at 1630780033735) (:by |qvLe3TKxz) (:text |js/console.log)
                      |j $ %{} :Leaf (:at 1630780034762) (:by |qvLe3TKxz) (:text "|\"tokens")
                      |r $ %{} :Leaf (:at 1630780036807) (:by |qvLe3TKxz) (:text |tokens)
                  |v $ %{} :Leaf (:at 1630780858708) (:by |qvLe3TKxz) (:text |tokens)
        |parse-rule $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1630776828456) (:by |qvLe3TKxz)
            :data $ {}
              |T $ %{} :Leaf (:at 1630776828456) (:by |qvLe3TKxz) (:text |defn)
              |j $ %{} :Leaf (:at 1630776828456) (:by |qvLe3TKxz) (:text |parse-rule)
              |r $ %{} :Expr (:at 1630776828456) (:by |qvLe3TKxz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1630776833600) (:by |qvLe3TKxz) (:text |rule)
              |s $ %{} :Expr (:at 1630776844893) (:by |qvLe3TKxz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1630778678693) (:by |qvLe3TKxz) (:text |;)
                  |T $ %{} :Leaf (:at 1630776845787) (:by |qvLe3TKxz) (:text |println)
                  |j $ %{} :Leaf (:at 1630776848176) (:by |qvLe3TKxz) (:text "|\"rule")
                  |r $ %{} :Leaf (:at 1630776848802) (:by |qvLe3TKxz) (:text |rule)
              |t $ %{} :Expr (:at 1630777755206) (:by |qvLe3TKxz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1630777759337) (:by |qvLe3TKxz) (:text |case-default)
                  |L $ %{} :Expr (:at 1630777760739) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630777761666) (:by |qvLe3TKxz) (:text |nth)
                      |j $ %{} :Leaf (:at 1630777763184) (:by |qvLe3TKxz) (:text |rule)
                      |r $ %{} :Leaf (:at 1630777763462) (:by |qvLe3TKxz) (:text |1)
                  |P $ %{} :Expr (:at 1630777765273) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630777765638) (:by |qvLe3TKxz) (:text |do)
                      |j $ %{} :Expr (:at 1630777767573) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630777769245) (:by |qvLe3TKxz) (:text |js/console.log)
                          |j $ %{} :Leaf (:at 1630777772855) (:by |qvLe3TKxz) (:text "|\"Unknown rule:")
                          |r $ %{} :Leaf (:at 1630777773782) (:by |qvLe3TKxz) (:text |rule)
                      |r $ %{} :Leaf (:at 1630778467485) (:by |qvLe3TKxz) (:text |nil)
                  |T $ %{} :Expr (:at 1630776844016) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630777788876) (:by |qvLe3TKxz) (:text "|\":as")
                      |j $ %{} :Expr (:at 1630778327623) (:by |qvLe3TKxz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1630778329026) (:by |qvLe3TKxz) (:text |[])
                          |L $ %{} :Leaf (:at 1630778329919) (:by |qvLe3TKxz) (:text |:ns)
                          |T $ %{} :Expr (:at 1630778576782) (:by |qvLe3TKxz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1630778578668) (:by |qvLe3TKxz) (:text |{})
                              |T $ %{} :Expr (:at 1630778579276) (:by |qvLe3TKxz)
                                :data $ {}
                                  |D $ %{} :Expr (:at 1630778584408) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630778584408) (:by |qvLe3TKxz) (:text |nth)
                                      |j $ %{} :Leaf (:at 1630778584408) (:by |qvLe3TKxz) (:text |rule)
                                      |r $ %{} :Leaf (:at 1630778584408) (:by |qvLe3TKxz) (:text |2)
                                  |T $ %{} :Expr (:at 1630777794014) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630777796874) (:by |qvLe3TKxz) (:text |{})
                                      |j $ %{} :Expr (:at 1630777797458) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630777798037) (:by |qvLe3TKxz) (:text |:kind)
                                          |j $ %{} :Leaf (:at 1630777799094) (:by |qvLe3TKxz) (:text |:ns)
                                      |r $ %{} :Expr (:at 1630777799489) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630777808638) (:by |qvLe3TKxz) (:text |:alias)
                                          |j $ %{} :Expr (:at 1630777809972) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1630777810559) (:by |qvLe3TKxz) (:text |nth)
                                              |j $ %{} :Leaf (:at 1630777811314) (:by |qvLe3TKxz) (:text |rule)
                                              |r $ %{} :Leaf (:at 1630777811990) (:by |qvLe3TKxz) (:text |2)
                                      |v $ %{} :Expr (:at 1630777813029) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630777813788) (:by |qvLe3TKxz) (:text |:ns)
                                          |j $ %{} :Expr (:at 1630777814791) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1630777816184) (:by |qvLe3TKxz) (:text |nth)
                                              |j $ %{} :Leaf (:at 1630777817357) (:by |qvLe3TKxz) (:text |rule)
                                              |r $ %{} :Leaf (:at 1630777818395) (:by |qvLe3TKxz) (:text |0)
                  |j $ %{} :Expr (:at 1630777819872) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630777823760) (:by |qvLe3TKxz) (:text "|\":refer")
                      |j $ %{} :Expr (:at 1630778330788) (:by |qvLe3TKxz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1630778331993) (:by |qvLe3TKxz) (:text |[])
                          |L $ %{} :Leaf (:at 1630778332574) (:by |qvLe3TKxz) (:text |:def)
                          |T $ %{} :Expr (:at 1630777824151) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630777828136) (:by |qvLe3TKxz) (:text |->)
                              |j $ %{} :Expr (:at 1630777836327) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630777837384) (:by |qvLe3TKxz) (:text |nth)
                                  |j $ %{} :Leaf (:at 1630777839449) (:by |qvLe3TKxz) (:text |rule)
                                  |r $ %{} :Leaf (:at 1630777839977) (:by |qvLe3TKxz) (:text |2)
                              |r $ %{} :Expr (:at 1630777841142) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630777842732) (:by |qvLe3TKxz) (:text |map)
                                  |j $ %{} :Expr (:at 1630777843040) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630777843308) (:by |qvLe3TKxz) (:text |fn)
                                      |j $ %{} :Expr (:at 1630777843620) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630777846650) (:by |qvLe3TKxz) (:text |def-name)
                                      |r $ %{} :Expr (:at 1630777855749) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630778393381) (:by |qvLe3TKxz) (:text |[])
                                          |b $ %{} :Leaf (:at 1630778396232) (:by |qvLe3TKxz) (:text |def-name)
                                          |j $ %{} :Expr (:at 1630777858770) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1630777881391) (:by |qvLe3TKxz) (:text |{})
                                              |j $ %{} :Expr (:at 1630778397868) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630778400303) (:by |qvLe3TKxz) (:text |:kind)
                                                  |j $ %{} :Leaf (:at 1630778402482) (:by |qvLe3TKxz) (:text |:def)
                                              |r $ %{} :Expr (:at 1630778402987) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630778405020) (:by |qvLe3TKxz) (:text |:def)
                                                  |j $ %{} :Leaf (:at 1630778407871) (:by |qvLe3TKxz) (:text |def-name)
                                              |v $ %{} :Expr (:at 1630778408295) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630778409137) (:by |qvLe3TKxz) (:text |:ns)
                                                  |j $ %{} :Expr (:at 1630778412773) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1630778413496) (:by |qvLe3TKxz) (:text |nth)
                                                      |j $ %{} :Leaf (:at 1630778415615) (:by |qvLe3TKxz) (:text |rule)
                                                      |r $ %{} :Leaf (:at 1630778416618) (:by |qvLe3TKxz) (:text |0)
                              |v $ %{} :Expr (:at 1630777849357) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630777853331) (:by |qvLe3TKxz) (:text |.pairs-map)
                  |r $ %{} :Expr (:at 1630778335103) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630778338364) (:by |qvLe3TKxz) (:text "|\":default")
                      |j $ %{} :Expr (:at 1630778338630) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630778339326) (:by |qvLe3TKxz) (:text |[])
                          |j $ %{} :Leaf (:at 1630778340551) (:by |qvLe3TKxz) (:text |:default)
                          |r $ %{} :Expr (:at 1630782794653) (:by |qvLe3TKxz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1630782801691) (:by |qvLe3TKxz) (:text |&{})
                              |L $ %{} :Expr (:at 1630782798793) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630782798793) (:by |qvLe3TKxz) (:text |nth)
                                  |j $ %{} :Leaf (:at 1630782798793) (:by |qvLe3TKxz) (:text |rule)
                                  |r $ %{} :Leaf (:at 1630782798793) (:by |qvLe3TKxz) (:text |2)
                              |T $ %{} :Expr (:at 1630778345057) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630778345759) (:by |qvLe3TKxz) (:text |{})
                                  |j $ %{} :Expr (:at 1630778350175) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630778351113) (:by |qvLe3TKxz) (:text |:kind)
                                      |j $ %{} :Leaf (:at 1630778352261) (:by |qvLe3TKxz) (:text |:default)
                                  |r $ %{} :Expr (:at 1630778353147) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630778355700) (:by |qvLe3TKxz) (:text |:package)
                                      |j $ %{} :Expr (:at 1630778358718) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630778362005) (:by |qvLe3TKxz) (:text |nth)
                                          |j $ %{} :Leaf (:at 1630778362954) (:by |qvLe3TKxz) (:text |rule)
                                          |r $ %{} :Leaf (:at 1630778363154) (:by |qvLe3TKxz) (:text |0)
                                  |v $ %{} :Expr (:at 1630778364043) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630778368091) (:by |qvLe3TKxz) (:text |:alias)
                                      |j $ %{} :Expr (:at 1630778368454) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630778368904) (:by |qvLe3TKxz) (:text |nth)
                                          |j $ %{} :Leaf (:at 1630778369961) (:by |qvLe3TKxz) (:text |rule)
                                          |r $ %{} :Leaf (:at 1630778370281) (:by |qvLe3TKxz) (:text |2)
        |pattern-number $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1630780311590) (:by |qvLe3TKxz)
            :data $ {}
              |T $ %{} :Leaf (:at 1630780311590) (:by |qvLe3TKxz) (:text |def)
              |j $ %{} :Leaf (:at 1630780311590) (:by |qvLe3TKxz) (:text |pattern-number)
              |r $ %{} :Expr (:at 1630780311590) (:by |qvLe3TKxz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1630780313481) (:by |qvLe3TKxz) (:text |new)
                  |j $ %{} :Leaf (:at 1630780316615) (:by |qvLe3TKxz) (:text |js/RegExp)
                  |r $ %{} :Leaf (:at 1630780333130) (:by |qvLe3TKxz) (:text "|\"^\\d+(\\.\\d+)?$")
        |tree->cirru $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
            :data $ {}
              |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |defn)
              |j $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |tree->cirru)
              |r $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |x)
              |v $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |if)
                  |j $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1693060283275) (:by |qvLe3TKxz) (:text |&record:matches?)
                      |f $ %{} :Leaf (:at 1693060292349) (:by |qvLe3TKxz) (:text |schema/CirruLeaf)
                      |r $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |x)
                  |r $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |:text)
                      |j $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |x)
                  |v $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |->)
                      |j $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |:data)
                          |j $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |x)
                      |r $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |.to-list)
                      |v $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |.sort-by)
                          |j $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |first)
                      |x $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |map)
                          |j $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |fn)
                              |j $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |entry)
                              |r $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |tree->cirru)
                                  |j $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |last)
                                      |j $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |entry)
        |unify-rule $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1630777636236) (:by |qvLe3TKxz)
            :data $ {}
              |T $ %{} :Leaf (:at 1630777636236) (:by |qvLe3TKxz) (:text |defn)
              |j $ %{} :Leaf (:at 1630777636236) (:by |qvLe3TKxz) (:text |unify-rule)
              |r $ %{} :Expr (:at 1630777636236) (:by |qvLe3TKxz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1630777636236) (:by |qvLe3TKxz) (:text |rule)
              |v $ %{} :Expr (:at 1630777654777) (:by |qvLe3TKxz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1630777655322) (:by |qvLe3TKxz) (:text |->)
                  |j $ %{} :Leaf (:at 1630777658907) (:by |qvLe3TKxz) (:text |rule)
                  |n $ %{} :Expr (:at 1630777664409) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630777665251) (:by |qvLe3TKxz) (:text |.filter)
                      |j $ %{} :Expr (:at 1630777665479) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630777666666) (:by |qvLe3TKxz) (:text |fn)
                          |j $ %{} :Expr (:at 1630777666883) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630777667104) (:by |qvLe3TKxz) (:text |x)
                          |r $ %{} :Expr (:at 1630777667557) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630777668516) (:by |qvLe3TKxz) (:text |not=)
                              |j $ %{} :Leaf (:at 1630777669136) (:by |qvLe3TKxz) (:text |x)
                              |r $ %{} :Leaf (:at 1630777670150) (:by |qvLe3TKxz) (:text "|\"[]")
                  |r $ %{} :Expr (:at 1630777659176) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630777659658) (:by |qvLe3TKxz) (:text |.map)
                      |j $ %{} :Expr (:at 1630777662069) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630777662361) (:by |qvLe3TKxz) (:text |fn)
                          |j $ %{} :Expr (:at 1630777673251) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630777673569) (:by |qvLe3TKxz) (:text |x)
                          |r $ %{} :Expr (:at 1630777674392) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630777675314) (:by |qvLe3TKxz) (:text |if)
                              |j $ %{} :Expr (:at 1630777675542) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630777677718) (:by |qvLe3TKxz) (:text |list?)
                                  |j $ %{} :Leaf (:at 1630777678200) (:by |qvLe3TKxz) (:text |x)
                              |r $ %{} :Expr (:at 1630777678719) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630777680286) (:by |qvLe3TKxz) (:text |unify-rule)
                                  |j $ %{} :Leaf (:at 1630777680631) (:by |qvLe3TKxz) (:text |x)
                              |v $ %{} :Leaf (:at 1630777682117) (:by |qvLe3TKxz) (:text |x)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1630773624167) (:by |qvLe3TKxz)
          :data $ {}
            |T $ %{} :Leaf (:at 1630773624167) (:by |qvLe3TKxz) (:text |ns)
            |j $ %{} :Leaf (:at 1630773624167) (:by |qvLe3TKxz) (:text |app.ast)
            |n $ %{} :Expr (:at 1693060271778) (:by |qvLe3TKxz)
              :data $ {}
                |T $ %{} :Leaf (:at 1693060272953) (:by |qvLe3TKxz) (:text |:require)
                |b $ %{} :Expr (:at 1693060273132) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1693060274342) (:by |qvLe3TKxz) (:text |app.schema)
                    |b $ %{} :Leaf (:at 1693060274743) (:by |qvLe3TKxz) (:text |:as)
                    |h $ %{} :Leaf (:at 1693060276783) (:by |qvLe3TKxz) (:text |schema)
    |app.comp.container $ {}
      :defs $ {}
        |comp-about $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1520441025167) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1520441026528) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1520441025167) (:by |root) (:text |comp-about)
              |r $ %{} :Expr (:at 1520441025167) (:by |root)
                :data $ {}
              |v $ %{} :Expr (:at 1520441028035) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1520441030887) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1520441031167) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520441031454) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1520441088536) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520441090022) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1520441090252) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520441090589) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1520441090901) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520441092010) (:by |root) (:text |:padding)
                                  |j $ %{} :Leaf (:at 1520441092837) (:by |root) (:text |8)
                  |r $ %{} :Expr (:at 1520441032232) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1520441117596) (:by |root) (:text |comp-md)
                      |T $ %{} :Leaf (:at 1630744721224) (:by |qvLe3TKxz) (:text "|\"Calcit Viewer is a tool for reading calcit.cirru files. Read more on https://github.com/calcit-lang/calcit-viewer .")
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461830530) (:by |root) (:text |reel)
              |v $ %{} :Expr (:at 1507461832154) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507461833421) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1507461834351) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1507461834650) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461835738) (:by |root) (:text |store)
                          |j $ %{} :Expr (:at 1507461836110) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461837276) (:by |root) (:text |:store)
                              |j $ %{} :Leaf (:at 1507461838285) (:by |root) (:text |reel)
                      |j $ %{} :Expr (:at 1509554104408) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509554105323) (:by |root) (:text |states)
                          |j $ %{} :Expr (:at 1509554105592) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509554109477) (:by |root) (:text |:states)
                              |j $ %{} :Leaf (:at 1509554111945) (:by |root) (:text |store)
                  |T $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1499755354983) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693060688127) (:by |qvLe3TKxz) (:text |:class-name)
                              |j $ %{} :Expr (:at 1499755354983) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1693060692247) (:by |qvLe3TKxz) (:text |str-spaced)
                                  |j $ %{} :Leaf (:at 1693060693517) (:by |qvLe3TKxz) (:text |css/global)
                                  |n $ %{} :Leaf (:at 1693060694497) (:by |qvLe3TKxz) (:text |css/fullscreen)
                                  |r $ %{} :Leaf (:at 1693060696129) (:by |qvLe3TKxz) (:text |css/row)
                      |o $ %{} :Expr (:at 1520439928266) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1520439930783) (:by |root) (:text |let)
                          |L $ %{} :Expr (:at 1520439931053) (:by |root)
                            :data $ {}
                              |T $ %{} :Expr (:at 1520439931648) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520439932524) (:by |root) (:text |page)
                                  |j $ %{} :Expr (:at 1520439932791) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1520439933409) (:by |root) (:text |:page)
                                      |j $ %{} :Leaf (:at 1520439934101) (:by |root) (:text |store)
                          |T $ %{} :Expr (:at 1520439519461) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520439519943) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1520439520176) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520439523244) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1520440223880) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1520440225376) (:by |root) (:text |:style)
                                      |j $ %{} :Expr (:at 1520440225589) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1520440226557) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1520440226895) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1520440229434) (:by |root) (:text |:background-color)
                                              |j $ %{} :Expr (:at 1520440229698) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1520440230742) (:by |root) (:text |hsl)
                                                  |j $ %{} :Leaf (:at 1520440254366) (:by |root) (:text |200)
                                                  |r $ %{} :Leaf (:at 1520440263556) (:by |root) (:text |30)
                                                  |v $ %{} :Leaf (:at 1520440268066) (:by |root) (:text |24)
                                          |r $ %{} :Expr (:at 1520440243584) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1520440244531) (:by |root) (:text |:color)
                                              |j $ %{} :Leaf (:at 1520440245538) (:by |root) (:text |:white)
                              |v $ %{} :Expr (:at 1520439936989) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520439939799) (:by |root) (:text |comp-entry)
                                  |j $ %{} :Leaf (:at 1520439941121) (:by |root) (:text |:upload)
                                  |n $ %{} :Leaf (:at 1520440000401) (:by |root) (:text |:input)
                                  |r $ %{} :Leaf (:at 1520439943437) (:by |root) (:text |page)
                              |x $ %{} :Expr (:at 1520439947115) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520439949006) (:by |root) (:text |comp-entry)
                                  |j $ %{} :Leaf (:at 1561261620850) (:by |qvLe3TKxz) (:text |:edit)
                                  |n $ %{} :Leaf (:at 1520439997042) (:by |root) (:text |:textarea)
                                  |r $ %{} :Leaf (:at 1520439991462) (:by |root) (:text |page)
                              |y $ %{} :Expr (:at 1520440019391) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520440020809) (:by |root) (:text |comp-entry)
                                  |j $ %{} :Leaf (:at 1561261605150) (:by |qvLe3TKxz) (:text |:monitor)
                                  |r $ %{} :Leaf (:at 1520440064834) (:by |root) (:text |:viewer)
                                  |v $ %{} :Leaf (:at 1520440069322) (:by |root) (:text |page)
                              |yT $ %{} :Expr (:at 1520440019391) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520440020809) (:by |root) (:text |comp-entry)
                                  |j $ %{} :Leaf (:at 1561261586533) (:by |qvLe3TKxz) (:text |:info)
                                  |r $ %{} :Leaf (:at 1520441079037) (:by |root) (:text |:about)
                                  |v $ %{} :Leaf (:at 1520440069322) (:by |root) (:text |page)
                              |yj $ %{} :Expr (:at 1630773819149) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630774014451) (:by |qvLe3TKxz) (:text |comp-entry)
                                  |j $ %{} :Leaf (:at 1630773888128) (:by |qvLe3TKxz) (:text |:map)
                                  |r $ %{} :Leaf (:at 1630773826106) (:by |qvLe3TKxz) (:text |:graph)
                                  |v $ %{} :Leaf (:at 1630773826841) (:by |qvLe3TKxz) (:text |page)
                      |t $ %{} :Expr (:at 1520439517337) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629135816362) (:by |qvLe3TKxz) (:text |case-default)
                          |j $ %{} :Expr (:at 1520439412049) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520439414344) (:by |root) (:text |:page)
                              |j $ %{} :Leaf (:at 1520439418868) (:by |root) (:text |store)
                          |n $ %{} :Expr (:at 1629135817398) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629135817398) (:by |qvLe3TKxz) (:text |<>)
                              |j $ %{} :Leaf (:at 1629135817398) (:by |qvLe3TKxz) (:text "|\"Unknown route")
                          |r $ %{} :Expr (:at 1520439420077) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1520439454674) (:by |root) (:text |:viewer)
                              |T $ %{} :Expr (:at 1508431045174) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1508431046287) (:by |root) (:text |div)
                                  |L $ %{} :Expr (:at 1508430884148) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1508430884516) (:by |root) (:text |{})
                                      |b $ %{} :Expr (:at 1693060833143) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1693060835795) (:by |qvLe3TKxz) (:text |:class-name)
                                          |b $ %{} :Leaf (:at 1693060840058) (:by |qvLe3TKxz) (:text |css/expand)
                                      |j $ %{} :Expr (:at 1508430893717) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1508430894564) (:by |root) (:text |:style)
                                          |j $ %{} :Expr (:at 1508430894905) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1508430895222) (:by |root) (:text |{})
                                              |r $ %{} :Expr (:at 1508431015309) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1508431016475) (:by |root) (:text |:padding)
                                                  |j $ %{} :Leaf (:at 1508431017942) (:by |root) (:text |16)
                                              |v $ %{} :Expr (:at 1520439536386) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1520439538154) (:by |root) (:text |:overflow)
                                                  |j $ %{} :Leaf (:at 1520439539585) (:by |root) (:text |:auto)
                                  |T $ %{} :Expr (:at 1508430867689) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1508430869746) (:by |root) (:text |if)
                                      |L $ %{} :Expr (:at 1508430876212) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1508430877114) (:by |root) (:text |some?)
                                          |j $ %{} :Expr (:at 1508430877433) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1508430878400) (:by |root) (:text |:error)
                                              |j $ %{} :Leaf (:at 1508430879207) (:by |root) (:text |store)
                                      |P $ %{} :Expr (:at 1508430885542) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1508430887277) (:by |root) (:text |<>)
                                          |j $ %{} :Expr (:at 1508430888217) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1508430889081) (:by |root) (:text |:error)
                                              |j $ %{} :Leaf (:at 1508430891358) (:by |root) (:text |store)
                                          |r $ %{} :Expr (:at 1508431065178) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1508431065540) (:by |root) (:text |{})
                                              |j $ %{} :Expr (:at 1508430895479) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1508430896832) (:by |root) (:text |:color)
                                                  |j $ %{} :Leaf (:at 1508430897852) (:by |root) (:text |:red)
                                      |h $ %{} :Expr (:at 1508432094188) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1508432094889) (:by |root) (:text |if)
                                          |L $ %{} :Expr (:at 1508432095745) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1508432096508) (:by |root) (:text |some?)
                                              |j $ %{} :Expr (:at 1508432096991) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1508432098556) (:by |root) (:text |:calcit)
                                                  |j $ %{} :Leaf (:at 1508432099904) (:by |root) (:text |store)
                                          |T $ %{} :Expr (:at 1508431336011) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1561263885351) (:by |qvLe3TKxz) (:text |comp-viewer)
                                              |j $ %{} :Expr (:at 1508431340877) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1508431342138) (:by |root) (:text |:calcit)
                                                  |j $ %{} :Leaf (:at 1508431344132) (:by |root) (:text |store)
                                          |j $ %{} :Expr (:at 1508432103358) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1508432103989) (:by |root) (:text |<>)
                                              |j $ %{} :Leaf (:at 1561261900218) (:by |qvLe3TKxz) (:text "|\"Nothing")
                          |v $ %{} :Expr (:at 1520439426384) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520439429442) (:by |root) (:text |:textarea)
                              |j $ %{} :Expr (:at 1520440393786) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520440405338) (:by |root) (:text |comp-text-area)
                                  |j $ %{} :Expr (:at 1520440407120) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1520440454578) (:by |root) (:text |:text)
                                      |j $ %{} :Leaf (:at 1520440455465) (:by |root) (:text |store)
                                  |r $ %{} :Expr (:at 1520441349539) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1520441349190) (:by |root) (:text |:error)
                                      |j $ %{} :Leaf (:at 1520441350378) (:by |root) (:text |store)
                          |x $ %{} :Expr (:at 1520439443498) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520439446386) (:by |root) (:text |:input)
                              |j $ %{} :Expr (:at 1520439448895) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520439451849) (:by |root) (:text |comp-file-input)
                                  |j $ %{} :Expr (:at 1520441349539) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1520441349190) (:by |root) (:text |:error)
                                      |j $ %{} :Leaf (:at 1520441350378) (:by |root) (:text |store)
                          |xT $ %{} :Expr (:at 1520441019750) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520441021171) (:by |root) (:text |:about)
                              |j $ %{} :Expr (:at 1520441022136) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520441024620) (:by |root) (:text |comp-about)
                          |yD $ %{} :Expr (:at 1630773892387) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630773894717) (:by |qvLe3TKxz) (:text |:graph)
                              |j $ %{} :Expr (:at 1630773895362) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630773896679) (:by |qvLe3TKxz) (:text |comp-graph)
                                  |b $ %{} :Expr (:at 1630781012111) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630781012602) (:by |qvLe3TKxz) (:text |>>)
                                      |j $ %{} :Leaf (:at 1630781014441) (:by |qvLe3TKxz) (:text |states)
                                      |r $ %{} :Leaf (:at 1630781018347) (:by |qvLe3TKxz) (:text |:graph)
                                  |j $ %{} :Expr (:at 1630773901711) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630773905850) (:by |qvLe3TKxz) (:text |:calcit)
                                      |j $ %{} :Leaf (:at 1630773906550) (:by |qvLe3TKxz) (:text |store)
                      |u $ %{} :Expr (:at 1572778202681) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572778208613) (:by |qvLe3TKxz) (:text |comp-messages)
                          |j $ %{} :Expr (:at 1572778210773) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572778212581) (:by |qvLe3TKxz) (:text |:messages)
                              |j $ %{} :Leaf (:at 1572778214176) (:by |qvLe3TKxz) (:text |store)
                          |r $ %{} :Expr (:at 1572778218680) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572778219327) (:by |qvLe3TKxz) (:text |{})
                          |v $ %{} :Expr (:at 1572778220620) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572778222487) (:by |qvLe3TKxz) (:text |fn)
                              |j $ %{} :Expr (:at 1572778222973) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1572778223665) (:by |qvLe3TKxz) (:text |info)
                                  |j $ %{} :Leaf (:at 1572778225891) (:by |qvLe3TKxz) (:text |d!)
                              |r $ %{} :Expr (:at 1572778692594) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1572778229567) (:by |qvLe3TKxz) (:text |d!)
                                  |j $ %{} :Leaf (:at 1572778694528) (:by |qvLe3TKxz) (:text |action/clear)
                                  |r $ %{} :Leaf (:at 1572778696517) (:by |qvLe3TKxz) (:text |nil)
                      |v $ %{} :Expr (:at 1630744738613) (:by |qvLe3TKxz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1630744741511) (:by |qvLe3TKxz) (:text |if)
                          |L $ %{} :Leaf (:at 1630744744032) (:by |qvLe3TKxz) (:text |config/dev?)
                          |T $ %{} :Expr (:at 1561262015290) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1561262018943) (:by |qvLe3TKxz) (:text |comp-inspect)
                              |j $ %{} :Leaf (:at 1561262020317) (:by |qvLe3TKxz) (:text |:store)
                              |r $ %{} :Leaf (:at 1561262021004) (:by |qvLe3TKxz) (:text |store)
                              |v $ %{} :Expr (:at 1561262040664) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1561262041435) (:by |qvLe3TKxz) (:text |{})
                                  |j $ %{} :Expr (:at 1561263399273) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1561263401307) (:by |qvLe3TKxz) (:text |:bottom)
                                      |j $ %{} :Leaf (:at 1561263413179) (:by |qvLe3TKxz) (:text |0)
                                  |r $ %{} :Expr (:at 1561263399273) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1561263405537) (:by |qvLe3TKxz) (:text |:right)
                                      |j $ %{} :Leaf (:at 1561263401671) (:by |qvLe3TKxz) (:text |8)
                      |x $ %{} :Expr (:at 1507461809635) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461815046) (:by |root) (:text |comp-reel)
                          |b $ %{} :Expr (:at 1596680673872) (:by |qvLe3TKxz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1596680674897) (:by |qvLe3TKxz) (:text |>>)
                              |T $ %{} :Leaf (:at 1509554101952) (:by |root) (:text |states)
                              |j $ %{} :Leaf (:at 1596680677425) (:by |qvLe3TKxz) (:text |:reel)
                          |j $ %{} :Leaf (:at 1507461840459) (:by |root) (:text |reel)
                          |r $ %{} :Expr (:at 1507461840980) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461841342) (:by |root) (:text |{})
        |comp-entry $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1520440071398) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1520440075625) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1520440071398) (:by |root) (:text |comp-entry)
              |r $ %{} :Expr (:at 1520440071398) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1520440078900) (:by |root) (:text |icon)
                  |j $ %{} :Leaf (:at 1520440131187) (:by |root) (:text |page)
                  |r $ %{} :Leaf (:at 1520440133046) (:by |root) (:text |current-page)
              |v $ %{} :Expr (:at 1520440181031) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1520440181670) (:by |root) (:text |div)
                  |L $ %{} :Expr (:at 1520440181878) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520440183838) (:by |root) (:text |{})
                      |b $ %{} :Expr (:at 1693060795965) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693060798571) (:by |qvLe3TKxz) (:text |:class-name)
                          |b $ %{} :Expr (:at 1693060807234) (:by |qvLe3TKxz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1693060809022) (:by |qvLe3TKxz) (:text |str-spaced)
                              |T $ %{} :Leaf (:at 1693060801693) (:by |qvLe3TKxz) (:text |css/center)
                              |b $ %{} :Leaf (:at 1693060811683) (:by |qvLe3TKxz) (:text |style-entry)
                      |j $ %{} :Expr (:at 1520440184408) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520440185094) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1520440294286) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520440294710) (:by |root) (:text |if)
                              |j $ %{} :Expr (:at 1520440295509) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520440295654) (:by |root) (:text |=)
                                  |j $ %{} :Leaf (:at 1520440296686) (:by |root) (:text |page)
                                  |r $ %{} :Leaf (:at 1520440298224) (:by |root) (:text |current-page)
                              |r $ %{} :Expr (:at 1520440298616) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520440300850) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1520440301378) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1520440302645) (:by |root) (:text |:color)
                                      |j $ %{} :Leaf (:at 1520440304202) (:by |root) (:text |:white)
                      |r $ %{} :Expr (:at 1520440341378) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520440344062) (:by |root) (:text |:on-click)
                          |j $ %{} :Expr (:at 1520440344349) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520440345797) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1520440346129) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520440346338) (:by |root) (:text |e)
                                  |j $ %{} :Leaf (:at 1520440346962) (:by |root) (:text |d!)
                              |r $ %{} :Expr (:at 1520440348442) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520440349123) (:by |root) (:text |d!)
                                  |j $ %{} :Leaf (:at 1520440352514) (:by |root) (:text |:page)
                                  |r $ %{} :Leaf (:at 1520440353023) (:by |root) (:text |page)
                  |T $ %{} :Expr (:at 1520440133858) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1561261481774) (:by |qvLe3TKxz) (:text |comp-i)
                      |j $ %{} :Leaf (:at 1520440141228) (:by |root) (:text |icon)
                      |n $ %{} :Leaf (:at 1561261536351) (:by |qvLe3TKxz) (:text |14)
                      |r $ %{} :Expr (:at 1561261530353) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1561261530975) (:by |qvLe3TKxz) (:text |hsl)
                          |j $ %{} :Leaf (:at 1561261533789) (:by |qvLe3TKxz) (:text |200)
                          |r $ %{} :Leaf (:at 1561261534176) (:by |qvLe3TKxz) (:text |80)
                          |v $ %{} :Leaf (:at 1561261534391) (:by |qvLe3TKxz) (:text |80)
        |comp-file-input $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1520439397186) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1520439399409) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |comp-file-input)
              |n $ %{} :Expr (:at 1520439400488) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1520441357257) (:by |root) (:text |error)
              |r $ %{} :Expr (:at 1520439397186) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1520439397186) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1520439397186) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1520439397186) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1520439397186) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |:padding)
                                  |j $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |16)
                  |r $ %{} :Expr (:at 1520439397186) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |<>)
                      |j $ %{} :Leaf (:at 1596681265032) (:by |qvLe3TKxz) (:text "|\"Pick calcit.cirru to view:")
                  |v $ %{} :Expr (:at 1520439397186) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |8)
                      |r $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |nil)
                  |x $ %{} :Expr (:at 1520439397186) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |input)
                      |j $ %{} :Expr (:at 1520439397186) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1520439397186) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |:type)
                              |j $ %{} :Leaf (:at 1561261922065) (:by |qvLe3TKxz) (:text "|\"file")
                          |r $ %{} :Expr (:at 1520439397186) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |:accept)
                              |j $ %{} :Leaf (:at 1596681198378) (:by |qvLe3TKxz) (:text "|\".cirru")
                          |v $ %{} :Expr (:at 1596681195994) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1596681195994) (:by |qvLe3TKxz) (:text |:on-change)
                              |j $ %{} :Leaf (:at 1596681195994) (:by |qvLe3TKxz) (:text |on-file-change)
                  |y $ %{} :Expr (:at 1520441359637) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520441372420) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1520441372686) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520441373008) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1520441383100) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520441383816) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1520441384848) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520441385199) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1520441385539) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1520441387778) (:by |root) (:text |:color)
                                      |j $ %{} :Leaf (:at 1520441388383) (:by |root) (:text |:red)
                      |r $ %{} :Expr (:at 1520441375005) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520441379477) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1520441380748) (:by |root) (:text |error)
        |comp-text-area $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1520440456412) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1520440457685) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1520440456412) (:by |root) (:text |comp-text-area)
              |r $ %{} :Expr (:at 1520440456412) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1520440460780) (:by |root) (:text |text)
                  |j $ %{} :Leaf (:at 1520441399231) (:by |root) (:text |error)
              |v $ %{} :Expr (:at 1520440522971) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1520440523692) (:by |root) (:text |div)
                  |L $ %{} :Expr (:at 1520440523915) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520440524272) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1520440527298) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520440528009) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1520440722051) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1520440723350) (:by |root) (:text |merge)
                              |T $ %{} :Leaf (:at 1520440529037) (:by |root) (:text |ui/row)
                              |j $ %{} :Leaf (:at 1520440725956) (:by |root) (:text |ui/flex)
                  |T $ %{} :Expr (:at 1520440461278) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520440463193) (:by |root) (:text |textarea)
                      |j $ %{} :Expr (:at 1520440463481) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520440463813) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1520440464394) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520440465851) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1520440511418) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1520440514195) (:by |root) (:text |merge)
                                  |T $ %{} :Leaf (:at 1520440467839) (:by |root) (:text |ui/textarea)
                                  |b $ %{} :Leaf (:at 1520440712727) (:by |root) (:text |ui/flex)
                                  |j $ %{} :Expr (:at 1520440514957) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1520440515267) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1520440515569) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1520440516317) (:by |root) (:text |:width)
                                          |j $ %{} :Leaf (:at 1520440519584) (:by |root) (:text ||100%)
                                      |r $ %{} :Expr (:at 1520440944118) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1520440946515) (:by |root) (:text |:font-family)
                                          |j $ %{} :Leaf (:at 1520440949963) (:by |root) (:text |ui/font-code)
                                      |v $ %{} :Expr (:at 1520440954463) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1520440956799) (:by |root) (:text |:font-size)
                                          |j $ %{} :Leaf (:at 1520440969418) (:by |root) (:text |12)
                                      |x $ %{} :Expr (:at 1520440958524) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1520440962283) (:by |root) (:text |:line-height)
                                          |j $ %{} :Leaf (:at 1520440967690) (:by |root) (:text ||1.4em)
                          |n $ %{} :Expr (:at 1520440488195) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520440489162) (:by |root) (:text |:value)
                              |j $ %{} :Leaf (:at 1520440490356) (:by |root) (:text |text)
                          |p $ %{} :Expr (:at 1520440490648) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520440492268) (:by |root) (:text |:placeholder)
                              |j $ %{} :Leaf (:at 1629136267925) (:by |qvLe3TKxz) (:text "|\"Paste calcit.cirru content here...")
                          |r $ %{} :Expr (:at 1520440468359) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520440472184) (:by |root) (:text |:on-input)
                              |j $ %{} :Expr (:at 1520440472458) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520440473156) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1520440473451) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1520440473647) (:by |root) (:text |e)
                                      |j $ %{} :Leaf (:at 1520440474230) (:by |root) (:text |d!)
                                  |r $ %{} :Expr (:at 1520440475407) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1520440476124) (:by |root) (:text |d!)
                                      |j $ %{} :Leaf (:at 1520440476972) (:by |root) (:text |:text)
                                      |r $ %{} :Expr (:at 1520440479246) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1520440481771) (:by |root) (:text |:value)
                                          |j $ %{} :Leaf (:at 1520440482998) (:by |root) (:text |e)
                  |j $ %{} :Expr (:at 1520440530996) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520440532106) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1520440532308) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520440532599) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1520440730388) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520440733450) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1520440733674) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520440734537) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1520440735062) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1520440737283) (:by |root) (:text |:padding)
                                      |j $ %{} :Leaf (:at 1520440738033) (:by |root) (:text |8)
                      |r $ %{} :Expr (:at 1520440532989) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520440534035) (:by |root) (:text |button)
                          |j $ %{} :Expr (:at 1520440534727) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520440535037) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1520440538940) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520440539689) (:by |root) (:text |:style)
                                  |j $ %{} :Leaf (:at 1520440540908) (:by |root) (:text |ui/button)
                              |r $ %{} :Expr (:at 1520440549334) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520440550834) (:by |root) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1520440552072) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1520440552572) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1520440553250) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1520440553435) (:by |root) (:text |e)
                                          |j $ %{} :Leaf (:at 1520440554561) (:by |root) (:text |d!)
                                      |r $ %{} :Expr (:at 1520440555713) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1520440574384) (:by |root) (:text |try)
                                          |j $ %{} :Expr (:at 1520440574694) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1520440692981) (:by |root) (:text |d!)
                                              |b $ %{} :Leaf (:at 1561262699830) (:by |qvLe3TKxz) (:text |:load/calcit)
                                              |j $ %{} :Expr (:at 1520440639649) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629135362309) (:by |qvLe3TKxz) (:text |parse-cirru-edn)
                                                  |j $ %{} :Leaf (:at 1520440700864) (:by |root) (:text |text)
                                          |r $ %{} :Expr (:at 1520440586659) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629135350424) (:by |qvLe3TKxz) (:text |fn)
                                              |r $ %{} :Expr (:at 1629135351067) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1520440597809) (:by |root) (:text |error)
                                              |v $ %{} :Expr (:at 1520440598603) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1520440673367) (:by |root) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1520440684225) (:by |root) (:text |:error)
                                                  |r $ %{} :Expr (:at 1520440685161) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1520440685715) (:by |root) (:text |str)
                                                      |j $ %{} :Leaf (:at 1520440687211) (:by |root) (:text |error)
                          |r $ %{} :Expr (:at 1520440541716) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520440543865) (:by |root) (:text |<>)
                              |j $ %{} :Leaf (:at 1561262198398) (:by |qvLe3TKxz) (:text "|\"Parse")
                      |v $ %{} :Expr (:at 1520441401023) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520441401783) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1520441402121) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520441406916) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1520441411052) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520441411862) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1520441412293) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1520441412698) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1520441413293) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1520441414622) (:by |root) (:text |:color)
                                          |j $ %{} :Leaf (:at 1520441415377) (:by |root) (:text |:red)
                          |r $ %{} :Expr (:at 1520441407387) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520441407907) (:by |root) (:text |<>)
                              |j $ %{} :Leaf (:at 1520441409728) (:by |root) (:text |error)
        |on-file-change $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1508430840605) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1508430858143) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |on-file-change)
              |r $ %{} :Expr (:at 1508430840605) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |e)
                  |j $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |d!)
              |v $ %{} :Expr (:at 1508430840605) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1508430840605) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1508430840605) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |file)
                          |j $ %{} :Expr (:at 1508430840605) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |->)
                              |j $ %{} :Expr (:at 1508430840605) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |:event)
                                  |j $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |e)
                              |r $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |.-target)
                              |v $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |.-files)
                              |x $ %{} :Expr (:at 1508430840605) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |aget)
                                  |j $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |0)
                  |r $ %{} :Expr (:at 1520438647267) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1520438647819) (:by |root) (:text |if)
                      |L $ %{} :Expr (:at 1520438648600) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520438649425) (:by |root) (:text |some?)
                          |j $ %{} :Leaf (:at 1520438650087) (:by |root) (:text |file)
                      |T $ %{} :Expr (:at 1508430840605) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |if)
                          |j $ %{} :Expr (:at 1508430840605) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508431796052) (:by |root) (:text |not=)
                              |b $ %{} :Expr (:at 1508430840605) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |.-name)
                                  |j $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |file)
                              |f $ %{} :Leaf (:at 1596681208780) (:by |qvLe3TKxz) (:text ||calcit.cirru)
                          |r $ %{} :Expr (:at 1508430840605) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |do)
                              |r $ %{} :Expr (:at 1508430840605) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |d!)
                                  |j $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |:error)
                                  |r $ %{} :Expr (:at 1508431826158) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1508431828119) (:by |root) (:text |str)
                                      |T $ %{} :Leaf (:at 1596681210797) (:by |qvLe3TKxz) (:text "|\"Expected calcit.cirru , but got ")
                                      |j $ %{} :Expr (:at 1508430840605) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |.-name)
                                          |j $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |file)
                          |v $ %{} :Expr (:at 1508430840605) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |let)
                              |j $ %{} :Expr (:at 1508430840605) (:by |root)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1508430840605) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |fr)
                                      |j $ %{} :Expr (:at 1508430840605) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629135376594) (:by |qvLe3TKxz) (:text |new)
                                          |T $ %{} :Leaf (:at 1629135375597) (:by |qvLe3TKxz) (:text |js/FileReader)
                              |r $ %{} :Expr (:at 1508430840605) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |set!)
                                  |j $ %{} :Expr (:at 1629135380143) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629135381293) (:by |qvLe3TKxz) (:text |.-onload)
                                      |T $ %{} :Leaf (:at 1629135379719) (:by |qvLe3TKxz) (:text |fr)
                                  |r $ %{} :Expr (:at 1508430840605) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1508430840605) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |event)
                                      |r $ %{} :Expr (:at 1508430840605) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |d!)
                                          |j $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |:load/calcit)
                                          |r $ %{} :Expr (:at 1508430840605) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629135389127) (:by |qvLe3TKxz) (:text |parse-cirru-edn)
                                              |j $ %{} :Expr (:at 1629135611802) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1629135613857) (:by |qvLe3TKxz) (:text |->)
                                                  |T $ %{} :Leaf (:at 1629135616963) (:by |qvLe3TKxz) (:text |event)
                                                  |j $ %{} :Leaf (:at 1629135619784) (:by |qvLe3TKxz) (:text |.-target)
                                                  |r $ %{} :Leaf (:at 1629135621348) (:by |qvLe3TKxz) (:text |.-result)
                                              |n $ %{} :Expr (:at 1693022284379) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1693022285046) (:by |qvLe3TKxz) (:text |{})
                                                  |b $ %{} :Expr (:at 1693022344796) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1693022347335) (:by |qvLe3TKxz) (:text |:CodeEntry)
                                                      |b $ %{} :Leaf (:at 1693022362094) (:by |qvLe3TKxz) (:text |schema/CodeEntry)
                                                  |h $ %{} :Expr (:at 1693022344796) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1693022374344) (:by |qvLe3TKxz) (:text |:Leaf)
                                                      |b $ %{} :Leaf (:at 1693022377597) (:by |qvLe3TKxz) (:text |schema/CirruLeaf)
                                                  |l $ %{} :Expr (:at 1693022344796) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1693022380602) (:by |qvLe3TKxz) (:text |:Expr)
                                                      |b $ %{} :Leaf (:at 1693022384889) (:by |qvLe3TKxz) (:text |schema/CirruExpr)
                              |v $ %{} :Expr (:at 1508430840605) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629135624584) (:by |qvLe3TKxz) (:text |.!readAsText)
                                  |j $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |fr)
                                  |r $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |file)
        |style-entry $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1693060812072) (:by |qvLe3TKxz)
            :data $ {}
              |T $ %{} :Leaf (:at 1693060813306) (:by |qvLe3TKxz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1693060812072) (:by |qvLe3TKxz) (:text |style-entry)
              |h $ %{} :Expr (:at 1693060814879) (:by |qvLe3TKxz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1693060815453) (:by |qvLe3TKxz) (:text |{})
                  |T $ %{} :Expr (:at 1693060815972) (:by |qvLe3TKxz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1693060817178) (:by |qvLe3TKxz) (:text "|\"&")
                      |T $ %{} :Expr (:at 1693060814631) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693060814631) (:by |qvLe3TKxz) (:text |{})
                          |b $ %{} :Expr (:at 1693060814631) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693060814631) (:by |qvLe3TKxz) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1693060814631) (:by |qvLe3TKxz) (:text |28)
                          |h $ %{} :Expr (:at 1693060814631) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693060814631) (:by |qvLe3TKxz) (:text |:width)
                              |b $ %{} :Leaf (:at 1693060814631) (:by |qvLe3TKxz) (:text |48)
                          |l $ %{} :Expr (:at 1693060814631) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693060814631) (:by |qvLe3TKxz) (:text |:height)
                              |b $ %{} :Leaf (:at 1693060814631) (:by |qvLe3TKxz) (:text |48)
                          |o $ %{} :Expr (:at 1693060814631) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693060814631) (:by |qvLe3TKxz) (:text |:color)
                              |b $ %{} :Expr (:at 1693060814631) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1693060814631) (:by |qvLe3TKxz) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1693060814631) (:by |qvLe3TKxz) (:text |0)
                                  |h $ %{} :Leaf (:at 1693060814631) (:by |qvLe3TKxz) (:text |0)
                                  |l $ %{} :Leaf (:at 1693060814631) (:by |qvLe3TKxz) (:text |60)
                          |q $ %{} :Expr (:at 1693060814631) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693060814631) (:by |qvLe3TKxz) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1693060814631) (:by |qvLe3TKxz) (:text |:pointer)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.comp.container)
            |v $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629135166317) (:by |qvLe3TKxz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1520437361330) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ui)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1561260936377) (:by |qvLe3TKxz) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1596680663249) (:by |qvLe3TKxz) (:text |>>)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |button)
                        |xT $ %{} :Leaf (:at 1520439437119) (:by |root) (:text |textarea)
                        |y $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |span)
                        |yT $ %{} :Leaf (:at 1508429846685) (:by |root) (:text |input)
                        |yj $ %{} :Leaf (:at 1509554003072) (:by |root) (:text |pre)
                |x $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |=<)
                |y $ %{} :Expr (:at 1507461845717) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507461855480) (:by |root) (:text |reel.comp.reel)
                    |r $ %{} :Leaf (:at 1507461856264) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507461856484) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507461858342) (:by |root) (:text |comp-reel)
                |yj $ %{} :Expr (:at 1508431347889) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1508431351974) (:by |root) (:text |app.comp.viewer)
                    |r $ %{} :Leaf (:at 1508431352775) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1508431352998) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1508431354943) (:by |root) (:text |comp-viewer)
                |yv $ %{} :Expr (:at 1520441098536) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1520441103520) (:by |root) (:text |respo-md.comp.md)
                    |r $ %{} :Leaf (:at 1520441105493) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1520441108760) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1520441111399) (:by |root) (:text |comp-md)
                |yx $ %{} :Expr (:at 1561261440434) (:by |qvLe3TKxz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1561261470217) (:by |qvLe3TKxz) (:text |feather.core)
                    |r $ %{} :Leaf (:at 1561261472843) (:by |qvLe3TKxz) (:text |:refer)
                    |v $ %{} :Expr (:at 1561261473051) (:by |qvLe3TKxz)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1561261479982) (:by |qvLe3TKxz) (:text |comp-i)
                |yy $ %{} :Expr (:at 1561262023363) (:by |qvLe3TKxz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1561262026922) (:by |qvLe3TKxz) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1561262027681) (:by |qvLe3TKxz) (:text |:refer)
                    |v $ %{} :Expr (:at 1561262027900) (:by |qvLe3TKxz)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1561262032647) (:by |qvLe3TKxz) (:text |comp-inspect)
                |yyT $ %{} :Expr (:at 1572778247951) (:by |qvLe3TKxz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1572778254225) (:by |qvLe3TKxz) (:text |respo-message.action)
                    |r $ %{} :Leaf (:at 1572778259689) (:by |qvLe3TKxz) (:text |:as)
                    |v $ %{} :Leaf (:at 1572778260966) (:by |qvLe3TKxz) (:text |action)
                |yyj $ %{} :Expr (:at 1572778262005) (:by |qvLe3TKxz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1572778267809) (:by |qvLe3TKxz) (:text |respo-message.comp.messages)
                    |r $ %{} :Leaf (:at 1572778270570) (:by |qvLe3TKxz) (:text |:refer)
                    |v $ %{} :Expr (:at 1572778270792) (:by |qvLe3TKxz)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1572778276015) (:by |qvLe3TKxz) (:text |comp-messages)
                |yyr $ %{} :Expr (:at 1630744748664) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1630744750756) (:by |qvLe3TKxz) (:text |app.config)
                    |j $ %{} :Leaf (:at 1630744753242) (:by |qvLe3TKxz) (:text |:as)
                    |r $ %{} :Leaf (:at 1630744754001) (:by |qvLe3TKxz) (:text |config)
                |yyv $ %{} :Expr (:at 1630773996080) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1630774000588) (:by |qvLe3TKxz) (:text |app.comp.graph)
                    |j $ %{} :Leaf (:at 1630774001974) (:by |qvLe3TKxz) (:text |:refer)
                    |r $ %{} :Expr (:at 1630774002274) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1630774003703) (:by |qvLe3TKxz) (:text |comp-graph)
                |z $ %{} :Expr (:at 1693022351538) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1693022352748) (:by |qvLe3TKxz) (:text |app.schema)
                    |b $ %{} :Leaf (:at 1693022367003) (:by |qvLe3TKxz) (:text |:as)
                    |h $ %{} :Leaf (:at 1693022355053) (:by |qvLe3TKxz) (:text |schema)
                |zD $ %{} :Expr (:at 1693060699772) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1693060701856) (:by |qvLe3TKxz) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1693060702261) (:by |qvLe3TKxz) (:text |:as)
                    |h $ %{} :Leaf (:at 1693060702841) (:by |qvLe3TKxz) (:text |css)
                |zP $ %{} :Expr (:at 1693060821306) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1693060822601) (:by |qvLe3TKxz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1693060823287) (:by |qvLe3TKxz) (:text |:refer)
                    |h $ %{} :Expr (:at 1693060823563) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1693060825091) (:by |qvLe3TKxz) (:text |defstyle)
    |app.comp.expr $ {}
      :defs $ {}
        |comp-expr $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1509555546987) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1509555550073) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1509555546987) (:by |root) (:text |comp-expr)
              |r $ %{} :Expr (:at 1509555546987) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1509555556590) (:by |root) (:text |expr)
                  |j $ %{} :Leaf (:at 1509768852453) (:by |root) (:text |last?)
              |v $ %{} :Expr (:at 1509555551519) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1509769204748) (:by |root) (:text |list->)
                  |j $ %{} :Expr (:at 1509555552551) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1509555552876) (:by |root) (:text |{})
                      |b $ %{} :Expr (:at 1693060729290) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693060732357) (:by |qvLe3TKxz) (:text |:class-name)
                          |b $ %{} :Expr (:at 1693060754438) (:by |qvLe3TKxz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1693060757894) (:by |qvLe3TKxz) (:text |str-spaced)
                              |T $ %{} :Leaf (:at 1693060732695) (:by |qvLe3TKxz) (:text |style-expr)
                              |b $ %{} :Leaf (:at 1693060759869) (:by |qvLe3TKxz) (:text "|\"comp-expr")
                      |j $ %{} :Expr (:at 1509555847380) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509555850270) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1509768876563) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509768877006) (:by |root) (:text |if)
                              |j $ %{} :Leaf (:at 1509768878879) (:by |root) (:text |last?)
                              |r $ %{} :Expr (:at 1509768879476) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1509768880138) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1509768880449) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1509768881562) (:by |root) (:text |:display)
                                      |j $ %{} :Leaf (:at 1509768884576) (:by |root) (:text |:inline-block)
                              |v $ %{} :Expr (:at 1509769044554) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1509769045038) (:by |root) (:text |if)
                                  |j $ %{} :Expr (:at 1509769045553) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1509769047034) (:by |root) (:text |every?)
                                      |b $ %{} :Expr (:at 1629135948265) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629135948265) (:by |qvLe3TKxz) (:text |:data)
                                          |j $ %{} :Leaf (:at 1629135948265) (:by |qvLe3TKxz) (:text |expr)
                                      |j $ %{} :Expr (:at 1509769072145) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1509769072445) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1509769073671) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1509769076220) (:by |root) (:text |entry)
                                          |r $ %{} :Expr (:at 1509769085579) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1693022467090) (:by |qvLe3TKxz) (:text |&record:matches?)
                                              |f $ %{} :Leaf (:at 1693022480867) (:by |qvLe3TKxz) (:text |schema/CirruLeaf)
                                              |r $ %{} :Expr (:at 1509769096721) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629135597282) (:by |qvLe3TKxz) (:text |last)
                                                  |j $ %{} :Leaf (:at 1509769100372) (:by |root) (:text |entry)
                                  |r $ %{} :Expr (:at 1509769112730) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1509769113378) (:by |root) (:text |{})
                                      |T $ %{} :Expr (:at 1509769103400) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1509769106815) (:by |root) (:text |:display)
                                          |j $ %{} :Leaf (:at 1509769109422) (:by |root) (:text |:inline-block)
                                      |j $ %{} :Expr (:at 1509769114128) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1509769121758) (:by |root) (:text |:border-width)
                                          |j $ %{} :Leaf (:at 1509769125051) (:by |root) (:text "||0 0 1px 0")
                                      |r $ %{} :Expr (:at 1509769242927) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1509769244242) (:by |root) (:text |:margin)
                                          |j $ %{} :Leaf (:at 1509769246903) (:by |root) (:text "||0 4px")
                      |n $ %{} :Expr (:at 1572777993107) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572777995099) (:by |qvLe3TKxz) (:text |:title)
                          |j $ %{} :Leaf (:at 1572778000211) (:by |qvLe3TKxz) (:text "|\"Click to copy.")
                      |r $ %{} :Expr (:at 1572777393810) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572777395737) (:by |qvLe3TKxz) (:text |:on-click)
                          |j $ %{} :Expr (:at 1572777396027) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572777396300) (:by |qvLe3TKxz) (:text |fn)
                              |j $ %{} :Expr (:at 1572777397053) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1572777396814) (:by |qvLe3TKxz) (:text |e)
                                  |j $ %{} :Leaf (:at 1572777397858) (:by |qvLe3TKxz) (:text |d!)
                              |v $ %{} :Expr (:at 1572778518841) (:by |qvLe3TKxz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1572778519596) (:by |qvLe3TKxz) (:text |let)
                                  |L $ %{} :Expr (:at 1572778519881) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1572778520047) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1572778521737) (:by |qvLe3TKxz) (:text |code)
                                          |j $ %{} :Expr (:at 1572778524848) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629135958778) (:by |qvLe3TKxz) (:text |format-cirru)
                                              |j $ %{} :Expr (:at 1693060397243) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1693060397785) (:by |qvLe3TKxz) (:text |[])
                                                  |T $ %{} :Expr (:at 1572778524848) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1572778524848) (:by |qvLe3TKxz) (:text |tree->cirru)
                                                      |j $ %{} :Leaf (:at 1572778524848) (:by |qvLe3TKxz) (:text |expr)
                                  |P $ %{} :Expr (:at 1572778528180) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1572778528180) (:by |qvLe3TKxz) (:text |copy!)
                                      |j $ %{} :Leaf (:at 1572778530840) (:by |qvLe3TKxz) (:text |code)
                                  |T $ %{} :Expr (:at 1572778484341) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1572778487105) (:by |qvLe3TKxz) (:text |d!)
                                      |j $ %{} :Leaf (:at 1572778493953) (:by |qvLe3TKxz) (:text |action/create)
                                      |r $ %{} :Expr (:at 1572778494265) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1572778494696) (:by |qvLe3TKxz) (:text |{})
                                          |j $ %{} :Expr (:at 1572778495066) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1572778500039) (:by |qvLe3TKxz) (:text |:text)
                                              |j $ %{} :Expr (:at 1572778503673) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1572778504713) (:by |qvLe3TKxz) (:text |str)
                                                  |T $ %{} :Leaf (:at 1572778634300) (:by |qvLe3TKxz) (:text "|\"Copied! ")
                                                  |j $ %{} :Leaf (:at 1572778532734) (:by |qvLe3TKxz) (:text |code)
                                          |r $ %{} :Expr (:at 1572778512504) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1572778513557) (:by |qvLe3TKxz) (:text |:token)
                                              |j $ %{} :Leaf (:at 1572778534008) (:by |qvLe3TKxz) (:text |code)
                  |v $ %{} :Expr (:at 1509642875887) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629135313786) (:by |qvLe3TKxz) (:text |->)
                      |j $ %{} :Expr (:at 1509642879121) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509642880382) (:by |root) (:text |:data)
                          |j $ %{} :Leaf (:at 1509642882123) (:by |root) (:text |expr)
                      |n $ %{} :Expr (:at 1629135315815) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629135317258) (:by |qvLe3TKxz) (:text |.to-list)
                      |r $ %{} :Expr (:at 1509643122704) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629135591085) (:by |qvLe3TKxz) (:text |.sort-by)
                          |j $ %{} :Leaf (:at 1509643132815) (:by |root) (:text |first)
                      |v $ %{} :Expr (:at 1509643133787) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509768804624) (:by |root) (:text |map-indexed)
                          |j $ %{} :Expr (:at 1509643140897) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509643141300) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1509643141595) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1509768807161) (:by |root) (:text |idx)
                                  |T $ %{} :Leaf (:at 1509643143881) (:by |root) (:text |entry)
                              |r $ %{} :Expr (:at 1509643144620) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629135322202) (:by |qvLe3TKxz) (:text |let-sugar)
                                  |j $ %{} :Expr (:at 1509643146729) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1509643146881) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Expr (:at 1509643147278) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1509643147677) (:by |root) (:text |[])
                                              |j $ %{} :Leaf (:at 1509643148772) (:by |root) (:text |k)
                                              |r $ %{} :Leaf (:at 1509643151149) (:by |root) (:text |child)
                                          |j $ %{} :Leaf (:at 1509643155377) (:by |root) (:text |entry)
                                  |r $ %{} :Expr (:at 1509643156363) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1509643157458) (:by |root) (:text |[])
                                      |j $ %{} :Leaf (:at 1509643158502) (:by |root) (:text |k)
                                      |r $ %{} :Expr (:at 1509643163501) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1509643164391) (:by |root) (:text |if)
                                          |j $ %{} :Expr (:at 1509643165754) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1693022500681) (:by |qvLe3TKxz) (:text |&record:matches?)
                                              |f $ %{} :Leaf (:at 1693022505597) (:by |qvLe3TKxz) (:text |schema/CirruExpr)
                                              |r $ %{} :Leaf (:at 1509643184607) (:by |root) (:text |child)
                                          |r $ %{} :Expr (:at 1509643175364) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1509643176896) (:by |root) (:text |comp-expr)
                                              |j $ %{} :Leaf (:at 1509643182550) (:by |root) (:text |child)
                                              |r $ %{} :Expr (:at 1509768857465) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1509768857688) (:by |root) (:text |=)
                                                  |j $ %{} :Leaf (:at 1509768859414) (:by |root) (:text |idx)
                                                  |r $ %{} :Expr (:at 1509768859971) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1509768860497) (:by |root) (:text |dec)
                                                      |j $ %{} :Expr (:at 1509768861076) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1509768861714) (:by |root) (:text |count)
                                                          |j $ %{} :Expr (:at 1509768862263) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1509768862853) (:by |root) (:text |:data)
                                                              |j $ %{} :Leaf (:at 1509768863915) (:by |root) (:text |expr)
                                          |v $ %{} :Expr (:at 1509643187436) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1509643189491) (:by |root) (:text |<>)
                                              |j $ %{} :Expr (:at 1509643190429) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1509643195409) (:by |root) (:text |:text)
                                                  |j $ %{} :Leaf (:at 1509643199543) (:by |root) (:text |child)
                                              |r $ %{} :Expr (:at 1509643228596) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1509643229713) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1509643229967) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1509643234408) (:by |root) (:text |:margin-right)
                                                      |j $ %{} :Leaf (:at 1509643236895) (:by |root) (:text |8)
        |style-expr $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
            :data $ {}
              |T $ %{} :Leaf (:at 1693060717995) (:by |qvLe3TKxz) (:text |defstyle)
              |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |style-expr)
              |r $ %{} :Expr (:at 1693060718961) (:by |qvLe3TKxz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1693060719424) (:by |qvLe3TKxz) (:text |{})
                  |T $ %{} :Expr (:at 1693060719912) (:by |qvLe3TKxz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1693060721531) (:by |qvLe3TKxz) (:text "|\"&")
                      |T $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |{})
                          |j $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:background-color)
                              |j $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |300)
                                  |r $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |0)
                                  |v $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |94)
                          |r $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:border)
                              |j $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |str)
                                  |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text "||1px solid ")
                                  |r $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |hsl)
                                      |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |0)
                                      |r $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |0)
                                      |v $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |70)
                          |v $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:border-width)
                              |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text "||0 0 0 1px")
                          |y $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:padding)
                              |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text "||2px 16px")
                          |yT $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:font-family)
                              |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text "||Source Code Pro, menlo")
                          |yj $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:line-height)
                              |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text ||16px)
                          |yr $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:margin-bottom)
                              |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |2)
                          |yv $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:vertical-align)
                              |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:top)
                          |yx $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:min-height)
                              |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |16)
                          |yy $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:min-width)
                              |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |32)
                          |yyT $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:font-size)
                              |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |13)
                          |yyj $ %{} :Expr (:at 1572778007173) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572778008807) (:by |qvLe3TKxz) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1572778011434) (:by |qvLe3TKxz) (:text |:pointer)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1509555543400) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1509555543400) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1509555543400) (:by |root) (:text |app.comp.expr)
            |r $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629135235228) (:by |qvLe3TKxz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1520437433993) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ui)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1561260993043) (:by |qvLe3TKxz) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |<>)
                        |t $ %{} :Leaf (:at 1509555471438) (:by |root) (:text |list->)
                        |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |button)
                        |y $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |span)
                        |yT $ %{} :Leaf (:at 1508429846685) (:by |root) (:text |input)
                        |yj $ %{} :Leaf (:at 1509554773369) (:by |root) (:text |pre)
                |x $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |=<)
                |y $ %{} :Expr (:at 1572777540548) (:by |qvLe3TKxz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1693060256016) (:by |qvLe3TKxz) (:text |app.ast)
                    |r $ %{} :Leaf (:at 1572777543397) (:by |qvLe3TKxz) (:text |:refer)
                    |v $ %{} :Expr (:at 1572777543595) (:by |qvLe3TKxz)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1572777544257) (:by |qvLe3TKxz) (:text |tree->cirru)
                |yT $ %{} :Expr (:at 1572777606753) (:by |qvLe3TKxz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1572777607837) (:by |qvLe3TKxz) (:text "|\"copy-to-clipboard")
                    |r $ %{} :Leaf (:at 1629135539508) (:by |qvLe3TKxz) (:text |:default)
                    |v $ %{} :Leaf (:at 1572777614019) (:by |qvLe3TKxz) (:text |copy!)
                |yj $ %{} :Expr (:at 1572778448382) (:by |qvLe3TKxz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1572778462892) (:by |qvLe3TKxz) (:text |respo-message.action)
                    |r $ %{} :Leaf (:at 1572778475662) (:by |qvLe3TKxz) (:text |:as)
                    |v $ %{} :Leaf (:at 1572778477218) (:by |qvLe3TKxz) (:text |action)
                |z $ %{} :Expr (:at 1693022483791) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1693022486865) (:by |qvLe3TKxz) (:text |app.schema)
                    |b $ %{} :Leaf (:at 1693022487780) (:by |qvLe3TKxz) (:text |:as)
                    |h $ %{} :Leaf (:at 1693022488943) (:by |qvLe3TKxz) (:text |schema)
                |zD $ %{} :Expr (:at 1693060736840) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1693060739184) (:by |qvLe3TKxz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1693060740006) (:by |qvLe3TKxz) (:text |:refer)
                    |h $ %{} :Expr (:at 1693060740190) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1693060741229) (:by |qvLe3TKxz) (:text |defstyle)
    |app.comp.file $ {}
      :defs $ {}
        |comp-file $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1509554488853) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1509554494012) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1509554488853) (:by |root) (:text |comp-file)
              |r $ %{} :Expr (:at 1509554488853) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1509554500539) (:by |root) (:text |filename)
                  |j $ %{} :Leaf (:at 1509554753042) (:by |root) (:text |file-info)
              |v $ %{} :Expr (:at 1509554506156) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1509554507620) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1509554527968) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1509554528294) (:by |root) (:text |{})
                      |b $ %{} :Expr (:at 1693060864993) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693060866827) (:by |qvLe3TKxz) (:text |:class-name)
                          |b $ %{} :Expr (:at 1693060955466) (:by |qvLe3TKxz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1693060957686) (:by |qvLe3TKxz) (:text |str-spaced)
                              |T $ %{} :Leaf (:at 1693060869464) (:by |qvLe3TKxz) (:text |css/row)
                              |b $ %{} :Leaf (:at 1693060963493) (:by |qvLe3TKxz) (:text |style-file)
                  |v $ %{} :Expr (:at 1509554657605) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1509554658456) (:by |root) (:text |<>)
                      |j $ %{} :Leaf (:at 1509554659725) (:by |root) (:text |filename)
                  |x $ %{} :Expr (:at 1509554679790) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1509554680923) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1509554685451) (:by |root) (:text |16)
                      |r $ %{} :Leaf (:at 1509554681780) (:by |root) (:text |nil)
                  |y $ %{} :Expr (:at 1509554834867) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1509554836415) (:by |root) (:text |div)
                      |L $ %{} :Expr (:at 1509554836638) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509554837009) (:by |root) (:text |{})
                      |T $ %{} :Expr (:at 1509554701042) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509554711203) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1509554711420) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509554712025) (:by |root) (:text |{})
                              |b $ %{} :Expr (:at 1693060873023) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1693060875880) (:by |qvLe3TKxz) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1693060879300) (:by |qvLe3TKxz) (:text |css/column)
                              |j $ %{} :Expr (:at 1509554712240) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1509554713787) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1509816221235) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1509816221591) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1509816221794) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1509816226135) (:by |root) (:text |:border-left)
                                          |j $ %{} :Expr (:at 1509816226419) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1509816227964) (:by |root) (:text |str)
                                              |j $ %{} :Leaf (:at 1509816230832) (:by |root) (:text "||1px solid ")
                                              |r $ %{} :Expr (:at 1509816231649) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1509816232100) (:by |root) (:text |hsl)
                                                  |j $ %{} :Leaf (:at 1509816233142) (:by |root) (:text |0)
                                                  |r $ %{} :Leaf (:at 1509816233471) (:by |root) (:text |0)
                                                  |v $ %{} :Leaf (:at 1509816234303) (:by |root) (:text |80)
                                      |r $ %{} :Expr (:at 1509816252512) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1509816257488) (:by |root) (:text |:padding-left)
                                          |j $ %{} :Leaf (:at 1509816259937) (:by |root) (:text |8)
                          |r $ %{} :Expr (:at 1509554715554) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509554717328) (:by |root) (:text |<>)
                              |j $ %{} :Leaf (:at 1561263937033) (:by |qvLe3TKxz) (:text |:ns)
                              |r $ %{} :Expr (:at 1561264208100) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1561264208994) (:by |qvLe3TKxz) (:text |{})
                                  |j $ %{} :Expr (:at 1561264210426) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1561264210833) (:by |qvLe3TKxz) (:text |:color)
                                      |j $ %{} :Expr (:at 1561264210833) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1561264210833) (:by |qvLe3TKxz) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1561264210833) (:by |qvLe3TKxz) (:text |0)
                                          |r $ %{} :Leaf (:at 1561264210833) (:by |qvLe3TKxz) (:text |0)
                                          |v $ %{} :Leaf (:at 1561264210833) (:by |qvLe3TKxz) (:text |70)
                          |y $ %{} :Expr (:at 1509555628498) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509555630501) (:by |root) (:text |comp-expr)
                              |j $ %{} :Expr (:at 1509555630964) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1693022029737) (:by |qvLe3TKxz) (:text |get-in)
                                  |j $ %{} :Leaf (:at 1509555633017) (:by |root) (:text |file-info)
                                  |n $ %{} :Expr (:at 1693022034744) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1693022035272) (:by |qvLe3TKxz) (:text |[])
                                      |T $ %{} :Leaf (:at 1693022031611) (:by |qvLe3TKxz) (:text |:ns)
                                      |b $ %{} :Leaf (:at 1693022036378) (:by |qvLe3TKxz) (:text |:code)
                              |r $ %{} :Leaf (:at 1520437652557) (:by |root) (:text |false)
                      |f $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |list->)
                          |r $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |{})
                              |j $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |:style)
                                  |j $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |{})
                                      |j $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |:border-left)
                                          |j $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |str)
                                              |j $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text "||1px solid ")
                                              |r $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |hsl)
                                                  |j $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |0)
                                                  |r $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |0)
                                                  |v $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |70)
                                      |r $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |:padding-left)
                                          |j $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |16)
                                      |v $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |:margin-bottom)
                                          |j $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |2)
                          |v $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629135330352) (:by |qvLe3TKxz) (:text |->)
                              |j $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |:defs)
                                  |j $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |file-info)
                              |n $ %{} :Expr (:at 1629135331565) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629135333797) (:by |qvLe3TKxz) (:text |.to-list)
                              |r $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |map)
                                  |j $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |fn)
                                      |j $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |entry)
                                      |r $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629135336412) (:by |qvLe3TKxz) (:text |let-sugar)
                                          |j $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |[])
                                                      |j $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |def-name)
                                                      |r $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |def-info)
                                                  |j $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |entry)
                                          |r $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |[])
                                              |j $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |def-name)
                                              |r $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |div)
                                                  |j $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |{})
                                                      |j $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1693060860452) (:by |qvLe3TKxz) (:text |:class-name)
                                                          |j $ %{} :Leaf (:at 1693060862304) (:by |qvLe3TKxz) (:text |css/column)
                                                  |r $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |<>)
                                                      |j $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |def-name)
                                                      |r $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |{})
                                                          |j $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |:white-space)
                                                              |j $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |:nowrap)
                                                          |r $ %{} :Expr (:at 1561264190132) (:by |qvLe3TKxz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1561264190132) (:by |qvLe3TKxz) (:text |:color)
                                                              |j $ %{} :Expr (:at 1561264190132) (:by |qvLe3TKxz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1561264190132) (:by |qvLe3TKxz) (:text |hsl)
                                                                  |j $ %{} :Leaf (:at 1561264190132) (:by |qvLe3TKxz) (:text |0)
                                                                  |r $ %{} :Leaf (:at 1561264190132) (:by |qvLe3TKxz) (:text |0)
                                                                  |v $ %{} :Leaf (:at 1561264190132) (:by |qvLe3TKxz) (:text |70)
                                                  |x $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |comp-expr)
                                                      |j $ %{} :Expr (:at 1693022040510) (:by |qvLe3TKxz)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1693022045005) (:by |qvLe3TKxz) (:text |:code)
                                                          |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |def-info)
                                                      |r $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |false)
        |style-file $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1693060963838) (:by |qvLe3TKxz)
            :data $ {}
              |T $ %{} :Leaf (:at 1693060965022) (:by |qvLe3TKxz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1693060963838) (:by |qvLe3TKxz) (:text |style-file)
              |h $ %{} :Expr (:at 1693060966336) (:by |qvLe3TKxz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1693060967636) (:by |qvLe3TKxz) (:text |{})
                  |T $ %{} :Expr (:at 1693060967964) (:by |qvLe3TKxz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1693060969152) (:by |qvLe3TKxz) (:text "|\"&")
                      |T $ %{} :Expr (:at 1693060966021) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693060966021) (:by |qvLe3TKxz) (:text |{})
                          |b $ %{} :Expr (:at 1693060966021) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693060966021) (:by |qvLe3TKxz) (:text |:border-left)
                              |b $ %{} :Expr (:at 1693060966021) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1693060966021) (:by |qvLe3TKxz) (:text |str)
                                  |b $ %{} :Leaf (:at 1693060966021) (:by |qvLe3TKxz) (:text "||1px solid ")
                                  |h $ %{} :Expr (:at 1693060966021) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1693060966021) (:by |qvLe3TKxz) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1693060966021) (:by |qvLe3TKxz) (:text |0)
                                      |h $ %{} :Leaf (:at 1693060966021) (:by |qvLe3TKxz) (:text |0)
                                      |l $ %{} :Leaf (:at 1693060966021) (:by |qvLe3TKxz) (:text |70)
                          |h $ %{} :Expr (:at 1693060966021) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693060966021) (:by |qvLe3TKxz) (:text |:padding-left)
                              |b $ %{} :Leaf (:at 1693060966021) (:by |qvLe3TKxz) (:text |8)
                          |l $ %{} :Expr (:at 1693060966021) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693060966021) (:by |qvLe3TKxz) (:text |:font-family)
                              |b $ %{} :Leaf (:at 1693060966021) (:by |qvLe3TKxz) (:text "||Source Code Pro, menlo")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1509554484375) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1509554484375) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1509554484375) (:by |root) (:text |app.comp.file)
            |r $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629135226230) (:by |qvLe3TKxz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1520437442937) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ui)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1561260960880) (:by |qvLe3TKxz) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |<>)
                        |t $ %{} :Leaf (:at 1509555471438) (:by |root) (:text |list->)
                        |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |button)
                        |y $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |span)
                        |yT $ %{} :Leaf (:at 1508429846685) (:by |root) (:text |input)
                        |yj $ %{} :Leaf (:at 1509554773369) (:by |root) (:text |pre)
                |x $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |=<)
                |y $ %{} :Expr (:at 1509555589943) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1509555593603) (:by |root) (:text |app.comp.expr)
                    |r $ %{} :Leaf (:at 1509555594384) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1509555594536) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1509555597682) (:by |root) (:text |comp-expr)
                |z $ %{} :Expr (:at 1693060885434) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1693060887547) (:by |qvLe3TKxz) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1693060888167) (:by |qvLe3TKxz) (:text |:as)
                    |h $ %{} :Leaf (:at 1693060888880) (:by |qvLe3TKxz) (:text |css)
                |zD $ %{} :Expr (:at 1693060971721) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1693060973397) (:by |qvLe3TKxz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1693060974933) (:by |qvLe3TKxz) (:text |:refer)
                    |h $ %{} :Expr (:at 1693060975170) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1693060977477) (:by |qvLe3TKxz) (:text |defstyle)
    |app.comp.graph $ {}
      :configs $ {}
      :defs $ {}
        |comp-graph $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1630773924806) (:by |qvLe3TKxz)
            :data $ {}
              |T $ %{} :Leaf (:at 1630773927456) (:by |qvLe3TKxz) (:text |defcomp)
              |j $ %{} :Leaf (:at 1630773924806) (:by |qvLe3TKxz) (:text |comp-graph)
              |r $ %{} :Expr (:at 1630773924806) (:by |qvLe3TKxz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1630781022120) (:by |qvLe3TKxz) (:text |states)
                  |T $ %{} :Leaf (:at 1630773935251) (:by |qvLe3TKxz) (:text |snapshot)
              |v $ %{} :Expr (:at 1630781034493) (:by |qvLe3TKxz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1630781035819) (:by |qvLe3TKxz) (:text |let)
                  |L $ %{} :Expr (:at 1630781036030) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1630781036201) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630781037186) (:by |qvLe3TKxz) (:text |cursor)
                          |j $ %{} :Expr (:at 1630781037399) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630781038443) (:by |qvLe3TKxz) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1630781039120) (:by |qvLe3TKxz) (:text |states)
                      |b $ %{} :Expr (:at 1630782108119) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630782108119) (:by |qvLe3TKxz) (:text |configs)
                          |j $ %{} :Expr (:at 1630782108119) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630782108119) (:by |qvLe3TKxz) (:text |:configs)
                              |j $ %{} :Leaf (:at 1630782108119) (:by |qvLe3TKxz) (:text |snapshot)
                      |j $ %{} :Expr (:at 1630781040196) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630781040723) (:by |qvLe3TKxz) (:text |state)
                          |j $ %{} :Expr (:at 1630781040961) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630781041294) (:by |qvLe3TKxz) (:text |or)
                              |j $ %{} :Expr (:at 1630781043607) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630781045184) (:by |qvLe3TKxz) (:text |:data)
                                  |j $ %{} :Leaf (:at 1630781046208) (:by |qvLe3TKxz) (:text |states)
                              |r $ %{} :Expr (:at 1630781046777) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630781047170) (:by |qvLe3TKxz) (:text |{})
                                  |j $ %{} :Expr (:at 1630781047566) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630781053794) (:by |qvLe3TKxz) (:text |:graph)
                                      |j $ %{} :Leaf (:at 1630781055170) (:by |qvLe3TKxz) (:text |nil)
                                  |r $ %{} :Expr (:at 1630782088905) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630782093558) (:by |qvLe3TKxz) (:text |:init-fn)
                                      |j $ %{} :Expr (:at 1630782096867) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630782096867) (:by |qvLe3TKxz) (:text |:init-fn)
                                          |j $ %{} :Leaf (:at 1630782096867) (:by |qvLe3TKxz) (:text |configs)
                      |v $ %{} :Expr (:at 1630781072978) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630781072978) (:by |qvLe3TKxz) (:text |entry)
                          |j $ %{} :Expr (:at 1630781072978) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630781072978) (:by |qvLe3TKxz) (:text |.split)
                              |j $ %{} :Expr (:at 1630781072978) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630781072978) (:by |qvLe3TKxz) (:text |:init-fn)
                                  |j $ %{} :Leaf (:at 1630782100248) (:by |qvLe3TKxz) (:text |state)
                              |r $ %{} :Leaf (:at 1630782136133) (:by |qvLe3TKxz) (:text "|\"/")
                  |T $ %{} :Expr (:at 1630773938888) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630773940228) (:by |qvLe3TKxz) (:text |div)
                      |j $ %{} :Expr (:at 1630773940659) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630773941093) (:by |qvLe3TKxz) (:text |{})
                          |j $ %{} :Expr (:at 1630774036067) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630774038505) (:by |qvLe3TKxz) (:text |:style)
                              |j $ %{} :Expr (:at 1630774057701) (:by |qvLe3TKxz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1630774058554) (:by |qvLe3TKxz) (:text |merge)
                                  |T $ %{} :Leaf (:at 1630774043989) (:by |qvLe3TKxz) (:text |ui/expand)
                                  |b $ %{} :Leaf (:at 1630781919282) (:by |qvLe3TKxz) (:text |ui/column)
                                  |j $ %{} :Expr (:at 1630774058975) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1630774062280) (:by |qvLe3TKxz) (:text |{})
                      |n $ %{} :Expr (:at 1630773967221) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630773967810) (:by |qvLe3TKxz) (:text |div)
                          |j $ %{} :Expr (:at 1630773968053) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630773968455) (:by |qvLe3TKxz) (:text |{})
                              |j $ %{} :Expr (:at 1630781927354) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630781929583) (:by |qvLe3TKxz) (:text |:style)
                                  |j $ %{} :Expr (:at 1630781929853) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630781930202) (:by |qvLe3TKxz) (:text |{})
                                      |j $ %{} :Expr (:at 1630781930453) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630781932619) (:by |qvLe3TKxz) (:text |:border-bottom)
                                          |j $ %{} :Expr (:at 1630781932955) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1630781933447) (:by |qvLe3TKxz) (:text |str)
                                              |j $ %{} :Leaf (:at 1630781936511) (:by |qvLe3TKxz) (:text "|\"1px solid ")
                                              |r $ %{} :Expr (:at 1630781937399) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630781938526) (:by |qvLe3TKxz) (:text |hsl)
                                                  |j $ %{} :Leaf (:at 1630781938955) (:by |qvLe3TKxz) (:text |0)
                                                  |r $ %{} :Leaf (:at 1630781939369) (:by |qvLe3TKxz) (:text |0)
                                                  |v $ %{} :Leaf (:at 1630781939881) (:by |qvLe3TKxz) (:text |90)
                                      |r $ %{} :Expr (:at 1630781943055) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630781945462) (:by |qvLe3TKxz) (:text |:padding)
                                          |j $ %{} :Leaf (:at 1630781979001) (:by |qvLe3TKxz) (:text "|\"8px 4px")
                          |r $ %{} :Expr (:at 1630773968906) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630773971416) (:by |qvLe3TKxz) (:text |button)
                              |j $ %{} :Expr (:at 1630773972091) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630773972424) (:by |qvLe3TKxz) (:text |{})
                                  |b $ %{} :Expr (:at 1630774048504) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630774049217) (:by |qvLe3TKxz) (:text |:style)
                                      |j $ %{} :Leaf (:at 1630774054765) (:by |qvLe3TKxz) (:text |ui/button)
                                  |j $ %{} :Expr (:at 1630773975517) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630773977283) (:by |qvLe3TKxz) (:text |:inner-text)
                                      |j $ %{} :Leaf (:at 1630773978586) (:by |qvLe3TKxz) (:text "|\"Button")
                                  |r $ %{} :Expr (:at 1630773980058) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630773982706) (:by |qvLe3TKxz) (:text |:on-click)
                                      |j $ %{} :Expr (:at 1630773983017) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630773983368) (:by |qvLe3TKxz) (:text |fn)
                                          |j $ %{} :Expr (:at 1630773983741) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1630773983918) (:by |qvLe3TKxz) (:text |e)
                                              |j $ %{} :Leaf (:at 1630773984388) (:by |qvLe3TKxz) (:text |d!)
                                          |q $ %{} :Expr (:at 1630775783826) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1630781088925) (:by |qvLe3TKxz) (:text |;)
                                              |T $ %{} :Leaf (:at 1630775792653) (:by |qvLe3TKxz) (:text |js/console.log)
                                              |j $ %{} :Leaf (:at 1630775796264) (:by |qvLe3TKxz) (:text |snapshot)
                                          |u $ %{} :Expr (:at 1630775807175) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1630781077641) (:by |qvLe3TKxz) (:text |d!)
                                              |f $ %{} :Leaf (:at 1630781081076) (:by |qvLe3TKxz) (:text |cursor)
                                              |r $ %{} :Expr (:at 1630781081529) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1630781083196) (:by |qvLe3TKxz) (:text |assoc)
                                                  |H $ %{} :Leaf (:at 1630781220523) (:by |qvLe3TKxz) (:text |state)
                                                  |L $ %{} :Leaf (:at 1630781084463) (:by |qvLe3TKxz) (:text |:graph)
                                                  |T $ %{} :Expr (:at 1630775810128) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1630775810128) (:by |qvLe3TKxz) (:text |build-deps-graph)
                                                      |j $ %{} :Expr (:at 1630775892719) (:by |qvLe3TKxz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1630775893230) (:by |qvLe3TKxz) (:text |nth)
                                                          |j $ %{} :Leaf (:at 1630775895278) (:by |qvLe3TKxz) (:text |entry)
                                                          |r $ %{} :Leaf (:at 1630775895545) (:by |qvLe3TKxz) (:text |0)
                                                      |r $ %{} :Expr (:at 1630775897478) (:by |qvLe3TKxz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1630775899432) (:by |qvLe3TKxz) (:text |nth)
                                                          |j $ %{} :Leaf (:at 1630775900564) (:by |qvLe3TKxz) (:text |entry)
                                                          |r $ %{} :Leaf (:at 1630775900965) (:by |qvLe3TKxz) (:text |1)
                                                      |v $ %{} :Expr (:at 1630775850797) (:by |qvLe3TKxz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1630775851390) (:by |qvLe3TKxz) (:text |:files)
                                                          |j $ %{} :Leaf (:at 1696151433988) (:by |qvLe3TKxz) (:text |snapshot)
                                                      |x $ %{} :Expr (:at 1630775854747) (:by |qvLe3TKxz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1630775856953) (:by |qvLe3TKxz) (:text |:package)
                                                          |j $ %{} :Leaf (:at 1696151434898) (:by |qvLe3TKxz) (:text |snapshot)
                          |v $ %{} :Expr (:at 1630782166456) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630782170271) (:by |qvLe3TKxz) (:text |=<)
                              |j $ %{} :Leaf (:at 1630782172671) (:by |qvLe3TKxz) (:text |8)
                              |r $ %{} :Leaf (:at 1630782228928) (:by |qvLe3TKxz) (:text |nil)
                          |x $ %{} :Expr (:at 1630782174389) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630782176396) (:by |qvLe3TKxz) (:text |input)
                              |j $ %{} :Expr (:at 1630782176748) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630782177315) (:by |qvLe3TKxz) (:text |{})
                                  |j $ %{} :Expr (:at 1630782177618) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630782186883) (:by |qvLe3TKxz) (:text |:value)
                                      |j $ %{} :Expr (:at 1630782187201) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630782189245) (:by |qvLe3TKxz) (:text |:init-fn)
                                          |j $ %{} :Leaf (:at 1630782190556) (:by |qvLe3TKxz) (:text |state)
                                  |r $ %{} :Expr (:at 1630782191435) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630782193280) (:by |qvLe3TKxz) (:text |:style)
                                      |j $ %{} :Leaf (:at 1630782195131) (:by |qvLe3TKxz) (:text |ui/input)
                                  |v $ %{} :Expr (:at 1630782195524) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630782197904) (:by |qvLe3TKxz) (:text |:on-input)
                                      |j $ %{} :Expr (:at 1630782198228) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630782198629) (:by |qvLe3TKxz) (:text |fn)
                                          |j $ %{} :Expr (:at 1630782198872) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1630782201465) (:by |qvLe3TKxz) (:text |e)
                                              |j $ %{} :Leaf (:at 1630782200626) (:by |qvLe3TKxz) (:text |d!)
                                          |r $ %{} :Expr (:at 1630782202263) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1630782202806) (:by |qvLe3TKxz) (:text |d!)
                                              |j $ %{} :Leaf (:at 1630782204343) (:by |qvLe3TKxz) (:text |cursor)
                                              |r $ %{} :Expr (:at 1630782204591) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630782206053) (:by |qvLe3TKxz) (:text |assoc)
                                                  |j $ %{} :Leaf (:at 1630782206784) (:by |qvLe3TKxz) (:text |state)
                                                  |r $ %{} :Leaf (:at 1630782212122) (:by |qvLe3TKxz) (:text |:init-fn)
                                                  |v $ %{} :Expr (:at 1630782215527) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1630782216678) (:by |qvLe3TKxz) (:text |:value)
                                                      |j $ %{} :Leaf (:at 1630782217098) (:by |qvLe3TKxz) (:text |e)
                      |t $ %{} :Expr (:at 1630781901920) (:by |qvLe3TKxz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1630781902822) (:by |qvLe3TKxz) (:text |div)
                          |L $ %{} :Expr (:at 1630781903070) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630781903426) (:by |qvLe3TKxz) (:text |{})
                              |j $ %{} :Expr (:at 1630781903684) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630781904888) (:by |qvLe3TKxz) (:text |:style)
                                  |j $ %{} :Expr (:at 1630782047956) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1630782049733) (:by |qvLe3TKxz) (:text |merge)
                                      |T $ %{} :Leaf (:at 1630781906900) (:by |qvLe3TKxz) (:text |ui/expand)
                                      |j $ %{} :Expr (:at 1630782050538) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630782050895) (:by |qvLe3TKxz) (:text |{})
                                          |j $ %{} :Expr (:at 1630782051840) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1630782053508) (:by |qvLe3TKxz) (:text |:padding)
                                              |j $ %{} :Leaf (:at 1630782055764) (:by |qvLe3TKxz) (:text "|\"8px")
                          |T $ %{} :Expr (:at 1630781111444) (:by |qvLe3TKxz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1630781112425) (:by |qvLe3TKxz) (:text |if)
                              |L $ %{} :Expr (:at 1630781112631) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630781113449) (:by |qvLe3TKxz) (:text |some?)
                                  |j $ %{} :Expr (:at 1630781119902) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630781120717) (:by |qvLe3TKxz) (:text |:graph)
                                      |j $ %{} :Leaf (:at 1630781122304) (:by |qvLe3TKxz) (:text |state)
                              |T $ %{} :Expr (:at 1630781105477) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630781110484) (:by |qvLe3TKxz) (:text |comp-graph-tree)
                                  |j $ %{} :Expr (:at 1630781134982) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630781136715) (:by |qvLe3TKxz) (:text |nth)
                                      |j $ %{} :Leaf (:at 1630781140767) (:by |qvLe3TKxz) (:text |entry)
                                      |r $ %{} :Leaf (:at 1630781141379) (:by |qvLe3TKxz) (:text |0)
                                  |r $ %{} :Expr (:at 1630781142016) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630781144401) (:by |qvLe3TKxz) (:text |nth)
                                      |j $ %{} :Leaf (:at 1630781145062) (:by |qvLe3TKxz) (:text |entry)
                                      |r $ %{} :Leaf (:at 1630781145448) (:by |qvLe3TKxz) (:text |1)
                                  |v $ %{} :Expr (:at 1630781158192) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630781155237) (:by |qvLe3TKxz) (:text |:graph)
                                      |j $ %{} :Leaf (:at 1630781159565) (:by |qvLe3TKxz) (:text |state)
                                  |x $ %{} :Expr (:at 1630781365430) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630781368568) (:by |qvLe3TKxz) (:text |#{})
                              |j $ %{} :Expr (:at 1630781203265) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630781203039) (:by |qvLe3TKxz) (:text |<>)
                                  |j $ %{} :Leaf (:at 1630781208351) (:by |qvLe3TKxz) (:text "|\"no graph")
        |comp-graph-tree $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1630781162389) (:by |qvLe3TKxz)
            :data $ {}
              |T $ %{} :Leaf (:at 1630781163801) (:by |qvLe3TKxz) (:text |defcomp)
              |j $ %{} :Leaf (:at 1630781162389) (:by |qvLe3TKxz) (:text |comp-graph-tree)
              |r $ %{} :Expr (:at 1630781162389) (:by |qvLe3TKxz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1630781182815) (:by |qvLe3TKxz) (:text |ns')
                  |j $ %{} :Leaf (:at 1630781176783) (:by |qvLe3TKxz) (:text |def')
                  |r $ %{} :Leaf (:at 1630781167541) (:by |qvLe3TKxz) (:text |dict)
                  |v $ %{} :Leaf (:at 1630781375199) (:by |qvLe3TKxz) (:text |footprints)
              |v $ %{} :Expr (:at 1630781385522) (:by |qvLe3TKxz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1630781386041) (:by |qvLe3TKxz) (:text |let)
                  |L $ %{} :Expr (:at 1630781386326) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1630781386490) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630781389099) (:by |qvLe3TKxz) (:text |path)
                          |j $ %{} :Expr (:at 1630781390996) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630781390996) (:by |qvLe3TKxz) (:text |str)
                              |j $ %{} :Leaf (:at 1630781390996) (:by |qvLe3TKxz) (:text |ns')
                              |r $ %{} :Leaf (:at 1630781390996) (:by |qvLe3TKxz) (:text "|\"/")
                              |v $ %{} :Leaf (:at 1630781390996) (:by |qvLe3TKxz) (:text |def')
                  |T $ %{} :Expr (:at 1630781167960) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630781257171) (:by |qvLe3TKxz) (:text |div)
                      |j $ %{} :Expr (:at 1630781257436) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630781257791) (:by |qvLe3TKxz) (:text |{})
                          |j $ %{} :Expr (:at 1630781258677) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630781261246) (:by |qvLe3TKxz) (:text |:style)
                              |j $ %{} :Leaf (:at 1630781266505) (:by |qvLe3TKxz) (:text |ui/row)
                      |r $ %{} :Expr (:at 1630781267450) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630781268313) (:by |qvLe3TKxz) (:text |div)
                          |j $ %{} :Expr (:at 1630781268538) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630781268890) (:by |qvLe3TKxz) (:text |{})
                              |j $ %{} :Expr (:at 1630781833244) (:by |qvLe3TKxz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1630781834329) (:by |qvLe3TKxz) (:text |:style)
                                  |T $ %{} :Expr (:at 1630781835411) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1630781836447) (:by |qvLe3TKxz) (:text |{})
                                      |T $ %{} :Expr (:at 1630781825680) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630781826618) (:by |qvLe3TKxz) (:text |:margin)
                                          |j $ %{} :Leaf (:at 1630782302258) (:by |qvLe3TKxz) (:text "|\"0px 0")
                                      |j $ %{} :Expr (:at 1630782401428) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630782401428) (:by |qvLe3TKxz) (:text |:line-height)
                                          |j $ %{} :Leaf (:at 1630782401428) (:by |qvLe3TKxz) (:text "|\"20px")
                          |r $ %{} :Expr (:at 1630782276243) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text |<>)
                              |j $ %{} :Expr (:at 1630782276243) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text |str)
                                  |j $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text |ns')
                                  |r $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text "|\"/")
                              |r $ %{} :Expr (:at 1630782276243) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text |{})
                                  |j $ %{} :Expr (:at 1630782276243) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text |:color)
                                      |j $ %{} :Expr (:at 1630782276243) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text |0)
                                          |r $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text |0)
                                          |v $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text |70)
                                  |r $ %{} :Expr (:at 1630782276243) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text |:line-height)
                                      |j $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text "|\"14px")
                                  |v $ %{} :Expr (:at 1630782276243) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text |:font-size)
                                      |j $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text "|\"12px")
                          |v $ %{} :Expr (:at 1630782274230) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630782274230) (:by |qvLe3TKxz) (:text |<>)
                              |j $ %{} :Leaf (:at 1630782274230) (:by |qvLe3TKxz) (:text |def')
                              |r $ %{} :Expr (:at 1630782274230) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630782274230) (:by |qvLe3TKxz) (:text |{})
                                  |j $ %{} :Expr (:at 1630782274230) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630782274230) (:by |qvLe3TKxz) (:text |:line-height)
                                      |j $ %{} :Leaf (:at 1630782274230) (:by |qvLe3TKxz) (:text "|\"20px")
                                  |r $ %{} :Expr (:at 1630782502561) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630782507247) (:by |qvLe3TKxz) (:text |:font-family)
                                      |j $ %{} :Leaf (:at 1630782517205) (:by |qvLe3TKxz) (:text |ui/font-normal)
                      |v $ %{} :Expr (:at 1630781379717) (:by |qvLe3TKxz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1630781380225) (:by |qvLe3TKxz) (:text |if)
                          |L $ %{} :Expr (:at 1630781380492) (:by |qvLe3TKxz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1630781383176) (:by |qvLe3TKxz) (:text |.contains?)
                              |T $ %{} :Leaf (:at 1630781381038) (:by |qvLe3TKxz) (:text |footprints)
                              |j $ %{} :Leaf (:at 1630781395834) (:by |qvLe3TKxz) (:text |path)
                          |P $ %{} :Expr (:at 1630781405882) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630781411831) (:by |qvLe3TKxz) (:text |<>)
                              |j $ %{} :Leaf (:at 1630781414713) (:by |qvLe3TKxz) (:text "|\"Looped")
                              |r $ %{} :Expr (:at 1630782592243) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630782593565) (:by |qvLe3TKxz) (:text |{})
                                  |j $ %{} :Expr (:at 1630782593803) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630782595760) (:by |qvLe3TKxz) (:text |:display)
                                      |j $ %{} :Leaf (:at 1630782599775) (:by |qvLe3TKxz) (:text |:inline-block)
                                  |r $ %{} :Expr (:at 1630782601619) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630782603471) (:by |qvLe3TKxz) (:text |:margin)
                                      |j $ %{} :Leaf (:at 1630782610820) (:by |qvLe3TKxz) (:text "|\"0 4px")
                                  |v $ %{} :Expr (:at 1630782614943) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630782632553) (:by |qvLe3TKxz) (:text |:background-color)
                                      |j $ %{} :Expr (:at 1630782621116) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630782621502) (:by |qvLe3TKxz) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1630782623572) (:by |qvLe3TKxz) (:text |40)
                                          |r $ %{} :Leaf (:at 1630782624957) (:by |qvLe3TKxz) (:text |80)
                                          |v $ %{} :Leaf (:at 1630782673512) (:by |qvLe3TKxz) (:text |60)
                                  |x $ %{} :Expr (:at 1630782638161) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630782640713) (:by |qvLe3TKxz) (:text |:padding)
                                      |j $ %{} :Leaf (:at 1630782645228) (:by |qvLe3TKxz) (:text "|\"0 6px")
                                  |y $ %{} :Expr (:at 1630782650092) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630782652890) (:by |qvLe3TKxz) (:text |:color)
                                      |j $ %{} :Leaf (:at 1630782655363) (:by |qvLe3TKxz) (:text |:white)
                                  |yT $ %{} :Expr (:at 1630782662145) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630782665537) (:by |qvLe3TKxz) (:text |:border-radius)
                                      |j $ %{} :Leaf (:at 1630782671283) (:by |qvLe3TKxz) (:text "|\"8px")
                          |T $ %{} :Expr (:at 1630781292663) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630781295067) (:by |qvLe3TKxz) (:text |let)
                              |j $ %{} :Expr (:at 1630781295518) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1630781296653) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630781306819) (:by |qvLe3TKxz) (:text |deps)
                                      |j $ %{} :Expr (:at 1630781307103) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630781309113) (:by |qvLe3TKxz) (:text |get-in)
                                          |j $ %{} :Leaf (:at 1630781310078) (:by |qvLe3TKxz) (:text |dict)
                                          |r $ %{} :Expr (:at 1630781475910) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1630781476677) (:by |qvLe3TKxz) (:text |[])
                                              |T $ %{} :Leaf (:at 1630781311195) (:by |qvLe3TKxz) (:text |ns')
                                              |j $ %{} :Leaf (:at 1630781527626) (:by |qvLe3TKxz) (:text |def')
                              |r $ %{} :Expr (:at 1630781315117) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1630781315533) (:by |qvLe3TKxz) (:text |if)
                                  |j $ %{} :Expr (:at 1630781316101) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630781320264) (:by |qvLe3TKxz) (:text |list?)
                                      |j $ %{} :Leaf (:at 1630781318162) (:by |qvLe3TKxz) (:text |deps)
                                  |n $ %{} :Expr (:at 1630781325864) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1630781427545) (:by |qvLe3TKxz) (:text |div)
                                      |j $ %{} :Expr (:at 1630781331625) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630781331925) (:by |qvLe3TKxz) (:text |{})
                                          |j $ %{} :Expr (:at 1630781536350) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1630781538489) (:by |qvLe3TKxz) (:text |:style)
                                              |j $ %{} :Expr (:at 1630781538774) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630781539101) (:by |qvLe3TKxz) (:text |{})
                                                  |j $ %{} :Expr (:at 1630781539477) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1630781542101) (:by |qvLe3TKxz) (:text |:border-left)
                                                      |j $ %{} :Expr (:at 1630781542346) (:by |qvLe3TKxz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1630781543200) (:by |qvLe3TKxz) (:text |str)
                                                          |j $ %{} :Leaf (:at 1630781547204) (:by |qvLe3TKxz) (:text "|\"1px solid ")
                                                          |r $ %{} :Expr (:at 1630781548463) (:by |qvLe3TKxz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1630781549792) (:by |qvLe3TKxz) (:text |hsl)
                                                              |j $ %{} :Leaf (:at 1630781550115) (:by |qvLe3TKxz) (:text |0)
                                                              |r $ %{} :Leaf (:at 1630781550392) (:by |qvLe3TKxz) (:text |0)
                                                              |v $ %{} :Leaf (:at 1630781552722) (:by |qvLe3TKxz) (:text |90)
                                                  |r $ %{} :Expr (:at 1630781554143) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1630781555965) (:by |qvLe3TKxz) (:text |:padding)
                                                      |j $ %{} :Leaf (:at 1630781561818) (:by |qvLe3TKxz) (:text "|\"0 8px")
                                                  |v $ %{} :Expr (:at 1630781677410) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1630781678821) (:by |qvLe3TKxz) (:text |:margin)
                                                      |j $ %{} :Leaf (:at 1630781683118) (:by |qvLe3TKxz) (:text "|\"0 8px")
                                      |n $ %{} :Leaf (:at 1630781425707) (:by |qvLe3TKxz) (:text |&)
                                      |r $ %{} :Expr (:at 1630781333356) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630781334627) (:by |qvLe3TKxz) (:text |->)
                                          |j $ %{} :Leaf (:at 1630781337837) (:by |qvLe3TKxz) (:text |deps)
                                          |r $ %{} :Expr (:at 1630781339397) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1630781422524) (:by |qvLe3TKxz) (:text |map)
                                              |j $ %{} :Expr (:at 1630781432130) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630781432932) (:by |qvLe3TKxz) (:text |fn)
                                                  |j $ %{} :Expr (:at 1630781433479) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1630781434365) (:by |qvLe3TKxz) (:text |dep)
                                                  |r $ %{} :Expr (:at 1630782884724) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1630782885312) (:by |qvLe3TKxz) (:text |if)
                                                      |L $ %{} :Expr (:at 1630782885585) (:by |qvLe3TKxz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1630782887355) (:by |qvLe3TKxz) (:text |=)
                                                          |j $ %{} :Leaf (:at 1630782890506) (:by |qvLe3TKxz) (:text |:default)
                                                          |r $ %{} :Expr (:at 1630782892759) (:by |qvLe3TKxz)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1630782894555) (:by |qvLe3TKxz) (:text |:kind)
                                                              |T $ %{} :Leaf (:at 1630782891132) (:by |qvLe3TKxz) (:text |dep)
                                                      |P $ %{} :Expr (:at 1630783621634) (:by |qvLe3TKxz)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1630783622374) (:by |qvLe3TKxz) (:text |div)
                                                          |L $ %{} :Expr (:at 1630783622654) (:by |qvLe3TKxz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1630783623057) (:by |qvLe3TKxz) (:text |{})
                                                              |j $ %{} :Expr (:at 1630783633607) (:by |qvLe3TKxz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1630783635459) (:by |qvLe3TKxz) (:text |:style)
                                                                  |j $ %{} :Expr (:at 1630783635836) (:by |qvLe3TKxz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1630783636246) (:by |qvLe3TKxz) (:text |{})
                                                                      |j $ %{} :Expr (:at 1630783636439) (:by |qvLe3TKxz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1630783637207) (:by |qvLe3TKxz) (:text |:color)
                                                                          |j $ %{} :Expr (:at 1630783637499) (:by |qvLe3TKxz)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1630783637978) (:by |qvLe3TKxz) (:text |hsl)
                                                                              |j $ %{} :Leaf (:at 1630783639407) (:by |qvLe3TKxz) (:text |200)
                                                                              |r $ %{} :Leaf (:at 1630783639869) (:by |qvLe3TKxz) (:text |80)
                                                                              |v $ %{} :Leaf (:at 1630783655339) (:by |qvLe3TKxz) (:text |60)
                                                                      |r $ %{} :Expr (:at 1630783644685) (:by |qvLe3TKxz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1630783647385) (:by |qvLe3TKxz) (:text |:line-height)
                                                                          |j $ %{} :Leaf (:at 1630783650330) (:by |qvLe3TKxz) (:text "|\"20px")
                                                                      |v $ %{} :Expr (:at 1630783662458) (:by |qvLe3TKxz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1630783665723) (:by |qvLe3TKxz) (:text |:text-decoration)
                                                                          |j $ %{} :Leaf (:at 1630783667915) (:by |qvLe3TKxz) (:text |:underline)
                                                          |T $ %{} :Expr (:at 1630782896151) (:by |qvLe3TKxz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1630782896752) (:by |qvLe3TKxz) (:text |<>)
                                                              |j $ %{} :Expr (:at 1630782899439) (:by |qvLe3TKxz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1630782902315) (:by |qvLe3TKxz) (:text |:package)
                                                                  |j $ %{} :Leaf (:at 1630782903005) (:by |qvLe3TKxz) (:text |dep)
                                                      |T $ %{} :Expr (:at 1630781446574) (:by |qvLe3TKxz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1630781446223) (:by |qvLe3TKxz) (:text |comp-graph-tree)
                                                          |j $ %{} :Expr (:at 1630781450998) (:by |qvLe3TKxz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1630781451842) (:by |qvLe3TKxz) (:text |:ns)
                                                              |j $ %{} :Leaf (:at 1630781452605) (:by |qvLe3TKxz) (:text |dep)
                                                          |r $ %{} :Expr (:at 1630781455443) (:by |qvLe3TKxz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1630781455839) (:by |qvLe3TKxz) (:text |:def)
                                                              |j $ %{} :Leaf (:at 1630781456492) (:by |qvLe3TKxz) (:text |dep)
                                                          |v $ %{} :Leaf (:at 1630781458620) (:by |qvLe3TKxz) (:text |dict)
                                                          |x $ %{} :Expr (:at 1630781459463) (:by |qvLe3TKxz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1630781462620) (:by |qvLe3TKxz) (:text |.include)
                                                              |j $ %{} :Leaf (:at 1630781464435) (:by |qvLe3TKxz) (:text |footprints)
                                                              |r $ %{} :Leaf (:at 1630781468867) (:by |qvLe3TKxz) (:text |path)
                                  |r $ %{} :Expr (:at 1630781582602) (:by |qvLe3TKxz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1630781583525) (:by |qvLe3TKxz) (:text |div)
                                      |L $ %{} :Expr (:at 1630781583824) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630781584161) (:by |qvLe3TKxz) (:text |{})
                                          |j $ %{} :Expr (:at 1630781585059) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1630781586071) (:by |qvLe3TKxz) (:text |:style)
                                              |j $ %{} :Expr (:at 1630781586449) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630781587029) (:by |qvLe3TKxz) (:text |{})
                                                  |j $ %{} :Expr (:at 1630781587916) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1630781589215) (:by |qvLe3TKxz) (:text |:padding)
                                                      |j $ %{} :Leaf (:at 1630781591767) (:by |qvLe3TKxz) (:text "|\"0 8px")
                                                  |r $ %{} :Expr (:at 1630782564791) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1630782564791) (:by |qvLe3TKxz) (:text |:line-height)
                                                      |j $ %{} :Leaf (:at 1630782564791) (:by |qvLe3TKxz) (:text "|\"20px")
                                      |T $ %{} :Expr (:at 1630781321161) (:by |qvLe3TKxz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1630781321819) (:by |qvLe3TKxz) (:text |<>)
                                          |j $ %{} :Leaf (:at 1630782538277) (:by |qvLe3TKxz) (:text "|\"-")
                                          |r $ %{} :Expr (:at 1630781597602) (:by |qvLe3TKxz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1630781597957) (:by |qvLe3TKxz) (:text |{})
                                              |j $ %{} :Expr (:at 1630781598296) (:by |qvLe3TKxz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1630781599094) (:by |qvLe3TKxz) (:text |:color)
                                                  |j $ %{} :Expr (:at 1630781599346) (:by |qvLe3TKxz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1630781599666) (:by |qvLe3TKxz) (:text |hsl)
                                                      |j $ %{} :Leaf (:at 1630781600375) (:by |qvLe3TKxz) (:text |0)
                                                      |r $ %{} :Leaf (:at 1630781602426) (:by |qvLe3TKxz) (:text |0)
                                                      |v $ %{} :Leaf (:at 1630781601118) (:by |qvLe3TKxz) (:text |80)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1630773920154) (:by |qvLe3TKxz)
          :data $ {}
            |T $ %{} :Leaf (:at 1630773920154) (:by |qvLe3TKxz) (:text |ns)
            |j $ %{} :Leaf (:at 1630773920154) (:by |qvLe3TKxz) (:text |app.comp.graph)
            |r $ %{} :Expr (:at 1630773955245) (:by |qvLe3TKxz)
              :data $ {}
                |T $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |:require)
                |j $ %{} :Expr (:at 1630773955245) (:by |qvLe3TKxz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |:refer)
                    |v $ %{} :Expr (:at 1630773955245) (:by |qvLe3TKxz)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |hsl)
                |r $ %{} :Expr (:at 1630773955245) (:by |qvLe3TKxz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |:as)
                    |v $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |ui)
                |v $ %{} :Expr (:at 1630773955245) (:by |qvLe3TKxz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |:refer)
                    |v $ %{} :Expr (:at 1630773955245) (:by |qvLe3TKxz)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |<>)
                        |v $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |list->)
                        |x $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |div)
                        |y $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |button)
                        |yT $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |span)
                        |yj $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |input)
                        |yr $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |pre)
                |x $ %{} :Expr (:at 1630773955245) (:by |qvLe3TKxz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |:refer)
                    |v $ %{} :Expr (:at 1630773955245) (:by |qvLe3TKxz)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |=<)
                |y $ %{} :Expr (:at 1630775739869) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1630775739869) (:by |qvLe3TKxz) (:text |app.ast)
                    |j $ %{} :Leaf (:at 1630775739869) (:by |qvLe3TKxz) (:text |:refer)
                    |r $ %{} :Expr (:at 1630775739869) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1630775739869) (:by |qvLe3TKxz) (:text |build-deps-graph)
    |app.comp.viewer $ {}
      :defs $ {}
        |comp-viewer $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1508431291056) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1508431316090) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1508431291056) (:by |root) (:text |comp-viewer)
              |r $ %{} :Expr (:at 1508431291056) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1534089768866) (:by |root) (:text |calcit)
              |v $ %{} :Expr (:at 1508431317393) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1508431318475) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1508431318762) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1508431319087) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1508431366644) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1508431368641) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1508431368822) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508431371261) (:by |root) (:text |{})
                      |n $ %{} :Expr (:at 1508431512529) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508431513870) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1561263889211) (:by |qvLe3TKxz) (:text "|\"Namespace:")
                      |p $ %{} :Expr (:at 1508431521085) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508431521802) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1508431522292) (:by |root) (:text |8)
                          |r $ %{} :Leaf (:at 1508431524027) (:by |root) (:text |nil)
                      |r $ %{} :Expr (:at 1508431372074) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508431372779) (:by |root) (:text |<>)
                          |b $ %{} :Expr (:at 1696151327502) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696151329826) (:by |qvLe3TKxz) (:text |:package)
                              |b $ %{} :Leaf (:at 1696151331386) (:by |qvLe3TKxz) (:text |calcit)
                  |t $ %{} :Expr (:at 1508431462743) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1508431463477) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1508431463702) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508431464202) (:by |root) (:text |{})
                      |n $ %{} :Expr (:at 1508431525852) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508431527155) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1561263891850) (:by |qvLe3TKxz) (:text "|\"Users:")
                      |p $ %{} :Expr (:at 1508431530976) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508431533483) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1508431534031) (:by |root) (:text |8)
                          |r $ %{} :Leaf (:at 1508431535379) (:by |root) (:text |nil)
                      |r $ %{} :Expr (:at 1508431466277) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508431466778) (:by |root) (:text |<>)
                          |j $ %{} :Expr (:at 1508431467235) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508431469099) (:by |root) (:text |:users)
                              |j $ %{} :Leaf (:at 1534089776352) (:by |root) (:text |calcit)
                  |v $ %{} :Expr (:at 1508431377235) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1508431377812) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1508431378067) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508431378627) (:by |root) (:text |{})
                      |n $ %{} :Expr (:at 1508431537019) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508431538236) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1561263894082) (:by |qvLe3TKxz) (:text "|\"Configs:")
                      |p $ %{} :Expr (:at 1508431547770) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508431548354) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1508431549735) (:by |root) (:text |8)
                          |r $ %{} :Leaf (:at 1508431550351) (:by |root) (:text |nil)
                      |r $ %{} :Expr (:at 1508431380132) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508431380827) (:by |root) (:text |<>)
                          |j $ %{} :Expr (:at 1508431386314) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508431388215) (:by |root) (:text |:configs)
                              |j $ %{} :Leaf (:at 1534089777522) (:by |root) (:text |calcit)
                  |x $ %{} :Expr (:at 1508431390953) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1508431391480) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1508431391756) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508431392109) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1509554646639) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509554647543) (:by |root) (:text |:style)
                              |j $ %{} :Leaf (:at 1509554648901) (:by |root) (:text |ui/row)
                      |n $ %{} :Expr (:at 1508431569268) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508431570072) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1561263895856) (:by |qvLe3TKxz) (:text "|\"Files:")
                      |p $ %{} :Expr (:at 1508431574395) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508431575355) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1509554695448) (:by |root) (:text |16)
                          |r $ %{} :Leaf (:at 1508431576828) (:by |root) (:text |nil)
                      |u $ %{} :Expr (:at 1509554540633) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509554546632) (:by |root) (:text |list->)
                          |r $ %{} :Expr (:at 1509554548166) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509554548716) (:by |root) (:text |{})
                          |v $ %{} :Expr (:at 1509554549567) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629135208842) (:by |qvLe3TKxz) (:text |->)
                              |j $ %{} :Expr (:at 1509554562186) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1509554561989) (:by |root) (:text |:files)
                                  |j $ %{} :Leaf (:at 1696151304251) (:by |qvLe3TKxz) (:text |calcit)
                              |n $ %{} :Expr (:at 1629135210929) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629135212825) (:by |qvLe3TKxz) (:text |.to-list)
                              |r $ %{} :Expr (:at 1509554563738) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1509554564727) (:by |root) (:text |map)
                                  |j $ %{} :Expr (:at 1509554566640) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1509554566915) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1509554567450) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1509554568002) (:by |root) (:text |entry)
                                      |r $ %{} :Expr (:at 1509554569869) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629135216163) (:by |qvLe3TKxz) (:text |let-sugar)
                                          |j $ %{} :Expr (:at 1509554571687) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1509554571830) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1509554573732) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1509554573016) (:by |root) (:text |[])
                                                      |j $ %{} :Leaf (:at 1509554575142) (:by |root) (:text |filename)
                                                      |r $ %{} :Leaf (:at 1509554578164) (:by |root) (:text |file-info)
                                                  |j $ %{} :Leaf (:at 1509554582090) (:by |root) (:text |entry)
                                          |r $ %{} :Expr (:at 1509554582997) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1509554593909) (:by |root) (:text |[])
                                              |j $ %{} :Leaf (:at 1509554597241) (:by |root) (:text |filename)
                                              |r $ %{} :Expr (:at 1509554597543) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1509554600964) (:by |root) (:text |comp-file)
                                                  |j $ %{} :Leaf (:at 1509554605702) (:by |root) (:text |filename)
                                                  |r $ %{} :Leaf (:at 1509554607443) (:by |root) (:text |file-info)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1508431287719) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1508431287719) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1508431287719) (:by |root) (:text |app.comp.viewer)
            |v $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |hsl.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1520437453215) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ui)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1561260949351) (:by |qvLe3TKxz) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                        |w $ %{} :Leaf (:at 1509554631132) (:by |root) (:text |list->)
                        |x $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |button)
                        |y $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |span)
                        |yT $ %{} :Leaf (:at 1508429846685) (:by |root) (:text |input)
                |x $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |=<)
                |yj $ %{} :Expr (:at 1509554610157) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1509554615365) (:by |root) (:text |app.comp.file)
                    |r $ %{} :Leaf (:at 1509554616127) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1509554616313) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1509554619076) (:by |root) (:text |comp-file)
    |app.config $ {}
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1561261394327) (:by |qvLe3TKxz)
            :data $ {}
              |T $ %{} :Leaf (:at 1561261394327) (:by |qvLe3TKxz) (:text |def)
              |j $ %{} :Leaf (:at 1561261394327) (:by |qvLe3TKxz) (:text |dev?)
              |r $ %{} :Expr (:at 1629135525071) (:by |qvLe3TKxz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629135526056) (:by |qvLe3TKxz) (:text |=)
                  |j $ %{} :Leaf (:at 1629135527879) (:by |qvLe3TKxz) (:text "|\"dev")
                  |r $ %{} :Expr (:at 1629135528213) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629135529692) (:by |qvLe3TKxz) (:text |get-env)
                      |j $ %{} :Leaf (:at 1629135532295) (:by |qvLe3TKxz) (:text "|\"mode")
                      |n $ %{} :Leaf (:at 1658661587632) (:by |qvLe3TKxz) (:text "|\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1534088762989) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1534088762989) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1534088762989) (:by |root) (:text |site)
              |r $ %{} :Expr (:at 1534088762989) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1534088762989) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1534088762989) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1534088762989) (:by |root) (:text |:dev-ui)
                      |j $ %{} :Leaf (:at 1534088762989) (:by |root) (:text "|\"http://localhost:8100/main.css")
                  |v $ %{} :Expr (:at 1534088762989) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1534088762989) (:by |root) (:text |:release-ui)
                      |j $ %{} :Leaf (:at 1534088762989) (:by |root) (:text "|\"http://cdn.tiye.me/favored-fonts/main.css")
                  |x $ %{} :Expr (:at 1534088762989) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1534088762989) (:by |root) (:text |:cdn-url)
                      |j $ %{} :Leaf (:at 1534088783760) (:by |root) (:text "|\"http://cdn.tiye.me/calcit-viewer/")
                  |yT $ %{} :Expr (:at 1534088762989) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1534088762989) (:by |root) (:text |:title)
                      |j $ %{} :Leaf (:at 1534088796697) (:by |root) (:text "|\"Calcit Viewer")
                  |yj $ %{} :Expr (:at 1534088762989) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1534088762989) (:by |root) (:text |:icon)
                      |j $ %{} :Leaf (:at 1534088800229) (:by |root) (:text "|\"http://cdn.tiye.me/logo/cirru.png")
                  |yn $ %{} :Expr (:at 1561261122159) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1561261124616) (:by |qvLe3TKxz) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1561261122159) (:by |qvLe3TKxz) (:text "|\"calcit-viewer")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1534088762989) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1534088762989) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1534088762989) (:by |root) (:text |app.config)
    |app.main $ {}
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1629135549023) (:by |qvLe3TKxz) (:text |defatom)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |*reel)
              |r $ %{} :Expr (:at 1507399777531) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507399778895) (:by |root) (:text |->)
                  |T $ %{} :Leaf (:at 1507399776350) (:by |root) (:text |reel-schema/reel)
                  |j $ %{} :Expr (:at 1507399779656) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507401405076) (:by |root) (:text |:base)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
                  |r $ %{} :Expr (:at 1507399779656) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507399793097) (:by |root) (:text |:store)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |dispatch!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
              |t $ %{} :Expr (:at 1561261163366) (:by |qvLe3TKxz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1561261163366) (:by |qvLe3TKxz) (:text |when)
                  |j $ %{} :Leaf (:at 1561261163366) (:by |qvLe3TKxz) (:text |config/dev?)
                  |r $ %{} :Expr (:at 1561261163366) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1693022439520) (:by |qvLe3TKxz) (:text |js/console.log)
                      |j $ %{} :Leaf (:at 1561261163366) (:by |qvLe3TKxz) (:text "|\"Dispatch:")
                      |r $ %{} :Leaf (:at 1561261163366) (:by |qvLe3TKxz) (:text |op)
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |reset!)
                  |j $ %{} :Leaf (:at 1507399899641) (:by |root) (:text |*reel)
                  |r $ %{} :Expr (:at 1507399884621) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399887573) (:by |root) (:text |reel-updater)
                      |j $ %{} :Leaf (:at 1507399888500) (:by |root) (:text |updater)
                      |r $ %{} :Leaf (:at 1507399891576) (:by |root) (:text |@*reel)
                      |v $ %{} :Leaf (:at 1507399892687) (:by |root) (:text |op)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |main!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |t $ %{} :Expr (:at 1561261182494) (:by |qvLe3TKxz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1561261182494) (:by |qvLe3TKxz) (:text |println)
                  |j $ %{} :Leaf (:at 1561261182494) (:by |qvLe3TKxz) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1561261182494) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1561261182494) (:by |qvLe3TKxz) (:text |if)
                      |j $ %{} :Leaf (:at 1561261182494) (:by |qvLe3TKxz) (:text |config/dev?)
                      |r $ %{} :Expr (:at 1630774098510) (:by |qvLe3TKxz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1630774099424) (:by |qvLe3TKxz) (:text |do)
                          |L $ %{} :Expr (:at 1630774099793) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1630774104715) (:by |qvLe3TKxz) (:text |load-console-formatter!)
                          |T $ %{} :Leaf (:at 1561261182494) (:by |qvLe3TKxz) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1561261182494) (:by |qvLe3TKxz) (:text "|\"release")
              |x $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |y $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1507399915531) (:by |root) (:text |*reel)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:changes)
                  |v $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629135648583) (:by |qvLe3TKxz) (:text |r)
                          |j $ %{} :Leaf (:at 1629135649196) (:by |qvLe3TKxz) (:text |p)
                      |r $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |yD $ %{} :Expr (:at 1507461684494) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461739167) (:by |root) (:text |listen-devtools!)
                  |j $ %{} :Leaf (:at 1507461691211) (:by |root) (:text ||a)
                  |r $ %{} :Leaf (:at 1507461693919) (:by |root) (:text |dispatch!)
              |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text "||App started.")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |.querySelector)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |js/document)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text ||.app)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |defn)
              |j $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |reload!)
              |r $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                :data $ {}
              |v $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |if)
                  |j $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |nil?)
                      |j $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |build-errors)
                  |r $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |do)
                      |j $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |*reel)
                          |r $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |:changes)
                      |r $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |clear-cache!)
                      |v $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |*reel)
                          |r $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |:changes)
                          |v $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |fn)
                              |j $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |reel)
                                  |j $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |prev)
                              |r $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |render-app!)
                      |x $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |reset!)
                          |j $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |*reel)
                          |r $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |refresh-reel)
                              |j $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |@*reel)
                              |r $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |schema/store)
                              |v $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |updater)
                      |y $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |hud!)
                          |j $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text "|\"ok~")
                          |r $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text "|\"Ok")
                  |v $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |hud!)
                      |j $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text "|\"error")
                      |r $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |build-errors)
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629135654877) (:by |qvLe3TKxz) (:text |render!)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                      |j $ %{} :Leaf (:at 1507400119272) (:by |root) (:text |@*reel)
                  |v $ %{} :Leaf (:at 1629135558277) (:by |qvLe3TKxz) (:text |dispatch!)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.main)
            |r $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render!)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |clear-cache!)
                        |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |realize-ssr!)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.comp.container)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                |y $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1520437480182) (:by |root) (:text |app.updater)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
                |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |schema)
                |yj $ %{} :Expr (:at 1507399674125) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399678694) (:by |root) (:text |reel.util)
                    |r $ %{} :Leaf (:at 1507399680625) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399680857) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1520437485511) (:by |root) (:text |listen-devtools!)
                |yr $ %{} :Expr (:at 1507399683930) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399687162) (:by |root) (:text |reel.core)
                    |r $ %{} :Leaf (:at 1507399688098) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399688322) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507399691010) (:by |root) (:text |reel-updater)
                        |v $ %{} :Leaf (:at 1507461662341) (:by |root) (:text |refresh-reel)
                |yv $ %{} :Expr (:at 1507399715229) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399717674) (:by |root) (:text |reel.schema)
                    |r $ %{} :Leaf (:at 1507399755750) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1507399757678) (:by |root) (:text |reel-schema)
                |yx $ %{} :Expr (:at 1561261312190) (:by |qvLe3TKxz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1561261314083) (:by |qvLe3TKxz) (:text |app.config)
                    |r $ %{} :Leaf (:at 1561261316405) (:by |qvLe3TKxz) (:text |:as)
                    |v $ %{} :Leaf (:at 1561261317202) (:by |qvLe3TKxz) (:text |config)
                |yy $ %{} :Expr (:at 1629135676051) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629135676051) (:by |qvLe3TKxz) (:text "|\"./calcit.build-errors")
                    |j $ %{} :Leaf (:at 1629135676051) (:by |qvLe3TKxz) (:text |:default)
                    |r $ %{} :Leaf (:at 1629135676051) (:by |qvLe3TKxz) (:text |build-errors)
                |yyT $ %{} :Expr (:at 1629135676051) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629135676051) (:by |qvLe3TKxz) (:text "|\"bottom-tip")
                    |j $ %{} :Leaf (:at 1629135676051) (:by |qvLe3TKxz) (:text |:default)
                    |r $ %{} :Leaf (:at 1629135676051) (:by |qvLe3TKxz) (:text |hud!)
    |app.schema $ {}
      :defs $ {}
        |CirruExpr $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1693022221711) (:by |qvLe3TKxz)
            :data $ {}
              |T $ %{} :Leaf (:at 1693022224129) (:by |qvLe3TKxz) (:text |def)
              |b $ %{} :Leaf (:at 1693022221711) (:by |qvLe3TKxz) (:text |CirruExpr)
              |h $ %{} :Expr (:at 1693022221711) (:by |qvLe3TKxz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1693022226799) (:by |qvLe3TKxz) (:text |new-record)
                  |b $ %{} :Leaf (:at 1693022228206) (:by |qvLe3TKxz) (:text |:Expr)
                  |h $ %{} :Leaf (:at 1693022231091) (:by |qvLe3TKxz) (:text |:by)
                  |l $ %{} :Leaf (:at 1693022232084) (:by |qvLe3TKxz) (:text |:at)
                  |o $ %{} :Leaf (:at 1693022233122) (:by |qvLe3TKxz) (:text |:data)
        |CirruLeaf $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1693022268445) (:by |qvLe3TKxz)
            :data $ {}
              |T $ %{} :Leaf (:at 1693022269651) (:by |qvLe3TKxz) (:text |def)
              |b $ %{} :Leaf (:at 1693022268445) (:by |qvLe3TKxz) (:text |CirruLeaf)
              |h $ %{} :Expr (:at 1693022268445) (:by |qvLe3TKxz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1693022272932) (:by |qvLe3TKxz) (:text |new-record)
                  |b $ %{} :Leaf (:at 1693022274198) (:by |qvLe3TKxz) (:text |:Leaf)
                  |h $ %{} :Leaf (:at 1693022275765) (:by |qvLe3TKxz) (:text |:at)
                  |l $ %{} :Leaf (:at 1693022277296) (:by |qvLe3TKxz) (:text |:by)
                  |o $ %{} :Leaf (:at 1693022278645) (:by |qvLe3TKxz) (:text |:text)
        |CodeEntry $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1693022187993) (:by |qvLe3TKxz)
            :data $ {}
              |T $ %{} :Leaf (:at 1693022191622) (:by |qvLe3TKxz) (:text |def)
              |b $ %{} :Leaf (:at 1693022187993) (:by |qvLe3TKxz) (:text |CodeEntry)
              |h $ %{} :Expr (:at 1693022187993) (:by |qvLe3TKxz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1693022404266) (:by |qvLe3TKxz) (:text |new-record)
                  |b $ %{} :Leaf (:at 1693022198657) (:by |qvLe3TKxz) (:text |:CodeEntry)
                  |h $ %{} :Leaf (:at 1693022199912) (:by |qvLe3TKxz) (:text |:doc)
                  |l $ %{} :Leaf (:at 1693022201868) (:by |qvLe3TKxz) (:text |:code)
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:states)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                  |n $ %{} :Expr (:at 1508430820190) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1508430821171) (:by |root) (:text |:error)
                      |j $ %{} :Leaf (:at 1508430822493) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1508430339389) (:by |root) (:text |:calcit)
                      |j $ %{} :Leaf (:at 1508430341420) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1520439500467) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520439501247) (:by |root) (:text |:page)
                      |j $ %{} :Leaf (:at 1520439503308) (:by |root) (:text |:input)
                  |x $ %{} :Expr (:at 1520440437441) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520440438269) (:by |root) (:text |:text)
                      |j $ %{} :Leaf (:at 1561262107376) (:by |qvLe3TKxz) (:text "|\"")
                  |y $ %{} :Expr (:at 1693060583301) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1693060584611) (:by |qvLe3TKxz) (:text |:messages)
                      |b $ %{} :Expr (:at 1693060607613) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693060607919) (:by |qvLe3TKxz) (:text |{})
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
    |app.updater $ {}
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1629135871281) (:by |qvLe3TKxz) (:text |op-id)
                  |x $ %{} :Leaf (:at 1629135872473) (:by |qvLe3TKxz) (:text |op-time)
              |v $ %{} :Expr (:at 1693021797272) (:by |qvLe3TKxz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1693021797871) (:by |qvLe3TKxz) (:text |if)
                  |L $ %{} :Expr (:at 1693021804004) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1693021804004) (:by |qvLe3TKxz) (:text |action/message-action?)
                      |b $ %{} :Expr (:at 1693021809589) (:by |qvLe3TKxz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1693021811907) (:by |qvLe3TKxz) (:text |nth)
                          |T $ %{} :Leaf (:at 1693021810725) (:by |qvLe3TKxz) (:text |op)
                          |b $ %{} :Leaf (:at 1693021812685) (:by |qvLe3TKxz) (:text |0)
                  |P $ %{} :Expr (:at 1693021804004) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1693021804004) (:by |qvLe3TKxz) (:text |update)
                      |b $ %{} :Leaf (:at 1693021804004) (:by |qvLe3TKxz) (:text |store)
                      |h $ %{} :Leaf (:at 1693021804004) (:by |qvLe3TKxz) (:text |:messages)
                      |l $ %{} :Expr (:at 1693021804004) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693021804004) (:by |qvLe3TKxz) (:text |\)
                          |b $ %{} :Leaf (:at 1693021804004) (:by |qvLe3TKxz) (:text |update-messages)
                          |h $ %{} :Leaf (:at 1693021804004) (:by |qvLe3TKxz) (:text |%)
                          |o $ %{} :Expr (:at 1693021818045) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693021817691) (:by |qvLe3TKxz) (:text |nth)
                              |b $ %{} :Leaf (:at 1693021818668) (:by |qvLe3TKxz) (:text |op)
                              |h $ %{} :Leaf (:at 1693021849929) (:by |qvLe3TKxz) (:text |0)
                          |p $ %{} :Expr (:at 1693021818045) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1693021817691) (:by |qvLe3TKxz) (:text |nth)
                              |b $ %{} :Leaf (:at 1693021818668) (:by |qvLe3TKxz) (:text |op)
                              |h $ %{} :Leaf (:at 1693021843420) (:by |qvLe3TKxz) (:text |1)
                          |q $ %{} :Leaf (:at 1693021804004) (:by |qvLe3TKxz) (:text |op-id)
                          |s $ %{} :Leaf (:at 1693021804004) (:by |qvLe3TKxz) (:text |op-time)
                  |T $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1693021860900) (:by |qvLe3TKxz) (:text |tag-match)
                      |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                      |n $ %{} :Expr (:at 1507399852251) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1693021863443) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507399855618) (:by |root) (:text |:states)
                              |b $ %{} :Leaf (:at 1693021864749) (:by |qvLe3TKxz) (:text |cursor)
                              |h $ %{} :Leaf (:at 1693021865609) (:by |qvLe3TKxz) (:text |s)
                          |j $ %{} :Expr (:at 1507399856471) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1596680858976) (:by |qvLe3TKxz) (:text |update-states)
                              |j $ %{} :Leaf (:at 1507399858922) (:by |root) (:text |store)
                              |r $ %{} :Leaf (:at 1693021867663) (:by |qvLe3TKxz) (:text |cursor)
                              |t $ %{} :Leaf (:at 1693021868076) (:by |qvLe3TKxz) (:text |s)
                      |r $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Expr (:at 1693021870948) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508430323713) (:by |root) (:text |:load/calcit)
                              |b $ %{} :Leaf (:at 1693021874441) (:by |qvLe3TKxz) (:text |data)
                          |j $ %{} :Expr (:at 1561263432087) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1561263432087) (:by |qvLe3TKxz) (:text |->)
                              |j $ %{} :Leaf (:at 1561263432087) (:by |qvLe3TKxz) (:text |store)
                              |r $ %{} :Expr (:at 1561263432087) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1561263432087) (:by |qvLe3TKxz) (:text |assoc)
                                  |j $ %{} :Leaf (:at 1561263432087) (:by |qvLe3TKxz) (:text |:calcit)
                                  |r $ %{} :Leaf (:at 1693021876900) (:by |qvLe3TKxz) (:text |data)
                              |v $ %{} :Expr (:at 1561263432087) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1561263432087) (:by |qvLe3TKxz) (:text |assoc)
                                  |j $ %{} :Leaf (:at 1561263432087) (:by |qvLe3TKxz) (:text |:error)
                                  |r $ %{} :Leaf (:at 1561263432087) (:by |qvLe3TKxz) (:text |nil)
                              |x $ %{} :Expr (:at 1561263432087) (:by |qvLe3TKxz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1561263432087) (:by |qvLe3TKxz) (:text |assoc)
                                  |j $ %{} :Leaf (:at 1561263432087) (:by |qvLe3TKxz) (:text |:page)
                                  |r $ %{} :Leaf (:at 1561263432087) (:by |qvLe3TKxz) (:text |:viewer)
                      |s $ %{} :Expr (:at 1520440423565) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1693021878221) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520440427735) (:by |root) (:text |:text)
                              |b $ %{} :Leaf (:at 1693021878732) (:by |qvLe3TKxz) (:text |t)
                          |j $ %{} :Expr (:at 1520440427918) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520440430089) (:by |root) (:text |assoc)
                              |j $ %{} :Leaf (:at 1520440432353) (:by |root) (:text |store)
                              |r $ %{} :Leaf (:at 1520440433350) (:by |root) (:text |:text)
                              |v $ %{} :Leaf (:at 1693021879947) (:by |qvLe3TKxz) (:text |t)
                      |t $ %{} :Expr (:at 1508430926973) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1693021881075) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508430928021) (:by |root) (:text |:error)
                              |b $ %{} :Leaf (:at 1693021881460) (:by |qvLe3TKxz) (:text |e)
                          |j $ %{} :Expr (:at 1508430928409) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508430929323) (:by |root) (:text |assoc)
                              |j $ %{} :Leaf (:at 1508430930844) (:by |root) (:text |store)
                              |r $ %{} :Leaf (:at 1508430932633) (:by |root) (:text |:error)
                              |v $ %{} :Leaf (:at 1693021882674) (:by |qvLe3TKxz) (:text |e)
                      |u $ %{} :Expr (:at 1520440356050) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1693021883791) (:by |qvLe3TKxz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520440358773) (:by |root) (:text |:page)
                              |b $ %{} :Leaf (:at 1693021884287) (:by |qvLe3TKxz) (:text |p)
                          |j $ %{} :Expr (:at 1520440359034) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520440359811) (:by |root) (:text |assoc)
                              |j $ %{} :Leaf (:at 1520440362015) (:by |root) (:text |store)
                              |r $ %{} :Leaf (:at 1520440362695) (:by |root) (:text |:page)
                              |v $ %{} :Leaf (:at 1693021886280) (:by |qvLe3TKxz) (:text |p)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.updater)
            |r $ %{} :Expr (:at 1507399862664) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1507399864640) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1507399864883) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399873143) (:by |root) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at 1507399874041) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399874214) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1596680866961) (:by |qvLe3TKxz) (:text |update-states)
                |r $ %{} :Expr (:at 1572778318448) (:by |qvLe3TKxz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1572778319459) (:by |qvLe3TKxz) (:text |respo-message.action)
                    |r $ %{} :Leaf (:at 1572778322591) (:by |qvLe3TKxz) (:text |:as)
                    |v $ %{} :Leaf (:at 1572778323461) (:by |qvLe3TKxz) (:text |action)
                |v $ %{} :Expr (:at 1572778329222) (:by |qvLe3TKxz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1572778329877) (:by |qvLe3TKxz) (:text |respo-message.updater)
                    |r $ %{} :Leaf (:at 1572778330803) (:by |qvLe3TKxz) (:text |:refer)
                    |v $ %{} :Expr (:at 1572778331038) (:by |qvLe3TKxz)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1572778334439) (:by |qvLe3TKxz) (:text |update-messages)
  :ir $ {} (:package |app)
    :files $ {}
      |app.ast $ {}
        :configs $ {}
        :defs $ {}
          |build-deps-graph $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1630773642597) (:by |qvLe3TKxz)
              :data $ {}
                |T $ %{} :Leaf (:at 1630773642597) (:by |qvLe3TKxz) (:text |defn)
                |j $ %{} :Leaf (:at 1630773642597) (:by |qvLe3TKxz) (:text |build-deps-graph)
                |r $ %{} :Expr (:at 1630773642597) (:by |qvLe3TKxz)
                  :data $ {}
                    |5 $ %{} :Leaf (:at 1630773680294) (:by |qvLe3TKxz) (:text |entry-ns)
                    |9 $ %{} :Leaf (:at 1630773703796) (:by |qvLe3TKxz) (:text |entry-def)
                    |D $ %{} :Leaf (:at 1630773653740) (:by |qvLe3TKxz) (:text |files)
                    |T $ %{} :Leaf (:at 1630773649626) (:by |qvLe3TKxz) (:text |pkg)
                |v $ %{} :Expr (:at 1630775905354) (:by |qvLe3TKxz)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1630780974568) (:by |qvLe3TKxz) (:text |;)
                    |T $ %{} :Leaf (:at 1630775913384) (:by |qvLe3TKxz) (:text |println)
                    |j $ %{} :Leaf (:at 1630775915357) (:by |qvLe3TKxz) (:text |entry-ns)
                    |r $ %{} :Leaf (:at 1630775916696) (:by |qvLe3TKxz) (:text |entry-def)
                    |v $ %{} :Leaf (:at 1630775919580) (:by |qvLe3TKxz) (:text |pkg)
                |x $ %{} :Expr (:at 1630775920121) (:by |qvLe3TKxz)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1630780973729) (:by |qvLe3TKxz) (:text |;)
                    |T $ %{} :Leaf (:at 1630775922821) (:by |qvLe3TKxz) (:text |js/console.log)
                    |j $ %{} :Leaf (:at 1630775924627) (:by |qvLe3TKxz) (:text |files)
                |y $ %{} :Expr (:at 1630776597437) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1630776598841) (:by |qvLe3TKxz) (:text |let)
                    |j $ %{} :Expr (:at 1630776599089) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Expr (:at 1630776599251) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1630776614253) (:by |qvLe3TKxz) (:text |ns-deps-map)
                            |j $ %{} :Expr (:at 1630776614708) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630776615658) (:by |qvLe3TKxz) (:text |->)
                                |j $ %{} :Leaf (:at 1630776618070) (:by |qvLe3TKxz) (:text |files)
                                |r $ %{} :Expr (:at 1630776618444) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630776878716) (:by |qvLe3TKxz) (:text |.map-kv)
                                    |j $ %{} :Expr (:at 1630776621916) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630776623220) (:by |qvLe3TKxz) (:text |fn)
                                        |j $ %{} :Expr (:at 1630776623475) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630776627369) (:by |qvLe3TKxz) (:text |ns')
                                            |j $ %{} :Leaf (:at 1630776631203) (:by |qvLe3TKxz) (:text |file)
                                        |r $ %{} :Expr (:at 1630776679292) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1630776679893) (:by |qvLe3TKxz) (:text |let)
                                            |T $ %{} :Expr (:at 1630776680292) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Expr (:at 1630776663481) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630776667978) (:by |qvLe3TKxz) (:text |ns-form)
                                                    |j $ %{} :Expr (:at 1630776672700) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |D $ %{} :Leaf (:at 1630776676817) (:by |qvLe3TKxz) (:text |tree->cirru)
                                                        |T $ %{} :Expr (:at 1630776668471) (:by |qvLe3TKxz)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1630776670918) (:by |qvLe3TKxz) (:text |:ns)
                                                            |j $ %{} :Leaf (:at 1630776671698) (:by |qvLe3TKxz) (:text |file)
                                                |j $ %{} :Expr (:at 1630776709306) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630776709962) (:by |qvLe3TKxz) (:text |rules)
                                                    |j $ %{} :Expr (:at 1630776711668) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1630776711668) (:by |qvLe3TKxz) (:text |if)
                                                        |j $ %{} :Expr (:at 1630776711668) (:by |qvLe3TKxz)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1630776711668) (:by |qvLe3TKxz) (:text |=)
                                                            |j $ %{} :Leaf (:at 1630777542535) (:by |qvLe3TKxz) (:text |3)
                                                            |r $ %{} :Expr (:at 1630776711668) (:by |qvLe3TKxz)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1630776711668) (:by |qvLe3TKxz) (:text |count)
                                                                |j $ %{} :Leaf (:at 1630776711668) (:by |qvLe3TKxz) (:text |ns-form)
                                                        |r $ %{} :Expr (:at 1630777615461) (:by |qvLe3TKxz)
                                                          :data $ {}
                                                            |D $ %{} :Leaf (:at 1630777616631) (:by |qvLe3TKxz) (:text |.slice)
                                                            |T $ %{} :Expr (:at 1630776714128) (:by |qvLe3TKxz)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1630776714792) (:by |qvLe3TKxz) (:text |nth)
                                                                |j $ %{} :Leaf (:at 1630776717608) (:by |qvLe3TKxz) (:text |ns-form)
                                                                |r $ %{} :Leaf (:at 1630777541035) (:by |qvLe3TKxz) (:text |2)
                                                            |j $ %{} :Leaf (:at 1630777618202) (:by |qvLe3TKxz) (:text |1)
                                                        |v $ %{} :Expr (:at 1630776720231) (:by |qvLe3TKxz)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1630776720369) (:by |qvLe3TKxz) (:text |[])
                                                |r $ %{} :Expr (:at 1630779703435) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630779704561) (:by |qvLe3TKxz) (:text |defs)
                                                    |j $ %{} :Expr (:at 1630779705925) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1630779706512) (:by |qvLe3TKxz) (:text |:defs)
                                                        |j $ %{} :Leaf (:at 1630779708130) (:by |qvLe3TKxz) (:text |file)
                                            |b $ %{} :Expr (:at 1630777465449) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |D $ %{} :Leaf (:at 1630778665713) (:by |qvLe3TKxz) (:text |;)
                                                |T $ %{} :Leaf (:at 1630777476955) (:by |qvLe3TKxz) (:text |js/console.log)
                                                |j $ %{} :Leaf (:at 1630777470358) (:by |qvLe3TKxz) (:text "|\"entry")
                                                |r $ %{} :Leaf (:at 1630777471906) (:by |qvLe3TKxz) (:text |ns')
                                                |v $ %{} :Leaf (:at 1630777494698) (:by |qvLe3TKxz) (:text |ns-form)
                                            |j $ %{} :Expr (:at 1630777349302) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |D $ %{} :Leaf (:at 1630777350662) (:by |qvLe3TKxz) (:text |[])
                                                |L $ %{} :Leaf (:at 1630777351479) (:by |qvLe3TKxz) (:text |ns')
                                                |T $ %{} :Expr (:at 1630779243566) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |D $ %{} :Leaf (:at 1630779244300) (:by |qvLe3TKxz) (:text |let)
                                                    |L $ %{} :Expr (:at 1630779244560) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Expr (:at 1630779245074) (:by |qvLe3TKxz)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1630779248176) (:by |qvLe3TKxz) (:text |results)
                                                            |j $ %{} :Expr (:at 1630779249247) (:by |qvLe3TKxz)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1630779255755) (:by |qvLe3TKxz) (:text |map)
                                                                |j $ %{} :Leaf (:at 1630779257012) (:by |qvLe3TKxz) (:text |rules)
                                                                |r $ %{} :Expr (:at 1630779257425) (:by |qvLe3TKxz)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1630779259755) (:by |qvLe3TKxz) (:text |fn)
                                                                    |j $ %{} :Expr (:at 1630779260062) (:by |qvLe3TKxz)
                                                                      :data $ {}
                                                                        |T $ %{} :Leaf (:at 1630779261089) (:by |qvLe3TKxz) (:text |rule)
                                                                    |r $ %{} :Expr (:at 1630779261961) (:by |qvLe3TKxz)
                                                                      :data $ {}
                                                                        |T $ %{} :Leaf (:at 1630779263930) (:by |qvLe3TKxz) (:text |parse-rule)
                                                                        |j $ %{} :Expr (:at 1630779265640) (:by |qvLe3TKxz)
                                                                          :data $ {}
                                                                            |T $ %{} :Leaf (:at 1630779269716) (:by |qvLe3TKxz) (:text |unify-rule)
                                                                            |j $ %{} :Leaf (:at 1630779273568) (:by |qvLe3TKxz) (:text |rule)
                                                        |j $ %{} :Expr (:at 1630779275866) (:by |qvLe3TKxz)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1630779285584) (:by |qvLe3TKxz) (:text |ns-dict)
                                                            |j $ %{} :Expr (:at 1630779377663) (:by |qvLe3TKxz)
                                                              :data $ {}
                                                                |D $ %{} :Leaf (:at 1630779378934) (:by |qvLe3TKxz) (:text |merge)
                                                                |L $ %{} :Expr (:at 1630779379952) (:by |qvLe3TKxz)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1630779380155) (:by |qvLe3TKxz) (:text |{})
                                                                |P $ %{} :Leaf (:at 1630779381918) (:by |qvLe3TKxz) (:text |&)
                                                                |T $ %{} :Expr (:at 1630779352466) (:by |qvLe3TKxz)
                                                                  :data $ {}
                                                                    |D $ %{} :Leaf (:at 1630779354159) (:by |qvLe3TKxz) (:text |->)
                                                                    |L $ %{} :Leaf (:at 1630779356089) (:by |qvLe3TKxz) (:text |results)
                                                                    |T $ %{} :Expr (:at 1630779315289) (:by |qvLe3TKxz)
                                                                      :data $ {}
                                                                        |T $ %{} :Leaf (:at 1630779316894) (:by |qvLe3TKxz) (:text |filter)
                                                                        |r $ %{} :Expr (:at 1630779326389) (:by |qvLe3TKxz)
                                                                          :data $ {}
                                                                            |T $ %{} :Leaf (:at 1630779326753) (:by |qvLe3TKxz) (:text |fn)
                                                                            |j $ %{} :Expr (:at 1630779330073) (:by |qvLe3TKxz)
                                                                              :data $ {}
                                                                                |T $ %{} :Leaf (:at 1630779335497) (:by |qvLe3TKxz) (:text |paired)
                                                                            |r $ %{} :Expr (:at 1630779336624) (:by |qvLe3TKxz)
                                                                              :data $ {}
                                                                                |T $ %{} :Leaf (:at 1630779348324) (:by |qvLe3TKxz) (:text |=)
                                                                                |b $ %{} :Leaf (:at 1630779349712) (:by |qvLe3TKxz) (:text |:ns)
                                                                                |j $ %{} :Expr (:at 1630779342803) (:by |qvLe3TKxz)
                                                                                  :data $ {}
                                                                                    |T $ %{} :Leaf (:at 1630779343380) (:by |qvLe3TKxz) (:text |get)
                                                                                    |j $ %{} :Leaf (:at 1630779344846) (:by |qvLe3TKxz) (:text |paired)
                                                                                    |r $ %{} :Leaf (:at 1630779347086) (:by |qvLe3TKxz) (:text |0)
                                                                    |j $ %{} :Expr (:at 1630779357899) (:by |qvLe3TKxz)
                                                                      :data $ {}
                                                                        |T $ %{} :Leaf (:at 1630779358480) (:by |qvLe3TKxz) (:text |map)
                                                                        |j $ %{} :Leaf (:at 1630779359450) (:by |qvLe3TKxz) (:text |last)
                                                        |r $ %{} :Expr (:at 1630779383115) (:by |qvLe3TKxz)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1630779401414) (:by |qvLe3TKxz) (:text |defs-dict)
                                                            |j $ %{} :Expr (:at 1630779403617) (:by |qvLe3TKxz)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1630779404914) (:by |qvLe3TKxz) (:text |merge)
                                                                |j $ %{} :Expr (:at 1630779405906) (:by |qvLe3TKxz)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1630779406060) (:by |qvLe3TKxz) (:text |{})
                                                                |r $ %{} :Leaf (:at 1630779408432) (:by |qvLe3TKxz) (:text |&)
                                                                |v $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |->)
                                                                    |j $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |results)
                                                                    |r $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                      :data $ {}
                                                                        |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |filter)
                                                                        |j $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                          :data $ {}
                                                                            |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |fn)
                                                                            |j $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                              :data $ {}
                                                                                |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |paired)
                                                                            |r $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                              :data $ {}
                                                                                |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |=)
                                                                                |j $ %{} :Leaf (:at 1630779414693) (:by |qvLe3TKxz) (:text |:def)
                                                                                |r $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                                  :data $ {}
                                                                                    |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |get)
                                                                                    |j $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |paired)
                                                                                    |r $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |0)
                                                                    |v $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                      :data $ {}
                                                                        |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |map)
                                                                        |j $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |last)
                                                        |t $ %{} :Expr (:at 1630779383115) (:by |qvLe3TKxz)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1630782815131) (:by |qvLe3TKxz) (:text |defaults-dict)
                                                            |j $ %{} :Expr (:at 1630779403617) (:by |qvLe3TKxz)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1630779404914) (:by |qvLe3TKxz) (:text |merge)
                                                                |j $ %{} :Expr (:at 1630779405906) (:by |qvLe3TKxz)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1630779406060) (:by |qvLe3TKxz) (:text |{})
                                                                |r $ %{} :Leaf (:at 1630779408432) (:by |qvLe3TKxz) (:text |&)
                                                                |v $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |->)
                                                                    |j $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |results)
                                                                    |r $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                      :data $ {}
                                                                        |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |filter)
                                                                        |j $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                          :data $ {}
                                                                            |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |fn)
                                                                            |j $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                              :data $ {}
                                                                                |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |paired)
                                                                            |r $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                              :data $ {}
                                                                                |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |=)
                                                                                |j $ %{} :Leaf (:at 1630782819870) (:by |qvLe3TKxz) (:text |:default)
                                                                                |r $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                                  :data $ {}
                                                                                    |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |get)
                                                                                    |j $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |paired)
                                                                                    |r $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |0)
                                                                    |v $ %{} :Expr (:at 1630779411755) (:by |qvLe3TKxz)
                                                                      :data $ {}
                                                                        |T $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |map)
                                                                        |j $ %{} :Leaf (:at 1630779411755) (:by |qvLe3TKxz) (:text |last)
                                                        |v $ %{} :Expr (:at 1630779602691) (:by |qvLe3TKxz)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1630779605947) (:by |qvLe3TKxz) (:text |defs-deps)
                                                            |j $ %{} :Expr (:at 1630779607417) (:by |qvLe3TKxz)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1630779610373) (:by |qvLe3TKxz) (:text |->)
                                                                |j $ %{} :Leaf (:at 1630779711571) (:by |qvLe3TKxz) (:text |defs)
                                                                |r $ %{} :Expr (:at 1630779624202) (:by |qvLe3TKxz)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1630779758807) (:by |qvLe3TKxz) (:text |.map-kv)
                                                                    |j $ %{} :Expr (:at 1630779633012) (:by |qvLe3TKxz)
                                                                      :data $ {}
                                                                        |T $ %{} :Leaf (:at 1630779633347) (:by |qvLe3TKxz) (:text |fn)
                                                                        |j $ %{} :Expr (:at 1630779633515) (:by |qvLe3TKxz)
                                                                          :data $ {}
                                                                            |T $ %{} :Leaf (:at 1630779765575) (:by |qvLe3TKxz) (:text |k)
                                                                            |j $ %{} :Leaf (:at 1630779771308) (:by |qvLe3TKxz) (:text |form)
                                                                        |r $ %{} :Expr (:at 1630779636904) (:by |qvLe3TKxz)
                                                                          :data $ {}
                                                                            |T $ %{} :Leaf (:at 1630779640950) (:by |qvLe3TKxz) (:text |[])
                                                                            |j $ %{} :Leaf (:at 1630779773917) (:by |qvLe3TKxz) (:text |k)
                                                                            |r $ %{} :Expr (:at 1630779641999) (:by |qvLe3TKxz)
                                                                              :data $ {}
                                                                                |T $ %{} :Leaf (:at 1630779686309) (:by |qvLe3TKxz) (:text |match-references)
                                                                                |b $ %{} :Expr (:at 1630780069593) (:by |qvLe3TKxz)
                                                                                  :data $ {}
                                                                                    |D $ %{} :Leaf (:at 1630780070166) (:by |qvLe3TKxz) (:text |tree->cirru)
                                                                                    |T $ %{} :Leaf (:at 1630779780337) (:by |qvLe3TKxz) (:text |form)
                                                                                |d $ %{} :Leaf (:at 1630779796210) (:by |qvLe3TKxz) (:text |ns-dict)
                                                                                |f $ %{} :Leaf (:at 1630779791056) (:by |qvLe3TKxz) (:text |defs-dict)
                                                                                |k $ %{} :Leaf (:at 1630782824220) (:by |qvLe3TKxz) (:text |defaults-dict)
                                                                                |p $ %{} :Expr (:at 1630779817832) (:by |qvLe3TKxz)
                                                                                  :data $ {}
                                                                                    |T $ %{} :Leaf (:at 1630779820041) (:by |qvLe3TKxz) (:text |keys)
                                                                                    |j $ %{} :Leaf (:at 1630779822656) (:by |qvLe3TKxz) (:text |defs)
                                                                                |u $ %{} :Leaf (:at 1630780519028) (:by |qvLe3TKxz) (:text |ns')
                                                    |f $ %{} :Leaf (:at 1630780911883) (:by |qvLe3TKxz) (:text |defs-deps)
                    |r $ %{} :Expr (:at 1630776853956) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1630780980411) (:by |qvLe3TKxz) (:text |js/console.log)
                        |b $ %{} :Leaf (:at 1630780993644) (:by |qvLe3TKxz) (:text "|\"Deps Map")
                        |j $ %{} :Leaf (:at 1630776862270) (:by |qvLe3TKxz) (:text |ns-deps-map)
                    |v $ %{} :Leaf (:at 1630780998184) (:by |qvLe3TKxz) (:text |ns-deps-map)
          |flatten-form $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1630779935687) (:by |qvLe3TKxz)
              :data $ {}
                |T $ %{} :Leaf (:at 1630779935687) (:by |qvLe3TKxz) (:text |defn)
                |j $ %{} :Leaf (:at 1630779935687) (:by |qvLe3TKxz) (:text |flatten-form)
                |r $ %{} :Expr (:at 1630779935687) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1630779937736) (:by |qvLe3TKxz) (:text |xs)
                |v $ %{} :Expr (:at 1630779938329) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1630779939615) (:by |qvLe3TKxz) (:text |if)
                    |j $ %{} :Expr (:at 1630779939768) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1630779947357) (:by |qvLe3TKxz) (:text |list?)
                        |j $ %{} :Leaf (:at 1630779947836) (:by |qvLe3TKxz) (:text |xs)
                    |r $ %{} :Expr (:at 1630779948807) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1630779950467) (:by |qvLe3TKxz) (:text |mapcat)
                        |j $ %{} :Leaf (:at 1630779953108) (:by |qvLe3TKxz) (:text |xs)
                        |r $ %{} :Leaf (:at 1630779957832) (:by |qvLe3TKxz) (:text |flatten-form)
                    |v $ %{} :Expr (:at 1630779959126) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1630779961697) (:by |qvLe3TKxz) (:text |[])
                        |j $ %{} :Leaf (:at 1630779962399) (:by |qvLe3TKxz) (:text |xs)
          |match-references $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1630779827667) (:by |qvLe3TKxz)
              :data $ {}
                |T $ %{} :Leaf (:at 1630779827667) (:by |qvLe3TKxz) (:text |defn)
                |j $ %{} :Leaf (:at 1630779827667) (:by |qvLe3TKxz) (:text |match-references)
                |r $ %{} :Expr (:at 1630779827667) (:by |qvLe3TKxz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1630779827667) (:by |qvLe3TKxz) (:text |form)
                    |r $ %{} :Leaf (:at 1630779827667) (:by |qvLe3TKxz) (:text |ns-dict)
                    |v $ %{} :Leaf (:at 1630779827667) (:by |qvLe3TKxz) (:text |defs-dict)
                    |w $ %{} :Leaf (:at 1630783282549) (:by |qvLe3TKxz) (:text |defaults-dict)
                    |x $ %{} :Leaf (:at 1630779845658) (:by |qvLe3TKxz) (:text |current-defs)
                    |y $ %{} :Leaf (:at 1630780527831) (:by |qvLe3TKxz) (:text |current-ns)
                |t $ %{} :Expr (:at 1630783434387) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1630783439521) (:by |qvLe3TKxz) (:text |js/console.log)
                    |j $ %{} :Leaf (:at 1630783441704) (:by |qvLe3TKxz) (:text "|\"Defaults")
                    |r $ %{} :Leaf (:at 1630783443705) (:by |qvLe3TKxz) (:text |defaults-dict)
                |v $ %{} :Expr (:at 1630779915649) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1630779917541) (:by |qvLe3TKxz) (:text |let)
                    |j $ %{} :Expr (:at 1630779917834) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Expr (:at 1630779917996) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1630779921391) (:by |qvLe3TKxz) (:text |tokens)
                            |j $ %{} :Expr (:at 1630780117319) (:by |qvLe3TKxz)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1630780118048) (:by |qvLe3TKxz) (:text |->)
                                |L $ %{} :Leaf (:at 1630780120643) (:by |qvLe3TKxz) (:text |form)
                                |P $ %{} :Expr (:at 1630780122526) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630780122526) (:by |qvLe3TKxz) (:text |.slice)
                                    |r $ %{} :Leaf (:at 1630780122526) (:by |qvLe3TKxz) (:text |2)
                                |R $ %{} :Expr (:at 1630780130521) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630780128584) (:by |qvLe3TKxz) (:text |flatten-form)
                                |j $ %{} :Expr (:at 1630780133934) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630780136137) (:by |qvLe3TKxz) (:text |.filter)
                                    |j $ %{} :Expr (:at 1630780136734) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630780136970) (:by |qvLe3TKxz) (:text |fn)
                                        |j $ %{} :Expr (:at 1630780137362) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630780137649) (:by |qvLe3TKxz) (:text |x)
                                        |r $ %{} :Expr (:at 1630780140309) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630780143276) (:by |qvLe3TKxz) (:text |cond)
                                            |j $ %{} :Expr (:at 1630780145337) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Expr (:at 1630780145491) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630780152915) (:by |qvLe3TKxz) (:text |.starts-with?)
                                                    |j $ %{} :Leaf (:at 1630780150510) (:by |qvLe3TKxz) (:text |x)
                                                    |r $ %{} :Leaf (:at 1630780154203) (:by |qvLe3TKxz) (:text "|\":")
                                                |j $ %{} :Leaf (:at 1630780156445) (:by |qvLe3TKxz) (:text |false)
                                            |n $ %{} :Expr (:at 1630780145337) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Expr (:at 1630780145491) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630780152915) (:by |qvLe3TKxz) (:text |.starts-with?)
                                                    |j $ %{} :Leaf (:at 1630780150510) (:by |qvLe3TKxz) (:text |x)
                                                    |r $ %{} :Leaf (:at 1630780172585) (:by |qvLe3TKxz) (:text "|\".")
                                                |j $ %{} :Leaf (:at 1630780156445) (:by |qvLe3TKxz) (:text |false)
                                            |p $ %{} :Expr (:at 1630780145337) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Expr (:at 1630780145491) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630780152915) (:by |qvLe3TKxz) (:text |.starts-with?)
                                                    |j $ %{} :Leaf (:at 1630780150510) (:by |qvLe3TKxz) (:text |x)
                                                    |r $ %{} :Leaf (:at 1630780184933) (:by |qvLe3TKxz) (:text "|\"|")
                                                |j $ %{} :Leaf (:at 1630780156445) (:by |qvLe3TKxz) (:text |false)
                                            |q $ %{} :Expr (:at 1630780145337) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Expr (:at 1630780145491) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630780152915) (:by |qvLe3TKxz) (:text |.starts-with?)
                                                    |j $ %{} :Leaf (:at 1630780150510) (:by |qvLe3TKxz) (:text |x)
                                                    |r $ %{} :Leaf (:at 1630780187838) (:by |qvLe3TKxz) (:text "|\"\"")
                                                |j $ %{} :Leaf (:at 1630780156445) (:by |qvLe3TKxz) (:text |false)
                                            |qT $ %{} :Expr (:at 1630780309281) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Expr (:at 1630780296133) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630780299030) (:by |qvLe3TKxz) (:text |.!test)
                                                    |j $ %{} :Leaf (:at 1630780303661) (:by |qvLe3TKxz) (:text |pattern-number)
                                                    |r $ %{} :Leaf (:at 1630780306946) (:by |qvLe3TKxz) (:text |x)
                                                |j $ %{} :Leaf (:at 1630780310397) (:by |qvLe3TKxz) (:text |false)
                                            |r $ %{} :Expr (:at 1630780157685) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1630780158241) (:by |qvLe3TKxz) (:text |true)
                                                |j $ %{} :Leaf (:at 1630780158896) (:by |qvLe3TKxz) (:text |true)
                                |n $ %{} :Expr (:at 1630780213836) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630780216079) (:by |qvLe3TKxz) (:text |.map)
                                    |j $ %{} :Expr (:at 1630780217693) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630780218774) (:by |qvLe3TKxz) (:text |fn)
                                        |j $ %{} :Expr (:at 1630780219407) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630780219683) (:by |qvLe3TKxz) (:text |x)
                                        |r $ %{} :Expr (:at 1630780223941) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630780225643) (:by |qvLe3TKxz) (:text |->)
                                            |j $ %{} :Leaf (:at 1630780226912) (:by |qvLe3TKxz) (:text |x)
                                            |r $ %{} :Expr (:at 1630780227283) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1630780229618) (:by |qvLe3TKxz) (:text |.strip-prefix)
                                                |j $ %{} :Leaf (:at 1630780234141) (:by |qvLe3TKxz) (:text "|\"~@")
                                            |v $ %{} :Expr (:at 1630780227283) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1630780229618) (:by |qvLe3TKxz) (:text |.strip-prefix)
                                                |j $ %{} :Leaf (:at 1630780237411) (:by |qvLe3TKxz) (:text "|\"~")
                                            |x $ %{} :Expr (:at 1630780227283) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1630780229618) (:by |qvLe3TKxz) (:text |.strip-prefix)
                                                |j $ %{} :Leaf (:at 1630780239519) (:by |qvLe3TKxz) (:text "|\"@")
                                |r $ %{} :Expr (:at 1630780211886) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630780756904) (:by |qvLe3TKxz) (:text |.distinct)
                                |v $ %{} :Expr (:at 1630780353919) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630780443416) (:by |qvLe3TKxz) (:text |.map)
                                    |j $ %{} :Expr (:at 1630780358662) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630780359584) (:by |qvLe3TKxz) (:text |fn)
                                        |j $ %{} :Expr (:at 1630780359843) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630780360125) (:by |qvLe3TKxz) (:text |x)
                                        |r $ %{} :Expr (:at 1630780361333) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630780447750) (:by |qvLe3TKxz) (:text |cond)
                                            |j $ %{} :Expr (:at 1630780448650) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Expr (:at 1630780363815) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630780373127) (:by |qvLe3TKxz) (:text |.contains?)
                                                    |j $ %{} :Leaf (:at 1630780371276) (:by |qvLe3TKxz) (:text |current-defs)
                                                    |r $ %{} :Leaf (:at 1630780455931) (:by |qvLe3TKxz) (:text |x)
                                                |j $ %{} :Expr (:at 1630780531427) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630780531764) (:by |qvLe3TKxz) (:text |{})
                                                    |b $ %{} :Expr (:at 1630780540369) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1630780542869) (:by |qvLe3TKxz) (:text |:kind)
                                                        |j $ %{} :Leaf (:at 1630780544032) (:by |qvLe3TKxz) (:text |:def)
                                                    |j $ %{} :Expr (:at 1630780532014) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1630780533130) (:by |qvLe3TKxz) (:text |:ns)
                                                        |j $ %{} :Leaf (:at 1630780533685) (:by |qvLe3TKxz) (:text |current-ns)
                                                    |r $ %{} :Expr (:at 1630780534698) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1630780535261) (:by |qvLe3TKxz) (:text |:def)
                                                        |j $ %{} :Leaf (:at 1630780536169) (:by |qvLe3TKxz) (:text |x)
                                            |r $ %{} :Expr (:at 1630780448650) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Expr (:at 1630780363815) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630780373127) (:by |qvLe3TKxz) (:text |.contains?)
                                                    |j $ %{} :Leaf (:at 1630780555865) (:by |qvLe3TKxz) (:text |defs-dict)
                                                    |r $ %{} :Leaf (:at 1630780455931) (:by |qvLe3TKxz) (:text |x)
                                                |j $ %{} :Expr (:at 1630780557936) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630780558383) (:by |qvLe3TKxz) (:text |get)
                                                    |j $ %{} :Leaf (:at 1630780560665) (:by |qvLe3TKxz) (:text |defs-dict)
                                                    |r $ %{} :Leaf (:at 1630780561000) (:by |qvLe3TKxz) (:text |x)
                                            |s $ %{} :Expr (:at 1630780448650) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Expr (:at 1630780363815) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630780373127) (:by |qvLe3TKxz) (:text |.contains?)
                                                    |j $ %{} :Leaf (:at 1630782846336) (:by |qvLe3TKxz) (:text |defaults-dict)
                                                    |r $ %{} :Leaf (:at 1630780455931) (:by |qvLe3TKxz) (:text |x)
                                                |j $ %{} :Expr (:at 1630780557936) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630780558383) (:by |qvLe3TKxz) (:text |get)
                                                    |j $ %{} :Leaf (:at 1630782849092) (:by |qvLe3TKxz) (:text |defaults-dict)
                                                    |r $ %{} :Leaf (:at 1630780561000) (:by |qvLe3TKxz) (:text |x)
                                            |t $ %{} :Expr (:at 1630780613043) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Expr (:at 1630780614024) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630780621505) (:by |qvLe3TKxz) (:text |.includes?)
                                                    |j $ %{} :Leaf (:at 1630780622379) (:by |qvLe3TKxz) (:text |x)
                                                    |r $ %{} :Leaf (:at 1630780625268) (:by |qvLe3TKxz) (:text "|\"/")
                                                |j $ %{} :Expr (:at 1630780625879) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630780627277) (:by |qvLe3TKxz) (:text |let[])
                                                    |j $ %{} :Expr (:at 1630780627621) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1630780631591) (:by |qvLe3TKxz) (:text |ns-part)
                                                        |j $ %{} :Leaf (:at 1630780633371) (:by |qvLe3TKxz) (:text |def-part)
                                                    |r $ %{} :Expr (:at 1630780634846) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1630780635615) (:by |qvLe3TKxz) (:text |.split)
                                                        |b $ %{} :Leaf (:at 1630780638967) (:by |qvLe3TKxz) (:text |x)
                                                        |j $ %{} :Leaf (:at 1630780638224) (:by |qvLe3TKxz) (:text "|\"/")
                                                    |v $ %{} :Expr (:at 1630780641388) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1630780661387) (:by |qvLe3TKxz) (:text |if)
                                                        |j $ %{} :Expr (:at 1630780661680) (:by |qvLe3TKxz)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1630780666612) (:by |qvLe3TKxz) (:text |.contains?)
                                                            |j $ %{} :Leaf (:at 1630780670856) (:by |qvLe3TKxz) (:text |defs-dict)
                                                            |r $ %{} :Leaf (:at 1630780685815) (:by |qvLe3TKxz) (:text |ns-part)
                                                        |r $ %{} :Expr (:at 1630780689587) (:by |qvLe3TKxz)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1630780689587) (:by |qvLe3TKxz) (:text |{})
                                                            |j $ %{} :Expr (:at 1630780689587) (:by |qvLe3TKxz)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1630780689587) (:by |qvLe3TKxz) (:text |:kind)
                                                                |j $ %{} :Leaf (:at 1630780689587) (:by |qvLe3TKxz) (:text |:def)
                                                            |r $ %{} :Expr (:at 1630780689587) (:by |qvLe3TKxz)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1630780689587) (:by |qvLe3TKxz) (:text |:ns)
                                                                |j $ %{} :Expr (:at 1630780702313) (:by |qvLe3TKxz)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1630780703262) (:by |qvLe3TKxz) (:text |:ns)
                                                                    |j $ %{} :Expr (:at 1630780703826) (:by |qvLe3TKxz)
                                                                      :data $ {}
                                                                        |T $ %{} :Leaf (:at 1630780704388) (:by |qvLe3TKxz) (:text |get)
                                                                        |j $ %{} :Leaf (:at 1630780712672) (:by |qvLe3TKxz) (:text |ns-dict)
                                                                        |r $ %{} :Leaf (:at 1630780717300) (:by |qvLe3TKxz) (:text |ns-part)
                                                            |v $ %{} :Expr (:at 1630780689587) (:by |qvLe3TKxz)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1630780689587) (:by |qvLe3TKxz) (:text |:def)
                                                                |j $ %{} :Leaf (:at 1630780689587) (:by |qvLe3TKxz) (:text |x)
                                            |v $ %{} :Expr (:at 1630780610341) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1630780611349) (:by |qvLe3TKxz) (:text |true)
                                                |j $ %{} :Leaf (:at 1630780611997) (:by |qvLe3TKxz) (:text |nil)
                                |x $ %{} :Expr (:at 1630780436374) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630780438225) (:by |qvLe3TKxz) (:text |.filter)
                                    |j $ %{} :Leaf (:at 1630780441025) (:by |qvLe3TKxz) (:text |some?)
                    |r $ %{} :Expr (:at 1630780025462) (:by |qvLe3TKxz)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1630780860986) (:by |qvLe3TKxz) (:text |;)
                        |T $ %{} :Leaf (:at 1630780033735) (:by |qvLe3TKxz) (:text |js/console.log)
                        |j $ %{} :Leaf (:at 1630780034762) (:by |qvLe3TKxz) (:text "|\"tokens")
                        |r $ %{} :Leaf (:at 1630780036807) (:by |qvLe3TKxz) (:text |tokens)
                    |v $ %{} :Leaf (:at 1630780858708) (:by |qvLe3TKxz) (:text |tokens)
          |parse-rule $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1630776828456) (:by |qvLe3TKxz)
              :data $ {}
                |T $ %{} :Leaf (:at 1630776828456) (:by |qvLe3TKxz) (:text |defn)
                |j $ %{} :Leaf (:at 1630776828456) (:by |qvLe3TKxz) (:text |parse-rule)
                |r $ %{} :Expr (:at 1630776828456) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1630776833600) (:by |qvLe3TKxz) (:text |rule)
                |s $ %{} :Expr (:at 1630776844893) (:by |qvLe3TKxz)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1630778678693) (:by |qvLe3TKxz) (:text |;)
                    |T $ %{} :Leaf (:at 1630776845787) (:by |qvLe3TKxz) (:text |println)
                    |j $ %{} :Leaf (:at 1630776848176) (:by |qvLe3TKxz) (:text "|\"rule")
                    |r $ %{} :Leaf (:at 1630776848802) (:by |qvLe3TKxz) (:text |rule)
                |t $ %{} :Expr (:at 1630777755206) (:by |qvLe3TKxz)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1630777759337) (:by |qvLe3TKxz) (:text |case-default)
                    |L $ %{} :Expr (:at 1630777760739) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1630777761666) (:by |qvLe3TKxz) (:text |nth)
                        |j $ %{} :Leaf (:at 1630777763184) (:by |qvLe3TKxz) (:text |rule)
                        |r $ %{} :Leaf (:at 1630777763462) (:by |qvLe3TKxz) (:text |1)
                    |P $ %{} :Expr (:at 1630777765273) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1630777765638) (:by |qvLe3TKxz) (:text |do)
                        |j $ %{} :Expr (:at 1630777767573) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1630777769245) (:by |qvLe3TKxz) (:text |js/console.log)
                            |j $ %{} :Leaf (:at 1630777772855) (:by |qvLe3TKxz) (:text "|\"Unknown rule:")
                            |r $ %{} :Leaf (:at 1630777773782) (:by |qvLe3TKxz) (:text |rule)
                        |r $ %{} :Leaf (:at 1630778467485) (:by |qvLe3TKxz) (:text |nil)
                    |T $ %{} :Expr (:at 1630776844016) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1630777788876) (:by |qvLe3TKxz) (:text "|\":as")
                        |j $ %{} :Expr (:at 1630778327623) (:by |qvLe3TKxz)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1630778329026) (:by |qvLe3TKxz) (:text |[])
                            |L $ %{} :Leaf (:at 1630778329919) (:by |qvLe3TKxz) (:text |:ns)
                            |T $ %{} :Expr (:at 1630778576782) (:by |qvLe3TKxz)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1630778578668) (:by |qvLe3TKxz) (:text |{})
                                |T $ %{} :Expr (:at 1630778579276) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |D $ %{} :Expr (:at 1630778584408) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630778584408) (:by |qvLe3TKxz) (:text |nth)
                                        |j $ %{} :Leaf (:at 1630778584408) (:by |qvLe3TKxz) (:text |rule)
                                        |r $ %{} :Leaf (:at 1630778584408) (:by |qvLe3TKxz) (:text |2)
                                    |T $ %{} :Expr (:at 1630777794014) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630777796874) (:by |qvLe3TKxz) (:text |{})
                                        |j $ %{} :Expr (:at 1630777797458) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630777798037) (:by |qvLe3TKxz) (:text |:kind)
                                            |j $ %{} :Leaf (:at 1630777799094) (:by |qvLe3TKxz) (:text |:ns)
                                        |r $ %{} :Expr (:at 1630777799489) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630777808638) (:by |qvLe3TKxz) (:text |:alias)
                                            |j $ %{} :Expr (:at 1630777809972) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1630777810559) (:by |qvLe3TKxz) (:text |nth)
                                                |j $ %{} :Leaf (:at 1630777811314) (:by |qvLe3TKxz) (:text |rule)
                                                |r $ %{} :Leaf (:at 1630777811990) (:by |qvLe3TKxz) (:text |2)
                                        |v $ %{} :Expr (:at 1630777813029) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630777813788) (:by |qvLe3TKxz) (:text |:ns)
                                            |j $ %{} :Expr (:at 1630777814791) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1630777816184) (:by |qvLe3TKxz) (:text |nth)
                                                |j $ %{} :Leaf (:at 1630777817357) (:by |qvLe3TKxz) (:text |rule)
                                                |r $ %{} :Leaf (:at 1630777818395) (:by |qvLe3TKxz) (:text |0)
                    |j $ %{} :Expr (:at 1630777819872) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1630777823760) (:by |qvLe3TKxz) (:text "|\":refer")
                        |j $ %{} :Expr (:at 1630778330788) (:by |qvLe3TKxz)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1630778331993) (:by |qvLe3TKxz) (:text |[])
                            |L $ %{} :Leaf (:at 1630778332574) (:by |qvLe3TKxz) (:text |:def)
                            |T $ %{} :Expr (:at 1630777824151) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630777828136) (:by |qvLe3TKxz) (:text |->)
                                |j $ %{} :Expr (:at 1630777836327) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630777837384) (:by |qvLe3TKxz) (:text |nth)
                                    |j $ %{} :Leaf (:at 1630777839449) (:by |qvLe3TKxz) (:text |rule)
                                    |r $ %{} :Leaf (:at 1630777839977) (:by |qvLe3TKxz) (:text |2)
                                |r $ %{} :Expr (:at 1630777841142) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630777842732) (:by |qvLe3TKxz) (:text |map)
                                    |j $ %{} :Expr (:at 1630777843040) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630777843308) (:by |qvLe3TKxz) (:text |fn)
                                        |j $ %{} :Expr (:at 1630777843620) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630777846650) (:by |qvLe3TKxz) (:text |def-name)
                                        |r $ %{} :Expr (:at 1630777855749) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630778393381) (:by |qvLe3TKxz) (:text |[])
                                            |b $ %{} :Leaf (:at 1630778396232) (:by |qvLe3TKxz) (:text |def-name)
                                            |j $ %{} :Expr (:at 1630777858770) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1630777881391) (:by |qvLe3TKxz) (:text |{})
                                                |j $ %{} :Expr (:at 1630778397868) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630778400303) (:by |qvLe3TKxz) (:text |:kind)
                                                    |j $ %{} :Leaf (:at 1630778402482) (:by |qvLe3TKxz) (:text |:def)
                                                |r $ %{} :Expr (:at 1630778402987) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630778405020) (:by |qvLe3TKxz) (:text |:def)
                                                    |j $ %{} :Leaf (:at 1630778407871) (:by |qvLe3TKxz) (:text |def-name)
                                                |v $ %{} :Expr (:at 1630778408295) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630778409137) (:by |qvLe3TKxz) (:text |:ns)
                                                    |j $ %{} :Expr (:at 1630778412773) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1630778413496) (:by |qvLe3TKxz) (:text |nth)
                                                        |j $ %{} :Leaf (:at 1630778415615) (:by |qvLe3TKxz) (:text |rule)
                                                        |r $ %{} :Leaf (:at 1630778416618) (:by |qvLe3TKxz) (:text |0)
                                |v $ %{} :Expr (:at 1630777849357) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630777853331) (:by |qvLe3TKxz) (:text |.pairs-map)
                    |r $ %{} :Expr (:at 1630778335103) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1630778338364) (:by |qvLe3TKxz) (:text "|\":default")
                        |j $ %{} :Expr (:at 1630778338630) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1630778339326) (:by |qvLe3TKxz) (:text |[])
                            |j $ %{} :Leaf (:at 1630778340551) (:by |qvLe3TKxz) (:text |:default)
                            |r $ %{} :Expr (:at 1630782794653) (:by |qvLe3TKxz)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1630782801691) (:by |qvLe3TKxz) (:text |&{})
                                |L $ %{} :Expr (:at 1630782798793) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630782798793) (:by |qvLe3TKxz) (:text |nth)
                                    |j $ %{} :Leaf (:at 1630782798793) (:by |qvLe3TKxz) (:text |rule)
                                    |r $ %{} :Leaf (:at 1630782798793) (:by |qvLe3TKxz) (:text |2)
                                |T $ %{} :Expr (:at 1630778345057) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630778345759) (:by |qvLe3TKxz) (:text |{})
                                    |j $ %{} :Expr (:at 1630778350175) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630778351113) (:by |qvLe3TKxz) (:text |:kind)
                                        |j $ %{} :Leaf (:at 1630778352261) (:by |qvLe3TKxz) (:text |:default)
                                    |r $ %{} :Expr (:at 1630778353147) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630778355700) (:by |qvLe3TKxz) (:text |:package)
                                        |j $ %{} :Expr (:at 1630778358718) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630778362005) (:by |qvLe3TKxz) (:text |nth)
                                            |j $ %{} :Leaf (:at 1630778362954) (:by |qvLe3TKxz) (:text |rule)
                                            |r $ %{} :Leaf (:at 1630778363154) (:by |qvLe3TKxz) (:text |0)
                                    |v $ %{} :Expr (:at 1630778364043) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630778368091) (:by |qvLe3TKxz) (:text |:alias)
                                        |j $ %{} :Expr (:at 1630778368454) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630778368904) (:by |qvLe3TKxz) (:text |nth)
                                            |j $ %{} :Leaf (:at 1630778369961) (:by |qvLe3TKxz) (:text |rule)
                                            |r $ %{} :Leaf (:at 1630778370281) (:by |qvLe3TKxz) (:text |2)
          |pattern-number $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1630780311590) (:by |qvLe3TKxz)
              :data $ {}
                |T $ %{} :Leaf (:at 1630780311590) (:by |qvLe3TKxz) (:text |def)
                |j $ %{} :Leaf (:at 1630780311590) (:by |qvLe3TKxz) (:text |pattern-number)
                |r $ %{} :Expr (:at 1630780311590) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1630780313481) (:by |qvLe3TKxz) (:text |new)
                    |j $ %{} :Leaf (:at 1630780316615) (:by |qvLe3TKxz) (:text |js/RegExp)
                    |r $ %{} :Leaf (:at 1630780333130) (:by |qvLe3TKxz) (:text "|\"^\\d+(\\.\\d+)?$")
          |tree->cirru $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
              :data $ {}
                |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |defn)
                |j $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |tree->cirru)
                |r $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |x)
                |v $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |if)
                    |j $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |=)
                        |j $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |:leaf)
                        |r $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |:type)
                            |j $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |x)
                    |r $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |:text)
                        |j $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |x)
                    |v $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |->)
                        |j $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |:data)
                            |j $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |x)
                        |r $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |.to-list)
                        |v $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |.sort-by)
                            |j $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |first)
                        |x $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |map)
                            |j $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |fn)
                                |j $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |entry)
                                |r $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |tree->cirru)
                                    |j $ %{} :Expr (:at 1630776569015) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |last)
                                        |j $ %{} :Leaf (:at 1630776569015) (:by |qvLe3TKxz) (:text |entry)
          |unify-rule $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1630777636236) (:by |qvLe3TKxz)
              :data $ {}
                |T $ %{} :Leaf (:at 1630777636236) (:by |qvLe3TKxz) (:text |defn)
                |j $ %{} :Leaf (:at 1630777636236) (:by |qvLe3TKxz) (:text |unify-rule)
                |r $ %{} :Expr (:at 1630777636236) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1630777636236) (:by |qvLe3TKxz) (:text |rule)
                |v $ %{} :Expr (:at 1630777654777) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1630777655322) (:by |qvLe3TKxz) (:text |->)
                    |j $ %{} :Leaf (:at 1630777658907) (:by |qvLe3TKxz) (:text |rule)
                    |n $ %{} :Expr (:at 1630777664409) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1630777665251) (:by |qvLe3TKxz) (:text |.filter)
                        |j $ %{} :Expr (:at 1630777665479) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1630777666666) (:by |qvLe3TKxz) (:text |fn)
                            |j $ %{} :Expr (:at 1630777666883) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630777667104) (:by |qvLe3TKxz) (:text |x)
                            |r $ %{} :Expr (:at 1630777667557) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630777668516) (:by |qvLe3TKxz) (:text |not=)
                                |j $ %{} :Leaf (:at 1630777669136) (:by |qvLe3TKxz) (:text |x)
                                |r $ %{} :Leaf (:at 1630777670150) (:by |qvLe3TKxz) (:text "|\"[]")
                    |r $ %{} :Expr (:at 1630777659176) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1630777659658) (:by |qvLe3TKxz) (:text |.map)
                        |j $ %{} :Expr (:at 1630777662069) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1630777662361) (:by |qvLe3TKxz) (:text |fn)
                            |j $ %{} :Expr (:at 1630777673251) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630777673569) (:by |qvLe3TKxz) (:text |x)
                            |r $ %{} :Expr (:at 1630777674392) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630777675314) (:by |qvLe3TKxz) (:text |if)
                                |j $ %{} :Expr (:at 1630777675542) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630777677718) (:by |qvLe3TKxz) (:text |list?)
                                    |j $ %{} :Leaf (:at 1630777678200) (:by |qvLe3TKxz) (:text |x)
                                |r $ %{} :Expr (:at 1630777678719) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630777680286) (:by |qvLe3TKxz) (:text |unify-rule)
                                    |j $ %{} :Leaf (:at 1630777680631) (:by |qvLe3TKxz) (:text |x)
                                |v $ %{} :Leaf (:at 1630777682117) (:by |qvLe3TKxz) (:text |x)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1630773624167) (:by |qvLe3TKxz)
            :data $ {}
              |T $ %{} :Leaf (:at 1630773624167) (:by |qvLe3TKxz) (:text |ns)
              |j $ %{} :Leaf (:at 1630773624167) (:by |qvLe3TKxz) (:text |app.ast)
      |app.comp.container $ {}
        :defs $ {}
          |comp-about $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1520441025167) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1520441026528) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1520441025167) (:by |root) (:text |comp-about)
                |r $ %{} :Expr (:at 1520441025167) (:by |root)
                  :data $ {}
                |v $ %{} :Expr (:at 1520441028035) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1520441030887) (:by |root) (:text |div)
                    |j $ %{} :Expr (:at 1520441031167) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1520441031454) (:by |root) (:text |{})
                        |j $ %{} :Expr (:at 1520441088536) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1520441090022) (:by |root) (:text |:style)
                            |j $ %{} :Expr (:at 1520441090252) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1520441090589) (:by |root) (:text |{})
                                |j $ %{} :Expr (:at 1520441090901) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1520441092010) (:by |root) (:text |:padding)
                                    |j $ %{} :Leaf (:at 1520441092837) (:by |root) (:text |8)
                    |r $ %{} :Expr (:at 1520441032232) (:by |root)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1520441117596) (:by |root) (:text |comp-md)
                        |T $ %{} :Leaf (:at 1630744721224) (:by |qvLe3TKxz) (:text "|\"Calcit Viewer is a tool for reading calcit.cirru files. Read more on https://github.com/calcit-lang/calcit-viewer .")
          |comp-container $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507461830530) (:by |root) (:text |reel)
                |v $ %{} :Expr (:at 1507461832154) (:by |root)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1507461833421) (:by |root) (:text |let)
                    |L $ %{} :Expr (:at 1507461834351) (:by |root)
                      :data $ {}
                        |T $ %{} :Expr (:at 1507461834650) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507461835738) (:by |root) (:text |store)
                            |j $ %{} :Expr (:at 1507461836110) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507461837276) (:by |root) (:text |:store)
                                |j $ %{} :Leaf (:at 1507461838285) (:by |root) (:text |reel)
                        |j $ %{} :Expr (:at 1509554104408) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1509554105323) (:by |root) (:text |states)
                            |j $ %{} :Expr (:at 1509554105592) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1509554109477) (:by |root) (:text |:states)
                                |j $ %{} :Leaf (:at 1509554111945) (:by |root) (:text |store)
                    |T $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                        |j $ %{} :Expr (:at 1499755354983) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1499755354983) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:style)
                                |j $ %{} :Expr (:at 1499755354983) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |merge)
                                    |j $ %{} :Leaf (:at 1520439489524) (:by |root) (:text |ui/global)
                                    |n $ %{} :Leaf (:at 1520440238025) (:by |root) (:text |ui/fullscreen)
                                    |r $ %{} :Leaf (:at 1520439515620) (:by |root) (:text |ui/row)
                        |o $ %{} :Expr (:at 1520439928266) (:by |root)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1520439930783) (:by |root) (:text |let)
                            |L $ %{} :Expr (:at 1520439931053) (:by |root)
                              :data $ {}
                                |T $ %{} :Expr (:at 1520439931648) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1520439932524) (:by |root) (:text |page)
                                    |j $ %{} :Expr (:at 1520439932791) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1520439933409) (:by |root) (:text |:page)
                                        |j $ %{} :Leaf (:at 1520439934101) (:by |root) (:text |store)
                            |T $ %{} :Expr (:at 1520439519461) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1520439519943) (:by |root) (:text |div)
                                |j $ %{} :Expr (:at 1520439520176) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1520439523244) (:by |root) (:text |{})
                                    |j $ %{} :Expr (:at 1520440223880) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1520440225376) (:by |root) (:text |:style)
                                        |j $ %{} :Expr (:at 1520440225589) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1520440226557) (:by |root) (:text |{})
                                            |j $ %{} :Expr (:at 1520440226895) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1520440229434) (:by |root) (:text |:background-color)
                                                |j $ %{} :Expr (:at 1520440229698) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1520440230742) (:by |root) (:text |hsl)
                                                    |j $ %{} :Leaf (:at 1520440254366) (:by |root) (:text |200)
                                                    |r $ %{} :Leaf (:at 1520440263556) (:by |root) (:text |30)
                                                    |v $ %{} :Leaf (:at 1520440268066) (:by |root) (:text |24)
                                            |r $ %{} :Expr (:at 1520440243584) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1520440244531) (:by |root) (:text |:color)
                                                |j $ %{} :Leaf (:at 1520440245538) (:by |root) (:text |:white)
                                |v $ %{} :Expr (:at 1520439936989) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1520439939799) (:by |root) (:text |comp-entry)
                                    |j $ %{} :Leaf (:at 1520439941121) (:by |root) (:text |:upload)
                                    |n $ %{} :Leaf (:at 1520440000401) (:by |root) (:text |:input)
                                    |r $ %{} :Leaf (:at 1520439943437) (:by |root) (:text |page)
                                |x $ %{} :Expr (:at 1520439947115) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1520439949006) (:by |root) (:text |comp-entry)
                                    |j $ %{} :Leaf (:at 1561261620850) (:by |qvLe3TKxz) (:text |:edit)
                                    |n $ %{} :Leaf (:at 1520439997042) (:by |root) (:text |:textarea)
                                    |r $ %{} :Leaf (:at 1520439991462) (:by |root) (:text |page)
                                |y $ %{} :Expr (:at 1520440019391) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1520440020809) (:by |root) (:text |comp-entry)
                                    |j $ %{} :Leaf (:at 1561261605150) (:by |qvLe3TKxz) (:text |:monitor)
                                    |r $ %{} :Leaf (:at 1520440064834) (:by |root) (:text |:viewer)
                                    |v $ %{} :Leaf (:at 1520440069322) (:by |root) (:text |page)
                                |yT $ %{} :Expr (:at 1520440019391) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1520440020809) (:by |root) (:text |comp-entry)
                                    |j $ %{} :Leaf (:at 1561261586533) (:by |qvLe3TKxz) (:text |:info)
                                    |r $ %{} :Leaf (:at 1520441079037) (:by |root) (:text |:about)
                                    |v $ %{} :Leaf (:at 1520440069322) (:by |root) (:text |page)
                                |yj $ %{} :Expr (:at 1630773819149) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630774014451) (:by |qvLe3TKxz) (:text |comp-entry)
                                    |j $ %{} :Leaf (:at 1630773888128) (:by |qvLe3TKxz) (:text |:map)
                                    |r $ %{} :Leaf (:at 1630773826106) (:by |qvLe3TKxz) (:text |:graph)
                                    |v $ %{} :Leaf (:at 1630773826841) (:by |qvLe3TKxz) (:text |page)
                        |t $ %{} :Expr (:at 1520439517337) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1629135816362) (:by |qvLe3TKxz) (:text |case-default)
                            |j $ %{} :Expr (:at 1520439412049) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1520439414344) (:by |root) (:text |:page)
                                |j $ %{} :Leaf (:at 1520439418868) (:by |root) (:text |store)
                            |n $ %{} :Expr (:at 1629135817398) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1629135817398) (:by |qvLe3TKxz) (:text |<>)
                                |j $ %{} :Leaf (:at 1629135817398) (:by |qvLe3TKxz) (:text "|\"Unknown route")
                            |r $ %{} :Expr (:at 1520439420077) (:by |root)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1520439454674) (:by |root) (:text |:viewer)
                                |T $ %{} :Expr (:at 1508431045174) (:by |root)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1508431046287) (:by |root) (:text |div)
                                    |L $ %{} :Expr (:at 1508430884148) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1508430884516) (:by |root) (:text |{})
                                        |j $ %{} :Expr (:at 1508430893717) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1508430894564) (:by |root) (:text |:style)
                                            |j $ %{} :Expr (:at 1561263502082) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |D $ %{} :Leaf (:at 1561263503784) (:by |qvLe3TKxz) (:text |merge)
                                                |L $ %{} :Leaf (:at 1561263506751) (:by |qvLe3TKxz) (:text |ui/expand)
                                                |T $ %{} :Expr (:at 1508430894905) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1508430895222) (:by |root) (:text |{})
                                                    |r $ %{} :Expr (:at 1508431015309) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1508431016475) (:by |root) (:text |:padding)
                                                        |j $ %{} :Leaf (:at 1508431017942) (:by |root) (:text |16)
                                                    |v $ %{} :Expr (:at 1520439536386) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1520439538154) (:by |root) (:text |:overflow)
                                                        |j $ %{} :Leaf (:at 1520439539585) (:by |root) (:text |:auto)
                                    |T $ %{} :Expr (:at 1508430867689) (:by |root)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1508430869746) (:by |root) (:text |if)
                                        |L $ %{} :Expr (:at 1508430876212) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1508430877114) (:by |root) (:text |some?)
                                            |j $ %{} :Expr (:at 1508430877433) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1508430878400) (:by |root) (:text |:error)
                                                |j $ %{} :Leaf (:at 1508430879207) (:by |root) (:text |store)
                                        |P $ %{} :Expr (:at 1508430885542) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1508430887277) (:by |root) (:text |<>)
                                            |j $ %{} :Expr (:at 1508430888217) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1508430889081) (:by |root) (:text |:error)
                                                |j $ %{} :Leaf (:at 1508430891358) (:by |root) (:text |store)
                                            |r $ %{} :Expr (:at 1508431065178) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1508431065540) (:by |root) (:text |{})
                                                |j $ %{} :Expr (:at 1508430895479) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1508430896832) (:by |root) (:text |:color)
                                                    |j $ %{} :Leaf (:at 1508430897852) (:by |root) (:text |:red)
                                        |h $ %{} :Expr (:at 1508432094188) (:by |root)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1508432094889) (:by |root) (:text |if)
                                            |L $ %{} :Expr (:at 1508432095745) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1508432096508) (:by |root) (:text |some?)
                                                |j $ %{} :Expr (:at 1508432096991) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1508432098556) (:by |root) (:text |:calcit)
                                                    |j $ %{} :Leaf (:at 1508432099904) (:by |root) (:text |store)
                                            |T $ %{} :Expr (:at 1508431336011) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1561263885351) (:by |qvLe3TKxz) (:text |comp-viewer)
                                                |j $ %{} :Expr (:at 1508431340877) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1508431342138) (:by |root) (:text |:calcit)
                                                    |j $ %{} :Leaf (:at 1508431344132) (:by |root) (:text |store)
                                            |j $ %{} :Expr (:at 1508432103358) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1508432103989) (:by |root) (:text |<>)
                                                |j $ %{} :Leaf (:at 1561261900218) (:by |qvLe3TKxz) (:text "|\"Nothing")
                            |v $ %{} :Expr (:at 1520439426384) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1520439429442) (:by |root) (:text |:textarea)
                                |j $ %{} :Expr (:at 1520440393786) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1520440405338) (:by |root) (:text |comp-text-area)
                                    |j $ %{} :Expr (:at 1520440407120) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1520440454578) (:by |root) (:text |:text)
                                        |j $ %{} :Leaf (:at 1520440455465) (:by |root) (:text |store)
                                    |r $ %{} :Expr (:at 1520441349539) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1520441349190) (:by |root) (:text |:error)
                                        |j $ %{} :Leaf (:at 1520441350378) (:by |root) (:text |store)
                            |x $ %{} :Expr (:at 1520439443498) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1520439446386) (:by |root) (:text |:input)
                                |j $ %{} :Expr (:at 1520439448895) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1520439451849) (:by |root) (:text |comp-file-input)
                                    |j $ %{} :Expr (:at 1520441349539) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1520441349190) (:by |root) (:text |:error)
                                        |j $ %{} :Leaf (:at 1520441350378) (:by |root) (:text |store)
                            |xT $ %{} :Expr (:at 1520441019750) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1520441021171) (:by |root) (:text |:about)
                                |j $ %{} :Expr (:at 1520441022136) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1520441024620) (:by |root) (:text |comp-about)
                            |yD $ %{} :Expr (:at 1630773892387) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630773894717) (:by |qvLe3TKxz) (:text |:graph)
                                |j $ %{} :Expr (:at 1630773895362) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630773896679) (:by |qvLe3TKxz) (:text |comp-graph)
                                    |b $ %{} :Expr (:at 1630781012111) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630781012602) (:by |qvLe3TKxz) (:text |>>)
                                        |j $ %{} :Leaf (:at 1630781014441) (:by |qvLe3TKxz) (:text |states)
                                        |r $ %{} :Leaf (:at 1630781018347) (:by |qvLe3TKxz) (:text |:graph)
                                    |j $ %{} :Expr (:at 1630773901711) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630773905850) (:by |qvLe3TKxz) (:text |:calcit)
                                        |j $ %{} :Leaf (:at 1630773906550) (:by |qvLe3TKxz) (:text |store)
                        |u $ %{} :Expr (:at 1572778202681) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1572778208613) (:by |qvLe3TKxz) (:text |comp-messages)
                            |j $ %{} :Expr (:at 1572778210773) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1572778212581) (:by |qvLe3TKxz) (:text |:messages)
                                |j $ %{} :Leaf (:at 1572778214176) (:by |qvLe3TKxz) (:text |store)
                            |r $ %{} :Expr (:at 1572778218680) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1572778219327) (:by |qvLe3TKxz) (:text |{})
                            |v $ %{} :Expr (:at 1572778220620) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1572778222487) (:by |qvLe3TKxz) (:text |fn)
                                |j $ %{} :Expr (:at 1572778222973) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1572778223665) (:by |qvLe3TKxz) (:text |info)
                                    |j $ %{} :Leaf (:at 1572778225891) (:by |qvLe3TKxz) (:text |d!)
                                |r $ %{} :Expr (:at 1572778692594) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1572778229567) (:by |qvLe3TKxz) (:text |d!)
                                    |j $ %{} :Leaf (:at 1572778694528) (:by |qvLe3TKxz) (:text |action/clear)
                                    |r $ %{} :Leaf (:at 1572778696517) (:by |qvLe3TKxz) (:text |nil)
                        |v $ %{} :Expr (:at 1630744738613) (:by |qvLe3TKxz)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1630744741511) (:by |qvLe3TKxz) (:text |if)
                            |L $ %{} :Leaf (:at 1630744744032) (:by |qvLe3TKxz) (:text |config/dev?)
                            |T $ %{} :Expr (:at 1561262015290) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1561262018943) (:by |qvLe3TKxz) (:text |comp-inspect)
                                |j $ %{} :Leaf (:at 1561262020317) (:by |qvLe3TKxz) (:text |:store)
                                |r $ %{} :Leaf (:at 1561262021004) (:by |qvLe3TKxz) (:text |store)
                                |v $ %{} :Expr (:at 1561262040664) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1561262041435) (:by |qvLe3TKxz) (:text |{})
                                    |j $ %{} :Expr (:at 1561263399273) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1561263401307) (:by |qvLe3TKxz) (:text |:bottom)
                                        |j $ %{} :Leaf (:at 1561263413179) (:by |qvLe3TKxz) (:text |0)
                                    |r $ %{} :Expr (:at 1561263399273) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1561263405537) (:by |qvLe3TKxz) (:text |:right)
                                        |j $ %{} :Leaf (:at 1561263401671) (:by |qvLe3TKxz) (:text |8)
                        |x $ %{} :Expr (:at 1507461809635) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507461815046) (:by |root) (:text |comp-reel)
                            |b $ %{} :Expr (:at 1596680673872) (:by |qvLe3TKxz)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1596680674897) (:by |qvLe3TKxz) (:text |>>)
                                |T $ %{} :Leaf (:at 1509554101952) (:by |root) (:text |states)
                                |j $ %{} :Leaf (:at 1596680677425) (:by |qvLe3TKxz) (:text |:reel)
                            |j $ %{} :Leaf (:at 1507461840459) (:by |root) (:text |reel)
                            |r $ %{} :Expr (:at 1507461840980) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507461841342) (:by |root) (:text |{})
          |comp-entry $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1520440071398) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1520440075625) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1520440071398) (:by |root) (:text |comp-entry)
                |r $ %{} :Expr (:at 1520440071398) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1520440078900) (:by |root) (:text |icon)
                    |j $ %{} :Leaf (:at 1520440131187) (:by |root) (:text |page)
                    |r $ %{} :Leaf (:at 1520440133046) (:by |root) (:text |current-page)
                |v $ %{} :Expr (:at 1520440181031) (:by |root)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1520440181670) (:by |root) (:text |div)
                    |L $ %{} :Expr (:at 1520440181878) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1520440183838) (:by |root) (:text |{})
                        |j $ %{} :Expr (:at 1520440184408) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1520440185094) (:by |root) (:text |:style)
                            |j $ %{} :Expr (:at 1520440200160) (:by |root)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1520440201280) (:by |root) (:text |merge)
                                |L $ %{} :Leaf (:at 1520440203055) (:by |root) (:text |ui/center)
                                |T $ %{} :Expr (:at 1520440185993) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1520440187660) (:by |root) (:text |{})
                                    |j $ %{} :Expr (:at 1520440188384) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1520440191105) (:by |root) (:text |:font-size)
                                        |j $ %{} :Leaf (:at 1520440287237) (:by |root) (:text |28)
                                    |r $ %{} :Expr (:at 1520440209513) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1520440210991) (:by |root) (:text |:width)
                                        |j $ %{} :Leaf (:at 1520440276580) (:by |root) (:text |48)
                                    |v $ %{} :Expr (:at 1520440213977) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1520440215924) (:by |root) (:text |:height)
                                        |j $ %{} :Leaf (:at 1520440278766) (:by |root) (:text |48)
                                    |x $ %{} :Expr (:at 1520440308339) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1520440309309) (:by |root) (:text |:color)
                                        |j $ %{} :Expr (:at 1520440309614) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1520440309873) (:by |root) (:text |hsl)
                                            |j $ %{} :Leaf (:at 1520440310480) (:by |root) (:text |0)
                                            |r $ %{} :Leaf (:at 1520440310687) (:by |root) (:text |0)
                                            |v $ %{} :Leaf (:at 1520440319577) (:by |root) (:text |60)
                                    |y $ %{} :Expr (:at 1520440333853) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1520440335262) (:by |root) (:text |:cursor)
                                        |j $ %{} :Leaf (:at 1520440337947) (:by |root) (:text |:pointer)
                                |j $ %{} :Expr (:at 1520440294286) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1520440294710) (:by |root) (:text |if)
                                    |j $ %{} :Expr (:at 1520440295509) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1520440295654) (:by |root) (:text |=)
                                        |j $ %{} :Leaf (:at 1520440296686) (:by |root) (:text |page)
                                        |r $ %{} :Leaf (:at 1520440298224) (:by |root) (:text |current-page)
                                    |r $ %{} :Expr (:at 1520440298616) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1520440300850) (:by |root) (:text |{})
                                        |j $ %{} :Expr (:at 1520440301378) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1520440302645) (:by |root) (:text |:color)
                                            |j $ %{} :Leaf (:at 1520440304202) (:by |root) (:text |:white)
                        |r $ %{} :Expr (:at 1520440341378) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1520440344062) (:by |root) (:text |:on-click)
                            |j $ %{} :Expr (:at 1520440344349) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1520440345797) (:by |root) (:text |fn)
                                |j $ %{} :Expr (:at 1520440346129) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1520440346338) (:by |root) (:text |e)
                                    |j $ %{} :Leaf (:at 1520440346962) (:by |root) (:text |d!)
                                |r $ %{} :Expr (:at 1520440348442) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1520440349123) (:by |root) (:text |d!)
                                    |j $ %{} :Leaf (:at 1520440352514) (:by |root) (:text |:page)
                                    |r $ %{} :Leaf (:at 1520440353023) (:by |root) (:text |page)
                    |T $ %{} :Expr (:at 1520440133858) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1561261481774) (:by |qvLe3TKxz) (:text |comp-i)
                        |j $ %{} :Leaf (:at 1520440141228) (:by |root) (:text |icon)
                        |n $ %{} :Leaf (:at 1561261536351) (:by |qvLe3TKxz) (:text |14)
                        |r $ %{} :Expr (:at 1561261530353) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1561261530975) (:by |qvLe3TKxz) (:text |hsl)
                            |j $ %{} :Leaf (:at 1561261533789) (:by |qvLe3TKxz) (:text |200)
                            |r $ %{} :Leaf (:at 1561261534176) (:by |qvLe3TKxz) (:text |80)
                            |v $ %{} :Leaf (:at 1561261534391) (:by |qvLe3TKxz) (:text |80)
          |comp-file-input $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1520439397186) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1520439399409) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |comp-file-input)
                |n $ %{} :Expr (:at 1520439400488) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1520441357257) (:by |root) (:text |error)
                |r $ %{} :Expr (:at 1520439397186) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |div)
                    |j $ %{} :Expr (:at 1520439397186) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |{})
                        |j $ %{} :Expr (:at 1520439397186) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |:style)
                            |j $ %{} :Expr (:at 1520439397186) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |{})
                                |j $ %{} :Expr (:at 1520439397186) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |:padding)
                                    |j $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |16)
                    |r $ %{} :Expr (:at 1520439397186) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |<>)
                        |j $ %{} :Leaf (:at 1596681265032) (:by |qvLe3TKxz) (:text "|\"Pick calcit.cirru to view:")
                    |v $ %{} :Expr (:at 1520439397186) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |=<)
                        |j $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |8)
                        |r $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |nil)
                    |x $ %{} :Expr (:at 1520439397186) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |input)
                        |j $ %{} :Expr (:at 1520439397186) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1520439397186) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |:type)
                                |j $ %{} :Leaf (:at 1561261922065) (:by |qvLe3TKxz) (:text "|\"file")
                            |r $ %{} :Expr (:at 1520439397186) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1520439397186) (:by |root) (:text |:accept)
                                |j $ %{} :Leaf (:at 1596681198378) (:by |qvLe3TKxz) (:text "|\".cirru")
                            |v $ %{} :Expr (:at 1596681195994) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1596681195994) (:by |qvLe3TKxz) (:text |:on-change)
                                |j $ %{} :Leaf (:at 1596681195994) (:by |qvLe3TKxz) (:text |on-file-change)
                    |y $ %{} :Expr (:at 1520441359637) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1520441372420) (:by |root) (:text |div)
                        |j $ %{} :Expr (:at 1520441372686) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1520441373008) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1520441383100) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1520441383816) (:by |root) (:text |:style)
                                |j $ %{} :Expr (:at 1520441384848) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1520441385199) (:by |root) (:text |{})
                                    |j $ %{} :Expr (:at 1520441385539) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1520441387778) (:by |root) (:text |:color)
                                        |j $ %{} :Leaf (:at 1520441388383) (:by |root) (:text |:red)
                        |r $ %{} :Expr (:at 1520441375005) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1520441379477) (:by |root) (:text |<>)
                            |j $ %{} :Leaf (:at 1520441380748) (:by |root) (:text |error)
          |comp-text-area $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1520440456412) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1520440457685) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1520440456412) (:by |root) (:text |comp-text-area)
                |r $ %{} :Expr (:at 1520440456412) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1520440460780) (:by |root) (:text |text)
                    |j $ %{} :Leaf (:at 1520441399231) (:by |root) (:text |error)
                |v $ %{} :Expr (:at 1520440522971) (:by |root)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1520440523692) (:by |root) (:text |div)
                    |L $ %{} :Expr (:at 1520440523915) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1520440524272) (:by |root) (:text |{})
                        |j $ %{} :Expr (:at 1520440527298) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1520440528009) (:by |root) (:text |:style)
                            |j $ %{} :Expr (:at 1520440722051) (:by |root)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1520440723350) (:by |root) (:text |merge)
                                |T $ %{} :Leaf (:at 1520440529037) (:by |root) (:text |ui/row)
                                |j $ %{} :Leaf (:at 1520440725956) (:by |root) (:text |ui/flex)
                    |T $ %{} :Expr (:at 1520440461278) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1520440463193) (:by |root) (:text |textarea)
                        |j $ %{} :Expr (:at 1520440463481) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1520440463813) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1520440464394) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1520440465851) (:by |root) (:text |:style)
                                |j $ %{} :Expr (:at 1520440511418) (:by |root)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1520440514195) (:by |root) (:text |merge)
                                    |T $ %{} :Leaf (:at 1520440467839) (:by |root) (:text |ui/textarea)
                                    |b $ %{} :Leaf (:at 1520440712727) (:by |root) (:text |ui/flex)
                                    |j $ %{} :Expr (:at 1520440514957) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1520440515267) (:by |root) (:text |{})
                                        |j $ %{} :Expr (:at 1520440515569) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1520440516317) (:by |root) (:text |:width)
                                            |j $ %{} :Leaf (:at 1520440519584) (:by |root) (:text ||100%)
                                        |r $ %{} :Expr (:at 1520440944118) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1520440946515) (:by |root) (:text |:font-family)
                                            |j $ %{} :Leaf (:at 1520440949963) (:by |root) (:text |ui/font-code)
                                        |v $ %{} :Expr (:at 1520440954463) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1520440956799) (:by |root) (:text |:font-size)
                                            |j $ %{} :Leaf (:at 1520440969418) (:by |root) (:text |12)
                                        |x $ %{} :Expr (:at 1520440958524) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1520440962283) (:by |root) (:text |:line-height)
                                            |j $ %{} :Leaf (:at 1520440967690) (:by |root) (:text ||1.4em)
                            |n $ %{} :Expr (:at 1520440488195) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1520440489162) (:by |root) (:text |:value)
                                |j $ %{} :Leaf (:at 1520440490356) (:by |root) (:text |text)
                            |p $ %{} :Expr (:at 1520440490648) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1520440492268) (:by |root) (:text |:placeholder)
                                |j $ %{} :Leaf (:at 1629136267925) (:by |qvLe3TKxz) (:text "|\"Paste calcit.cirru content here...")
                            |r $ %{} :Expr (:at 1520440468359) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1520440472184) (:by |root) (:text |:on-input)
                                |j $ %{} :Expr (:at 1520440472458) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1520440473156) (:by |root) (:text |fn)
                                    |j $ %{} :Expr (:at 1520440473451) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1520440473647) (:by |root) (:text |e)
                                        |j $ %{} :Leaf (:at 1520440474230) (:by |root) (:text |d!)
                                    |r $ %{} :Expr (:at 1520440475407) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1520440476124) (:by |root) (:text |d!)
                                        |j $ %{} :Leaf (:at 1520440476972) (:by |root) (:text |:text)
                                        |r $ %{} :Expr (:at 1520440479246) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1520440481771) (:by |root) (:text |:value)
                                            |j $ %{} :Leaf (:at 1520440482998) (:by |root) (:text |e)
                    |j $ %{} :Expr (:at 1520440530996) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1520440532106) (:by |root) (:text |div)
                        |j $ %{} :Expr (:at 1520440532308) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1520440532599) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1520440730388) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1520440733450) (:by |root) (:text |:style)
                                |j $ %{} :Expr (:at 1520440733674) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1520440734537) (:by |root) (:text |{})
                                    |j $ %{} :Expr (:at 1520440735062) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1520440737283) (:by |root) (:text |:padding)
                                        |j $ %{} :Leaf (:at 1520440738033) (:by |root) (:text |8)
                        |r $ %{} :Expr (:at 1520440532989) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1520440534035) (:by |root) (:text |button)
                            |j $ %{} :Expr (:at 1520440534727) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1520440535037) (:by |root) (:text |{})
                                |j $ %{} :Expr (:at 1520440538940) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1520440539689) (:by |root) (:text |:style)
                                    |j $ %{} :Leaf (:at 1520440540908) (:by |root) (:text |ui/button)
                                |r $ %{} :Expr (:at 1520440549334) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1520440550834) (:by |root) (:text |:on-click)
                                    |j $ %{} :Expr (:at 1520440552072) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1520440552572) (:by |root) (:text |fn)
                                        |j $ %{} :Expr (:at 1520440553250) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1520440553435) (:by |root) (:text |e)
                                            |j $ %{} :Leaf (:at 1520440554561) (:by |root) (:text |d!)
                                        |r $ %{} :Expr (:at 1520440555713) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1520440574384) (:by |root) (:text |try)
                                            |j $ %{} :Expr (:at 1520440574694) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1520440692981) (:by |root) (:text |d!)
                                                |b $ %{} :Leaf (:at 1561262699830) (:by |qvLe3TKxz) (:text |:load/calcit)
                                                |j $ %{} :Expr (:at 1520440639649) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1629135362309) (:by |qvLe3TKxz) (:text |parse-cirru-edn)
                                                    |j $ %{} :Leaf (:at 1520440700864) (:by |root) (:text |text)
                                            |r $ %{} :Expr (:at 1520440586659) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1629135350424) (:by |qvLe3TKxz) (:text |fn)
                                                |r $ %{} :Expr (:at 1629135351067) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1520440597809) (:by |root) (:text |error)
                                                |v $ %{} :Expr (:at 1520440598603) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1520440673367) (:by |root) (:text |d!)
                                                    |j $ %{} :Leaf (:at 1520440684225) (:by |root) (:text |:error)
                                                    |r $ %{} :Expr (:at 1520440685161) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1520440685715) (:by |root) (:text |str)
                                                        |j $ %{} :Leaf (:at 1520440687211) (:by |root) (:text |error)
                            |r $ %{} :Expr (:at 1520440541716) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1520440543865) (:by |root) (:text |<>)
                                |j $ %{} :Leaf (:at 1561262198398) (:by |qvLe3TKxz) (:text "|\"Parse")
                        |v $ %{} :Expr (:at 1520441401023) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1520441401783) (:by |root) (:text |div)
                            |j $ %{} :Expr (:at 1520441402121) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1520441406916) (:by |root) (:text |{})
                                |j $ %{} :Expr (:at 1520441411052) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1520441411862) (:by |root) (:text |:style)
                                    |j $ %{} :Expr (:at 1520441412293) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1520441412698) (:by |root) (:text |{})
                                        |j $ %{} :Expr (:at 1520441413293) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1520441414622) (:by |root) (:text |:color)
                                            |j $ %{} :Leaf (:at 1520441415377) (:by |root) (:text |:red)
                            |r $ %{} :Expr (:at 1520441407387) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1520441407907) (:by |root) (:text |<>)
                                |j $ %{} :Leaf (:at 1520441409728) (:by |root) (:text |error)
          |on-file-change $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1508430840605) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1508430858143) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |on-file-change)
                |r $ %{} :Expr (:at 1508430840605) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |e)
                    |j $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |d!)
                |v $ %{} :Expr (:at 1508430840605) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |let)
                    |j $ %{} :Expr (:at 1508430840605) (:by |root)
                      :data $ {}
                        |T $ %{} :Expr (:at 1508430840605) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |file)
                            |j $ %{} :Expr (:at 1508430840605) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |->)
                                |j $ %{} :Expr (:at 1508430840605) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |:event)
                                    |j $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |e)
                                |r $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |.-target)
                                |v $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |.-files)
                                |x $ %{} :Expr (:at 1508430840605) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |aget)
                                    |j $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |0)
                    |r $ %{} :Expr (:at 1520438647267) (:by |root)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1520438647819) (:by |root) (:text |if)
                        |L $ %{} :Expr (:at 1520438648600) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1520438649425) (:by |root) (:text |some?)
                            |j $ %{} :Leaf (:at 1520438650087) (:by |root) (:text |file)
                        |T $ %{} :Expr (:at 1508430840605) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |if)
                            |j $ %{} :Expr (:at 1508430840605) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508431796052) (:by |root) (:text |not=)
                                |b $ %{} :Expr (:at 1508430840605) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |.-name)
                                    |j $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |file)
                                |f $ %{} :Leaf (:at 1596681208780) (:by |qvLe3TKxz) (:text ||calcit.cirru)
                            |r $ %{} :Expr (:at 1508430840605) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |do)
                                |r $ %{} :Expr (:at 1508430840605) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |d!)
                                    |j $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |:error)
                                    |r $ %{} :Expr (:at 1508431826158) (:by |root)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1508431828119) (:by |root) (:text |str)
                                        |T $ %{} :Leaf (:at 1596681210797) (:by |qvLe3TKxz) (:text "|\"Expected calcit.cirru , but got ")
                                        |j $ %{} :Expr (:at 1508430840605) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |.-name)
                                            |j $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |file)
                            |v $ %{} :Expr (:at 1508430840605) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |let)
                                |j $ %{} :Expr (:at 1508430840605) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Expr (:at 1508430840605) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |fr)
                                        |j $ %{} :Expr (:at 1508430840605) (:by |root)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1629135376594) (:by |qvLe3TKxz) (:text |new)
                                            |T $ %{} :Leaf (:at 1629135375597) (:by |qvLe3TKxz) (:text |js/FileReader)
                                |r $ %{} :Expr (:at 1508430840605) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |set!)
                                    |j $ %{} :Expr (:at 1629135380143) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1629135381293) (:by |qvLe3TKxz) (:text |.-onload)
                                        |T $ %{} :Leaf (:at 1629135379719) (:by |qvLe3TKxz) (:text |fr)
                                    |r $ %{} :Expr (:at 1508430840605) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |fn)
                                        |j $ %{} :Expr (:at 1508430840605) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |event)
                                        |r $ %{} :Expr (:at 1508430840605) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |d!)
                                            |j $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |:load/calcit)
                                            |r $ %{} :Expr (:at 1508430840605) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1629135389127) (:by |qvLe3TKxz) (:text |parse-cirru-edn)
                                                |j $ %{} :Expr (:at 1629135611802) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |D $ %{} :Leaf (:at 1629135613857) (:by |qvLe3TKxz) (:text |->)
                                                    |T $ %{} :Leaf (:at 1629135616963) (:by |qvLe3TKxz) (:text |event)
                                                    |j $ %{} :Leaf (:at 1629135619784) (:by |qvLe3TKxz) (:text |.-target)
                                                    |r $ %{} :Leaf (:at 1629135621348) (:by |qvLe3TKxz) (:text |.-result)
                                |v $ %{} :Expr (:at 1508430840605) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1629135624584) (:by |qvLe3TKxz) (:text |.!readAsText)
                                    |j $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |fr)
                                    |r $ %{} :Leaf (:at 1508430840605) (:by |root) (:text |file)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.comp.container)
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1629135166317) (:by |qvLe3TKxz) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |hsl)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1520437361330) (:by |root) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ui)
                  |v $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1561260936377) (:by |qvLe3TKxz) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                          |n $ %{} :Leaf (:at 1596680663249) (:by |qvLe3TKxz) (:text |>>)
                          |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |<>)
                          |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                          |x $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |button)
                          |xT $ %{} :Leaf (:at 1520439437119) (:by |root) (:text |textarea)
                          |y $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |span)
                          |yT $ %{} :Leaf (:at 1508429846685) (:by |root) (:text |input)
                          |yj $ %{} :Leaf (:at 1509554003072) (:by |root) (:text |pre)
                  |x $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.comp.space)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |=<)
                  |y $ %{} :Expr (:at 1507461845717) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507461846175) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1507461855480) (:by |root) (:text |reel.comp.reel)
                      |r $ %{} :Leaf (:at 1507461856264) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507461856484) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461856706) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1507461858342) (:by |root) (:text |comp-reel)
                  |yT $ %{} :Expr (:at 1508430603641) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1508430604513) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1508430606495) (:by |root) (:text |cljs.reader)
                      |r $ %{} :Leaf (:at 1508430607141) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1508430607345) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508430607493) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1508430608765) (:by |root) (:text |read-string)
                  |yj $ %{} :Expr (:at 1508431347889) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1508431348227) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1508431351974) (:by |root) (:text |app.comp.viewer)
                      |r $ %{} :Leaf (:at 1508431352775) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1508431352998) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508431353170) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1508431354943) (:by |root) (:text |comp-viewer)
                  |yv $ %{} :Expr (:at 1520441098536) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520441098996) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1520441103520) (:by |root) (:text |respo-md.comp.md)
                      |r $ %{} :Leaf (:at 1520441105493) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1520441108760) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520441109783) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1520441111399) (:by |root) (:text |comp-md)
                  |yx $ %{} :Expr (:at 1561261440434) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1561261440817) (:by |qvLe3TKxz) (:text |[])
                      |j $ %{} :Leaf (:at 1561261470217) (:by |qvLe3TKxz) (:text |feather.core)
                      |r $ %{} :Leaf (:at 1561261472843) (:by |qvLe3TKxz) (:text |:refer)
                      |v $ %{} :Expr (:at 1561261473051) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1561261474913) (:by |qvLe3TKxz) (:text |[])
                          |j $ %{} :Leaf (:at 1561261479982) (:by |qvLe3TKxz) (:text |comp-i)
                  |yy $ %{} :Expr (:at 1561262023363) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1561262023663) (:by |qvLe3TKxz) (:text |[])
                      |j $ %{} :Leaf (:at 1561262026922) (:by |qvLe3TKxz) (:text |respo.comp.inspect)
                      |r $ %{} :Leaf (:at 1561262027681) (:by |qvLe3TKxz) (:text |:refer)
                      |v $ %{} :Expr (:at 1561262027900) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1561262028134) (:by |qvLe3TKxz) (:text |[])
                          |j $ %{} :Leaf (:at 1561262032647) (:by |qvLe3TKxz) (:text |comp-inspect)
                  |yyT $ %{} :Expr (:at 1572778247951) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572778248284) (:by |qvLe3TKxz) (:text |[])
                      |j $ %{} :Leaf (:at 1572778254225) (:by |qvLe3TKxz) (:text |respo-message.action)
                      |r $ %{} :Leaf (:at 1572778259689) (:by |qvLe3TKxz) (:text |:as)
                      |v $ %{} :Leaf (:at 1572778260966) (:by |qvLe3TKxz) (:text |action)
                  |yyj $ %{} :Expr (:at 1572778262005) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572778262347) (:by |qvLe3TKxz) (:text |[])
                      |j $ %{} :Leaf (:at 1572778267809) (:by |qvLe3TKxz) (:text |respo-message.comp.messages)
                      |r $ %{} :Leaf (:at 1572778270570) (:by |qvLe3TKxz) (:text |:refer)
                      |v $ %{} :Expr (:at 1572778270792) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572778271010) (:by |qvLe3TKxz) (:text |[])
                          |j $ %{} :Leaf (:at 1572778276015) (:by |qvLe3TKxz) (:text |comp-messages)
                  |yyr $ %{} :Expr (:at 1630744748664) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630744750756) (:by |qvLe3TKxz) (:text |app.config)
                      |j $ %{} :Leaf (:at 1630744753242) (:by |qvLe3TKxz) (:text |:as)
                      |r $ %{} :Leaf (:at 1630744754001) (:by |qvLe3TKxz) (:text |config)
                  |yyv $ %{} :Expr (:at 1630773996080) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630774000588) (:by |qvLe3TKxz) (:text |app.comp.graph)
                      |j $ %{} :Leaf (:at 1630774001974) (:by |qvLe3TKxz) (:text |:refer)
                      |r $ %{} :Expr (:at 1630774002274) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630774003703) (:by |qvLe3TKxz) (:text |comp-graph)
      |app.comp.expr $ {}
        :defs $ {}
          |comp-expr $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1509555546987) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1509555550073) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1509555546987) (:by |root) (:text |comp-expr)
                |r $ %{} :Expr (:at 1509555546987) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1509555556590) (:by |root) (:text |expr)
                    |j $ %{} :Leaf (:at 1509768852453) (:by |root) (:text |last?)
                |v $ %{} :Expr (:at 1509555551519) (:by |root)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1509769204748) (:by |root) (:text |list->)
                    |j $ %{} :Expr (:at 1509555552551) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1509555552876) (:by |root) (:text |{})
                        |j $ %{} :Expr (:at 1509555847380) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1509555850270) (:by |root) (:text |:style)
                            |j $ %{} :Expr (:at 1509768875028) (:by |root)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1509768876015) (:by |root) (:text |merge)
                                |T $ %{} :Leaf (:at 1572777912240) (:by |qvLe3TKxz) (:text |style-expr)
                                |j $ %{} :Expr (:at 1509768876563) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1509768877006) (:by |root) (:text |if)
                                    |j $ %{} :Leaf (:at 1509768878879) (:by |root) (:text |last?)
                                    |r $ %{} :Expr (:at 1509768879476) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1509768880138) (:by |root) (:text |{})
                                        |j $ %{} :Expr (:at 1509768880449) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1509768881562) (:by |root) (:text |:display)
                                            |j $ %{} :Leaf (:at 1509768884576) (:by |root) (:text |:inline-block)
                                    |v $ %{} :Expr (:at 1509769044554) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1509769045038) (:by |root) (:text |if)
                                        |j $ %{} :Expr (:at 1509769045553) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1509769047034) (:by |root) (:text |every?)
                                            |b $ %{} :Expr (:at 1629135948265) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1629135948265) (:by |qvLe3TKxz) (:text |:data)
                                                |j $ %{} :Leaf (:at 1629135948265) (:by |qvLe3TKxz) (:text |expr)
                                            |j $ %{} :Expr (:at 1509769072145) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1509769072445) (:by |root) (:text |fn)
                                                |j $ %{} :Expr (:at 1509769073671) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1509769076220) (:by |root) (:text |entry)
                                                |r $ %{} :Expr (:at 1509769085579) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1509769086705) (:by |root) (:text |=)
                                                    |j $ %{} :Leaf (:at 1509769093782) (:by |root) (:text |:leaf)
                                                    |r $ %{} :Expr (:at 1509769094133) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1509769096466) (:by |root) (:text |:type)
                                                        |j $ %{} :Expr (:at 1509769096721) (:by |root)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1629135597282) (:by |qvLe3TKxz) (:text |last)
                                                            |j $ %{} :Leaf (:at 1509769100372) (:by |root) (:text |entry)
                                        |r $ %{} :Expr (:at 1509769112730) (:by |root)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1509769113378) (:by |root) (:text |{})
                                            |T $ %{} :Expr (:at 1509769103400) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1509769106815) (:by |root) (:text |:display)
                                                |j $ %{} :Leaf (:at 1509769109422) (:by |root) (:text |:inline-block)
                                            |j $ %{} :Expr (:at 1509769114128) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1509769121758) (:by |root) (:text |:border-width)
                                                |j $ %{} :Leaf (:at 1509769125051) (:by |root) (:text "||0 0 1px 0")
                                            |r $ %{} :Expr (:at 1509769242927) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1509769244242) (:by |root) (:text |:margin)
                                                |j $ %{} :Leaf (:at 1509769246903) (:by |root) (:text "||0 4px")
                        |n $ %{} :Expr (:at 1572777993107) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1572777995099) (:by |qvLe3TKxz) (:text |:title)
                            |j $ %{} :Leaf (:at 1572778000211) (:by |qvLe3TKxz) (:text "|\"Click to copy.")
                        |p $ %{} :Expr (:at 1572778063388) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1572778068588) (:by |qvLe3TKxz) (:text |:class-name)
                            |j $ %{} :Leaf (:at 1572778073134) (:by |qvLe3TKxz) (:text "|\"comp-expr")
                        |r $ %{} :Expr (:at 1572777393810) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1572777395737) (:by |qvLe3TKxz) (:text |:on-click)
                            |j $ %{} :Expr (:at 1572777396027) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1572777396300) (:by |qvLe3TKxz) (:text |fn)
                                |j $ %{} :Expr (:at 1572777397053) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1572777396814) (:by |qvLe3TKxz) (:text |e)
                                    |j $ %{} :Leaf (:at 1572777397858) (:by |qvLe3TKxz) (:text |d!)
                                |v $ %{} :Expr (:at 1572778518841) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1572778519596) (:by |qvLe3TKxz) (:text |let)
                                    |L $ %{} :Expr (:at 1572778519881) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Expr (:at 1572778520047) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1572778521737) (:by |qvLe3TKxz) (:text |code)
                                            |j $ %{} :Expr (:at 1572778524848) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1629135958778) (:by |qvLe3TKxz) (:text |format-cirru)
                                                |j $ %{} :Expr (:at 1572778524848) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1572778524848) (:by |qvLe3TKxz) (:text |tree->cirru)
                                                    |j $ %{} :Leaf (:at 1572778524848) (:by |qvLe3TKxz) (:text |expr)
                                    |P $ %{} :Expr (:at 1572778528180) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1572778528180) (:by |qvLe3TKxz) (:text |copy!)
                                        |j $ %{} :Leaf (:at 1572778530840) (:by |qvLe3TKxz) (:text |code)
                                    |T $ %{} :Expr (:at 1572778484341) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1572778487105) (:by |qvLe3TKxz) (:text |d!)
                                        |j $ %{} :Leaf (:at 1572778493953) (:by |qvLe3TKxz) (:text |action/create)
                                        |r $ %{} :Expr (:at 1572778494265) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1572778494696) (:by |qvLe3TKxz) (:text |{})
                                            |j $ %{} :Expr (:at 1572778495066) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1572778500039) (:by |qvLe3TKxz) (:text |:text)
                                                |j $ %{} :Expr (:at 1572778503673) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |D $ %{} :Leaf (:at 1572778504713) (:by |qvLe3TKxz) (:text |str)
                                                    |T $ %{} :Leaf (:at 1572778634300) (:by |qvLe3TKxz) (:text "|\"Copied! ")
                                                    |j $ %{} :Leaf (:at 1572778532734) (:by |qvLe3TKxz) (:text |code)
                                            |r $ %{} :Expr (:at 1572778512504) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1572778513557) (:by |qvLe3TKxz) (:text |:token)
                                                |j $ %{} :Leaf (:at 1572778534008) (:by |qvLe3TKxz) (:text |code)
                    |v $ %{} :Expr (:at 1509642875887) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629135313786) (:by |qvLe3TKxz) (:text |->)
                        |j $ %{} :Expr (:at 1509642879121) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1509642880382) (:by |root) (:text |:data)
                            |j $ %{} :Leaf (:at 1509642882123) (:by |root) (:text |expr)
                        |n $ %{} :Expr (:at 1629135315815) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1629135317258) (:by |qvLe3TKxz) (:text |.to-list)
                        |r $ %{} :Expr (:at 1509643122704) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1629135591085) (:by |qvLe3TKxz) (:text |.sort-by)
                            |j $ %{} :Leaf (:at 1509643132815) (:by |root) (:text |first)
                        |v $ %{} :Expr (:at 1509643133787) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1509768804624) (:by |root) (:text |map-indexed)
                            |j $ %{} :Expr (:at 1509643140897) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1509643141300) (:by |root) (:text |fn)
                                |j $ %{} :Expr (:at 1509643141595) (:by |root)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1509768807161) (:by |root) (:text |idx)
                                    |T $ %{} :Leaf (:at 1509643143881) (:by |root) (:text |entry)
                                |r $ %{} :Expr (:at 1509643144620) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1629135322202) (:by |qvLe3TKxz) (:text |let-sugar)
                                    |j $ %{} :Expr (:at 1509643146729) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Expr (:at 1509643146881) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Expr (:at 1509643147278) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1509643147677) (:by |root) (:text |[])
                                                |j $ %{} :Leaf (:at 1509643148772) (:by |root) (:text |k)
                                                |r $ %{} :Leaf (:at 1509643151149) (:by |root) (:text |child)
                                            |j $ %{} :Leaf (:at 1509643155377) (:by |root) (:text |entry)
                                    |r $ %{} :Expr (:at 1509643156363) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1509643157458) (:by |root) (:text |[])
                                        |j $ %{} :Leaf (:at 1509643158502) (:by |root) (:text |k)
                                        |r $ %{} :Expr (:at 1509643163501) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1509643164391) (:by |root) (:text |if)
                                            |j $ %{} :Expr (:at 1509643165754) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1509643166234) (:by |root) (:text |=)
                                                |j $ %{} :Leaf (:at 1509643169178) (:by |root) (:text |:expr)
                                                |r $ %{} :Expr (:at 1509643169780) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1509643170669) (:by |root) (:text |:type)
                                                    |j $ %{} :Leaf (:at 1509643184607) (:by |root) (:text |child)
                                            |r $ %{} :Expr (:at 1509643175364) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1509643176896) (:by |root) (:text |comp-expr)
                                                |j $ %{} :Leaf (:at 1509643182550) (:by |root) (:text |child)
                                                |r $ %{} :Expr (:at 1509768857465) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1509768857688) (:by |root) (:text |=)
                                                    |j $ %{} :Leaf (:at 1509768859414) (:by |root) (:text |idx)
                                                    |r $ %{} :Expr (:at 1509768859971) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1509768860497) (:by |root) (:text |dec)
                                                        |j $ %{} :Expr (:at 1509768861076) (:by |root)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1509768861714) (:by |root) (:text |count)
                                                            |j $ %{} :Expr (:at 1509768862263) (:by |root)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1509768862853) (:by |root) (:text |:data)
                                                                |j $ %{} :Leaf (:at 1509768863915) (:by |root) (:text |expr)
                                            |v $ %{} :Expr (:at 1509643187436) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1509643189491) (:by |root) (:text |<>)
                                                |j $ %{} :Expr (:at 1509643190429) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1509643195409) (:by |root) (:text |:text)
                                                    |j $ %{} :Leaf (:at 1509643199543) (:by |root) (:text |child)
                                                |r $ %{} :Expr (:at 1509643228596) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1509643229713) (:by |root) (:text |{})
                                                    |j $ %{} :Expr (:at 1509643229967) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1509643234408) (:by |root) (:text |:margin-right)
                                                        |j $ %{} :Leaf (:at 1509643236895) (:by |root) (:text |8)
          |style-expr $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
              :data $ {}
                |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |def)
                |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |style-expr)
                |r $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |{})
                    |j $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:background-color)
                        |j $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |hsl)
                            |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |300)
                            |r $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |0)
                            |v $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |94)
                    |r $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:border)
                        |j $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |str)
                            |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text "||1px solid ")
                            |r $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |hsl)
                                |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |0)
                                |r $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |0)
                                |v $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |70)
                    |v $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:border-width)
                        |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text "||0 0 0 1px")
                    |y $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:padding)
                        |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text "||2px 16px")
                    |yT $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:font-family)
                        |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text "||Source Code Pro, menlo")
                    |yj $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:line-height)
                        |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text ||16px)
                    |yr $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:margin-bottom)
                        |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |2)
                    |yv $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:vertical-align)
                        |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:top)
                    |yx $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:min-height)
                        |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |16)
                    |yy $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:min-width)
                        |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |32)
                    |yyT $ %{} :Expr (:at 1572777390672) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |:font-size)
                        |j $ %{} :Leaf (:at 1572777390672) (:by |qvLe3TKxz) (:text |13)
                    |yyj $ %{} :Expr (:at 1572778007173) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572778008807) (:by |qvLe3TKxz) (:text |:cursor)
                        |j $ %{} :Leaf (:at 1572778011434) (:by |qvLe3TKxz) (:text |:pointer)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1509555543400) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1509555543400) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1509555543400) (:by |root) (:text |app.comp.expr)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1629135235228) (:by |qvLe3TKxz) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |hsl)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1520437433993) (:by |root) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ui)
                  |v $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1561260993043) (:by |qvLe3TKxz) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                          |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |<>)
                          |t $ %{} :Leaf (:at 1509555471438) (:by |root) (:text |list->)
                          |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                          |x $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |button)
                          |y $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |span)
                          |yT $ %{} :Leaf (:at 1508429846685) (:by |root) (:text |input)
                          |yj $ %{} :Leaf (:at 1509554773369) (:by |root) (:text |pre)
                  |x $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.comp.space)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |=<)
                  |y $ %{} :Expr (:at 1572777540548) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572777540863) (:by |qvLe3TKxz) (:text |[])
                      |j $ %{} :Leaf (:at 1572777542482) (:by |qvLe3TKxz) (:text |app.util)
                      |r $ %{} :Leaf (:at 1572777543397) (:by |qvLe3TKxz) (:text |:refer)
                      |v $ %{} :Expr (:at 1572777543595) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572777543850) (:by |qvLe3TKxz) (:text |[])
                          |j $ %{} :Leaf (:at 1572777544257) (:by |qvLe3TKxz) (:text |tree->cirru)
                  |yT $ %{} :Expr (:at 1572777606753) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572777607062) (:by |qvLe3TKxz) (:text |[])
                      |j $ %{} :Leaf (:at 1572777607837) (:by |qvLe3TKxz) (:text "|\"copy-to-clipboard")
                      |r $ %{} :Leaf (:at 1629135539508) (:by |qvLe3TKxz) (:text |:default)
                      |v $ %{} :Leaf (:at 1572777614019) (:by |qvLe3TKxz) (:text |copy!)
                  |yj $ %{} :Expr (:at 1572778448382) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572778448722) (:by |qvLe3TKxz) (:text |[])
                      |j $ %{} :Leaf (:at 1572778462892) (:by |qvLe3TKxz) (:text |respo-message.action)
                      |r $ %{} :Leaf (:at 1572778475662) (:by |qvLe3TKxz) (:text |:as)
                      |v $ %{} :Leaf (:at 1572778477218) (:by |qvLe3TKxz) (:text |action)
      |app.comp.file $ {}
        :defs $ {}
          |comp-file $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1509554488853) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1509554494012) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1509554488853) (:by |root) (:text |comp-file)
                |r $ %{} :Expr (:at 1509554488853) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1509554500539) (:by |root) (:text |filename)
                    |j $ %{} :Leaf (:at 1509554753042) (:by |root) (:text |file-info)
                |v $ %{} :Expr (:at 1509554506156) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1509554507620) (:by |root) (:text |div)
                    |j $ %{} :Expr (:at 1509554527968) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1509554528294) (:by |root) (:text |{})
                        |j $ %{} :Expr (:at 1509554672492) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1509554675500) (:by |root) (:text |:style)
                            |j $ %{} :Expr (:at 1509643371475) (:by |root)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1509643372486) (:by |root) (:text |merge)
                                |T $ %{} :Leaf (:at 1509554842026) (:by |root) (:text |ui/row)
                                |j $ %{} :Expr (:at 1509643373411) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1509643373694) (:by |root) (:text |{})
                                    |j $ %{} :Expr (:at 1509643374371) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1509643376466) (:by |root) (:text |:border-left)
                                        |j $ %{} :Expr (:at 1509643376734) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1509643377689) (:by |root) (:text |str)
                                            |j $ %{} :Leaf (:at 1509643381686) (:by |root) (:text "||1px solid ")
                                            |r $ %{} :Expr (:at 1509643382409) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1509643382853) (:by |root) (:text |hsl)
                                                |j $ %{} :Leaf (:at 1509643383472) (:by |root) (:text |0)
                                                |r $ %{} :Leaf (:at 1509643383663) (:by |root) (:text |0)
                                                |v $ %{} :Leaf (:at 1509643384682) (:by |root) (:text |70)
                                    |r $ %{} :Expr (:at 1509643389954) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1509643393889) (:by |root) (:text |:padding-left)
                                        |j $ %{} :Leaf (:at 1509816541725) (:by |root) (:text |8)
                                    |v $ %{} :Expr (:at 1509555900902) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1509555905190) (:by |root) (:text |:font-family)
                                        |j $ %{} :Leaf (:at 1509555914202) (:by |root) (:text "||Source Code Pro, menlo")
                    |v $ %{} :Expr (:at 1509554657605) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1509554658456) (:by |root) (:text |<>)
                        |j $ %{} :Leaf (:at 1509554659725) (:by |root) (:text |filename)
                    |x $ %{} :Expr (:at 1509554679790) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1509554680923) (:by |root) (:text |=<)
                        |j $ %{} :Leaf (:at 1509554685451) (:by |root) (:text |16)
                        |r $ %{} :Leaf (:at 1509554681780) (:by |root) (:text |nil)
                    |y $ %{} :Expr (:at 1509554834867) (:by |root)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1509554836415) (:by |root) (:text |div)
                        |L $ %{} :Expr (:at 1509554836638) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1509554837009) (:by |root) (:text |{})
                        |T $ %{} :Expr (:at 1509554701042) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1509554711203) (:by |root) (:text |div)
                            |j $ %{} :Expr (:at 1509554711420) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1509554712025) (:by |root) (:text |{})
                                |j $ %{} :Expr (:at 1509554712240) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1509554713787) (:by |root) (:text |:style)
                                    |j $ %{} :Expr (:at 1509816215668) (:by |root)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1509816220764) (:by |root) (:text |merge)
                                        |T $ %{} :Leaf (:at 1561264093894) (:by |qvLe3TKxz) (:text |ui/column)
                                        |j $ %{} :Expr (:at 1509816221235) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1509816221591) (:by |root) (:text |{})
                                            |j $ %{} :Expr (:at 1509816221794) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1509816226135) (:by |root) (:text |:border-left)
                                                |j $ %{} :Expr (:at 1509816226419) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1509816227964) (:by |root) (:text |str)
                                                    |j $ %{} :Leaf (:at 1509816230832) (:by |root) (:text "||1px solid ")
                                                    |r $ %{} :Expr (:at 1509816231649) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1509816232100) (:by |root) (:text |hsl)
                                                        |j $ %{} :Leaf (:at 1509816233142) (:by |root) (:text |0)
                                                        |r $ %{} :Leaf (:at 1509816233471) (:by |root) (:text |0)
                                                        |v $ %{} :Leaf (:at 1509816234303) (:by |root) (:text |80)
                                            |r $ %{} :Expr (:at 1509816252512) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1509816257488) (:by |root) (:text |:padding-left)
                                                |j $ %{} :Leaf (:at 1509816259937) (:by |root) (:text |8)
                            |r $ %{} :Expr (:at 1509554715554) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1509554717328) (:by |root) (:text |<>)
                                |j $ %{} :Leaf (:at 1561263937033) (:by |qvLe3TKxz) (:text |:ns)
                                |r $ %{} :Expr (:at 1561264208100) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1561264208994) (:by |qvLe3TKxz) (:text |{})
                                    |j $ %{} :Expr (:at 1561264210426) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1561264210833) (:by |qvLe3TKxz) (:text |:color)
                                        |j $ %{} :Expr (:at 1561264210833) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1561264210833) (:by |qvLe3TKxz) (:text |hsl)
                                            |j $ %{} :Leaf (:at 1561264210833) (:by |qvLe3TKxz) (:text |0)
                                            |r $ %{} :Leaf (:at 1561264210833) (:by |qvLe3TKxz) (:text |0)
                                            |v $ %{} :Leaf (:at 1561264210833) (:by |qvLe3TKxz) (:text |70)
                            |y $ %{} :Expr (:at 1509555628498) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1509555630501) (:by |root) (:text |comp-expr)
                                |j $ %{} :Expr (:at 1509555630964) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1509555631791) (:by |root) (:text |:ns)
                                    |j $ %{} :Leaf (:at 1509555633017) (:by |root) (:text |file-info)
                                |r $ %{} :Leaf (:at 1520437652557) (:by |root) (:text |false)
                        |f $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |list->)
                            |r $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |{})
                                |j $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |:style)
                                    |j $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |{})
                                        |j $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |:border-left)
                                            |j $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |str)
                                                |j $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text "||1px solid ")
                                                |r $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |hsl)
                                                    |j $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |0)
                                                    |r $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |0)
                                                    |v $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |70)
                                        |r $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |:padding-left)
                                            |j $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |16)
                                        |v $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |:margin-bottom)
                                            |j $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |2)
                            |v $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1629135330352) (:by |qvLe3TKxz) (:text |->)
                                |j $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |:defs)
                                    |j $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |file-info)
                                |n $ %{} :Expr (:at 1629135331565) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1629135333797) (:by |qvLe3TKxz) (:text |.to-list)
                                |r $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |map)
                                    |j $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |fn)
                                        |j $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |entry)
                                        |r $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1629135336412) (:by |qvLe3TKxz) (:text |let-sugar)
                                            |j $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |[])
                                                        |j $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |def-name)
                                                        |r $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |def-info)
                                                    |j $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |entry)
                                            |r $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |[])
                                                |j $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |def-name)
                                                |r $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |div)
                                                    |j $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |{})
                                                        |j $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |:style)
                                                            |j $ %{} :Leaf (:at 1561264087377) (:by |qvLe3TKxz) (:text |ui/column)
                                                    |r $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |<>)
                                                        |j $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |def-name)
                                                        |r $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |{})
                                                            |j $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |:white-space)
                                                                |j $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |:nowrap)
                                                            |r $ %{} :Expr (:at 1561264190132) (:by |qvLe3TKxz)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1561264190132) (:by |qvLe3TKxz) (:text |:color)
                                                                |j $ %{} :Expr (:at 1561264190132) (:by |qvLe3TKxz)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1561264190132) (:by |qvLe3TKxz) (:text |hsl)
                                                                    |j $ %{} :Leaf (:at 1561264190132) (:by |qvLe3TKxz) (:text |0)
                                                                    |r $ %{} :Leaf (:at 1561264190132) (:by |qvLe3TKxz) (:text |0)
                                                                    |v $ %{} :Leaf (:at 1561264190132) (:by |qvLe3TKxz) (:text |70)
                                                    |x $ %{} :Expr (:at 1561263925643) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |comp-expr)
                                                        |j $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |def-info)
                                                        |r $ %{} :Leaf (:at 1561263925643) (:by |qvLe3TKxz) (:text |false)
                        |j $ %{} :Expr (:at 1509554701042) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1509554711203) (:by |root) (:text |div)
                            |j $ %{} :Expr (:at 1509554711420) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1509554712025) (:by |root) (:text |{})
                                |j $ %{} :Expr (:at 1509554712240) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1509554713787) (:by |root) (:text |:style)
                                    |j $ %{} :Expr (:at 1509816264164) (:by |root)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1509816265130) (:by |root) (:text |merge)
                                        |T $ %{} :Leaf (:at 1561264098864) (:by |qvLe3TKxz) (:text |ui/column)
                                        |j $ %{} :Expr (:at 1509816221235) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1509816221591) (:by |root) (:text |{})
                                            |j $ %{} :Expr (:at 1509816221794) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1509816226135) (:by |root) (:text |:border-left)
                                                |j $ %{} :Expr (:at 1509816226419) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1509816227964) (:by |root) (:text |str)
                                                    |j $ %{} :Leaf (:at 1509816230832) (:by |root) (:text "||1px solid ")
                                                    |r $ %{} :Expr (:at 1509816231649) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1509816232100) (:by |root) (:text |hsl)
                                                        |j $ %{} :Leaf (:at 1509816233142) (:by |root) (:text |0)
                                                        |r $ %{} :Leaf (:at 1509816233471) (:by |root) (:text |0)
                                                        |v $ %{} :Leaf (:at 1509816234303) (:by |root) (:text |80)
                                            |r $ %{} :Expr (:at 1509816252512) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1509816257488) (:by |root) (:text |:padding-left)
                                                |j $ %{} :Leaf (:at 1509816259937) (:by |root) (:text |8)
                            |r $ %{} :Expr (:at 1509554715554) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1509554717328) (:by |root) (:text |<>)
                                |j $ %{} :Leaf (:at 1561263943206) (:by |qvLe3TKxz) (:text |:proc)
                                |r $ %{} :Expr (:at 1561264171715) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1561264173210) (:by |qvLe3TKxz) (:text |{})
                                    |j $ %{} :Expr (:at 1561264173495) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1561264175719) (:by |qvLe3TKxz) (:text |:color)
                                        |j $ %{} :Expr (:at 1561264175987) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1561264176421) (:by |qvLe3TKxz) (:text |hsl)
                                            |j $ %{} :Leaf (:at 1561264177792) (:by |qvLe3TKxz) (:text |0)
                                            |r $ %{} :Leaf (:at 1561264178627) (:by |qvLe3TKxz) (:text |0)
                                            |v $ %{} :Leaf (:at 1561264179690) (:by |qvLe3TKxz) (:text |70)
                            |y $ %{} :Expr (:at 1509555620007) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1509555622227) (:by |root) (:text |comp-expr)
                                |j $ %{} :Expr (:at 1509555622586) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1509555623277) (:by |root) (:text |:proc)
                                    |j $ %{} :Leaf (:at 1509555624637) (:by |root) (:text |file-info)
                                |r $ %{} :Leaf (:at 1520437660659) (:by |root) (:text |false)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1509554484375) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1509554484375) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1509554484375) (:by |root) (:text |app.comp.file)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1629135226230) (:by |qvLe3TKxz) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |hsl)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1520437442937) (:by |root) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ui)
                  |v $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1561260960880) (:by |qvLe3TKxz) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                          |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |<>)
                          |t $ %{} :Leaf (:at 1509555471438) (:by |root) (:text |list->)
                          |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                          |x $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |button)
                          |y $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |span)
                          |yT $ %{} :Leaf (:at 1508429846685) (:by |root) (:text |input)
                          |yj $ %{} :Leaf (:at 1509554773369) (:by |root) (:text |pre)
                  |x $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.comp.space)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |=<)
                  |y $ %{} :Expr (:at 1509555589943) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1509555591417) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1509555593603) (:by |root) (:text |app.comp.expr)
                      |r $ %{} :Leaf (:at 1509555594384) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1509555594536) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509555594734) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1509555597682) (:by |root) (:text |comp-expr)
      |app.comp.graph $ {}
        :configs $ {}
        :defs $ {}
          |comp-graph $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1630773924806) (:by |qvLe3TKxz)
              :data $ {}
                |T $ %{} :Leaf (:at 1630773927456) (:by |qvLe3TKxz) (:text |defcomp)
                |j $ %{} :Leaf (:at 1630773924806) (:by |qvLe3TKxz) (:text |comp-graph)
                |r $ %{} :Expr (:at 1630773924806) (:by |qvLe3TKxz)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1630781022120) (:by |qvLe3TKxz) (:text |states)
                    |T $ %{} :Leaf (:at 1630773935251) (:by |qvLe3TKxz) (:text |snapshot)
                |v $ %{} :Expr (:at 1630781034493) (:by |qvLe3TKxz)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1630781035819) (:by |qvLe3TKxz) (:text |let)
                    |L $ %{} :Expr (:at 1630781036030) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Expr (:at 1630781036201) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1630781037186) (:by |qvLe3TKxz) (:text |cursor)
                            |j $ %{} :Expr (:at 1630781037399) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630781038443) (:by |qvLe3TKxz) (:text |:cursor)
                                |j $ %{} :Leaf (:at 1630781039120) (:by |qvLe3TKxz) (:text |states)
                        |b $ %{} :Expr (:at 1630782108119) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1630782108119) (:by |qvLe3TKxz) (:text |configs)
                            |j $ %{} :Expr (:at 1630782108119) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630782108119) (:by |qvLe3TKxz) (:text |:configs)
                                |j $ %{} :Leaf (:at 1630782108119) (:by |qvLe3TKxz) (:text |snapshot)
                        |j $ %{} :Expr (:at 1630781040196) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1630781040723) (:by |qvLe3TKxz) (:text |state)
                            |j $ %{} :Expr (:at 1630781040961) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630781041294) (:by |qvLe3TKxz) (:text |or)
                                |j $ %{} :Expr (:at 1630781043607) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630781045184) (:by |qvLe3TKxz) (:text |:data)
                                    |j $ %{} :Leaf (:at 1630781046208) (:by |qvLe3TKxz) (:text |states)
                                |r $ %{} :Expr (:at 1630781046777) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630781047170) (:by |qvLe3TKxz) (:text |{})
                                    |j $ %{} :Expr (:at 1630781047566) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630781053794) (:by |qvLe3TKxz) (:text |:graph)
                                        |j $ %{} :Leaf (:at 1630781055170) (:by |qvLe3TKxz) (:text |nil)
                                    |r $ %{} :Expr (:at 1630782088905) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630782093558) (:by |qvLe3TKxz) (:text |:init-fn)
                                        |j $ %{} :Expr (:at 1630782096867) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630782096867) (:by |qvLe3TKxz) (:text |:init-fn)
                                            |j $ %{} :Leaf (:at 1630782096867) (:by |qvLe3TKxz) (:text |configs)
                        |v $ %{} :Expr (:at 1630781072978) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1630781072978) (:by |qvLe3TKxz) (:text |entry)
                            |j $ %{} :Expr (:at 1630781072978) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630781072978) (:by |qvLe3TKxz) (:text |.split)
                                |j $ %{} :Expr (:at 1630781072978) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630781072978) (:by |qvLe3TKxz) (:text |:init-fn)
                                    |j $ %{} :Leaf (:at 1630782100248) (:by |qvLe3TKxz) (:text |state)
                                |r $ %{} :Leaf (:at 1630782136133) (:by |qvLe3TKxz) (:text "|\"/")
                        |x $ %{} :Expr (:at 1630781072978) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1630781072978) (:by |qvLe3TKxz) (:text |ir)
                            |j $ %{} :Expr (:at 1630781072978) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630781072978) (:by |qvLe3TKxz) (:text |:ir)
                                |j $ %{} :Leaf (:at 1630781072978) (:by |qvLe3TKxz) (:text |snapshot)
                    |T $ %{} :Expr (:at 1630773938888) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1630773940228) (:by |qvLe3TKxz) (:text |div)
                        |j $ %{} :Expr (:at 1630773940659) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1630773941093) (:by |qvLe3TKxz) (:text |{})
                            |j $ %{} :Expr (:at 1630774036067) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630774038505) (:by |qvLe3TKxz) (:text |:style)
                                |j $ %{} :Expr (:at 1630774057701) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1630774058554) (:by |qvLe3TKxz) (:text |merge)
                                    |T $ %{} :Leaf (:at 1630774043989) (:by |qvLe3TKxz) (:text |ui/expand)
                                    |b $ %{} :Leaf (:at 1630781919282) (:by |qvLe3TKxz) (:text |ui/column)
                                    |j $ %{} :Expr (:at 1630774058975) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1630774062280) (:by |qvLe3TKxz) (:text |{})
                        |n $ %{} :Expr (:at 1630773967221) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1630773967810) (:by |qvLe3TKxz) (:text |div)
                            |j $ %{} :Expr (:at 1630773968053) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630773968455) (:by |qvLe3TKxz) (:text |{})
                                |j $ %{} :Expr (:at 1630781927354) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630781929583) (:by |qvLe3TKxz) (:text |:style)
                                    |j $ %{} :Expr (:at 1630781929853) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630781930202) (:by |qvLe3TKxz) (:text |{})
                                        |j $ %{} :Expr (:at 1630781930453) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630781932619) (:by |qvLe3TKxz) (:text |:border-bottom)
                                            |j $ %{} :Expr (:at 1630781932955) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1630781933447) (:by |qvLe3TKxz) (:text |str)
                                                |j $ %{} :Leaf (:at 1630781936511) (:by |qvLe3TKxz) (:text "|\"1px solid ")
                                                |r $ %{} :Expr (:at 1630781937399) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630781938526) (:by |qvLe3TKxz) (:text |hsl)
                                                    |j $ %{} :Leaf (:at 1630781938955) (:by |qvLe3TKxz) (:text |0)
                                                    |r $ %{} :Leaf (:at 1630781939369) (:by |qvLe3TKxz) (:text |0)
                                                    |v $ %{} :Leaf (:at 1630781939881) (:by |qvLe3TKxz) (:text |90)
                                        |r $ %{} :Expr (:at 1630781943055) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630781945462) (:by |qvLe3TKxz) (:text |:padding)
                                            |j $ %{} :Leaf (:at 1630781979001) (:by |qvLe3TKxz) (:text "|\"8px 4px")
                            |r $ %{} :Expr (:at 1630773968906) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630773971416) (:by |qvLe3TKxz) (:text |button)
                                |j $ %{} :Expr (:at 1630773972091) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630773972424) (:by |qvLe3TKxz) (:text |{})
                                    |b $ %{} :Expr (:at 1630774048504) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630774049217) (:by |qvLe3TKxz) (:text |:style)
                                        |j $ %{} :Leaf (:at 1630774054765) (:by |qvLe3TKxz) (:text |ui/button)
                                    |j $ %{} :Expr (:at 1630773975517) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630773977283) (:by |qvLe3TKxz) (:text |:inner-text)
                                        |j $ %{} :Leaf (:at 1630773978586) (:by |qvLe3TKxz) (:text "|\"Button")
                                    |r $ %{} :Expr (:at 1630773980058) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630773982706) (:by |qvLe3TKxz) (:text |:on-click)
                                        |j $ %{} :Expr (:at 1630773983017) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630773983368) (:by |qvLe3TKxz) (:text |fn)
                                            |j $ %{} :Expr (:at 1630773983741) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1630773983918) (:by |qvLe3TKxz) (:text |e)
                                                |j $ %{} :Leaf (:at 1630773984388) (:by |qvLe3TKxz) (:text |d!)
                                            |q $ %{} :Expr (:at 1630775783826) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |D $ %{} :Leaf (:at 1630781088925) (:by |qvLe3TKxz) (:text |;)
                                                |T $ %{} :Leaf (:at 1630775792653) (:by |qvLe3TKxz) (:text |js/console.log)
                                                |j $ %{} :Leaf (:at 1630775796264) (:by |qvLe3TKxz) (:text |snapshot)
                                            |u $ %{} :Expr (:at 1630775807175) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1630781077641) (:by |qvLe3TKxz) (:text |d!)
                                                |f $ %{} :Leaf (:at 1630781081076) (:by |qvLe3TKxz) (:text |cursor)
                                                |r $ %{} :Expr (:at 1630781081529) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |D $ %{} :Leaf (:at 1630781083196) (:by |qvLe3TKxz) (:text |assoc)
                                                    |H $ %{} :Leaf (:at 1630781220523) (:by |qvLe3TKxz) (:text |state)
                                                    |L $ %{} :Leaf (:at 1630781084463) (:by |qvLe3TKxz) (:text |:graph)
                                                    |T $ %{} :Expr (:at 1630775810128) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1630775810128) (:by |qvLe3TKxz) (:text |build-deps-graph)
                                                        |j $ %{} :Expr (:at 1630775892719) (:by |qvLe3TKxz)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1630775893230) (:by |qvLe3TKxz) (:text |nth)
                                                            |j $ %{} :Leaf (:at 1630775895278) (:by |qvLe3TKxz) (:text |entry)
                                                            |r $ %{} :Leaf (:at 1630775895545) (:by |qvLe3TKxz) (:text |0)
                                                        |r $ %{} :Expr (:at 1630775897478) (:by |qvLe3TKxz)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1630775899432) (:by |qvLe3TKxz) (:text |nth)
                                                            |j $ %{} :Leaf (:at 1630775900564) (:by |qvLe3TKxz) (:text |entry)
                                                            |r $ %{} :Leaf (:at 1630775900965) (:by |qvLe3TKxz) (:text |1)
                                                        |v $ %{} :Expr (:at 1630775850797) (:by |qvLe3TKxz)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1630775851390) (:by |qvLe3TKxz) (:text |:files)
                                                            |j $ %{} :Leaf (:at 1630775852151) (:by |qvLe3TKxz) (:text |ir)
                                                        |x $ %{} :Expr (:at 1630775854747) (:by |qvLe3TKxz)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1630775856953) (:by |qvLe3TKxz) (:text |:package)
                                                            |j $ %{} :Leaf (:at 1630775857585) (:by |qvLe3TKxz) (:text |ir)
                            |v $ %{} :Expr (:at 1630782166456) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630782170271) (:by |qvLe3TKxz) (:text |=<)
                                |j $ %{} :Leaf (:at 1630782172671) (:by |qvLe3TKxz) (:text |8)
                                |r $ %{} :Leaf (:at 1630782228928) (:by |qvLe3TKxz) (:text |nil)
                            |x $ %{} :Expr (:at 1630782174389) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630782176396) (:by |qvLe3TKxz) (:text |input)
                                |j $ %{} :Expr (:at 1630782176748) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630782177315) (:by |qvLe3TKxz) (:text |{})
                                    |j $ %{} :Expr (:at 1630782177618) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630782186883) (:by |qvLe3TKxz) (:text |:value)
                                        |j $ %{} :Expr (:at 1630782187201) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630782189245) (:by |qvLe3TKxz) (:text |:init-fn)
                                            |j $ %{} :Leaf (:at 1630782190556) (:by |qvLe3TKxz) (:text |state)
                                    |r $ %{} :Expr (:at 1630782191435) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630782193280) (:by |qvLe3TKxz) (:text |:style)
                                        |j $ %{} :Leaf (:at 1630782195131) (:by |qvLe3TKxz) (:text |ui/input)
                                    |v $ %{} :Expr (:at 1630782195524) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630782197904) (:by |qvLe3TKxz) (:text |:on-input)
                                        |j $ %{} :Expr (:at 1630782198228) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630782198629) (:by |qvLe3TKxz) (:text |fn)
                                            |j $ %{} :Expr (:at 1630782198872) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1630782201465) (:by |qvLe3TKxz) (:text |e)
                                                |j $ %{} :Leaf (:at 1630782200626) (:by |qvLe3TKxz) (:text |d!)
                                            |r $ %{} :Expr (:at 1630782202263) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1630782202806) (:by |qvLe3TKxz) (:text |d!)
                                                |j $ %{} :Leaf (:at 1630782204343) (:by |qvLe3TKxz) (:text |cursor)
                                                |r $ %{} :Expr (:at 1630782204591) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630782206053) (:by |qvLe3TKxz) (:text |assoc)
                                                    |j $ %{} :Leaf (:at 1630782206784) (:by |qvLe3TKxz) (:text |state)
                                                    |r $ %{} :Leaf (:at 1630782212122) (:by |qvLe3TKxz) (:text |:init-fn)
                                                    |v $ %{} :Expr (:at 1630782215527) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1630782216678) (:by |qvLe3TKxz) (:text |:value)
                                                        |j $ %{} :Leaf (:at 1630782217098) (:by |qvLe3TKxz) (:text |e)
                        |t $ %{} :Expr (:at 1630781901920) (:by |qvLe3TKxz)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1630781902822) (:by |qvLe3TKxz) (:text |div)
                            |L $ %{} :Expr (:at 1630781903070) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630781903426) (:by |qvLe3TKxz) (:text |{})
                                |j $ %{} :Expr (:at 1630781903684) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630781904888) (:by |qvLe3TKxz) (:text |:style)
                                    |j $ %{} :Expr (:at 1630782047956) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1630782049733) (:by |qvLe3TKxz) (:text |merge)
                                        |T $ %{} :Leaf (:at 1630781906900) (:by |qvLe3TKxz) (:text |ui/expand)
                                        |j $ %{} :Expr (:at 1630782050538) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630782050895) (:by |qvLe3TKxz) (:text |{})
                                            |j $ %{} :Expr (:at 1630782051840) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1630782053508) (:by |qvLe3TKxz) (:text |:padding)
                                                |j $ %{} :Leaf (:at 1630782055764) (:by |qvLe3TKxz) (:text "|\"8px")
                            |T $ %{} :Expr (:at 1630781111444) (:by |qvLe3TKxz)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1630781112425) (:by |qvLe3TKxz) (:text |if)
                                |L $ %{} :Expr (:at 1630781112631) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630781113449) (:by |qvLe3TKxz) (:text |some?)
                                    |j $ %{} :Expr (:at 1630781119902) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630781120717) (:by |qvLe3TKxz) (:text |:graph)
                                        |j $ %{} :Leaf (:at 1630781122304) (:by |qvLe3TKxz) (:text |state)
                                |T $ %{} :Expr (:at 1630781105477) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630781110484) (:by |qvLe3TKxz) (:text |comp-graph-tree)
                                    |j $ %{} :Expr (:at 1630781134982) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630781136715) (:by |qvLe3TKxz) (:text |nth)
                                        |j $ %{} :Leaf (:at 1630781140767) (:by |qvLe3TKxz) (:text |entry)
                                        |r $ %{} :Leaf (:at 1630781141379) (:by |qvLe3TKxz) (:text |0)
                                    |r $ %{} :Expr (:at 1630781142016) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630781144401) (:by |qvLe3TKxz) (:text |nth)
                                        |j $ %{} :Leaf (:at 1630781145062) (:by |qvLe3TKxz) (:text |entry)
                                        |r $ %{} :Leaf (:at 1630781145448) (:by |qvLe3TKxz) (:text |1)
                                    |v $ %{} :Expr (:at 1630781158192) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630781155237) (:by |qvLe3TKxz) (:text |:graph)
                                        |j $ %{} :Leaf (:at 1630781159565) (:by |qvLe3TKxz) (:text |state)
                                    |x $ %{} :Expr (:at 1630781365430) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630781368568) (:by |qvLe3TKxz) (:text |#{})
                                |j $ %{} :Expr (:at 1630781203265) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630781203039) (:by |qvLe3TKxz) (:text |<>)
                                    |j $ %{} :Leaf (:at 1630781208351) (:by |qvLe3TKxz) (:text "|\"no graph")
          |comp-graph-tree $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1630781162389) (:by |qvLe3TKxz)
              :data $ {}
                |T $ %{} :Leaf (:at 1630781163801) (:by |qvLe3TKxz) (:text |defcomp)
                |j $ %{} :Leaf (:at 1630781162389) (:by |qvLe3TKxz) (:text |comp-graph-tree)
                |r $ %{} :Expr (:at 1630781162389) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1630781182815) (:by |qvLe3TKxz) (:text |ns')
                    |j $ %{} :Leaf (:at 1630781176783) (:by |qvLe3TKxz) (:text |def')
                    |r $ %{} :Leaf (:at 1630781167541) (:by |qvLe3TKxz) (:text |dict)
                    |v $ %{} :Leaf (:at 1630781375199) (:by |qvLe3TKxz) (:text |footprints)
                |v $ %{} :Expr (:at 1630781385522) (:by |qvLe3TKxz)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1630781386041) (:by |qvLe3TKxz) (:text |let)
                    |L $ %{} :Expr (:at 1630781386326) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Expr (:at 1630781386490) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1630781389099) (:by |qvLe3TKxz) (:text |path)
                            |j $ %{} :Expr (:at 1630781390996) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630781390996) (:by |qvLe3TKxz) (:text |str)
                                |j $ %{} :Leaf (:at 1630781390996) (:by |qvLe3TKxz) (:text |ns')
                                |r $ %{} :Leaf (:at 1630781390996) (:by |qvLe3TKxz) (:text "|\"/")
                                |v $ %{} :Leaf (:at 1630781390996) (:by |qvLe3TKxz) (:text |def')
                    |T $ %{} :Expr (:at 1630781167960) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1630781257171) (:by |qvLe3TKxz) (:text |div)
                        |j $ %{} :Expr (:at 1630781257436) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1630781257791) (:by |qvLe3TKxz) (:text |{})
                            |j $ %{} :Expr (:at 1630781258677) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630781261246) (:by |qvLe3TKxz) (:text |:style)
                                |j $ %{} :Leaf (:at 1630781266505) (:by |qvLe3TKxz) (:text |ui/row)
                        |r $ %{} :Expr (:at 1630781267450) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1630781268313) (:by |qvLe3TKxz) (:text |div)
                            |j $ %{} :Expr (:at 1630781268538) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630781268890) (:by |qvLe3TKxz) (:text |{})
                                |j $ %{} :Expr (:at 1630781833244) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1630781834329) (:by |qvLe3TKxz) (:text |:style)
                                    |T $ %{} :Expr (:at 1630781835411) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1630781836447) (:by |qvLe3TKxz) (:text |{})
                                        |T $ %{} :Expr (:at 1630781825680) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630781826618) (:by |qvLe3TKxz) (:text |:margin)
                                            |j $ %{} :Leaf (:at 1630782302258) (:by |qvLe3TKxz) (:text "|\"0px 0")
                                        |j $ %{} :Expr (:at 1630782401428) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630782401428) (:by |qvLe3TKxz) (:text |:line-height)
                                            |j $ %{} :Leaf (:at 1630782401428) (:by |qvLe3TKxz) (:text "|\"20px")
                            |r $ %{} :Expr (:at 1630782276243) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text |<>)
                                |j $ %{} :Expr (:at 1630782276243) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text |str)
                                    |j $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text |ns')
                                    |r $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text "|\"/")
                                |r $ %{} :Expr (:at 1630782276243) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text |{})
                                    |j $ %{} :Expr (:at 1630782276243) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text |:color)
                                        |j $ %{} :Expr (:at 1630782276243) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text |hsl)
                                            |j $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text |0)
                                            |r $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text |0)
                                            |v $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text |70)
                                    |r $ %{} :Expr (:at 1630782276243) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text |:line-height)
                                        |j $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text "|\"14px")
                                    |v $ %{} :Expr (:at 1630782276243) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text |:font-size)
                                        |j $ %{} :Leaf (:at 1630782276243) (:by |qvLe3TKxz) (:text "|\"12px")
                            |v $ %{} :Expr (:at 1630782274230) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630782274230) (:by |qvLe3TKxz) (:text |<>)
                                |j $ %{} :Leaf (:at 1630782274230) (:by |qvLe3TKxz) (:text |def')
                                |r $ %{} :Expr (:at 1630782274230) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630782274230) (:by |qvLe3TKxz) (:text |{})
                                    |j $ %{} :Expr (:at 1630782274230) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630782274230) (:by |qvLe3TKxz) (:text |:line-height)
                                        |j $ %{} :Leaf (:at 1630782274230) (:by |qvLe3TKxz) (:text "|\"20px")
                                    |r $ %{} :Expr (:at 1630782502561) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630782507247) (:by |qvLe3TKxz) (:text |:font-family)
                                        |j $ %{} :Leaf (:at 1630782517205) (:by |qvLe3TKxz) (:text |ui/font-normal)
                        |v $ %{} :Expr (:at 1630781379717) (:by |qvLe3TKxz)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1630781380225) (:by |qvLe3TKxz) (:text |if)
                            |L $ %{} :Expr (:at 1630781380492) (:by |qvLe3TKxz)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1630781383176) (:by |qvLe3TKxz) (:text |.contains?)
                                |T $ %{} :Leaf (:at 1630781381038) (:by |qvLe3TKxz) (:text |footprints)
                                |j $ %{} :Leaf (:at 1630781395834) (:by |qvLe3TKxz) (:text |path)
                            |P $ %{} :Expr (:at 1630781405882) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630781411831) (:by |qvLe3TKxz) (:text |<>)
                                |j $ %{} :Leaf (:at 1630781414713) (:by |qvLe3TKxz) (:text "|\"Looped")
                                |r $ %{} :Expr (:at 1630782592243) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630782593565) (:by |qvLe3TKxz) (:text |{})
                                    |j $ %{} :Expr (:at 1630782593803) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630782595760) (:by |qvLe3TKxz) (:text |:display)
                                        |j $ %{} :Leaf (:at 1630782599775) (:by |qvLe3TKxz) (:text |:inline-block)
                                    |r $ %{} :Expr (:at 1630782601619) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630782603471) (:by |qvLe3TKxz) (:text |:margin)
                                        |j $ %{} :Leaf (:at 1630782610820) (:by |qvLe3TKxz) (:text "|\"0 4px")
                                    |v $ %{} :Expr (:at 1630782614943) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630782632553) (:by |qvLe3TKxz) (:text |:background-color)
                                        |j $ %{} :Expr (:at 1630782621116) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630782621502) (:by |qvLe3TKxz) (:text |hsl)
                                            |j $ %{} :Leaf (:at 1630782623572) (:by |qvLe3TKxz) (:text |40)
                                            |r $ %{} :Leaf (:at 1630782624957) (:by |qvLe3TKxz) (:text |80)
                                            |v $ %{} :Leaf (:at 1630782673512) (:by |qvLe3TKxz) (:text |60)
                                    |x $ %{} :Expr (:at 1630782638161) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630782640713) (:by |qvLe3TKxz) (:text |:padding)
                                        |j $ %{} :Leaf (:at 1630782645228) (:by |qvLe3TKxz) (:text "|\"0 6px")
                                    |y $ %{} :Expr (:at 1630782650092) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630782652890) (:by |qvLe3TKxz) (:text |:color)
                                        |j $ %{} :Leaf (:at 1630782655363) (:by |qvLe3TKxz) (:text |:white)
                                    |yT $ %{} :Expr (:at 1630782662145) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630782665537) (:by |qvLe3TKxz) (:text |:border-radius)
                                        |j $ %{} :Leaf (:at 1630782671283) (:by |qvLe3TKxz) (:text "|\"8px")
                            |T $ %{} :Expr (:at 1630781292663) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630781295067) (:by |qvLe3TKxz) (:text |let)
                                |j $ %{} :Expr (:at 1630781295518) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Expr (:at 1630781296653) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630781306819) (:by |qvLe3TKxz) (:text |deps)
                                        |j $ %{} :Expr (:at 1630781307103) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630781309113) (:by |qvLe3TKxz) (:text |get-in)
                                            |j $ %{} :Leaf (:at 1630781310078) (:by |qvLe3TKxz) (:text |dict)
                                            |r $ %{} :Expr (:at 1630781475910) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |D $ %{} :Leaf (:at 1630781476677) (:by |qvLe3TKxz) (:text |[])
                                                |T $ %{} :Leaf (:at 1630781311195) (:by |qvLe3TKxz) (:text |ns')
                                                |j $ %{} :Leaf (:at 1630781527626) (:by |qvLe3TKxz) (:text |def')
                                |r $ %{} :Expr (:at 1630781315117) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1630781315533) (:by |qvLe3TKxz) (:text |if)
                                    |j $ %{} :Expr (:at 1630781316101) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630781320264) (:by |qvLe3TKxz) (:text |list?)
                                        |j $ %{} :Leaf (:at 1630781318162) (:by |qvLe3TKxz) (:text |deps)
                                    |n $ %{} :Expr (:at 1630781325864) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1630781427545) (:by |qvLe3TKxz) (:text |div)
                                        |j $ %{} :Expr (:at 1630781331625) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630781331925) (:by |qvLe3TKxz) (:text |{})
                                            |j $ %{} :Expr (:at 1630781536350) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1630781538489) (:by |qvLe3TKxz) (:text |:style)
                                                |j $ %{} :Expr (:at 1630781538774) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630781539101) (:by |qvLe3TKxz) (:text |{})
                                                    |j $ %{} :Expr (:at 1630781539477) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1630781542101) (:by |qvLe3TKxz) (:text |:border-left)
                                                        |j $ %{} :Expr (:at 1630781542346) (:by |qvLe3TKxz)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1630781543200) (:by |qvLe3TKxz) (:text |str)
                                                            |j $ %{} :Leaf (:at 1630781547204) (:by |qvLe3TKxz) (:text "|\"1px solid ")
                                                            |r $ %{} :Expr (:at 1630781548463) (:by |qvLe3TKxz)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1630781549792) (:by |qvLe3TKxz) (:text |hsl)
                                                                |j $ %{} :Leaf (:at 1630781550115) (:by |qvLe3TKxz) (:text |0)
                                                                |r $ %{} :Leaf (:at 1630781550392) (:by |qvLe3TKxz) (:text |0)
                                                                |v $ %{} :Leaf (:at 1630781552722) (:by |qvLe3TKxz) (:text |90)
                                                    |r $ %{} :Expr (:at 1630781554143) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1630781555965) (:by |qvLe3TKxz) (:text |:padding)
                                                        |j $ %{} :Leaf (:at 1630781561818) (:by |qvLe3TKxz) (:text "|\"0 8px")
                                                    |v $ %{} :Expr (:at 1630781677410) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1630781678821) (:by |qvLe3TKxz) (:text |:margin)
                                                        |j $ %{} :Leaf (:at 1630781683118) (:by |qvLe3TKxz) (:text "|\"0 8px")
                                        |n $ %{} :Leaf (:at 1630781425707) (:by |qvLe3TKxz) (:text |&)
                                        |r $ %{} :Expr (:at 1630781333356) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630781334627) (:by |qvLe3TKxz) (:text |->)
                                            |j $ %{} :Leaf (:at 1630781337837) (:by |qvLe3TKxz) (:text |deps)
                                            |r $ %{} :Expr (:at 1630781339397) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1630781422524) (:by |qvLe3TKxz) (:text |map)
                                                |j $ %{} :Expr (:at 1630781432130) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630781432932) (:by |qvLe3TKxz) (:text |fn)
                                                    |j $ %{} :Expr (:at 1630781433479) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1630781434365) (:by |qvLe3TKxz) (:text |dep)
                                                    |r $ %{} :Expr (:at 1630782884724) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |D $ %{} :Leaf (:at 1630782885312) (:by |qvLe3TKxz) (:text |if)
                                                        |L $ %{} :Expr (:at 1630782885585) (:by |qvLe3TKxz)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1630782887355) (:by |qvLe3TKxz) (:text |=)
                                                            |j $ %{} :Leaf (:at 1630782890506) (:by |qvLe3TKxz) (:text |:default)
                                                            |r $ %{} :Expr (:at 1630782892759) (:by |qvLe3TKxz)
                                                              :data $ {}
                                                                |D $ %{} :Leaf (:at 1630782894555) (:by |qvLe3TKxz) (:text |:kind)
                                                                |T $ %{} :Leaf (:at 1630782891132) (:by |qvLe3TKxz) (:text |dep)
                                                        |P $ %{} :Expr (:at 1630783621634) (:by |qvLe3TKxz)
                                                          :data $ {}
                                                            |D $ %{} :Leaf (:at 1630783622374) (:by |qvLe3TKxz) (:text |div)
                                                            |L $ %{} :Expr (:at 1630783622654) (:by |qvLe3TKxz)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1630783623057) (:by |qvLe3TKxz) (:text |{})
                                                                |j $ %{} :Expr (:at 1630783633607) (:by |qvLe3TKxz)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1630783635459) (:by |qvLe3TKxz) (:text |:style)
                                                                    |j $ %{} :Expr (:at 1630783635836) (:by |qvLe3TKxz)
                                                                      :data $ {}
                                                                        |T $ %{} :Leaf (:at 1630783636246) (:by |qvLe3TKxz) (:text |{})
                                                                        |j $ %{} :Expr (:at 1630783636439) (:by |qvLe3TKxz)
                                                                          :data $ {}
                                                                            |T $ %{} :Leaf (:at 1630783637207) (:by |qvLe3TKxz) (:text |:color)
                                                                            |j $ %{} :Expr (:at 1630783637499) (:by |qvLe3TKxz)
                                                                              :data $ {}
                                                                                |T $ %{} :Leaf (:at 1630783637978) (:by |qvLe3TKxz) (:text |hsl)
                                                                                |j $ %{} :Leaf (:at 1630783639407) (:by |qvLe3TKxz) (:text |200)
                                                                                |r $ %{} :Leaf (:at 1630783639869) (:by |qvLe3TKxz) (:text |80)
                                                                                |v $ %{} :Leaf (:at 1630783655339) (:by |qvLe3TKxz) (:text |60)
                                                                        |r $ %{} :Expr (:at 1630783644685) (:by |qvLe3TKxz)
                                                                          :data $ {}
                                                                            |T $ %{} :Leaf (:at 1630783647385) (:by |qvLe3TKxz) (:text |:line-height)
                                                                            |j $ %{} :Leaf (:at 1630783650330) (:by |qvLe3TKxz) (:text "|\"20px")
                                                                        |v $ %{} :Expr (:at 1630783662458) (:by |qvLe3TKxz)
                                                                          :data $ {}
                                                                            |T $ %{} :Leaf (:at 1630783665723) (:by |qvLe3TKxz) (:text |:text-decoration)
                                                                            |j $ %{} :Leaf (:at 1630783667915) (:by |qvLe3TKxz) (:text |:underline)
                                                            |T $ %{} :Expr (:at 1630782896151) (:by |qvLe3TKxz)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1630782896752) (:by |qvLe3TKxz) (:text |<>)
                                                                |j $ %{} :Expr (:at 1630782899439) (:by |qvLe3TKxz)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1630782902315) (:by |qvLe3TKxz) (:text |:package)
                                                                    |j $ %{} :Leaf (:at 1630782903005) (:by |qvLe3TKxz) (:text |dep)
                                                        |T $ %{} :Expr (:at 1630781446574) (:by |qvLe3TKxz)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1630781446223) (:by |qvLe3TKxz) (:text |comp-graph-tree)
                                                            |j $ %{} :Expr (:at 1630781450998) (:by |qvLe3TKxz)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1630781451842) (:by |qvLe3TKxz) (:text |:ns)
                                                                |j $ %{} :Leaf (:at 1630781452605) (:by |qvLe3TKxz) (:text |dep)
                                                            |r $ %{} :Expr (:at 1630781455443) (:by |qvLe3TKxz)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1630781455839) (:by |qvLe3TKxz) (:text |:def)
                                                                |j $ %{} :Leaf (:at 1630781456492) (:by |qvLe3TKxz) (:text |dep)
                                                            |v $ %{} :Leaf (:at 1630781458620) (:by |qvLe3TKxz) (:text |dict)
                                                            |x $ %{} :Expr (:at 1630781459463) (:by |qvLe3TKxz)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1630781462620) (:by |qvLe3TKxz) (:text |.include)
                                                                |j $ %{} :Leaf (:at 1630781464435) (:by |qvLe3TKxz) (:text |footprints)
                                                                |r $ %{} :Leaf (:at 1630781468867) (:by |qvLe3TKxz) (:text |path)
                                    |r $ %{} :Expr (:at 1630781582602) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1630781583525) (:by |qvLe3TKxz) (:text |div)
                                        |L $ %{} :Expr (:at 1630781583824) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630781584161) (:by |qvLe3TKxz) (:text |{})
                                            |j $ %{} :Expr (:at 1630781585059) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1630781586071) (:by |qvLe3TKxz) (:text |:style)
                                                |j $ %{} :Expr (:at 1630781586449) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630781587029) (:by |qvLe3TKxz) (:text |{})
                                                    |j $ %{} :Expr (:at 1630781587916) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1630781589215) (:by |qvLe3TKxz) (:text |:padding)
                                                        |j $ %{} :Leaf (:at 1630781591767) (:by |qvLe3TKxz) (:text "|\"0 8px")
                                                    |r $ %{} :Expr (:at 1630782564791) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1630782564791) (:by |qvLe3TKxz) (:text |:line-height)
                                                        |j $ %{} :Leaf (:at 1630782564791) (:by |qvLe3TKxz) (:text "|\"20px")
                                        |T $ %{} :Expr (:at 1630781321161) (:by |qvLe3TKxz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1630781321819) (:by |qvLe3TKxz) (:text |<>)
                                            |j $ %{} :Leaf (:at 1630782538277) (:by |qvLe3TKxz) (:text "|\"-")
                                            |r $ %{} :Expr (:at 1630781597602) (:by |qvLe3TKxz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1630781597957) (:by |qvLe3TKxz) (:text |{})
                                                |j $ %{} :Expr (:at 1630781598296) (:by |qvLe3TKxz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1630781599094) (:by |qvLe3TKxz) (:text |:color)
                                                    |j $ %{} :Expr (:at 1630781599346) (:by |qvLe3TKxz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1630781599666) (:by |qvLe3TKxz) (:text |hsl)
                                                        |j $ %{} :Leaf (:at 1630781600375) (:by |qvLe3TKxz) (:text |0)
                                                        |r $ %{} :Leaf (:at 1630781602426) (:by |qvLe3TKxz) (:text |0)
                                                        |v $ %{} :Leaf (:at 1630781601118) (:by |qvLe3TKxz) (:text |80)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1630773920154) (:by |qvLe3TKxz)
            :data $ {}
              |T $ %{} :Leaf (:at 1630773920154) (:by |qvLe3TKxz) (:text |ns)
              |j $ %{} :Leaf (:at 1630773920154) (:by |qvLe3TKxz) (:text |app.comp.graph)
              |r $ %{} :Expr (:at 1630773955245) (:by |qvLe3TKxz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |:require)
                  |j $ %{} :Expr (:at 1630773955245) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |[])
                      |j $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |:refer)
                      |v $ %{} :Expr (:at 1630773955245) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |[])
                          |j $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |hsl)
                  |r $ %{} :Expr (:at 1630773955245) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |[])
                      |j $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |:as)
                      |v $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |ui)
                  |v $ %{} :Expr (:at 1630773955245) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |[])
                      |j $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |:refer)
                      |v $ %{} :Expr (:at 1630773955245) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |[])
                          |j $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |defcomp)
                          |r $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |<>)
                          |v $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |list->)
                          |x $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |div)
                          |y $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |button)
                          |yT $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |span)
                          |yj $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |input)
                          |yr $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |pre)
                  |x $ %{} :Expr (:at 1630773955245) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |[])
                      |j $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |respo.comp.space)
                      |r $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |:refer)
                      |v $ %{} :Expr (:at 1630773955245) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |[])
                          |j $ %{} :Leaf (:at 1630773955245) (:by |qvLe3TKxz) (:text |=<)
                  |y $ %{} :Expr (:at 1630775739869) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1630775739869) (:by |qvLe3TKxz) (:text |app.ast)
                      |j $ %{} :Leaf (:at 1630775739869) (:by |qvLe3TKxz) (:text |:refer)
                      |r $ %{} :Expr (:at 1630775739869) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1630775739869) (:by |qvLe3TKxz) (:text |build-deps-graph)
      |app.comp.viewer $ {}
        :defs $ {}
          |comp-viewer $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1508431291056) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1508431316090) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1508431291056) (:by |root) (:text |comp-viewer)
                |r $ %{} :Expr (:at 1508431291056) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1534089768866) (:by |root) (:text |calcit)
                |v $ %{} :Expr (:at 1508431446731) (:by |root)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1508431450355) (:by |root) (:text |let)
                    |L $ %{} :Expr (:at 1508431450620) (:by |root)
                      :data $ {}
                        |T $ %{} :Expr (:at 1508431450783) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1508431451714) (:by |root) (:text |ir)
                            |j $ %{} :Expr (:at 1508431451935) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508431452397) (:by |root) (:text |:ir)
                                |j $ %{} :Leaf (:at 1534089774905) (:by |root) (:text |calcit)
                    |T $ %{} :Expr (:at 1508431317393) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1508431318475) (:by |root) (:text |div)
                        |j $ %{} :Expr (:at 1508431318762) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1508431319087) (:by |root) (:text |{})
                        |r $ %{} :Expr (:at 1508431366644) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1508431368641) (:by |root) (:text |div)
                            |j $ %{} :Expr (:at 1508431368822) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508431371261) (:by |root) (:text |{})
                            |n $ %{} :Expr (:at 1508431512529) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508431513870) (:by |root) (:text |<>)
                                |j $ %{} :Leaf (:at 1561263889211) (:by |qvLe3TKxz) (:text "|\"Namespace:")
                            |p $ %{} :Expr (:at 1508431521085) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508431521802) (:by |root) (:text |=<)
                                |j $ %{} :Leaf (:at 1508431522292) (:by |root) (:text |8)
                                |r $ %{} :Leaf (:at 1508431524027) (:by |root) (:text |nil)
                            |r $ %{} :Expr (:at 1508431372074) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508431372779) (:by |root) (:text |<>)
                                |j $ %{} :Expr (:at 1508431383726) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1508431375552) (:by |root) (:text |:package)
                                    |j $ %{} :Leaf (:at 1508431459111) (:by |root) (:text |ir)
                        |t $ %{} :Expr (:at 1508431462743) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1508431463477) (:by |root) (:text |div)
                            |j $ %{} :Expr (:at 1508431463702) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508431464202) (:by |root) (:text |{})
                            |n $ %{} :Expr (:at 1508431525852) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508431527155) (:by |root) (:text |<>)
                                |j $ %{} :Leaf (:at 1561263891850) (:by |qvLe3TKxz) (:text "|\"Users:")
                            |p $ %{} :Expr (:at 1508431530976) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508431533483) (:by |root) (:text |=<)
                                |j $ %{} :Leaf (:at 1508431534031) (:by |root) (:text |8)
                                |r $ %{} :Leaf (:at 1508431535379) (:by |root) (:text |nil)
                            |r $ %{} :Expr (:at 1508431466277) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508431466778) (:by |root) (:text |<>)
                                |j $ %{} :Expr (:at 1508431467235) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1508431469099) (:by |root) (:text |:users)
                                    |j $ %{} :Leaf (:at 1534089776352) (:by |root) (:text |calcit)
                        |v $ %{} :Expr (:at 1508431377235) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1508431377812) (:by |root) (:text |div)
                            |j $ %{} :Expr (:at 1508431378067) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508431378627) (:by |root) (:text |{})
                            |n $ %{} :Expr (:at 1508431537019) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508431538236) (:by |root) (:text |<>)
                                |j $ %{} :Leaf (:at 1561263894082) (:by |qvLe3TKxz) (:text "|\"Configs:")
                            |p $ %{} :Expr (:at 1508431547770) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508431548354) (:by |root) (:text |=<)
                                |j $ %{} :Leaf (:at 1508431549735) (:by |root) (:text |8)
                                |r $ %{} :Leaf (:at 1508431550351) (:by |root) (:text |nil)
                            |r $ %{} :Expr (:at 1508431380132) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508431380827) (:by |root) (:text |<>)
                                |j $ %{} :Expr (:at 1508431386314) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1508431388215) (:by |root) (:text |:configs)
                                    |j $ %{} :Leaf (:at 1534089777522) (:by |root) (:text |calcit)
                        |x $ %{} :Expr (:at 1508431390953) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1508431391480) (:by |root) (:text |div)
                            |j $ %{} :Expr (:at 1508431391756) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508431392109) (:by |root) (:text |{})
                                |j $ %{} :Expr (:at 1509554646639) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1509554647543) (:by |root) (:text |:style)
                                    |j $ %{} :Leaf (:at 1509554648901) (:by |root) (:text |ui/row)
                            |n $ %{} :Expr (:at 1508431569268) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508431570072) (:by |root) (:text |<>)
                                |j $ %{} :Leaf (:at 1561263895856) (:by |qvLe3TKxz) (:text "|\"Files:")
                            |p $ %{} :Expr (:at 1508431574395) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1508431575355) (:by |root) (:text |=<)
                                |j $ %{} :Leaf (:at 1509554695448) (:by |root) (:text |16)
                                |r $ %{} :Leaf (:at 1508431576828) (:by |root) (:text |nil)
                            |u $ %{} :Expr (:at 1509554540633) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1509554546632) (:by |root) (:text |list->)
                                |r $ %{} :Expr (:at 1509554548166) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1509554548716) (:by |root) (:text |{})
                                |v $ %{} :Expr (:at 1509554549567) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1629135208842) (:by |qvLe3TKxz) (:text |->)
                                    |j $ %{} :Expr (:at 1509554562186) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1509554561989) (:by |root) (:text |:files)
                                        |j $ %{} :Leaf (:at 1509554562958) (:by |root) (:text |ir)
                                    |n $ %{} :Expr (:at 1629135210929) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1629135212825) (:by |qvLe3TKxz) (:text |.to-list)
                                    |r $ %{} :Expr (:at 1509554563738) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1509554564727) (:by |root) (:text |map)
                                        |j $ %{} :Expr (:at 1509554566640) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1509554566915) (:by |root) (:text |fn)
                                            |j $ %{} :Expr (:at 1509554567450) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1509554568002) (:by |root) (:text |entry)
                                            |r $ %{} :Expr (:at 1509554569869) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1629135216163) (:by |qvLe3TKxz) (:text |let-sugar)
                                                |j $ %{} :Expr (:at 1509554571687) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Expr (:at 1509554571830) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Expr (:at 1509554573732) (:by |root)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1509554573016) (:by |root) (:text |[])
                                                            |j $ %{} :Leaf (:at 1509554575142) (:by |root) (:text |filename)
                                                            |r $ %{} :Leaf (:at 1509554578164) (:by |root) (:text |file-info)
                                                        |j $ %{} :Leaf (:at 1509554582090) (:by |root) (:text |entry)
                                                |r $ %{} :Expr (:at 1509554582997) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1509554593909) (:by |root) (:text |[])
                                                    |j $ %{} :Leaf (:at 1509554597241) (:by |root) (:text |filename)
                                                    |r $ %{} :Expr (:at 1509554597543) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1509554600964) (:by |root) (:text |comp-file)
                                                        |j $ %{} :Leaf (:at 1509554605702) (:by |root) (:text |filename)
                                                        |r $ %{} :Leaf (:at 1509554607443) (:by |root) (:text |file-info)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1508431287719) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1508431287719) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1508431287719) (:by |root) (:text |app.comp.viewer)
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |hsl.core)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |hsl)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1520437453215) (:by |root) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ui)
                  |v $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1561260949351) (:by |qvLe3TKxz) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                          |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |<>)
                          |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                          |w $ %{} :Leaf (:at 1509554631132) (:by |root) (:text |list->)
                          |x $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |button)
                          |y $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |span)
                          |yT $ %{} :Leaf (:at 1508429846685) (:by |root) (:text |input)
                  |x $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.comp.space)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |=<)
                  |yT $ %{} :Expr (:at 1508430603641) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1508430604513) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1508430606495) (:by |root) (:text |cljs.reader)
                      |r $ %{} :Leaf (:at 1508430607141) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1508430607345) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1508430607493) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1508430608765) (:by |root) (:text |read-string)
                  |yj $ %{} :Expr (:at 1509554610157) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1509554610662) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1509554615365) (:by |root) (:text |app.comp.file)
                      |r $ %{} :Leaf (:at 1509554616127) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1509554616313) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509554616700) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1509554619076) (:by |root) (:text |comp-file)
      |app.config $ {}
        :defs $ {}
          |dev? $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1561261394327) (:by |qvLe3TKxz)
              :data $ {}
                |T $ %{} :Leaf (:at 1561261394327) (:by |qvLe3TKxz) (:text |def)
                |j $ %{} :Leaf (:at 1561261394327) (:by |qvLe3TKxz) (:text |dev?)
                |r $ %{} :Expr (:at 1629135525071) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629135526056) (:by |qvLe3TKxz) (:text |=)
                    |j $ %{} :Leaf (:at 1629135527879) (:by |qvLe3TKxz) (:text "|\"dev")
                    |r $ %{} :Expr (:at 1629135528213) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629135529692) (:by |qvLe3TKxz) (:text |get-env)
                        |j $ %{} :Leaf (:at 1629135532295) (:by |qvLe3TKxz) (:text "|\"mode")
                        |n $ %{} :Leaf (:at 1658661587632) (:by |qvLe3TKxz) (:text "|\"release")
          |site $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1534088762989) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1534088762989) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1534088762989) (:by |root) (:text |site)
                |r $ %{} :Expr (:at 1534088762989) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1534088762989) (:by |root) (:text |{})
                    |r $ %{} :Expr (:at 1534088762989) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1534088762989) (:by |root) (:text |:dev-ui)
                        |j $ %{} :Leaf (:at 1534088762989) (:by |root) (:text "|\"http://localhost:8100/main.css")
                    |v $ %{} :Expr (:at 1534088762989) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1534088762989) (:by |root) (:text |:release-ui)
                        |j $ %{} :Leaf (:at 1534088762989) (:by |root) (:text "|\"http://cdn.tiye.me/favored-fonts/main.css")
                    |x $ %{} :Expr (:at 1534088762989) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1534088762989) (:by |root) (:text |:cdn-url)
                        |j $ %{} :Leaf (:at 1534088783760) (:by |root) (:text "|\"http://cdn.tiye.me/calcit-viewer/")
                    |yT $ %{} :Expr (:at 1534088762989) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1534088762989) (:by |root) (:text |:title)
                        |j $ %{} :Leaf (:at 1534088796697) (:by |root) (:text "|\"Calcit Viewer")
                    |yj $ %{} :Expr (:at 1534088762989) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1534088762989) (:by |root) (:text |:icon)
                        |j $ %{} :Leaf (:at 1534088800229) (:by |root) (:text "|\"http://cdn.tiye.me/logo/cirru.png")
                    |yn $ %{} :Expr (:at 1561261122159) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1561261124616) (:by |qvLe3TKxz) (:text |:storage-key)
                        |j $ %{} :Leaf (:at 1561261122159) (:by |qvLe3TKxz) (:text "|\"calcit-viewer")
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1534088762989) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1534088762989) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1534088762989) (:by |root) (:text |app.config)
      |app.main $ {}
        :defs $ {}
          |*reel $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1629135549023) (:by |qvLe3TKxz) (:text |defatom)
                |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |*reel)
                |r $ %{} :Expr (:at 1507399777531) (:by |root)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1507399778895) (:by |root) (:text |->)
                    |T $ %{} :Leaf (:at 1507399776350) (:by |root) (:text |reel-schema/reel)
                    |j $ %{} :Expr (:at 1507399779656) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                        |j $ %{} :Leaf (:at 1507401405076) (:by |root) (:text |:base)
                        |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
                    |r $ %{} :Expr (:at 1507399779656) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                        |j $ %{} :Leaf (:at 1507399793097) (:by |root) (:text |:store)
                        |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
          |dispatch! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |dispatch!)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op-data)
                |t $ %{} :Expr (:at 1561261163366) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1561261163366) (:by |qvLe3TKxz) (:text |when)
                    |j $ %{} :Leaf (:at 1561261163366) (:by |qvLe3TKxz) (:text |config/dev?)
                    |r $ %{} :Expr (:at 1561261163366) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1561261163366) (:by |qvLe3TKxz) (:text |println)
                        |j $ %{} :Leaf (:at 1561261163366) (:by |qvLe3TKxz) (:text "|\"Dispatch:")
                        |r $ %{} :Leaf (:at 1561261163366) (:by |qvLe3TKxz) (:text |op)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |reset!)
                    |j $ %{} :Leaf (:at 1507399899641) (:by |root) (:text |*reel)
                    |r $ %{} :Expr (:at 1507399884621) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507399887573) (:by |root) (:text |reel-updater)
                        |j $ %{} :Leaf (:at 1507399888500) (:by |root) (:text |updater)
                        |r $ %{} :Leaf (:at 1507399891576) (:by |root) (:text |@*reel)
                        |v $ %{} :Leaf (:at 1507399892687) (:by |root) (:text |op)
                        |x $ %{} :Leaf (:at 1507399894594) (:by |root) (:text |op-data)
          |main! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |main!)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                |t $ %{} :Expr (:at 1561261182494) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1561261182494) (:by |qvLe3TKxz) (:text |println)
                    |j $ %{} :Leaf (:at 1561261182494) (:by |qvLe3TKxz) (:text "|\"Running mode:")
                    |r $ %{} :Expr (:at 1561261182494) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1561261182494) (:by |qvLe3TKxz) (:text |if)
                        |j $ %{} :Leaf (:at 1561261182494) (:by |qvLe3TKxz) (:text |config/dev?)
                        |r $ %{} :Expr (:at 1630774098510) (:by |qvLe3TKxz)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1630774099424) (:by |qvLe3TKxz) (:text |do)
                            |L $ %{} :Expr (:at 1630774099793) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1630774104715) (:by |qvLe3TKxz) (:text |load-console-formatter!)
                            |T $ %{} :Leaf (:at 1561261182494) (:by |qvLe3TKxz) (:text "|\"dev")
                        |v $ %{} :Leaf (:at 1561261182494) (:by |qvLe3TKxz) (:text "|\"release")
                |x $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
                |y $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |add-watch)
                    |j $ %{} :Leaf (:at 1507399915531) (:by |root) (:text |*reel)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:changes)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |fn)
                        |j $ %{} :Expr (:at 1499755354983) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1629135648583) (:by |qvLe3TKxz) (:text |r)
                            |j $ %{} :Leaf (:at 1629135649196) (:by |qvLe3TKxz) (:text |p)
                        |r $ %{} :Expr (:at 1499755354983) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
                |yD $ %{} :Expr (:at 1507461684494) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507461739167) (:by |root) (:text |listen-devtools!)
                    |j $ %{} :Leaf (:at 1507461691211) (:by |root) (:text ||a)
                    |r $ %{} :Leaf (:at 1507461693919) (:by |root) (:text |dispatch!)
                |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |println)
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text "||App started.")
          |mount-target $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |.querySelector)
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |js/document)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text ||.app)
          |reload! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
              :data $ {}
                |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |defn)
                |j $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |reload!)
                |r $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                  :data $ {}
                |v $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |if)
                    |j $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |nil?)
                        |j $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |build-errors)
                    |r $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |do)
                        |j $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |remove-watch)
                            |j $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |*reel)
                            |r $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |:changes)
                        |r $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |clear-cache!)
                        |v $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |add-watch)
                            |j $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |*reel)
                            |r $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |:changes)
                            |v $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |fn)
                                |j $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |reel)
                                    |j $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |prev)
                                |r $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |render-app!)
                        |x $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |reset!)
                            |j $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |*reel)
                            |r $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |refresh-reel)
                                |j $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |@*reel)
                                |r $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |schema/store)
                                |v $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |updater)
                        |y $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |hud!)
                            |j $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text "|\"ok~")
                            |r $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text "|\"Ok")
                    |v $ %{} :Expr (:at 1629135667188) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |hud!)
                        |j $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text "|\"error")
                        |r $ %{} :Leaf (:at 1629135667188) (:by |qvLe3TKxz) (:text |build-errors)
          |render-app! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629135654877) (:by |qvLe3TKxz) (:text |render!)
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
                    |r $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                        |j $ %{} :Leaf (:at 1507400119272) (:by |root) (:text |@*reel)
                    |v $ %{} :Leaf (:at 1629135558277) (:by |qvLe3TKxz) (:text |dispatch!)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.main)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render!)
                          |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |clear-cache!)
                          |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |realize-ssr!)
                  |v $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.comp.container)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                  |x $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |cljs.reader)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |read-string)
                  |y $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1520437480182) (:by |root) (:text |app.updater)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
                  |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |schema)
                  |yj $ %{} :Expr (:at 1507399674125) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399674614) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1507399678694) (:by |root) (:text |reel.util)
                      |r $ %{} :Leaf (:at 1507399680625) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507399680857) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507399681518) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1520437485511) (:by |root) (:text |listen-devtools!)
                  |yr $ %{} :Expr (:at 1507399683930) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399684313) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1507399687162) (:by |root) (:text |reel.core)
                      |r $ %{} :Leaf (:at 1507399688098) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507399688322) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507399688928) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1507399691010) (:by |root) (:text |reel-updater)
                          |v $ %{} :Leaf (:at 1507461662341) (:by |root) (:text |refresh-reel)
                  |yv $ %{} :Expr (:at 1507399715229) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399715600) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1507399717674) (:by |root) (:text |reel.schema)
                      |r $ %{} :Leaf (:at 1507399755750) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1507399757678) (:by |root) (:text |reel-schema)
                  |yx $ %{} :Expr (:at 1561261312190) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1561261312571) (:by |qvLe3TKxz) (:text |[])
                      |j $ %{} :Leaf (:at 1561261314083) (:by |qvLe3TKxz) (:text |app.config)
                      |r $ %{} :Leaf (:at 1561261316405) (:by |qvLe3TKxz) (:text |:as)
                      |v $ %{} :Leaf (:at 1561261317202) (:by |qvLe3TKxz) (:text |config)
                  |yy $ %{} :Expr (:at 1629135676051) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629135676051) (:by |qvLe3TKxz) (:text "|\"./calcit.build-errors")
                      |j $ %{} :Leaf (:at 1629135676051) (:by |qvLe3TKxz) (:text |:default)
                      |r $ %{} :Leaf (:at 1629135676051) (:by |qvLe3TKxz) (:text |build-errors)
                  |yyT $ %{} :Expr (:at 1629135676051) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629135676051) (:by |qvLe3TKxz) (:text "|\"bottom-tip")
                      |j $ %{} :Leaf (:at 1629135676051) (:by |qvLe3TKxz) (:text |:default)
                      |r $ %{} :Leaf (:at 1629135676051) (:by |qvLe3TKxz) (:text |hud!)
      |app.schema $ {}
        :defs $ {}
          |store $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                    |j $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:states)
                        |j $ %{} :Expr (:at 1499755354983) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                    |n $ %{} :Expr (:at 1508430820190) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1508430821171) (:by |root) (:text |:error)
                        |j $ %{} :Leaf (:at 1508430822493) (:by |root) (:text |nil)
                    |r $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1508430339389) (:by |root) (:text |:calcit)
                        |j $ %{} :Leaf (:at 1508430341420) (:by |root) (:text |nil)
                    |v $ %{} :Expr (:at 1520439500467) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1520439501247) (:by |root) (:text |:page)
                        |j $ %{} :Leaf (:at 1520439503308) (:by |root) (:text |:input)
                    |x $ %{} :Expr (:at 1520440437441) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1520440438269) (:by |root) (:text |:text)
                        |j $ %{} :Leaf (:at 1561262107376) (:by |qvLe3TKxz) (:text "|\"")
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
      |app.updater $ {}
        :defs $ {}
          |updater $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op-data)
                    |v $ %{} :Leaf (:at 1629135871281) (:by |qvLe3TKxz) (:text |op-id)
                    |x $ %{} :Leaf (:at 1629135872473) (:by |qvLe3TKxz) (:text |op-time)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629135494193) (:by |qvLe3TKxz) (:text |case-default)
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                    |l $ %{} :Expr (:at 1629135495304) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629135495304) (:by |qvLe3TKxz) (:text |let)
                        |j $ %{} :Expr (:at 1629135495304) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Expr (:at 1629135495304) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1629135495304) (:by |qvLe3TKxz) (:text |op-time)
                                |j $ %{} :Expr (:at 1629135495304) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |j $ %{} :Leaf (:at 1629135510174) (:by |qvLe3TKxz) (:text |js/Date.now)
                            |j $ %{} :Expr (:at 1629135495304) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1629135495304) (:by |qvLe3TKxz) (:text |op-id)
                                |j $ %{} :Expr (:at 1629135495304) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |j $ %{} :Leaf (:at 1629135507049) (:by |qvLe3TKxz) (:text |js/Math.random)
                        |r $ %{} :Expr (:at 1629135495304) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1629135495304) (:by |qvLe3TKxz) (:text |cond)
                            |j $ %{} :Expr (:at 1629135495304) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Expr (:at 1629135495304) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1629135495304) (:by |qvLe3TKxz) (:text |action/message-action?)
                                    |j $ %{} :Leaf (:at 1629135495304) (:by |qvLe3TKxz) (:text |op)
                                |j $ %{} :Expr (:at 1629135495304) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1629135495304) (:by |qvLe3TKxz) (:text |update)
                                    |j $ %{} :Leaf (:at 1629135495304) (:by |qvLe3TKxz) (:text |store)
                                    |r $ %{} :Leaf (:at 1629135495304) (:by |qvLe3TKxz) (:text |:messages)
                                    |v $ %{} :Expr (:at 1629135495304) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1629135632133) (:by |qvLe3TKxz) (:text |\)
                                        |j $ %{} :Leaf (:at 1629135495304) (:by |qvLe3TKxz) (:text |update-messages)
                                        |r $ %{} :Leaf (:at 1629135495304) (:by |qvLe3TKxz) (:text |%)
                                        |v $ %{} :Leaf (:at 1629135495304) (:by |qvLe3TKxz) (:text |op)
                                        |x $ %{} :Leaf (:at 1629135495304) (:by |qvLe3TKxz) (:text |op-data)
                                        |y $ %{} :Leaf (:at 1629135495304) (:by |qvLe3TKxz) (:text |op-id)
                                        |yT $ %{} :Leaf (:at 1629135495304) (:by |qvLe3TKxz) (:text |op-time)
                            |r $ %{} :Expr (:at 1629135495304) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1629135500178) (:by |qvLe3TKxz) (:text |true)
                                |j $ %{} :Expr (:at 1629135495304) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1629135495304) (:by |qvLe3TKxz) (:text |do)
                                    |j $ %{} :Expr (:at 1629135495304) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1629135495304) (:by |qvLe3TKxz) (:text |println)
                                        |j $ %{} :Leaf (:at 1629135495304) (:by |qvLe3TKxz) (:text "|\"Unknown op:")
                                        |r $ %{} :Leaf (:at 1629135495304) (:by |qvLe3TKxz) (:text |op)
                                    |r $ %{} :Leaf (:at 1629135495304) (:by |qvLe3TKxz) (:text |store)
                    |n $ %{} :Expr (:at 1507399852251) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507399855618) (:by |root) (:text |:states)
                        |j $ %{} :Expr (:at 1507399856471) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1596680858976) (:by |qvLe3TKxz) (:text |update-states)
                            |j $ %{} :Leaf (:at 1507399858922) (:by |root) (:text |store)
                            |r $ %{} :Leaf (:at 1507399860888) (:by |root) (:text |op-data)
                    |r $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1508430323713) (:by |root) (:text |:load/calcit)
                        |j $ %{} :Expr (:at 1561263432087) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1561263432087) (:by |qvLe3TKxz) (:text |->)
                            |j $ %{} :Leaf (:at 1561263432087) (:by |qvLe3TKxz) (:text |store)
                            |r $ %{} :Expr (:at 1561263432087) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1561263432087) (:by |qvLe3TKxz) (:text |assoc)
                                |j $ %{} :Leaf (:at 1561263432087) (:by |qvLe3TKxz) (:text |:calcit)
                                |r $ %{} :Leaf (:at 1561263432087) (:by |qvLe3TKxz) (:text |op-data)
                            |v $ %{} :Expr (:at 1561263432087) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1561263432087) (:by |qvLe3TKxz) (:text |assoc)
                                |j $ %{} :Leaf (:at 1561263432087) (:by |qvLe3TKxz) (:text |:error)
                                |r $ %{} :Leaf (:at 1561263432087) (:by |qvLe3TKxz) (:text |nil)
                            |x $ %{} :Expr (:at 1561263432087) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1561263432087) (:by |qvLe3TKxz) (:text |assoc)
                                |j $ %{} :Leaf (:at 1561263432087) (:by |qvLe3TKxz) (:text |:page)
                                |r $ %{} :Leaf (:at 1561263432087) (:by |qvLe3TKxz) (:text |:viewer)
                    |s $ %{} :Expr (:at 1520440423565) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1520440427735) (:by |root) (:text |:text)
                        |j $ %{} :Expr (:at 1520440427918) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1520440430089) (:by |root) (:text |assoc)
                            |j $ %{} :Leaf (:at 1520440432353) (:by |root) (:text |store)
                            |r $ %{} :Leaf (:at 1520440433350) (:by |root) (:text |:text)
                            |v $ %{} :Leaf (:at 1520440434298) (:by |root) (:text |op-data)
                    |t $ %{} :Expr (:at 1508430926973) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1508430928021) (:by |root) (:text |:error)
                        |j $ %{} :Expr (:at 1508430928409) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1508430929323) (:by |root) (:text |assoc)
                            |j $ %{} :Leaf (:at 1508430930844) (:by |root) (:text |store)
                            |r $ %{} :Leaf (:at 1508430932633) (:by |root) (:text |:error)
                            |v $ %{} :Leaf (:at 1508430933512) (:by |root) (:text |op-data)
                    |u $ %{} :Expr (:at 1520440356050) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1520440358773) (:by |root) (:text |:page)
                        |j $ %{} :Expr (:at 1520440359034) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1520440359811) (:by |root) (:text |assoc)
                            |j $ %{} :Leaf (:at 1520440362015) (:by |root) (:text |store)
                            |r $ %{} :Leaf (:at 1520440362695) (:by |root) (:text |:page)
                            |v $ %{} :Leaf (:at 1520440364240) (:by |root) (:text |op-data)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.updater)
              |r $ %{} :Expr (:at 1507399862664) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507399864640) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1507399864883) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399865654) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1507399873143) (:by |root) (:text |respo.cursor)
                      |r $ %{} :Leaf (:at 1507399874041) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507399874214) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507399874938) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1596680866961) (:by |qvLe3TKxz) (:text |update-states)
                  |r $ %{} :Expr (:at 1572778318448) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572778318796) (:by |qvLe3TKxz) (:text |[])
                      |j $ %{} :Leaf (:at 1572778319459) (:by |qvLe3TKxz) (:text |respo-message.action)
                      |r $ %{} :Leaf (:at 1572778322591) (:by |qvLe3TKxz) (:text |:as)
                      |v $ %{} :Leaf (:at 1572778323461) (:by |qvLe3TKxz) (:text |action)
                  |v $ %{} :Expr (:at 1572778329222) (:by |qvLe3TKxz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572778329487) (:by |qvLe3TKxz) (:text |[])
                      |j $ %{} :Leaf (:at 1572778329877) (:by |qvLe3TKxz) (:text |respo-message.updater)
                      |r $ %{} :Leaf (:at 1572778330803) (:by |qvLe3TKxz) (:text |:refer)
                      |v $ %{} :Expr (:at 1572778331038) (:by |qvLe3TKxz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572778331262) (:by |qvLe3TKxz) (:text |[])
                          |j $ %{} :Leaf (:at 1572778334439) (:by |qvLe3TKxz) (:text |update-messages)
      |app.util $ {}
        :defs $ {}
          |tree->cirru $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1572777481438) (:by |qvLe3TKxz)
              :data $ {}
                |T $ %{} :Leaf (:at 1572777481438) (:by |qvLe3TKxz) (:text |defn)
                |j $ %{} :Leaf (:at 1572777481438) (:by |qvLe3TKxz) (:text |tree->cirru)
                |r $ %{} :Expr (:at 1572777481438) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1572777484135) (:by |qvLe3TKxz) (:text |x)
                |v $ %{} :Expr (:at 1572777485431) (:by |qvLe3TKxz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1572777486659) (:by |qvLe3TKxz) (:text |if)
                    |j $ %{} :Expr (:at 1572777489355) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572777489102) (:by |qvLe3TKxz) (:text |=)
                        |j $ %{} :Leaf (:at 1572777492526) (:by |qvLe3TKxz) (:text |:leaf)
                        |r $ %{} :Expr (:at 1572777493232) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1572777494523) (:by |qvLe3TKxz) (:text |:type)
                            |j $ %{} :Leaf (:at 1572777495081) (:by |qvLe3TKxz) (:text |x)
                    |r $ %{} :Expr (:at 1572777496512) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572777498522) (:by |qvLe3TKxz) (:text |:text)
                        |j $ %{} :Leaf (:at 1572777499187) (:by |qvLe3TKxz) (:text |x)
                    |v $ %{} :Expr (:at 1572777500073) (:by |qvLe3TKxz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629135242682) (:by |qvLe3TKxz) (:text |->)
                        |j $ %{} :Expr (:at 1572777504793) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1572777505465) (:by |qvLe3TKxz) (:text |:data)
                            |j $ %{} :Leaf (:at 1572777505981) (:by |qvLe3TKxz) (:text |x)
                        |n $ %{} :Expr (:at 1629135246729) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1629135248174) (:by |qvLe3TKxz) (:text |.to-list)
                        |r $ %{} :Expr (:at 1572777506892) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1629135249853) (:by |qvLe3TKxz) (:text |.sort-by)
                            |j $ %{} :Leaf (:at 1572777511306) (:by |qvLe3TKxz) (:text |first)
                        |v $ %{} :Expr (:at 1572777511907) (:by |qvLe3TKxz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1572777512825) (:by |qvLe3TKxz) (:text |map)
                            |j $ %{} :Expr (:at 1572777513324) (:by |qvLe3TKxz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1572777513609) (:by |qvLe3TKxz) (:text |fn)
                                |j $ %{} :Expr (:at 1572777513881) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1629135258697) (:by |qvLe3TKxz) (:text |pair)
                                |r $ %{} :Expr (:at 1572777521321) (:by |qvLe3TKxz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1572777523544) (:by |qvLe3TKxz) (:text |tree->cirru)
                                    |j $ %{} :Expr (:at 1629135253105) (:by |qvLe3TKxz)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1629135254357) (:by |qvLe3TKxz) (:text |last)
                                        |T $ %{} :Leaf (:at 1629135255636) (:by |qvLe3TKxz) (:text |pair)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1572777469888) (:by |qvLe3TKxz)
            :data $ {}
              |T $ %{} :Leaf (:at 1572777469888) (:by |qvLe3TKxz) (:text |ns)
              |j $ %{} :Leaf (:at 1572777469888) (:by |qvLe3TKxz) (:text |app.util)
  :users $ {}
    |qvLe3TKxz $ {} (:avatar nil) (:id |qvLe3TKxz) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
