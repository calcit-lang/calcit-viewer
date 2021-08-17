
{}
  :configs $ {} (:reload-fn |app.main/reload!) (:port 6001) (:output |src) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-feather.calcit/ |respo-message.calcit/ |cumulo-util.calcit/
    :init-fn |app.main/main!
    :extension |.cljs
  :ir $ {} (:package |app)
    :files $ {}
      |app.comp.expr $ {}
        :defs $ {}
          |comp-expr $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1509555550073) (:by |root) (:id |SJ-mva_wCZ)
              |j $ {} (:text |comp-expr) (:type :leaf) (:at 1509555546987) (:by |root) (:id |HkM7v6OvA-)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |expr) (:type :leaf) (:at 1509555556590) (:by |root) (:id |rkejv6uwRW)
                  |j $ {} (:text |last?) (:type :leaf) (:at 1509768852453) (:by |root) (:id |SJ29RncCZ)
                :type :expr
                :at 1509555546987
                :by |root
                :id |ry77vaOP0b
              |v $ {}
                :data $ {}
                  |D $ {} (:text |list->) (:type :leaf) (:at 1509769204748) (:by |root) (:id |rk9lg69C-)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1509555552876) (:by |root) (:id |SyQdvTuwAZ)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1509555850270) (:by |root) (:id |SJg19AuDAW)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |merge) (:type :leaf) (:at 1509768876015) (:by |root) (:id |BJWQ3C3qRZ)
                              |T $ {} (:text |style-expr) (:type :leaf) (:at 1572777912240) (:by |qvLe3TKxz) (:id |6CI8ACB833g)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |if) (:type :leaf) (:at 1509768877006) (:by |root) (:id |HkShC2cA-leaf)
                                  |j $ {} (:text |last?) (:type :leaf) (:at 1509768878879) (:by |root) (:id |rkWI3CnqR-)
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1509768880138) (:by |root) (:id |r1xv3CncCW)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:display) (:type :leaf) (:at 1509768881562) (:by |root) (:id |SkZdnAncRb)
                                          |j $ {} (:text |:inline-block) (:type :leaf) (:at 1509768884576) (:by |root) (:id |BJl530h50W)
                                        :type :expr
                                        :at 1509768880449
                                        :by |root
                                        :id |rkMdhR2qC-
                                    :type :expr
                                    :at 1509768879476
                                    :by |root
                                    :id |HyZv20290-
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |if) (:type :leaf) (:at 1509769045038) (:by |root) (:id |HkTUy65AWleaf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |every?) (:type :leaf) (:at 1509769047034) (:by |root) (:id |rJf6Iyp5CZ)
                                          |b $ {}
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135948265) (:text |:data)
                                              |j $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135948265) (:text |expr)
                                            :type :expr
                                            :at 1629135948265
                                            :by |qvLe3TKxz
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |fn) (:type :leaf) (:at 1509769072445) (:by |root) (:id |B1uO1ac0Z)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |entry) (:type :leaf) (:at 1509769076220) (:by |root) (:id |H1Fu1p9RZ)
                                                :type :expr
                                                :at 1509769073671
                                                :by |root
                                                :id |ryqOJT9AW
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |=) (:type :leaf) (:at 1509769086705) (:by |root) (:id |SkepdJa9R-)
                                                  |j $ {} (:text |:leaf) (:type :leaf) (:at 1509769093782) (:by |root) (:id |HJstk6qAb)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:type) (:type :leaf) (:at 1509769096466) (:by |root) (:id |ry7Ct1p5RW)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |last) (:type :leaf) (:at 1629135597282) (:by |qvLe3TKxz) (:id |ryb9kacC-)
                                                          |j $ {} (:text |entry) (:type :leaf) (:at 1509769100372) (:by |root) (:id |HyxEcypc0b)
                                                        :type :expr
                                                        :at 1509769096721
                                                        :by |root
                                                        :id |ByxWqkTc0W
                                                    :type :expr
                                                    :at 1509769094133
                                                    :by |root
                                                    :id |Hk4CtJp50b
                                                :type :expr
                                                :at 1509769085579
                                                :by |root
                                                :id |rJ8Y1a5A-
                                            :type :expr
                                            :at 1509769072145
                                            :by |root
                                            :id |SJxudkT90-
                                        :type :expr
                                        :at 1509769045553
                                        :by |root
                                        :id |ry0Iy6cA-
                                      |r $ {}
                                        :data $ {}
                                          |D $ {} (:text |{}) (:type :leaf) (:at 1509769113378) (:by |root) (:id |HJgWsyTcRZ)
                                          |T $ {}
                                            :data $ {}
                                              |T $ {} (:text |:display) (:type :leaf) (:at 1509769106815) (:by |root) (:id |rJMPcyp5RZleaf)
                                              |j $ {} (:text |:inline-block) (:type :leaf) (:at 1509769109422) (:by |root) (:id |Hyejc165Cb)
                                            :type :expr
                                            :at 1509769103400
                                            :by |root
                                            :id |rJMPcyp5RZ
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:border-width) (:type :leaf) (:at 1509769121758) (:by |root) (:id |BkgGiJ690Zleaf)
                                              |j $ {} (:text "||0 0 1px 0") (:type :leaf) (:at 1509769125051) (:by |root) (:id |H1xqs1p5AW)
                                            :type :expr
                                            :at 1509769114128
                                            :by |root
                                            :id |BkgGiJ690Z
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:margin) (:type :leaf) (:at 1509769244242) (:by |root) (:id |r1xQXl6qCbleaf)
                                              |j $ {} (:text "||0 4px") (:type :leaf) (:at 1509769246903) (:by |root) (:id |SyrQlac0-)
                                            :type :expr
                                            :at 1509769242927
                                            :by |root
                                            :id |r1xQXl6qCb
                                        :type :expr
                                        :at 1509769112730
                                        :by |root
                                        :id |HyWjya5R-
                                    :type :expr
                                    :at 1509769044554
                                    :by |root
                                    :id |HkTUy65AW
                                :type :expr
                                :at 1509768876563
                                :by |root
                                :id |HkShC2cA-
                            :type :expr
                            :at 1509768875028
                            :by |root
                            :id |HklQnAhqRb
                        :type :expr
                        :at 1509555847380
                        :by |root
                        :id |rJ-k90dD0-
                      |n $ {}
                        :data $ {}
                          |T $ {} (:text |:title) (:type :leaf) (:at 1572777995099) (:by |qvLe3TKxz) (:id |5AQwjo5HOQleaf)
                          |j $ {} (:text "|\"Click to copy.") (:type :leaf) (:at 1572778000211) (:by |qvLe3TKxz) (:id |wakm6ncYTJ)
                        :type :expr
                        :at 1572777993107
                        :by |qvLe3TKxz
                        :id |5AQwjo5HOQ
                      |p $ {}
                        :data $ {}
                          |T $ {} (:text |:class-name) (:type :leaf) (:at 1572778068588) (:by |qvLe3TKxz) (:id |Poq4k2vfFeleaf)
                          |j $ {} (:text "|\"comp-expr") (:type :leaf) (:at 1572778073134) (:by |qvLe3TKxz) (:id |Tevpq5nuP3)
                        :type :expr
                        :at 1572778063388
                        :by |qvLe3TKxz
                        :id |Poq4k2vfFe
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |:on-click) (:type :leaf) (:at 1572777395737) (:by |qvLe3TKxz) (:id |rI_iJaWsVleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1572777396300) (:by |qvLe3TKxz) (:id |0-WhEge58K)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |e) (:type :leaf) (:at 1572777396814) (:by |qvLe3TKxz) (:id |FvJ4t2PP55)
                                  |j $ {} (:text |d!) (:type :leaf) (:at 1572777397858) (:by |qvLe3TKxz) (:id |tvaM1aQ2k6)
                                :type :expr
                                :at 1572777397053
                                :by |qvLe3TKxz
                                :id |YckzyCwjcu
                              |v $ {}
                                :data $ {}
                                  |D $ {} (:text |let) (:type :leaf) (:at 1572778519596) (:by |qvLe3TKxz) (:id |gFJSFnkaML)
                                  |L $ {}
                                    :data $ {}
                                      |T $ {}
                                        :data $ {}
                                          |T $ {} (:text |code) (:type :leaf) (:at 1572778521737) (:by |qvLe3TKxz) (:id |xqD4Y62Z3T)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |format-cirru) (:type :leaf) (:at 1629135958778) (:by |qvLe3TKxz) (:id |ZymaSipc3j)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |tree->cirru) (:type :leaf) (:at 1572778524848) (:by |qvLe3TKxz) (:id |a5LfQR4ES9)
                                                  |j $ {} (:text |expr) (:type :leaf) (:at 1572778524848) (:by |qvLe3TKxz) (:id |S16trIOctU)
                                                :type :expr
                                                :at 1572778524848
                                                :by |qvLe3TKxz
                                                :id |0KbqSEqbgT
                                            :type :expr
                                            :at 1572778524848
                                            :by |qvLe3TKxz
                                            :id |5wjn65NLSc
                                        :type :expr
                                        :at 1572778520047
                                        :by |qvLe3TKxz
                                        :id |SxU-wNo8wH
                                    :type :expr
                                    :at 1572778519881
                                    :by |qvLe3TKxz
                                    :id |CW827a2KGI
                                  |P $ {}
                                    :data $ {}
                                      |T $ {} (:text |copy!) (:type :leaf) (:at 1572778528180) (:by |qvLe3TKxz) (:id |3nm_1rLOto)
                                      |j $ {} (:text |code) (:type :leaf) (:at 1572778530840) (:by |qvLe3TKxz) (:id |XfIElb94rM)
                                    :type :expr
                                    :at 1572778528180
                                    :by |qvLe3TKxz
                                    :id |ua0UbhiPV7
                                  |T $ {}
                                    :data $ {}
                                      |T $ {} (:text |d!) (:type :leaf) (:at 1572778487105) (:by |qvLe3TKxz) (:id |8EHZkDSBC4leaf)
                                      |j $ {} (:text |action/create) (:type :leaf) (:at 1572778493953) (:by |qvLe3TKxz) (:id |iln7MJjoh)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1572778494696) (:by |qvLe3TKxz) (:id |JgIos5JsFk)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:text) (:type :leaf) (:at 1572778500039) (:by |qvLe3TKxz) (:id |CsqxNh0nHT)
                                              |j $ {}
                                                :data $ {}
                                                  |D $ {} (:text |str) (:type :leaf) (:at 1572778504713) (:by |qvLe3TKxz) (:id |wCWIahaEHt)
                                                  |T $ {} (:text "|\"Copied! ") (:type :leaf) (:at 1572778634300) (:by |qvLe3TKxz) (:id |zNWTEZEaG6)
                                                  |j $ {} (:text |code) (:type :leaf) (:at 1572778532734) (:by |qvLe3TKxz) (:id |tC0biGmNXA)
                                                :type :expr
                                                :at 1572778503673
                                                :by |qvLe3TKxz
                                                :id |EKmt3q6oC
                                            :type :expr
                                            :at 1572778495066
                                            :by |qvLe3TKxz
                                            :id |zkPsJOvYGx
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:token) (:type :leaf) (:at 1572778513557) (:by |qvLe3TKxz) (:id |lmhl13CqJBleaf)
                                              |j $ {} (:text |code) (:type :leaf) (:at 1572778534008) (:by |qvLe3TKxz) (:id |tWkJ-Bd-0q)
                                            :type :expr
                                            :at 1572778512504
                                            :by |qvLe3TKxz
                                            :id |lmhl13CqJB
                                        :type :expr
                                        :at 1572778494265
                                        :by |qvLe3TKxz
                                        :id |3X2HWQY0Ky
                                    :type :expr
                                    :at 1572778484341
                                    :by |qvLe3TKxz
                                    :id |8EHZkDSBC4
                                :type :expr
                                :at 1572778518841
                                :by |qvLe3TKxz
                                :id |BrpPPIMLnB
                            :type :expr
                            :at 1572777396027
                            :by |qvLe3TKxz
                            :id |taXyfEJ8vL
                        :type :expr
                        :at 1572777393810
                        :by |qvLe3TKxz
                        :id |rI_iJaWsV
                    :type :expr
                    :at 1509555552551
                    :by |root
                    :id |H1YwT_wAW
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |->) (:type :leaf) (:at 1629135313786) (:by |qvLe3TKxz) (:id |H1ZfFf0OCZ)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:data) (:type :leaf) (:at 1509642880382) (:by |root) (:id |BkbBFzAu0W)
                          |j $ {} (:text |expr) (:type :leaf) (:at 1509642882123) (:by |root) (:id |r1KYzAuA-)
                        :type :expr
                        :at 1509642879121
                        :by |root
                        :id |r1wKfAd0W
                      |n $ {}
                        :data $ {}
                          |T $ {} (:text |.to-list) (:type :leaf) (:at 1629135317258) (:by |qvLe3TKxz)
                        :type :expr
                        :at 1629135315815
                        :by |qvLe3TKxz
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |.sort-by) (:type :leaf) (:at 1629135591085) (:by |qvLe3TKxz) (:id |S1oOXC_Ableaf)
                          |j $ {} (:text |first) (:type :leaf) (:at 1509643132815) (:by |root) (:id |rkgQFmAd0Z)
                        :type :expr
                        :at 1509643122704
                        :by |root
                        :id |S1oOXC_Ab
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |map-indexed) (:type :leaf) (:at 1509768804624) (:by |root) (:id |BJItXRd0Zleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1509643141300) (:by |root) (:id |rJ6FQAORb)
                              |j $ {}
                                :data $ {}
                                  |D $ {} (:text |idx) (:type :leaf) (:at 1509768807161) (:by |root) (:id |r1-0vRhqRZ)
                                  |T $ {} (:text |entry) (:type :leaf) (:at 1509643143881) (:by |root) (:id |SkmatXAdCW)
                                :type :expr
                                :at 1509643141595
                                :by |root
                                :id |By0K7C_Rb
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |let-sugar) (:type :leaf) (:at 1629135322202) (:by |qvLe3TKxz) (:id |S1z9XC_R-)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {}
                                        :data $ {}
                                          |T $ {}
                                            :data $ {}
                                              |T $ {} (:text |[]) (:type :leaf) (:at 1509643147677) (:by |root) (:id |B1m9QCuRZ)
                                              |j $ {} (:text |k) (:type :leaf) (:at 1509643148772) (:by |root) (:id |ry-E5QC_RW)
                                              |r $ {} (:text |child) (:type :leaf) (:at 1509643151149) (:by |root) (:id |SyIcX0_RZ)
                                            :type :expr
                                            :at 1509643147278
                                            :by |root
                                            :id |BJz79QCORW
                                          |j $ {} (:text |entry) (:type :leaf) (:at 1509643155377) (:by |root) (:id |Hko5m0uCW)
                                        :type :expr
                                        :at 1509643146881
                                        :by |root
                                        :id |Bk-79mAOCZ
                                    :type :expr
                                    :at 1509643146729
                                    :by |root
                                    :id |HJlmcmCO0b
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |[]) (:type :leaf) (:at 1509643157458) (:by |root) (:id |ryb3c7AO0bleaf)
                                      |j $ {} (:text |k) (:type :leaf) (:at 1509643158502) (:by |root) (:id |BkC5m0dAb)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |if) (:type :leaf) (:at 1509643164391) (:by |root) (:id |S1kimRO0-)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |=) (:type :leaf) (:at 1509643166234) (:by |root) (:id |ryZEoXCdCb)
                                              |j $ {} (:text |:expr) (:type :leaf) (:at 1509643169178) (:by |root) (:id |SJOsQAuAb)
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:type) (:type :leaf) (:at 1509643170669) (:by |root) (:id |S15omCOA-)
                                                  |j $ {} (:text |child) (:type :leaf) (:at 1509643184607) (:by |root) (:id |BkZojmCdAW)
                                                :type :expr
                                                :at 1509643169780
                                                :by |root
                                                :id |BJlco7ROAW
                                            :type :expr
                                            :at 1509643165754
                                            :by |root
                                            :id |HJIi70_RW
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |comp-expr) (:type :leaf) (:at 1509643176896) (:by |root) (:id |H1kn70dC-leaf)
                                              |j $ {} (:text |child) (:type :leaf) (:at 1509643182550) (:by |root) (:id |SJX27AuCW)
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |=) (:type :leaf) (:at 1509768857688) (:by |root) (:id |ByxWjC25A-)
                                                  |j $ {} (:text |idx) (:type :leaf) (:at 1509768859414) (:by |root) (:id |SJXoC250-)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |dec) (:type :leaf) (:at 1509768860497) (:by |root) (:id |ry4oR35R-)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |count) (:type :leaf) (:at 1509768861714) (:by |root) (:id |B1SjA3cRW)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:data) (:type :leaf) (:at 1509768862853) (:by |root) (:id |ByW8oC3qCb)
                                                              |j $ {} (:text |expr) (:type :leaf) (:at 1509768863915) (:by |root) (:id |HkQvsA2qRZ)
                                                            :type :expr
                                                            :at 1509768862263
                                                            :by |root
                                                            :id |r17LiA3c0b
                                                        :type :expr
                                                        :at 1509768861076
                                                        :by |root
                                                        :id |ByeSi03cRW
                                                    :type :expr
                                                    :at 1509768859971
                                                    :by |root
                                                    :id |HkeEoA2qRb
                                                :type :expr
                                                :at 1509768857465
                                                :by |root
                                                :id |B1W-o039R-
                                            :type :expr
                                            :at 1509643175364
                                            :by |root
                                            :id |H1kn70dC-
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |<>) (:type :leaf) (:at 1509643189491) (:by |root) (:id |ryMj2QRdRWleaf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:text) (:type :leaf) (:at 1509643195409) (:by |root) (:id |ByA2Q0uCZ)
                                                  |j $ {} (:text |child) (:type :leaf) (:at 1509643199543) (:by |root) (:id |BJmQa7A_0b)
                                                :type :expr
                                                :at 1509643190429
                                                :by |root
                                                :id |rkxR37RuCZ
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |{}) (:type :leaf) (:at 1509643229713) (:by |root) (:id |rkS1V0_RZleaf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:margin-right) (:type :leaf) (:at 1509643234408) (:by |root) (:id |BybUJER_R-)
                                                      |j $ {} (:text |8) (:type :leaf) (:at 1509643236895) (:by |root) (:id |r1EqJ40_0Z)
                                                    :type :expr
                                                    :at 1509643229967
                                                    :by |root
                                                    :id |BkGLJNC_R-
                                                :type :expr
                                                :at 1509643228596
                                                :by |root
                                                :id |rkS1V0_RZ
                                            :type :expr
                                            :at 1509643187436
                                            :by |root
                                            :id |ryMj2QRdRW
                                        :type :expr
                                        :at 1509643163501
                                        :by |root
                                        :id |S17jXCdR-
                                    :type :expr
                                    :at 1509643156363
                                    :by |root
                                    :id |ryb3c7AO0b
                                :type :expr
                                :at 1509643144620
                                :by |root
                                :id |SkWqmCd0Z
                            :type :expr
                            :at 1509643140897
                            :by |root
                            :id |B1g6KQAOCZ
                        :type :expr
                        :at 1509643133787
                        :by |root
                        :id |BJItXRd0Z
                    :type :expr
                    :at 1509642875887
                    :by |root
                    :id |rkVFf0_CZ
                :type :expr
                :at 1509555551519
                :by |root
                :id |rJ_DTdvC-
            :type :expr
            :at 1509555546987
            :by |root
            :id |Hyl7wauD0-
          |style-expr $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |hF2pr8BAmv)
              |j $ {} (:text |style-expr) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |wdlPDphu0Q)
              |r $ {}
                :data $ {}
                  |yyT $ {}
                    :data $ {}
                      |T $ {} (:text |:font-size) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |L06KOgofE0b)
                      |j $ {} (:text |13) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |_eISVSfD1k3)
                    :type :expr
                    :at 1572777390672
                    :by |qvLe3TKxz
                    :id |A7iioXf_CpL
                  |yyj $ {}
                    :data $ {}
                      |T $ {} (:text |:cursor) (:type :leaf) (:at 1572778008807) (:by |qvLe3TKxz) (:id |oJSpRoQdUQleaf)
                      |j $ {} (:text |:pointer) (:type :leaf) (:at 1572778011434) (:by |qvLe3TKxz) (:id |C-ntaZqE3s)
                    :type :expr
                    :at 1572778007173
                    :by |qvLe3TKxz
                    :id |oJSpRoQdUQ
                  |yT $ {}
                    :data $ {}
                      |T $ {} (:text |:font-family) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |58jv1cEoUqj)
                      |j $ {} (:text "||Source Code Pro, menlo") (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |SkdjDaOXmPJ)
                    :type :expr
                    :at 1572777390672
                    :by |qvLe3TKxz
                    :id |B_u5aAlq4_f
                  |yj $ {}
                    :data $ {}
                      |T $ {} (:text |:line-height) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |bLh74loI59U)
                      |j $ {} (:text ||16px) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |0sb1CNgg0DX)
                    :type :expr
                    :at 1572777390672
                    :by |qvLe3TKxz
                    :id |EhShukWiYwx
                  |yr $ {}
                    :data $ {}
                      |T $ {} (:text |:margin-bottom) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |hQG8LTOWPzJ)
                      |j $ {} (:text |2) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |QULlTqxtsOw)
                    :type :expr
                    :at 1572777390672
                    :by |qvLe3TKxz
                    :id |EZK3GKZUmkf
                  |yv $ {}
                    :data $ {}
                      |T $ {} (:text |:vertical-align) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |bAqMsapPlHK)
                      |j $ {} (:text |:top) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |cGKNJisqV-6)
                    :type :expr
                    :at 1572777390672
                    :by |qvLe3TKxz
                    :id |7Yp1ovK_dEr
                  |yx $ {}
                    :data $ {}
                      |T $ {} (:text |:min-height) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |zUgco9zcwUV)
                      |j $ {} (:text |16) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |VNdb1nYfd8v)
                    :type :expr
                    :at 1572777390672
                    :by |qvLe3TKxz
                    :id |ufUEt2Cryvb
                  |yy $ {}
                    :data $ {}
                      |T $ {} (:text |:min-width) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |Kj-cnIJVT9g)
                      |j $ {} (:text |32) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |F_uHgiB6UpF)
                    :type :expr
                    :at 1572777390672
                    :by |qvLe3TKxz
                    :id |_wRyuigrnCw
                  |T $ {} (:text |{}) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |ZYq90DvoIN)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:background-color) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |bqIekmsc2R)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |hsl) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |LTsnsBVrpI)
                          |j $ {} (:text |300) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |od97nlIC2S)
                          |r $ {} (:text |0) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |deOnCxWXEM)
                          |v $ {} (:text |94) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |X1vEI5GXN9)
                        :type :expr
                        :at 1572777390672
                        :by |qvLe3TKxz
                        :id |SVgIgHu-LV
                    :type :expr
                    :at 1572777390672
                    :by |qvLe3TKxz
                    :id |PMYKTn8qnv
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:border) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |rZHdsKzDQF)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |str) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |M_q8YSw7UUe)
                          |j $ {} (:text "||1px solid ") (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |HKWlYiB0jS0)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |hsl) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |rN-kYLOCuDT)
                              |j $ {} (:text |0) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |NlF_hJ2mRMI)
                              |r $ {} (:text |0) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |Ue_VYStwGtF)
                              |v $ {} (:text |70) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |hGZ_LIDJkdf)
                            :type :expr
                            :at 1572777390672
                            :by |qvLe3TKxz
                            :id |js3drV3a6HH
                        :type :expr
                        :at 1572777390672
                        :by |qvLe3TKxz
                        :id |Setj4DAHZe
                    :type :expr
                    :at 1572777390672
                    :by |qvLe3TKxz
                    :id |KHx19AobQ7
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:border-width) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |HHcPyREXId0)
                      |j $ {} (:text "||0 0 0 1px") (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |eEQBW9Exiw2)
                    :type :expr
                    :at 1572777390672
                    :by |qvLe3TKxz
                    :id |0Gt7BQowT4J
                  |y $ {}
                    :data $ {}
                      |T $ {} (:text |:padding) (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |Vc_ZUqa2IIJ)
                      |j $ {} (:text "||2px 16px") (:type :leaf) (:at 1572777390672) (:by |qvLe3TKxz) (:id |TCI4zcJ4th6)
                    :type :expr
                    :at 1572777390672
                    :by |qvLe3TKxz
                    :id |f9M0NIdNjJI
                :type :expr
                :at 1572777390672
                :by |qvLe3TKxz
                :id |8y0-lQAhfU
            :type :expr
            :at 1572777390672
            :by |qvLe3TKxz
            :id |fZnX8Yo_9g
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1509555543400
          :by |root
          :id |SJQJDauPA-
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1509555543400) (:by |root) (:id |rJZkP6OvCb)
            |j $ {} (:text |app.comp.expr) (:type :leaf) (:at 1509555543400) (:by |root) (:id |r1zkDTuvC-)
            |r $ {}
              :data $ {}
                |yT $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1572777607062) (:by |qvLe3TKxz) (:id |MnctWDtidleaf)
                    |j $ {} (:text "|\"copy-to-clipboard") (:type :leaf) (:at 1572777607837) (:by |qvLe3TKxz) (:id |MzndVg6Wu2)
                    |r $ {} (:text |:default) (:type :leaf) (:at 1629135539508) (:by |qvLe3TKxz) (:id |GtjtFDrJbh)
                    |v $ {} (:text |copy!) (:type :leaf) (:at 1572777614019) (:by |qvLe3TKxz) (:id |Wwgq3JKdzf)
                  :type :expr
                  :at 1572777606753
                  :by |qvLe3TKxz
                  :id |MnctWDtid
                |yj $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1572778448722) (:by |qvLe3TKxz) (:id |h2R-8oHGDJleaf)
                    |j $ {} (:text |respo-message.action) (:type :leaf) (:at 1572778462892) (:by |qvLe3TKxz) (:id |cx0HnDN32K)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1572778475662) (:by |qvLe3TKxz) (:id |ZneaaAQHR)
                    |v $ {} (:text |action) (:type :leaf) (:at 1572778477218) (:by |qvLe3TKxz) (:id |-9lRqUKhcK)
                  :type :expr
                  :at 1572778448382
                  :by |qvLe3TKxz
                  :id |h2R-8oHGDJ
                |T $ {} (:text |:require) (:type :leaf) (:at 1499755354983) (:by |root) (:id |H1egs_K9pSZ)
                |j $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |S1Mgj_K9TBZ)
                    |j $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135235228) (:text |respo-ui.core)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HkVxodtqTrW)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |BkLgidF56rb)
                        |j $ {} (:text |hsl) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SkPxidY56H-)
                      :type :expr
                      :at 1499755354983
                      :by nil
                      :id |SyHeiOYcTr-
                  :type :expr
                  :at 1499755354983
                  :by nil
                  :id |ryWeiOtqTBW
                |r $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HJtgouK5pBZ)
                    |j $ {} (:text |respo-ui.core) (:type :leaf) (:at 1520437433993) (:by |root) (:id |HJ5eouFqaHb)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HJoxsuF5pr-)
                    |v $ {} (:text |ui) (:type :leaf) (:at 1499755354983) (:by |root) (:id |r1hgjuY5TH-)
                  :type :expr
                  :at 1499755354983
                  :by nil
                  :id |Sydli_Ycarb
                |v $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |r1BodKcprZ)
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1561260993043) (:by |qvLe3TKxz) (:id |ryLoOY5pHb)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SJDjOYqaHW)
                    |v $ {}
                      :data $ {}
                        |yT $ {} (:text |input) (:type :leaf) (:at 1508429846685) (:by |root) (:id |BkpMxIL6-)
                        |yj $ {} (:text |pre) (:type :leaf) (:at 1509554773369) (:by |root) (:id |Hygn8q_D0Z)
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |S1KidKq6r-)
                        |j $ {} (:text |defcomp) (:type :leaf) (:at 1499755354983) (:by |root) (:id |B1cs_Fq6B-)
                        |r $ {} (:text |<>) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SJsiOY5pr-)
                        |t $ {} (:text |list->) (:type :leaf) (:at 1509555471438) (:by |root) (:id |Ske8zpdvAZ)
                        |v $ {} (:text |div) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SJ2oOY96S-)
                        |x $ {} (:text |button) (:type :leaf) (:at 1499755354983) (:by |root) (:id |BkpiOFq6S-)
                        |y $ {} (:text |span) (:type :leaf) (:at 1499755354983) (:by |root) (:id |r1Aj_YqaB-)
                      :type :expr
                      :at 1499755354983
                      :by nil
                      :id |H1do_K5aS-
                  :type :expr
                  :at 1499755354983
                  :by nil
                  :id |HkeqrUHCTZ
                |x $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HJH-s_t96rb)
                    |j $ {} (:text |respo.comp.space) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SyUbi_t5pH-)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root) (:id |S1v-s_KcTHZ)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |rkFWouKcTr-)
                        |j $ {} (:text |=<) (:type :leaf) (:at 1499755354983) (:by |root) (:id |Hy5WjdY5TS-)
                      :type :expr
                      :at 1499755354983
                      :by nil
                      :id |rJd-iOKc6rZ
                  :type :expr
                  :at 1499755354983
                  :by nil
                  :id |Sy4-oOt96SZ
                |y $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1572777540863) (:by |qvLe3TKxz) (:id |Z8Ri2yJfEleaf)
                    |j $ {} (:text |app.util) (:type :leaf) (:at 1572777542482) (:by |qvLe3TKxz) (:id |qA9yktdzp3)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1572777543397) (:by |qvLe3TKxz) (:id |zQbdZJr3M)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1572777543850) (:by |qvLe3TKxz) (:id |H1w0_USPp4)
                        |j $ {} (:text |tree->cirru) (:type :leaf) (:at 1572777544257) (:by |qvLe3TKxz) (:id |w-f5y2pP8u)
                      :type :expr
                      :at 1572777543595
                      :by |qvLe3TKxz
                      :id |85pghPI1M
                  :type :expr
                  :at 1572777540548
                  :by |qvLe3TKxz
                  :id |Z8Ri2yJfE
              :type :expr
              :at 1499755354983
              :by nil
              :id |SkLOadwRZ
          :type :expr
          :at 1509555543400
          :by |root
          :id |rkekwpODC-
      |app.comp.file $ {}
        :defs $ {}
          |comp-file $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1509554494012) (:by |root) (:id |SJb-BK_vCW)
              |j $ {} (:text |comp-file) (:type :leaf) (:at 1509554488853) (:by |root) (:id |SJMWHKuD0W)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |filename) (:type :leaf) (:at 1509554500539) (:by |root) (:id |SJgwStdPA-)
                  |j $ {} (:text |file-info) (:type :leaf) (:at 1509554753042) (:by |root) (:id |Syg6rF_PC-)
                :type :expr
                :at 1509554488853
                :by |root
                :id |rJ7ZrF_v0-
              |v $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1509554507620) (:by |root) (:id |rJeG8KOvCWleaf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1509554528294) (:by |root) (:id |Hy_DYOD0-)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1509554675500) (:by |root) (:id |B1xdx5dvRW)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |merge) (:type :leaf) (:at 1509643372486) (:by |root) (:id |S14uNAORb)
                              |T $ {} (:text |ui/row) (:type :leaf) (:at 1509554842026) (:by |root) (:id |rJnx5OvRW)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1509643373694) (:by |root) (:id |B1lH_4CuCZ)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:border-left) (:type :leaf) (:at 1509643376466) (:by |root) (:id |rkbL_4Au0b)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |str) (:type :leaf) (:at 1509643377689) (:by |root) (:id |HytdVR_C-)
                                          |j $ {} (:text "||1px solid ") (:type :leaf) (:at 1509643381686) (:by |root) (:id |HJb5_VAuCW)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |hsl) (:type :leaf) (:at 1509643382853) (:by |root) (:id |BJlAd4Rd0b)
                                              |j $ {} (:text |0) (:type :leaf) (:at 1509643383472) (:by |root) (:id |SyfJtVA_CW)
                                              |r $ {} (:text |0) (:type :leaf) (:at 1509643383663) (:by |root) (:id |BJetNCuAW)
                                              |v $ {} (:text |70) (:type :leaf) (:at 1509643384682) (:by |root) (:id |S1-eFEC_RW)
                                            :type :expr
                                            :at 1509643382409
                                            :by |root
                                            :id |SJWAOVCORW
                                        :type :expr
                                        :at 1509643376734
                                        :by |root
                                        :id |H1xYd4AOR-
                                    :type :expr
                                    :at 1509643374371
                                    :by |root
                                    :id |HJf8ONC_A-
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:padding-left) (:type :leaf) (:at 1509643393889) (:by |root) (:id |HJUtEAuR-leaf)
                                      |j $ {} (:text |8) (:type :leaf) (:at 1509816541725) (:by |root) (:id |HyXqtN0dCb)
                                    :type :expr
                                    :at 1509643389954
                                    :by |root
                                    :id |HJUtEAuR-
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |:font-family) (:type :leaf) (:at 1509555905190) (:by |root) (:id |BJr6Cuw0bleaf)
                                      |j $ {} (:text "||Source Code Pro, menlo") (:type :leaf) (:at 1509555914202) (:by |root) (:id |HkEYa0ODC-)
                                    :type :expr
                                    :at 1509555900902
                                    :by |root
                                    :id |rygK0u_iAW
                                :type :expr
                                :at 1509643373411
                                :by |root
                                :id |Sk-Bu40uCb
                            :type :expr
                            :at 1509643371475
                            :by |root
                            :id |By7_NAOCb
                        :type :expr
                        :at 1509554672492
                        :by |root
                        :id |BJzdeq_D0Z
                    :type :expr
                    :at 1509554527968
                    :by |root
                    :id |B1e_PYdPR-
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |<>) (:type :leaf) (:at 1509554658456) (:by |root) (:id |HyqycOwRbleaf)
                      |j $ {} (:text |filename) (:type :leaf) (:at 1509554659725) (:by |root) (:id |HkiycdDRW)
                    :type :expr
                    :at 1509554657605
                    :by |root
                    :id |HyqycOwRb
                  |x $ {}
                    :data $ {}
                      |T $ {} (:text |=<) (:type :leaf) (:at 1509554680923) (:by |root) (:id |rylZ9dDC-leaf)
                      |j $ {} (:text |16) (:type :leaf) (:at 1509554685451) (:by |root) (:id |BybbW5ODAb)
                      |r $ {} (:text |nil) (:type :leaf) (:at 1509554681780) (:by |root) (:id |B1mZWcuw0-)
                    :type :expr
                    :at 1509554679790
                    :by |root
                    :id |rylZ9dDC-
                  |y $ {}
                    :data $ {}
                      |D $ {} (:text |div) (:type :leaf) (:at 1509554836415) (:by |root) (:id |SJZoc5uvAW)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1509554837009) (:by |root) (:id |Bkz2c5uPR-)
                        :type :expr
                        :at 1509554836638
                        :by |root
                        :id |HJT9cuDAb
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1509554711203) (:by |root) (:id |SJgBf9dDR-leaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1509554712025) (:by |root) (:id |ryfk79_vRb)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1509554713787) (:by |root) (:id |B1WxX5dwRZ)
                                  |j $ {}
                                    :data $ {}
                                      |D $ {} (:text |merge) (:type :leaf) (:at 1509816220764) (:by |root) (:id |BJgesPOj0-)
                                      |T $ {} (:text |ui/column) (:type :leaf) (:at 1561264093894) (:by |qvLe3TKxz) (:id |BybMmqODCW)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1509816221591) (:by |root) (:id |SkfrswujCZ)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:border-left) (:type :leaf) (:at 1509816226135) (:by |root) (:id |ryWUjDuoAZ)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |str) (:type :leaf) (:at 1509816227964) (:by |root) (:id |B1V5oDuiC-)
                                                  |j $ {} (:text "||1px solid ") (:type :leaf) (:at 1509816230832) (:by |root) (:id |rkz3sPdi0W)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |hsl) (:type :leaf) (:at 1509816232100) (:by |root) (:id |HyxkhDus0Z)
                                                      |j $ {} (:text |0) (:type :leaf) (:at 1509816233142) (:by |root) (:id |rJ7g2wuiA-)
                                                      |r $ {} (:text |0) (:type :leaf) (:at 1509816233471) (:by |root) (:id |SyxZhvdo0W)
                                                      |v $ {} (:text |80) (:type :leaf) (:at 1509816234303) (:by |root) (:id |BJfnv_sCW)
                                                    :type :expr
                                                    :at 1509816231649
                                                    :by |root
                                                    :id |B1ehDuo0-
                                                :type :expr
                                                :at 1509816226419
                                                :by |root
                                                :id |BJHqsD_o0-
                                            :type :expr
                                            :at 1509816221794
                                            :by |root
                                            :id |H1MIsvds0-
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:padding-left) (:type :leaf) (:at 1509816257488) (:by |root) (:id |ByZ4aPuj0Wleaf)
                                              |j $ {} (:text |8) (:type :leaf) (:at 1509816259937) (:by |root) (:id |H1cTPOoRZ)
                                            :type :expr
                                            :at 1509816252512
                                            :by |root
                                            :id |ByZ4aPuj0W
                                        :type :expr
                                        :at 1509816221235
                                        :by |root
                                        :id |rkeJpwuiCb
                                    :type :expr
                                    :at 1509816215668
                                    :by |root
                                    :id |S1xowdo0b
                                :type :expr
                                :at 1509554712240
                                :by |root
                                :id |B1ze75OvRZ
                            :type :expr
                            :at 1509554711420
                            :by |root
                            :id |rkmkm5uv0-
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1509554717328) (:by |root) (:id |Bk4QcODRZleaf)
                              |j $ {} (:text |:ns) (:type :leaf) (:at 1561263937033) (:by |qvLe3TKxz) (:id |BJU79OPCW)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1561264208994) (:by |qvLe3TKxz) (:id |S1zKmq_PRb)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:color) (:type :leaf) (:at 1561264210833) (:by |qvLe3TKxz) (:id |j2odjJMhz8)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |hsl) (:type :leaf) (:at 1561264210833) (:by |qvLe3TKxz) (:id |KxhLlNcX1p)
                                          |j $ {} (:text |0) (:type :leaf) (:at 1561264210833) (:by |qvLe3TKxz) (:id |Lof8bePWia)
                                          |r $ {} (:text |0) (:type :leaf) (:at 1561264210833) (:by |qvLe3TKxz) (:id |bQqoWsa_4e)
                                          |v $ {} (:text |70) (:type :leaf) (:at 1561264210833) (:by |qvLe3TKxz) (:id |NjHX9rVf-w)
                                        :type :expr
                                        :at 1561264210833
                                        :by |qvLe3TKxz
                                        :id |5H1rQwLMIY
                                    :type :expr
                                    :at 1561264210426
                                    :by |qvLe3TKxz
                                    :id |Zt573GVtzY
                                :type :expr
                                :at 1561264208100
                                :by |qvLe3TKxz
                                :id |OI2PX80dy
                            :type :expr
                            :at 1509554715554
                            :by |root
                            :id |Bk4QcODRZ
                          |y $ {}
                            :data $ {}
                              |T $ {} (:text |comp-expr) (:type :leaf) (:at 1509555630501) (:by |root) (:id |Hyl42pOv0Wleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:ns) (:type :leaf) (:at 1509555631791) (:by |root) (:id |SJPnaOPAW)
                                  |j $ {} (:text |file-info) (:type :leaf) (:at 1509555633017) (:by |root) (:id |HJZdhT_v0W)
                                :type :expr
                                :at 1509555630964
                                :by |root
                                :id |H1gD3TuP0W
                              |r $ {} (:text |false) (:type :leaf) (:at 1520437652557) (:by |root) (:id |HygscKt6OM)
                            :type :expr
                            :at 1509555628498
                            :by |root
                            :id |Hyl42pOv0W
                        :type :expr
                        :at 1509554701042
                        :by |root
                        :id |SJgBf9dDR-
                      |f $ {}
                        :data $ {}
                          |T $ {} (:text |list->) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |Uslh9GecZG)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |58BQUtz79q)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |XIz0QWXM48)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |zYQHN5GVvE)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:border-left) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |8Q4xWzlUlf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |str) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |sx95Sh3DaU)
                                              |j $ {} (:text "||1px solid ") (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |fwwErJgYfd)
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |hsl) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |A1Lol-2NlB0)
                                                  |j $ {} (:text |0) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |r4ttNK4c9pt)
                                                  |r $ {} (:text |0) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |5axHHaAhCvr)
                                                  |v $ {} (:text |70) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |E8YZcIqkPmO)
                                                :type :expr
                                                :at 1561263925643
                                                :by |qvLe3TKxz
                                                :id |kxzJT3PKeo
                                            :type :expr
                                            :at 1561263925643
                                            :by |qvLe3TKxz
                                            :id |16GpoHoLbn
                                        :type :expr
                                        :at 1561263925643
                                        :by |qvLe3TKxz
                                        :id |FszAtO2gaL
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:padding-left) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |TqHBH-7qUGc)
                                          |j $ {} (:text |16) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |D0ymuaVLkmK)
                                        :type :expr
                                        :at 1561263925643
                                        :by |qvLe3TKxz
                                        :id |RLU-X8ENFm4
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:margin-bottom) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |oI5IB9E7EYZ)
                                          |j $ {} (:text |2) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |x0yWS7qwnMo)
                                        :type :expr
                                        :at 1561263925643
                                        :by |qvLe3TKxz
                                        :id |wVO6t65-D3S
                                    :type :expr
                                    :at 1561263925643
                                    :by |qvLe3TKxz
                                    :id |KELksnOcZG
                                :type :expr
                                :at 1561263925643
                                :by |qvLe3TKxz
                                :id |vbg2LQvCDX
                            :type :expr
                            :at 1561263925643
                            :by |qvLe3TKxz
                            :id |pHrY1GvfqC
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |->) (:type :leaf) (:at 1629135330352) (:by |qvLe3TKxz) (:id |vg9Xh-KrOaS)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:defs) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |D6qt8fVErlX)
                                  |j $ {} (:text |file-info) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |Q7QQH8iNxIv)
                                :type :expr
                                :at 1561263925643
                                :by |qvLe3TKxz
                                :id |Ak3WRefhMEJ
                              |n $ {}
                                :data $ {}
                                  |T $ {} (:text |.to-list) (:type :leaf) (:at 1629135333797) (:by |qvLe3TKxz)
                                :type :expr
                                :at 1629135331565
                                :by |qvLe3TKxz
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |map) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |Y-Ti6XCpbHQ)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |g0L1XvWtGnW)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |entry) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |YNlZttce4Ev)
                                        :type :expr
                                        :at 1561263925643
                                        :by |qvLe3TKxz
                                        :id |OH_z3FLPSVE
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |let-sugar) (:type :leaf) (:at 1629135336412) (:by |qvLe3TKxz) (:id |ZaEGDOuh_yj)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {}
                                                :data $ {}
                                                  |T $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |[]) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |XzjmhBkxOJI)
                                                      |j $ {} (:text |def-name) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |P9IHtc7mwIt)
                                                      |r $ {} (:text |def-info) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |yUlZLcuLyqp)
                                                    :type :expr
                                                    :at 1561263925643
                                                    :by |qvLe3TKxz
                                                    :id |-pa4ppKL2LW
                                                  |j $ {} (:text |entry) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |GFqWOw5Mw33)
                                                :type :expr
                                                :at 1561263925643
                                                :by |qvLe3TKxz
                                                :id |SDGo0AEQlmF
                                            :type :expr
                                            :at 1561263925643
                                            :by |qvLe3TKxz
                                            :id |xOuBgzShVwn
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |[]) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |UNMwN6bOo4f)
                                              |j $ {} (:text |def-name) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |NCuhnNAAGQT)
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |div) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |N8YaP0hRckc)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |{}) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |CcrSS1_5tK2)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:style) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |E5ywseYjsiw)
                                                          |j $ {} (:text |ui/column) (:type :leaf) (:at 1561264087377) (:by |qvLe3TKxz) (:id |Tv33cFwVLOS)
                                                        :type :expr
                                                        :at 1561263925643
                                                        :by |qvLe3TKxz
                                                        :id |Ke8KzsPgdp3
                                                    :type :expr
                                                    :at 1561263925643
                                                    :by |qvLe3TKxz
                                                    :id |xSk9CptI01i
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |<>) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |Y8bzhx8vqzv)
                                                      |j $ {} (:text |def-name) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |kkcAubi2nx8)
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |{}) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |1fx3c8IJG20)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:white-space) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |xSvAQs6lNnL)
                                                              |j $ {} (:text |:nowrap) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |KUUcsjTft6t)
                                                            :type :expr
                                                            :at 1561263925643
                                                            :by |qvLe3TKxz
                                                            :id |odk6vvjSj8n
                                                          |r $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:color) (:type :leaf) (:at 1561264190132) (:by |qvLe3TKxz) (:id |NhcjEIXHNW)
                                                              |j $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |hsl) (:type :leaf) (:at 1561264190132) (:by |qvLe3TKxz) (:id |DsygiTTYaX)
                                                                  |j $ {} (:text |0) (:type :leaf) (:at 1561264190132) (:by |qvLe3TKxz) (:id |seWX7-JgD4)
                                                                  |r $ {} (:text |0) (:type :leaf) (:at 1561264190132) (:by |qvLe3TKxz) (:id |H-Xzze0zpP)
                                                                  |v $ {} (:text |70) (:type :leaf) (:at 1561264190132) (:by |qvLe3TKxz) (:id |T8bshPq5yS)
                                                                :type :expr
                                                                :at 1561264190132
                                                                :by |qvLe3TKxz
                                                                :id |f2EJi3ZTph
                                                            :type :expr
                                                            :at 1561264190132
                                                            :by |qvLe3TKxz
                                                            :id |cd2Z8nF4g_
                                                        :type :expr
                                                        :at 1561263925643
                                                        :by |qvLe3TKxz
                                                        :id |M14Z_3W5lGA
                                                    :type :expr
                                                    :at 1561263925643
                                                    :by |qvLe3TKxz
                                                    :id |XjTYs2BLA0D
                                                  |x $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |comp-expr) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |4RFGmnxMrc-)
                                                      |j $ {} (:text |def-info) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |KhH_wfVBYci)
                                                      |r $ {} (:text |false) (:type :leaf) (:at 1561263925643) (:by |qvLe3TKxz) (:id |3EE5vc5NWc-)
                                                    :type :expr
                                                    :at 1561263925643
                                                    :by |qvLe3TKxz
                                                    :id |rJLFeRkEr5-
                                                :type :expr
                                                :at 1561263925643
                                                :by |qvLe3TKxz
                                                :id |7WRF7aVK5m6
                                            :type :expr
                                            :at 1561263925643
                                            :by |qvLe3TKxz
                                            :id |jZWzAgGdO0r
                                        :type :expr
                                        :at 1561263925643
                                        :by |qvLe3TKxz
                                        :id |rJQw_KfLlHr
                                    :type :expr
                                    :at 1561263925643
                                    :by |qvLe3TKxz
                                    :id |AWfd9ED8gNi
                                :type :expr
                                :at 1561263925643
                                :by |qvLe3TKxz
                                :id |PrGfevc2SFF
                            :type :expr
                            :at 1561263925643
                            :by |qvLe3TKxz
                            :id |FbUdvRccP2D
                        :type :expr
                        :at 1561263925643
                        :by |qvLe3TKxz
                        :id |2CprvYj9iR
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1509554711203) (:by |root) (:id |SJgBf9dDR-leaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1509554712025) (:by |root) (:id |ryfk79_vRb)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1509554713787) (:by |root) (:id |B1WxX5dwRZ)
                                  |j $ {}
                                    :data $ {}
                                      |D $ {} (:text |merge) (:type :leaf) (:at 1509816265130) (:by |root) (:id |B1blRwus0W)
                                      |T $ {} (:text |ui/column) (:type :leaf) (:at 1561264098864) (:by |qvLe3TKxz) (:id |BybMmqODCW)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1509816221591) (:by |root) (:id |SkfrswujCZ)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:border-left) (:type :leaf) (:at 1509816226135) (:by |root) (:id |ryWUjDuoAZ)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |str) (:type :leaf) (:at 1509816227964) (:by |root) (:id |B1V5oDuiC-)
                                                  |j $ {} (:text "||1px solid ") (:type :leaf) (:at 1509816230832) (:by |root) (:id |rkz3sPdi0W)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |hsl) (:type :leaf) (:at 1509816232100) (:by |root) (:id |HyxkhDus0Z)
                                                      |j $ {} (:text |0) (:type :leaf) (:at 1509816233142) (:by |root) (:id |rJ7g2wuiA-)
                                                      |r $ {} (:text |0) (:type :leaf) (:at 1509816233471) (:by |root) (:id |SyxZhvdo0W)
                                                      |v $ {} (:text |80) (:type :leaf) (:at 1509816234303) (:by |root) (:id |BJfnv_sCW)
                                                    :type :expr
                                                    :at 1509816231649
                                                    :by |root
                                                    :id |B1ehDuo0-
                                                :type :expr
                                                :at 1509816226419
                                                :by |root
                                                :id |BJHqsD_o0-
                                            :type :expr
                                            :at 1509816221794
                                            :by |root
                                            :id |H1MIsvds0-
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:padding-left) (:type :leaf) (:at 1509816257488) (:by |root) (:id |ByZ4aPuj0Wleaf)
                                              |j $ {} (:text |8) (:type :leaf) (:at 1509816259937) (:by |root) (:id |H1cTPOoRZ)
                                            :type :expr
                                            :at 1509816252512
                                            :by |root
                                            :id |ByZ4aPuj0W
                                        :type :expr
                                        :at 1509816221235
                                        :by |root
                                        :id |r1bMRD_oCZ
                                    :type :expr
                                    :at 1509816264164
                                    :by |root
                                    :id |ryelAvds0-
                                :type :expr
                                :at 1509554712240
                                :by |root
                                :id |B1ze75OvRZ
                            :type :expr
                            :at 1509554711420
                            :by |root
                            :id |rkmkm5uv0-
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1509554717328) (:by |root) (:id |Bk4QcODRZleaf)
                              |j $ {} (:text |:proc) (:type :leaf) (:at 1561263943206) (:by |qvLe3TKxz) (:id |BJU79OPCW)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1561264173210) (:by |qvLe3TKxz) (:id |S1zKmq_PRb)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:color) (:type :leaf) (:at 1561264175719) (:by |qvLe3TKxz) (:id |SRPA0PlRe7)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |hsl) (:type :leaf) (:at 1561264176421) (:by |qvLe3TKxz) (:id |yMs50ZWQ3e)
                                          |j $ {} (:text |0) (:type :leaf) (:at 1561264177792) (:by |qvLe3TKxz) (:id |yH4Sxw4dF)
                                          |r $ {} (:text |0) (:type :leaf) (:at 1561264178627) (:by |qvLe3TKxz) (:id |uGCCVLo64M)
                                          |v $ {} (:text |70) (:type :leaf) (:at 1561264179690) (:by |qvLe3TKxz) (:id |kEZpIGi8lP)
                                        :type :expr
                                        :at 1561264175987
                                        :by |qvLe3TKxz
                                        :id |hSkTppn1Xr
                                    :type :expr
                                    :at 1561264173495
                                    :by |qvLe3TKxz
                                    :id |45owqb1Cv5
                                :type :expr
                                :at 1561264171715
                                :by |qvLe3TKxz
                                :id |6yi2mcnN9
                            :type :expr
                            :at 1509554715554
                            :by |root
                            :id |Bk4QcODRZ
                          |y $ {}
                            :data $ {}
                              |T $ {} (:text |comp-expr) (:type :leaf) (:at 1509555622227) (:by |root) (:id |Bye2iTdP0-leaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:proc) (:type :leaf) (:at 1509555623277) (:by |root) (:id |SkbCjaOPAb)
                                  |j $ {} (:text |file-info) (:type :leaf) (:at 1509555624637) (:by |root) (:id |S1ry36uPAZ)
                                :type :expr
                                :at 1509555622586
                                :by |root
                                :id |rJk2T_PC-
                              |r $ {} (:text |false) (:type :leaf) (:at 1520437660659) (:by |root) (:id |HJloYKp_z)
                            :type :expr
                            :at 1509555620007
                            :by |root
                            :id |Bye2iTdP0-
                        :type :expr
                        :at 1509554701042
                        :by |root
                        :id |B1-koq_DCW
                    :type :expr
                    :at 1509554834867
                    :by |root
                    :id |SygsccdDA-
                :type :expr
                :at 1509554506156
                :by |root
                :id |rJeG8KOvCW
            :type :expr
            :at 1509554488853
            :by |root
            :id |BJgWHY_DAb
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1509554484375
          :by |root
          :id |HymnVKuvCW
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1509554484375) (:by |root) (:id |Skb34FdDCW)
            |j $ {} (:text |app.comp.file) (:type :leaf) (:at 1509554484375) (:by |root) (:id |Hkz2EYuP0Z)
            |r $ {}
              :data $ {}
                |T $ {} (:text |:require) (:type :leaf) (:at 1499755354983) (:by |root) (:id |H1egs_K9pSZ)
                |j $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |S1Mgj_K9TBZ)
                    |j $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135226230) (:text |respo-ui.core)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HkVxodtqTrW)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |BkLgidF56rb)
                        |j $ {} (:text |hsl) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SkPxidY56H-)
                      :type :expr
                      :at 1499755354983
                      :by nil
                      :id |SyHeiOYcTr-
                  :type :expr
                  :at 1499755354983
                  :by nil
                  :id |ryWeiOtqTBW
                |r $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HJtgouK5pBZ)
                    |j $ {} (:text |respo-ui.core) (:type :leaf) (:at 1520437442937) (:by |root) (:id |HJ5eouFqaHb)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HJoxsuF5pr-)
                    |v $ {} (:text |ui) (:type :leaf) (:at 1499755354983) (:by |root) (:id |r1hgjuY5TH-)
                  :type :expr
                  :at 1499755354983
                  :by nil
                  :id |Sydli_Ycarb
                |v $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |r1BodKcprZ)
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1561260960880) (:by |qvLe3TKxz) (:id |ryLoOY5pHb)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SJDjOYqaHW)
                    |v $ {}
                      :data $ {}
                        |yT $ {} (:text |input) (:type :leaf) (:at 1508429846685) (:by |root) (:id |BkpMxIL6-)
                        |yj $ {} (:text |pre) (:type :leaf) (:at 1509554773369) (:by |root) (:id |Hygn8q_D0Z)
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |S1KidKq6r-)
                        |j $ {} (:text |defcomp) (:type :leaf) (:at 1499755354983) (:by |root) (:id |B1cs_Fq6B-)
                        |r $ {} (:text |<>) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SJsiOY5pr-)
                        |t $ {} (:text |list->) (:type :leaf) (:at 1509555471438) (:by |root) (:id |Ske8zpdvAZ)
                        |v $ {} (:text |div) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SJ2oOY96S-)
                        |x $ {} (:text |button) (:type :leaf) (:at 1499755354983) (:by |root) (:id |BkpiOFq6S-)
                        |y $ {} (:text |span) (:type :leaf) (:at 1499755354983) (:by |root) (:id |r1Aj_YqaB-)
                      :type :expr
                      :at 1499755354983
                      :by nil
                      :id |H1do_K5aS-
                  :type :expr
                  :at 1499755354983
                  :by nil
                  :id |HkeqrUHCTZ
                |x $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HJH-s_t96rb)
                    |j $ {} (:text |respo.comp.space) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SyUbi_t5pH-)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root) (:id |S1v-s_KcTHZ)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |rkFWouKcTr-)
                        |j $ {} (:text |=<) (:type :leaf) (:at 1499755354983) (:by |root) (:id |Hy5WjdY5TS-)
                      :type :expr
                      :at 1499755354983
                      :by nil
                      :id |rJd-iOKc6rZ
                  :type :expr
                  :at 1499755354983
                  :by nil
                  :id |Sy4-oOt96SZ
                |y $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1509555591417) (:by |root) (:id |BygCtpuwAWleaf)
                    |j $ {} (:text |app.comp.expr) (:type :leaf) (:at 1509555593603) (:by |root) (:id |H1g56OwCZ)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1509555594384) (:by |root) (:id |Bklz9pdv0Z)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1509555594734) (:by |root) (:id |ryPMqadvA-)
                        |j $ {} (:text |comp-expr) (:type :leaf) (:at 1509555597682) (:by |root) (:id |rJGQ5puwAZ)
                      :type :expr
                      :at 1509555594536
                      :by |root
                      :id |ry7qTOD0-
                  :type :expr
                  :at 1509555589943
                  :by |root
                  :id |BygCtpuwAW
              :type :expr
              :at 1499755354983
              :by nil
              :id |H1W1DK_DRW
          :type :expr
          :at 1509554484375
          :by |root
          :id |SyenEt_PAb
      |app.comp.container $ {}
        :defs $ {}
          |comp-file-input $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1520439399409) (:by |root) (:id |SyWaDlcaOz)
              |j $ {} (:text |comp-file-input) (:type :leaf) (:at 1520439397186) (:by |root) (:id |B1G6De96dM)
              |n $ {}
                :data $ {}
                  |T $ {} (:text |error) (:type :leaf) (:at 1520441357257) (:by |root) (:id |HygNzOcTuf)
                :type :expr
                :at 1520439400488
                :by |root
                :id |BJ-lOgcp_M
              |r $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1520439397186) (:by |root) (:id |HyNawgq6Of)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1520439397186) (:by |root) (:id |S18TDl5p_f)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1520439397186) (:by |root) (:id |Sy_avx5auG)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1520439397186) (:by |root) (:id |S1caDe5aOM)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:padding) (:type :leaf) (:at 1520439397186) (:by |root) (:id |r13pve5adz)
                                  |j $ {} (:text |16) (:type :leaf) (:at 1520439397186) (:by |root) (:id |ByTavl56Oz)
                                :type :expr
                                :at 1520439397186
                                :by |root
                                :id |rJsawl9TdG
                            :type :expr
                            :at 1520439397186
                            :by |root
                            :id |Skt6DxqTOz
                        :type :expr
                        :at 1520439397186
                        :by |root
                        :id |H1vTweqa_M
                    :type :expr
                    :at 1520439397186
                    :by |root
                    :id |BkH6Px5puz
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |<>) (:type :leaf) (:at 1520439397186) (:by |root) (:id |r11e6wl5aOf)
                      |j $ {} (:text "|\"Pick calcit.cirru to view:") (:type :leaf) (:at 1596681265032) (:by |qvLe3TKxz) (:id |BkxeaPxc6_z)
                    :type :expr
                    :at 1520439397186
                    :by |root
                    :id |Hk0pDx9T_G
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |=<) (:type :leaf) (:at 1520439397186) (:by |root) (:id |rJGeaDx9T_f)
                      |j $ {} (:text |8) (:type :leaf) (:at 1520439397186) (:by |root) (:id |rkXeaDg5p_M)
                      |r $ {} (:text |nil) (:type :leaf) (:at 1520439397186) (:by |root) (:id |SJ4gTPg96uG)
                    :type :expr
                    :at 1520439397186
                    :by |root
                    :id |BkZgaPecp_f
                  |x $ {}
                    :data $ {}
                      |T $ {} (:text |input) (:type :leaf) (:at 1520439397186) (:by |root) (:id |rkUlpvx9adf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1520439397186) (:by |root) (:id |r1_xaPx5T_M)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:type) (:type :leaf) (:at 1520439397186) (:by |root) (:id |Sk5xTPx9TOG)
                              |j $ {} (:text "|\"file") (:type :leaf) (:at 1561261922065) (:by |qvLe3TKxz) (:id |HkjxpPe9a_M)
                            :type :expr
                            :at 1520439397186
                            :by |root
                            :id |SyYxaPeq6_f
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |:accept) (:type :leaf) (:at 1520439397186) (:by |root) (:id |BJTlpDx9a_f)
                              |j $ {} (:text "|\".cirru") (:type :leaf) (:at 1596681198378) (:by |qvLe3TKxz) (:id |rJRx6wxcadG)
                            :type :expr
                            :at 1520439397186
                            :by |root
                            :id |BJ3l6veqpOz
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |:on-change) (:type :leaf) (:at 1596681195994) (:by |qvLe3TKxz) (:id |DejPFohIQ1)
                              |j $ {} (:text |on-file-change) (:type :leaf) (:at 1596681195994) (:by |qvLe3TKxz) (:id |pvQ--3Tc4-)
                            :type :expr
                            :at 1596681195994
                            :by |qvLe3TKxz
                            :id |fOnAoBWTjL
                        :type :expr
                        :at 1520439397186
                        :by |root
                        :id |ByvlawlqauM
                    :type :expr
                    :at 1520439397186
                    :by |root
                    :id |H1HxaDe56uG
                  |y $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1520441372420) (:by |root) (:id |SyV7d56dz)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1520441373008) (:by |root) (:id |HkHm_56df)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1520441383816) (:by |root) (:id |HylyVu96dM)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1520441385199) (:by |root) (:id |HJMlV_cpdM)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:color) (:type :leaf) (:at 1520441387778) (:by |root) (:id |SyXb4d9Tuf)
                                      |j $ {} (:text |:red) (:type :leaf) (:at 1520441388383) (:by |root) (:id |HkZ4Vuqpdz)
                                    :type :expr
                                    :at 1520441385539
                                    :by |root
                                    :id |H1zEu56OG
                                :type :expr
                                :at 1520441384848
                                :by |root
                                :id |BJWV_qp_M
                            :type :expr
                            :at 1520441383100
                            :by |root
                            :id |r1bk4Oq6dz
                        :type :expr
                        :at 1520441372686
                        :by |root
                        :id |SkgHmdc6_z
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |<>) (:type :leaf) (:at 1520441379477) (:by |root) (:id |HyPXd5T_fleaf)
                          |j $ {} (:text |error) (:type :leaf) (:at 1520441380748) (:by |root) (:id |Hyn7u56_z)
                        :type :expr
                        :at 1520441375005
                        :by |root
                        :id |HyPXd5T_f
                    :type :expr
                    :at 1520441359637
                    :by |root
                    :id |HJuzd56Of
                :type :expr
                :at 1520439397186
                :by |root
                :id |B1XpDlcT_z
            :type :expr
            :at 1520439397186
            :by |root
            :id |rkg6Px9a_G
          |comp-container $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1499755354983) (:by |root) (:id |Hy6-sOYqaSb)
              |j $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HyC-jOFq6r-)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |reel) (:type :leaf) (:at 1507461830530) (:by |root) (:id |r1gMj_KqTSZ)
                :type :expr
                :at 1499755354983
                :by nil
                :id |H1yfo_t9aB-
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1507461833421) (:by |root) (:id |SkGx0cFPh-)
                  |L $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |store) (:type :leaf) (:at 1507461835738) (:by |root) (:id |SyMAqtD2W)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:store) (:type :leaf) (:at 1507461837276) (:by |root) (:id |r1GEC5Kv3Z)
                              |j $ {} (:text |reel) (:type :leaf) (:at 1507461838285) (:by |root) (:id |B1NBC5tPh-)
                            :type :expr
                            :at 1507461836110
                            :by |root
                            :id |S1XN05tw3-
                        :type :expr
                        :at 1507461834650
                        :by |root
                        :id |Hy7CcFP3W
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |states) (:type :leaf) (:at 1509554105323) (:by |root) (:id |rkeeawuvAWleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:states) (:type :leaf) (:at 1509554109477) (:by |root) (:id |rJS-avuDA-)
                              |j $ {} (:text |store) (:type :leaf) (:at 1509554111945) (:by |root) (:id |H1UawdvCb)
                            :type :expr
                            :at 1509554105592
                            :by |root
                            :id |r1GTDdvA-
                        :type :expr
                        :at 1509554104408
                        :by |root
                        :id |rkeeawuvAW
                    :type :expr
                    :at 1507461834351
                    :by |root
                    :id |SyeGC5tw3-
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1499755354983) (:by |root) (:id |B1zMoOFc6HZ)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1499755354983) (:by |root) (:id |Bk4GoOt5aSZ)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1499755354983) (:by |root) (:id |Bk8ModK9pHW)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |merge) (:type :leaf) (:at 1499755354983) (:by |root) (:id |BydGiOKqpHW)
                                  |j $ {} (:text |ui/global) (:type :leaf) (:at 1520439489524) (:by |root) (:id |rktMsOY56HW)
                                  |n $ {} (:text |ui/fullscreen) (:type :leaf) (:at 1520440238025) (:by |root) (:id |r1E2Q9pOz)
                                  |r $ {} (:text |ui/row) (:type :leaf) (:at 1520439515620) (:by |root) (:id |rkxzJZq6_z)
                                :type :expr
                                :at 1499755354983
                                :by nil
                                :id |rJDfsutcaBb
                            :type :expr
                            :at 1499755354983
                            :by nil
                            :id |BkBzj_F5TrW
                        :type :expr
                        :at 1499755354983
                        :by nil
                        :id |Hy7Gj_YcaSb
                      |o $ {}
                        :data $ {}
                          |D $ {} (:text |let) (:type :leaf) (:at 1520439930783) (:by |root) (:id |Bk-FM5puf)
                          |L $ {}
                            :data $ {}
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |page) (:type :leaf) (:at 1520439932524) (:by |root) (:id |B1WQYM56uG)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:page) (:type :leaf) (:at 1520439933409) (:by |root) (:id |HygBKf9pOM)
                                      |j $ {} (:text |store) (:type :leaf) (:at 1520439934101) (:by |root) (:id |HJdrtMca_z)
                                    :type :expr
                                    :at 1520439932791
                                    :by |root
                                    :id |B1-rKGcadf
                                :type :expr
                                :at 1520439931648
                                :by |root
                                :id |Hk4Yf5adz
                            :type :expr
                            :at 1520439931053
                            :by |root
                            :id |r1fQtfca_f
                          |T $ {}
                            :data $ {}
                              |yT $ {}
                                :data $ {}
                                  |T $ {} (:text |comp-entry) (:type :leaf) (:at 1520440020809) (:by |root) (:id |BkboRz5pdMleaf)
                                  |j $ {} (:text |:info) (:type :leaf) (:at 1561261586533) (:by |qvLe3TKxz) (:id |SyX6Cf5Tuz)
                                  |r $ {} (:text |:about) (:type :leaf) (:at 1520441079037) (:by |root) (:id |rJMS-mc6OG)
                                  |v $ {} (:text |page) (:type :leaf) (:at 1520440069322) (:by |root) (:id |SkcZQcauf)
                                :type :expr
                                :at 1520440019391
                                :by |root
                                :id |ryg20L5adf
                              |T $ {} (:text |div) (:type :leaf) (:at 1520439519943) (:by |root) (:id |HJlPJWq6Ozleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1520439523244) (:by |root) (:id |BkM_kZ9aOz)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1520440225376) (:by |root) (:id |BkxOim5auM)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1520440226557) (:by |root) (:id |SJQKomqpdG)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:background-color) (:type :leaf) (:at 1520440229434) (:by |root) (:id |HkljiQ5aOG)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |hsl) (:type :leaf) (:at 1520440230742) (:by |root) (:id |HJAs75p_z)
                                                  |j $ {} (:text |200) (:type :leaf) (:at 1520440254366) (:by |root) (:id |H1lJn7cTuf)
                                                  |r $ {} (:text |30) (:type :leaf) (:at 1520440263556) (:by |root) (:id |Skz1hX5auz)
                                                  |v $ {} (:text |24) (:type :leaf) (:at 1520440268066) (:by |root) (:id |B1V12m96_G)
                                                :type :expr
                                                :at 1520440229698
                                                :by |root
                                                :id |H1l0j756OM
                                            :type :expr
                                            :at 1520440226895
                                            :by |root
                                            :id |ryWssXqpdG
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:color) (:type :leaf) (:at 1520440244531) (:by |root) (:id |B1nhmcT_Mleaf)
                                              |j $ {} (:text |:white) (:type :leaf) (:at 1520440245538) (:by |root) (:id |r1gan79pdz)
                                            :type :expr
                                            :at 1520440243584
                                            :by |root
                                            :id |B1nhmcT_M
                                        :type :expr
                                        :at 1520440225589
                                        :by |root
                                        :id |H19o7q6dG
                                    :type :expr
                                    :at 1520440223880
                                    :by |root
                                    :id |By-OsX56dM
                                :type :expr
                                :at 1520439520176
                                :by |root
                                :id |ryQuJ-56Oz
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |comp-entry) (:type :leaf) (:at 1520439939799) (:by |root) (:id |r1gttzcp_Mleaf)
                                  |j $ {} (:text |:upload) (:type :leaf) (:at 1520439941121) (:by |root) (:id |Bkmhtz5TdG)
                                  |n $ {} (:text |:input) (:type :leaf) (:at 1520440000401) (:by |root) (:id |SygP6Mqadf)
                                  |r $ {} (:text |page) (:type :leaf) (:at 1520439943437) (:by |root) (:id |Bkk5z9pOM)
                                :type :expr
                                :at 1520439936989
                                :by |root
                                :id |r1gttzcp_M
                              |x $ {}
                                :data $ {}
                                  |T $ {} (:text |comp-entry) (:type :leaf) (:at 1520439949006) (:by |root) (:id |SJQcGq6_Mleaf)
                                  |j $ {} (:text |:edit) (:type :leaf) (:at 1561261620850) (:by |qvLe3TKxz) (:id |Sk4rcM5puf)
                                  |n $ {} (:text |:textarea) (:type :leaf) (:at 1520439997042) (:by |root) (:id |SJgpfqT_z)
                                  |r $ {} (:text |page) (:type :leaf) (:at 1520439991462) (:by |root) (:id |BJIC3Gq6OG)
                                :type :expr
                                :at 1520439947115
                                :by |root
                                :id |SJQcGq6_M
                              |y $ {}
                                :data $ {}
                                  |T $ {} (:text |comp-entry) (:type :leaf) (:at 1520440020809) (:by |root) (:id |BkboRz5pdMleaf)
                                  |j $ {} (:text |:monitor) (:type :leaf) (:at 1561261605150) (:by |qvLe3TKxz) (:id |SyX6Cf5Tuz)
                                  |r $ {} (:text |:viewer) (:type :leaf) (:at 1520440064834) (:by |root) (:id |rJMS-mc6OG)
                                  |v $ {} (:text |page) (:type :leaf) (:at 1520440069322) (:by |root) (:id |SkcZQcauf)
                                :type :expr
                                :at 1520440019391
                                :by |root
                                :id |BkboRz5pdM
                            :type :expr
                            :at 1520439519461
                            :by |root
                            :id |HJlPJWq6Oz
                        :type :expr
                        :at 1520439928266
                        :by |root
                        :id |rylFzcTuf
                      |t $ {}
                        :data $ {}
                          |xT $ {}
                            :data $ {}
                              |T $ {} (:text |:about) (:type :leaf) (:at 1520441021171) (:by |root) (:id |HkVp896dGleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |comp-about) (:type :leaf) (:at 1520441024620) (:by |root) (:id |BkU6L9p_f)
                                :type :expr
                                :at 1520441022136
                                :by |root
                                :id |rJgIT89a_f
                            :type :expr
                            :at 1520441019750
                            :by |root
                            :id |HkVp896dG
                          |T $ {} (:text |case-default) (:type :leaf) (:at 1629135816362) (:by |qvLe3TKxz) (:id |SJcdlcTOf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:page) (:type :leaf) (:at 1520439414344) (:by |root) (:id |By-jOecpdM)
                              |j $ {} (:text |store) (:type :leaf) (:at 1520439418868) (:by |root) (:id |r170deqpdf)
                            :type :expr
                            :at 1520439412049
                            :by |root
                            :id |S1nul5pOG
                          |n $ {}
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135817398) (:text |<>)
                              |j $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135817398) (:text "|\"Unknown route")
                            :type :expr
                            :at 1629135817398
                            :by |qvLe3TKxz
                          |r $ {}
                            :data $ {}
                              |D $ {} (:text |:viewer) (:type :leaf) (:at 1520439454674) (:by |root) (:id |rJWEYxqp_z)
                              |T $ {}
                                :data $ {}
                                  |D $ {} (:text |div) (:type :leaf) (:at 1508431046287) (:by |root) (:id |BJWa6VILaW)
                                  |L $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1508430884516) (:by |root) (:id |BJbnQN8IaZ)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:style) (:type :leaf) (:at 1508430894564) (:by |root) (:id |BJ-BNVULTZ)
                                          |j $ {}
                                            :data $ {}
                                              |D $ {} (:text |merge) (:type :leaf) (:at 1561263503784) (:by |qvLe3TKxz) (:id |BbwElXDtlG)
                                              |L $ {} (:text |ui/expand) (:type :leaf) (:at 1561263506751) (:by |qvLe3TKxz) (:id |sAdsUpWE51)
                                              |T $ {}
                                                :data $ {}
                                                  |T $ {} (:text |{}) (:type :leaf) (:at 1508430895222) (:by |root) (:id |rygDEEIITb)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:padding) (:type :leaf) (:at 1508431016475) (:by |root) (:id |rJxy3NILpZleaf)
                                                      |j $ {} (:text |16) (:type :leaf) (:at 1508431017942) (:by |root) (:id |H1Wn4L8p-)
                                                    :type :expr
                                                    :at 1508431015309
                                                    :by |root
                                                    :id |rJxy3NILpZ
                                                  |v $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:overflow) (:type :leaf) (:at 1520439538154) (:by |root) (:id |S1Z_xZc6uzleaf)
                                                      |j $ {} (:text |:auto) (:type :leaf) (:at 1520439539585) (:by |root) (:id |HJXql-cTOG)
                                                    :type :expr
                                                    :at 1520439536386
                                                    :by |root
                                                    :id |S1Z_xZc6uz
                                                :type :expr
                                                :at 1508430894905
                                                :by |root
                                                :id |rJWwNNIUaZ
                                            :type :expr
                                            :at 1561263502082
                                            :by |qvLe3TKxz
                                            :id |6kwGVRrSoo
                                        :type :expr
                                        :at 1508430893717
                                        :by |root
                                        :id |Hy8NNILaZ
                                    :type :expr
                                    :at 1508430884148
                                    :by |root
                                    :id |S1xWC48LpW
                                  |T $ {}
                                    :data $ {}
                                      |D $ {} (:text |if) (:type :leaf) (:at 1508430869746) (:by |root) (:id |HJl2z4UL6W)
                                      |L $ {}
                                        :data $ {}
                                          |T $ {} (:text |some?) (:type :leaf) (:at 1508430877114) (:by |root) (:id |B1x4Q4UI6b)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:error) (:type :leaf) (:at 1508430878400) (:by |root) (:id |HkVSmN8Up-)
                                              |j $ {} (:text |store) (:type :leaf) (:at 1508430879207) (:by |root) (:id |BJwXN8I6W)
                                            :type :expr
                                            :at 1508430877433
                                            :by |root
                                            :id |HySSXV88TZ
                                        :type :expr
                                        :at 1508430876212
                                        :by |root
                                        :id |ryWNmVLIaW
                                      |P $ {}
                                        :data $ {}
                                          |T $ {} (:text |<>) (:type :leaf) (:at 1508430887277) (:by |root) (:id |ry0mEI86Zleaf)
                                          |b $ {} (:text |span) (:type :leaf) (:at 1508431064396) (:by |root) (:id |Hyxlyr8UTZ)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:error) (:type :leaf) (:at 1508430889081) (:by |root) (:id |ryeE4U8aW)
                                              |j $ {} (:text |store) (:type :leaf) (:at 1508430891358) (:by |root) (:id |SyfNNIIT-)
                                            :type :expr
                                            :at 1508430888217
                                            :by |root
                                            :id |H1xx4E8IaZ
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |{}) (:type :leaf) (:at 1508431065540) (:by |root) (:id |HygWyr8L6b)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:color) (:type :leaf) (:at 1508430896832) (:by |root) (:id |HyVP4NLUpW)
                                                  |j $ {} (:text |:red) (:type :leaf) (:at 1508430897852) (:by |root) (:id |BkbY4N8IT-)
                                                :type :expr
                                                :at 1508430895479
                                                :by |root
                                                :id |SkMfkSILpZ
                                            :type :expr
                                            :at 1508431065178
                                            :by |root
                                            :id |rkbbyr88pZ
                                        :type :expr
                                        :at 1508430885542
                                        :by |root
                                        :id |ry0mEI86Z
                                      |h $ {}
                                        :data $ {}
                                          |D $ {} (:text |if) (:type :leaf) (:at 1508432094889) (:by |root) (:id |S1P1t8LTb)
                                          |L $ {}
                                            :data $ {}
                                              |T $ {} (:text |some?) (:type :leaf) (:at 1508432096508) (:by |root) (:id |S1zv1KL8Tb)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:calcit) (:type :leaf) (:at 1508432098556) (:by |root) (:id |HyFkK8UaZ)
                                                  |j $ {} (:text |store) (:type :leaf) (:at 1508432099904) (:by |root) (:id |Bkgo1F8Uab)
                                                :type :expr
                                                :at 1508432096991
                                                :by |root
                                                :id |BklF1t8Lp-
                                            :type :expr
                                            :at 1508432095745
                                            :by |root
                                            :id |rJdJt8I6b
                                          |T $ {}
                                            :data $ {}
                                              |T $ {} (:text |comp-viewer) (:type :leaf) (:at 1561263885351) (:by |qvLe3TKxz) (:id |BkeeUIIp-leaf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:calcit) (:type :leaf) (:at 1508431342138) (:by |root) (:id |BJBMgUUU6Z)
                                                  |j $ {} (:text |store) (:type :leaf) (:at 1508431344132) (:by |root) (:id |ryDxL8IaZ)
                                                :type :expr
                                                :at 1508431340877
                                                :by |root
                                                :id |r1BeUILTb
                                            :type :expr
                                            :at 1508431336011
                                            :by |root
                                            :id |BkeeUIIp-
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |<>) (:type :leaf) (:at 1508432103989) (:by |root) (:id |HylygKU8TZleaf)
                                              |j $ {} (:text "|\"Nothing") (:type :leaf) (:at 1561261900218) (:by |qvLe3TKxz) (:id |rJ-gFILpZ)
                                            :type :expr
                                            :at 1508432103358
                                            :by |root
                                            :id |HylygKU8TZ
                                        :type :expr
                                        :at 1508432094188
                                        :by |root
                                        :id |ByxUJFULTZ
                                    :type :expr
                                    :at 1508430867689
                                    :by |root
                                    :id |S1hfV8ITZ
                                :type :expr
                                :at 1508431045174
                                :by |root
                                :id |BkeaaVUI6-
                            :type :expr
                            :at 1520439420077
                            :by |root
                            :id |r1lEtxc6df
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |:textarea) (:type :leaf) (:at 1520439429442) (:by |root) (:id |HygcYecp_fleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |comp-text-area) (:type :leaf) (:at 1520440405338) (:by |root) (:id |rJZIN5p_z)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:text) (:type :leaf) (:at 1520440454578) (:by |root) (:id |rJkPVqadf)
                                      |j $ {} (:text |store) (:type :leaf) (:at 1520440455465) (:by |root) (:id |Hye1c4c6Of)
                                    :type :expr
                                    :at 1520440407120
                                    :by |root
                                    :id |HJeyvVqpuz
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:error) (:type :leaf) (:at 1520441349190) (:by |root) (:id |r1eibu9Tuz)
                                      |j $ {} (:text |store) (:type :leaf) (:at 1520441350378) (:by |root) (:id |B1lAW_cadf)
                                    :type :expr
                                    :at 1520441349539
                                    :by |root
                                    :id |SybqEu9pOG
                                :type :expr
                                :at 1520440393786
                                :by |root
                                :id |BJxfUNcp_f
                            :type :expr
                            :at 1520439426384
                            :by |root
                            :id |HygcYecp_f
                          |x $ {}
                            :data $ {}
                              |T $ {} (:text |:input) (:type :leaf) (:at 1520439446386) (:by |root) (:id |BJiqgc6ufleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |comp-file-input) (:type :leaf) (:at 1520439451849) (:by |root) (:id |B1B05xqp_G)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:error) (:type :leaf) (:at 1520441349190) (:by |root) (:id |r1eibu9Tuz)
                                      |j $ {} (:text |store) (:type :leaf) (:at 1520441350378) (:by |root) (:id |B1lAW_cadf)
                                    :type :expr
                                    :at 1520441349539
                                    :by |root
                                    :id |r10Wd5TuG
                                :type :expr
                                :at 1520439448895
                                :by |root
                                :id |BkWoxqTOz
                            :type :expr
                            :at 1520439443498
                            :by |root
                            :id |BJiqgc6uf
                        :type :expr
                        :at 1520439517337
                        :by |root
                        :id |r1gS1WcpOz
                      |u $ {}
                        :data $ {}
                          |T $ {} (:text |comp-messages) (:type :leaf) (:at 1572778208613) (:by |qvLe3TKxz) (:id |tG0VQbJLAleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:messages) (:type :leaf) (:at 1572778212581) (:by |qvLe3TKxz) (:id |ZJViWbZUw)
                              |j $ {} (:text |store) (:type :leaf) (:at 1572778214176) (:by |qvLe3TKxz) (:id |PuA_N2LjFV)
                            :type :expr
                            :at 1572778210773
                            :by |qvLe3TKxz
                            :id |fzk-4a8pV
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1572778219327) (:by |qvLe3TKxz) (:id |7Ao355UF_)
                            :type :expr
                            :at 1572778218680
                            :by |qvLe3TKxz
                            :id |jsCfuJnndv
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1572778222487) (:by |qvLe3TKxz) (:id |a6qdAw1gyleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |info) (:type :leaf) (:at 1572778223665) (:by |qvLe3TKxz) (:id |Ec0ytKHZE)
                                  |j $ {} (:text |d!) (:type :leaf) (:at 1572778225891) (:by |qvLe3TKxz) (:id |sKqQLo6-pv)
                                :type :expr
                                :at 1572778222973
                                :by |qvLe3TKxz
                                :id |yU7GWQK6d9
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |d!) (:type :leaf) (:at 1572778229567) (:by |qvLe3TKxz) (:id |Jj_IE5vbLleaf)
                                  |j $ {} (:text |action/clear) (:type :leaf) (:at 1572778694528) (:by |qvLe3TKxz) (:id |DPpka1tqpC)
                                  |r $ {} (:text |nil) (:type :leaf) (:at 1572778696517) (:by |qvLe3TKxz) (:id |qFbwO5USq)
                                :text |action/clea
                                :type :expr
                                :at 1572778692594
                                :by |qvLe3TKxz
                                :id |Jj_IE5vbL
                            :type :expr
                            :at 1572778220620
                            :by |qvLe3TKxz
                            :id |a6qdAw1gy
                        :type :expr
                        :at 1572778202681
                        :by |qvLe3TKxz
                        :id |tG0VQbJLA
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |comp-inspect) (:type :leaf) (:at 1561262018943) (:by |qvLe3TKxz) (:id |KNfJsMhuIvleaf)
                          |j $ {} (:text |:store) (:type :leaf) (:at 1561262020317) (:by |qvLe3TKxz) (:id |BI4iEXeMCj)
                          |r $ {} (:text |store) (:type :leaf) (:at 1561262021004) (:by |qvLe3TKxz) (:id |sRAY2Ac1x5)
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1561262041435) (:by |qvLe3TKxz) (:id |E0yrdPQeW)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:bottom) (:type :leaf) (:at 1561263401307) (:by |qvLe3TKxz) (:id |K1QAAsC8-D)
                                  |j $ {} (:text |0) (:type :leaf) (:at 1561263413179) (:by |qvLe3TKxz) (:id |j6MqMpWHeI)
                                :type :expr
                                :at 1561263399273
                                :by |qvLe3TKxz
                                :id |Ojb17hrsRm
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:right) (:type :leaf) (:at 1561263405537) (:by |qvLe3TKxz) (:id |K1QAAsC8-D)
                                  |j $ {} (:text |8) (:type :leaf) (:at 1561263401671) (:by |qvLe3TKxz) (:id |j6MqMpWHeI)
                                :type :expr
                                :at 1561263399273
                                :by |qvLe3TKxz
                                :id |xNPW55Au5
                            :type :expr
                            :at 1561262040664
                            :by |qvLe3TKxz
                            :id |ziogRCAmk
                        :type :expr
                        :at 1561262015290
                        :by |qvLe3TKxz
                        :id |KNfJsMhuIv
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |comp-reel) (:type :leaf) (:at 1507461815046) (:by |root) (:id |rJc29KD2-leaf)
                          |b $ {}
                            :data $ {}
                              |D $ {} (:text |>>) (:type :leaf) (:at 1596680674897) (:by |qvLe3TKxz) (:id |AMrLvTwFS)
                              |T $ {} (:text |states) (:type :leaf) (:at 1509554101952) (:by |root) (:id |rkepnw_vC-)
                              |j $ {} (:text |:reel) (:type :leaf) (:at 1596680677425) (:by |qvLe3TKxz) (:id |F4eV_UzBFL)
                            :type :expr
                            :at 1596680673872
                            :by |qvLe3TKxz
                            :id |ejB2RTK1-X
                          |j $ {} (:text |reel) (:type :leaf) (:at 1507461840459) (:by |root) (:id |rJx_05Fw3Z)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1507461841342) (:by |root) (:id |Bkt05FDhW)
                            :type :expr
                            :at 1507461840980
                            :by |root
                            :id |B1xKR5Fw3b
                        :type :expr
                        :at 1507461809635
                        :by |root
                        :id |rJc29KD2-
                    :type :expr
                    :at 1499755354983
                    :by nil
                    :id |SyWfsuY5THW
                :type :expr
                :at 1507461832154
                :by |root
                :id |r1-eRcYv3-
            :type :expr
            :at 1499755354983
            :by nil
            :id |BJ2WiOF9pBW
          |comp-about $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1520441026528) (:by |root) (:id |HyfFTU5TdG)
              |j $ {} (:text |comp-about) (:type :leaf) (:at 1520441025167) (:by |root) (:id |r1mY6Lq6_M)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1520441025167
                :by |root
                :id |S1NY6Lq6_f
              |v $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1520441030887) (:by |root) (:id |HJl3p85TOMleaf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1520441031454) (:by |root) (:id |HkZyA85pdG)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1520441090022) (:by |root) (:id |BJe_Wv9aOM)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1520441090589) (:by |root) (:id |Bkz9-Dcadf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:padding) (:type :leaf) (:at 1520441092010) (:by |root) (:id |B1bs-P96_G)
                                  |j $ {} (:text |8) (:type :leaf) (:at 1520441092837) (:by |root) (:id |SkpZDqauz)
                                :type :expr
                                :at 1520441090901
                                :by |root
                                :id |B1Mibw9Tdz
                            :type :expr
                            :at 1520441090252
                            :by |root
                            :id |SJ7qZD5adf
                        :type :expr
                        :at 1520441088536
                        :by |root
                        :id |S1YbwcTuz
                    :type :expr
                    :at 1520441031167
                    :by |root
                    :id |S1MkR8cTuM
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |comp-md) (:type :leaf) (:at 1520441117596) (:by |root) (:id |H1r0L5Tuf)
                      |T $ {} (:text "|\"Calcit Viewer is a tool for reading calcit.cirru files. Read more on https://github.com/Cirru/calcit-viewer .") (:type :leaf) (:at 1629136242696) (:by |qvLe3TKxz) (:id |HygxC896dfleaf)
                    :type :expr
                    :at 1520441032232
                    :by |root
                    :id |HygxC896df
                :type :expr
                :at 1520441028035
                :by |root
                :id |HJl3p85TOM
            :type :expr
            :at 1520441025167
            :by |root
            :id |rkZY6UcTdM
          |comp-entry $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1520440075625) (:by |root) (:id |B1zkfX5TdG)
              |j $ {} (:text |comp-entry) (:type :leaf) (:at 1520440071398) (:by |root) (:id |SJ71f796_z)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |icon) (:type :leaf) (:at 1520440078900) (:by |root) (:id |B1xHGmqpOM)
                  |j $ {} (:text |page) (:type :leaf) (:at 1520440131187) (:by |root) (:id |SJ7DMX5TOM)
                  |r $ {} (:text |current-page) (:type :leaf) (:at 1520440133046) (:by |root) (:id |SJQiBm5pOG)
                :type :expr
                :at 1520440071398
                :by |root
                :id |ryNyGQ5a_f
              |v $ {}
                :data $ {}
                  |D $ {} (:text |div) (:type :leaf) (:at 1520440181670) (:by |root) (:id |BJW6dmcTuG)
                  |L $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1520440183838) (:by |root) (:id |rkZRum9a_z)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1520440185094) (:by |root) (:id |HJxxFX9adf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |merge) (:type :leaf) (:at 1520440201280) (:by |root) (:id |H1zecQcpuG)
                              |L $ {} (:text |ui/center) (:type :leaf) (:at 1520440203055) (:by |root) (:id |Hk4-9X9a_G)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1520440187660) (:by |root) (:id |BkE-tmqauz)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:font-size) (:type :leaf) (:at 1520440191105) (:by |root) (:id |BJZ4tXqauz)
                                      |j $ {} (:text |28) (:type :leaf) (:at 1520440287237) (:by |root) (:id |HkVwtQqT_G)
                                    :type :expr
                                    :at 1520440188384
                                    :by |root
                                    :id |HkQNFm5p_M
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:width) (:type :leaf) (:at 1520440210991) (:by |root) (:id |SyfYcX9a_zleaf)
                                      |j $ {} (:text |48) (:type :leaf) (:at 1520440276580) (:by |root) (:id |rJEiqQ9pOM)
                                    :type :expr
                                    :at 1520440209513
                                    :by |root
                                    :id |SyfYcX9a_z
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |:height) (:type :leaf) (:at 1520440215924) (:by |root) (:id |Syz09QcaOfleaf)
                                      |j $ {} (:text |48) (:type :leaf) (:at 1520440278766) (:by |root) (:id |SkNxoQ9TOz)
                                    :type :expr
                                    :at 1520440213977
                                    :by |root
                                    :id |Syz09QcaOf
                                  |x $ {}
                                    :data $ {}
                                      |T $ {} (:text |:color) (:type :leaf) (:at 1520440309309) (:by |root) (:id |BJxngN5aufleaf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |hsl) (:type :leaf) (:at 1520440309873) (:by |root) (:id |rJSpxV96uG)
                                          |j $ {} (:text |0) (:type :leaf) (:at 1520440310480) (:by |root) (:id |S1XAg49TOM)
                                          |r $ {} (:text |0) (:type :leaf) (:at 1520440310687) (:by |root) (:id |rJkZEqTOf)
                                          |v $ {} (:text |60) (:type :leaf) (:at 1520440319577) (:by |root) (:id |rJb1WN9TOM)
                                        :type :expr
                                        :at 1520440309614
                                        :by |root
                                        :id |HyClE5adz
                                    :type :expr
                                    :at 1520440308339
                                    :by |root
                                    :id |BJxngN5auf
                                  |y $ {}
                                    :data $ {}
                                      |T $ {} (:text |:cursor) (:type :leaf) (:at 1520440335262) (:by |root) (:id |H1x8MEcTuzleaf)
                                      |j $ {} (:text |:pointer) (:type :leaf) (:at 1520440337947) (:by |root) (:id |SyBwMV5TuM)
                                    :type :expr
                                    :at 1520440333853
                                    :by |root
                                    :id |H1x8MEcTuz
                                :type :expr
                                :at 1520440185993
                                :by |root
                                :id |rkxzKXqa_f
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |if) (:type :leaf) (:at 1520440294710) (:by |root) (:id |SJAyEcauMleaf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |=) (:type :leaf) (:at 1520440295654) (:by |root) (:id |ryGkxV9aOz)
                                      |j $ {} (:text |page) (:type :leaf) (:at 1520440296686) (:by |root) (:id |SyxexEcadG)
                                      |r $ {} (:text |current-page) (:type :leaf) (:at 1520440298224) (:by |root) (:id |r1--xEqTuM)
                                    :type :expr
                                    :at 1520440295509
                                    :by |root
                                    :id |r1X1xNcauz
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1520440300850) (:by |root) (:id |rk7x496dfleaf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:color) (:type :leaf) (:at 1520440302645) (:by |root) (:id |SyzSxN96dG)
                                          |j $ {} (:text |:white) (:type :leaf) (:at 1520440304202) (:by |root) (:id |BklPlN96Of)
                                        :type :expr
                                        :at 1520440301378
                                        :by |root
                                        :id |BJQrlNq6_M
                                    :type :expr
                                    :at 1520440298616
                                    :by |root
                                    :id |rk7x496df
                                :type :expr
                                :at 1520440294286
                                :by |root
                                :id |SJAyEcauM
                            :type :expr
                            :at 1520440200160
                            :by |root
                            :id |SkWxcQ56uz
                        :type :expr
                        :at 1520440184408
                        :by |root
                        :id |ryblYm9pOG
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |:on-click) (:type :leaf) (:at 1520440344062) (:by |root) (:id |ryGTfE5T_Mleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1520440345797) (:by |root) (:id |SySg7NqaOf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |e) (:type :leaf) (:at 1520440346338) (:by |root) (:id |SybG7Vc6Oz)
                                  |j $ {} (:text |d!) (:type :leaf) (:at 1520440346962) (:by |root) (:id |SJ4GmNq6dM)
                                :type :expr
                                :at 1520440346129
                                :by |root
                                :id |rkGz7Ecpuf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |d!) (:type :leaf) (:at 1520440349123) (:by |root) (:id |HyGE7N9TOzleaf)
                                  |j $ {} (:text |:page) (:type :leaf) (:at 1520440352514) (:by |root) (:id |H1WSQVqpdz)
                                  |r $ {} (:text |page) (:type :leaf) (:at 1520440353023) (:by |root) (:id |H1F74cpOf)
                                :type :expr
                                :at 1520440348442
                                :by |root
                                :id |HyGE7N9TOz
                            :type :expr
                            :at 1520440344349
                            :by |root
                            :id |ry8lmVcT_G
                        :type :expr
                        :at 1520440341378
                        :by |root
                        :id |ryGTfE5T_M
                    :type :expr
                    :at 1520440181878
                    :by |root
                    :id |rkG0d7ca_G
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |comp-i) (:type :leaf) (:at 1561261481774) (:by |qvLe3TKxz) (:id |Syx0S796dfleaf)
                      |j $ {} (:text |icon) (:type :leaf) (:at 1520440141228) (:by |root) (:id |rJ4ImcTuz)
                      |n $ {} (:text |14) (:type :leaf) (:at 1561261536351) (:by |qvLe3TKxz) (:id |pmQP0Jf0b5)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |hsl) (:type :leaf) (:at 1561261530975) (:by |qvLe3TKxz) (:id |a_-LakSLP)
                          |j $ {} (:text |200) (:type :leaf) (:at 1561261533789) (:by |qvLe3TKxz) (:id |qKO2cw-FW)
                          |r $ {} (:text |80) (:type :leaf) (:at 1561261534176) (:by |qvLe3TKxz) (:id |bzTsIl4PHo)
                          |v $ {} (:text |80) (:type :leaf) (:at 1561261534391) (:by |qvLe3TKxz) (:id |lTauPa_exP)
                        :type :expr
                        :at 1561261530353
                        :by |qvLe3TKxz
                        :id |IVGxesGw3
                    :type :expr
                    :at 1520440133858
                    :by |root
                    :id |Syx0S796df
                :type :expr
                :at 1520440181031
                :by |root
                :id |S1lTumcp_z
            :type :expr
            :at 1520440071398
            :by |root
            :id |HJZ1zXqTdz
          |on-file-change $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1508430858143) (:by |root) (:id |SyWZWV8LTb)
              |j $ {} (:text |on-file-change) (:type :leaf) (:at 1508430840605) (:by |root) (:id |Syf-ZEULab)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |e) (:type :leaf) (:at 1508430840605) (:by |root) (:id |BJUZbEU86-)
                  |j $ {} (:text |d!) (:type :leaf) (:at 1508430840605) (:by |root) (:id |SyD--NIL6-)
                :type :expr
                :at 1508430840605
                :by |root
                :id |Skr--4I8TZ
              |v $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1508430840605) (:by |root) (:id |HJ5Z-VULa-)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |file) (:type :leaf) (:at 1508430840605) (:by |root) (:id |B1T-W4LI6W)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |->) (:type :leaf) (:at 1508430840605) (:by |root) (:id |rkJl-b4UUaW)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:event) (:type :leaf) (:at 1508430840605) (:by |root) (:id |B1-xZZNLLpb)
                                  |j $ {} (:text |e) (:type :leaf) (:at 1508430840605) (:by |root) (:id |SyzlbZV8I6b)
                                :type :expr
                                :at 1508430840605
                                :by |root
                                :id |rJexbWNLUaW
                              |r $ {} (:text |.-target) (:type :leaf) (:at 1508430840605) (:by |root) (:id |HJmxZZVLUaZ)
                              |v $ {} (:text |.-files) (:type :leaf) (:at 1508430840605) (:by |root) (:id |HJ4ebWVLUTW)
                              |x $ {}
                                :data $ {}
                                  |T $ {} (:text |aget) (:type :leaf) (:at 1508430840605) (:by |root) (:id |rkUlZZVU86Z)
                                  |j $ {} (:text |0) (:type :leaf) (:at 1508430840605) (:by |root) (:id |r1vgZW4ULTW)
                                :type :expr
                                :at 1508430840605
                                :by |root
                                :id |S1rlWWVLIa-
                            :type :expr
                            :at 1508430840605
                            :by |root
                            :id |rkAbZVIUT-
                        :type :expr
                        :at 1508430840605
                        :by |root
                        :id |H1nWWEULa-
                    :type :expr
                    :at 1508430840605
                    :by |root
                    :id |HyibZNI8pb
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |if) (:type :leaf) (:at 1520438647819) (:by |root) (:id |SkgYTtadM)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |some?) (:type :leaf) (:at 1520438649425) (:by |root) (:id |H1MgYaYpuz)
                          |j $ {} (:text |file) (:type :leaf) (:at 1520438650087) (:by |root) (:id |SkzKatadG)
                        :type :expr
                        :at 1520438648600
                        :by |root
                        :id |r1btaFauG
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |if) (:type :leaf) (:at 1508430840605) (:by |root) (:id |BJ0gbW4I8Tb)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |not=) (:type :leaf) (:at 1508431796052) (:by |root) (:id |ryxZb-4IUTb)
                              |b $ {}
                                :data $ {}
                                  |T $ {} (:text |.-name) (:type :leaf) (:at 1508430840605) (:by |root) (:id |rJigZWV88T-)
                                  |j $ {} (:text |file) (:type :leaf) (:at 1508430840605) (:by |root) (:id |rkneZbN8L6b)
                                :type :expr
                                :at 1508430840605
                                :by |root
                                :id |BybNO6YT_M
                              |f $ {} (:text ||calcit.cirru) (:type :leaf) (:at 1596681208780) (:by |qvLe3TKxz) (:id |rJ4hsPI8Tb)
                            :type :expr
                            :at 1508430840605
                            :by |root
                            :id |BkJWWWEIUaZ
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |do) (:type :leaf) (:at 1508430840605) (:by |root) (:id |rkd---EI86-)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |d!) (:type :leaf) (:at 1508430840605) (:by |root) (:id |Hy-fbb48UTW)
                                  |j $ {} (:text |:error) (:type :leaf) (:at 1508430840605) (:by |root) (:id |Syzfb-VIUab)
                                  |r $ {}
                                    :data $ {}
                                      |D $ {} (:text |str) (:type :leaf) (:at 1508431828119) (:by |root) (:id |BysRw8UaW)
                                      |T $ {} (:text "|\"Expected calcit.cirru , but got ") (:type :leaf) (:at 1596681210797) (:by |qvLe3TKxz) (:id |Sy7GWZVILT-)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |.-name) (:type :leaf) (:at 1508430840605) (:by |root) (:id |rJigZWV88T-)
                                          |j $ {} (:text |file) (:type :leaf) (:at 1508430840605) (:by |root) (:id |rkneZbN8L6b)
                                        :type :expr
                                        :at 1508430840605
                                        :by |root
                                        :id |rJxLdpt6OG
                                    :type :expr
                                    :at 1508431826158
                                    :by |root
                                    :id |H15CwUIT-
                                :type :expr
                                :at 1508430840605
                                :by |root
                                :id |HkgMZZVIUT-
                            :type :expr
                            :at 1508430840605
                            :by |root
                            :id |BkvZWb4UUaW
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |let) (:type :leaf) (:at 1508430840605) (:by |root) (:id |HkSzZ-V8Up-)
                              |j $ {}
                                :data $ {}
                                  |T $ {}
                                    :data $ {}
                                      |T $ {} (:text |fr) (:type :leaf) (:at 1508430840605) (:by |root) (:id |HyuGbWV8Uab)
                                      |j $ {}
                                        :data $ {}
                                          |D $ {} (:text |new) (:type :leaf) (:at 1629135376594) (:by |qvLe3TKxz)
                                          |T $ {} (:text |js/FileReader) (:type :leaf) (:at 1629135375597) (:by |qvLe3TKxz) (:id |By9f-W4U8pW)
                                        :type :expr
                                        :at 1508430840605
                                        :by |root
                                        :id |HktzZWVI8p-
                                    :type :expr
                                    :at 1508430840605
                                    :by |root
                                    :id |B1wzZZEIUp-
                                :type :expr
                                :at 1508430840605
                                :by |root
                                :id |rJUMZWN8L6b
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |set!) (:type :leaf) (:at 1508430840605) (:by |root) (:id |SyhGbbNI86Z)
                                  |j $ {}
                                    :data $ {}
                                      |D $ {} (:text |.-onload) (:type :leaf) (:at 1629135381293) (:by |qvLe3TKxz)
                                      |T $ {} (:text |fr) (:type :leaf) (:at 1629135379719) (:by |qvLe3TKxz) (:id |S1TzW-V8U6W)
                                    :type :expr
                                    :at 1629135380143
                                    :by |qvLe3TKxz
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1508430840605) (:by |root) (:id |S1k7-WVILaW)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |event) (:type :leaf) (:at 1508430840605) (:by |root) (:id |S1bXW-4UUa-)
                                        :type :expr
                                        :at 1508430840605
                                        :by |root
                                        :id |SyxXW-V8I6-
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |d!) (:type :leaf) (:at 1508430840605) (:by |root) (:id |HyXXbZ48LaW)
                                          |j $ {} (:text |:load/calcit) (:type :leaf) (:at 1508430840605) (:by |root) (:id |r14QW-VU8ab)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1629135389127) (:by |qvLe3TKxz) (:id |HJIXZ-VL86-)
                                              |j $ {}
                                                :data $ {}
                                                  |D $ {} (:text |->) (:type :leaf) (:at 1629135613857) (:by |qvLe3TKxz)
                                                  |T $ {} (:text |event) (:type :leaf) (:at 1629135616963) (:by |qvLe3TKxz) (:id |HyDXZZ4U8ab)
                                                  |j $ {} (:text |.-target) (:type :leaf) (:at 1629135619784) (:by |qvLe3TKxz)
                                                  |r $ {} (:text |.-result) (:type :leaf) (:at 1629135621348) (:by |qvLe3TKxz)
                                                :type :expr
                                                :at 1629135611802
                                                :by |qvLe3TKxz
                                            :type :expr
                                            :at 1508430840605
                                            :by |root
                                            :id |S1Hm-bNLLpW
                                        :type :expr
                                        :at 1508430840605
                                        :by |root
                                        :id |HkzmWZELLpb
                                    :type :expr
                                    :at 1508430840605
                                    :by |root
                                    :id |Sy0zZ-4IL6-
                                :type :expr
                                :at 1508430840605
                                :by |root
                                :id |HyifbZNUUT-
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |.!readAsText) (:type :leaf) (:at 1629135624584) (:by |qvLe3TKxz) (:id |ByF7WZ4UL6W)
                                  |j $ {} (:text |fr) (:type :leaf) (:at 1508430840605) (:by |root) (:id |rkcmbZE8Uab)
                                  |r $ {} (:text |file) (:type :leaf) (:at 1508430840605) (:by |root) (:id |rJs7bWN8Lpb)
                                :type :expr
                                :at 1508430840605
                                :by |root
                                :id |HJOmb-N88pW
                            :type :expr
                            :at 1508430840605
                            :by |root
                            :id |H14MbZV8LpW
                        :type :expr
                        :at 1508430840605
                        :by |root
                        :id |ryTe--NUITW
                    :type :expr
                    :at 1520438647267
                    :by |root
                    :id |SkeytTK6_f
                :type :expr
                :at 1508430840605
                :by |root
                :id |rkFWWEI86b
            :type :expr
            :at 1508430840605
            :by |root
            :id |HJxWZNIIT-
          |comp-text-area $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1520440457685) (:by |root) (:id |H1feqE9pOz)
              |j $ {} (:text |comp-text-area) (:type :leaf) (:at 1520440456412) (:by |root) (:id |Hyml9E96_z)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |text) (:type :leaf) (:at 1520440460780) (:by |root) (:id |SyQc49adM)
                  |j $ {} (:text |error) (:type :leaf) (:at 1520441399231) (:by |root) (:id |BJlaE_5a_M)
                :type :expr
                :at 1520440456412
                :by |root
                :id |H1Ex5E9pdz
              |v $ {}
                :data $ {}
                  |D $ {} (:text |div) (:type :leaf) (:at 1520440523692) (:by |root) (:id |rJbmR4cp_f)
                  |L $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1520440524272) (:by |root) (:id |ByW404q6Of)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1520440528009) (:by |root) (:id |H1vANcT_f)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |merge) (:type :leaf) (:at 1520440723350) (:by |root) (:id |Byb55BcTOM)
                              |T $ {} (:text |ui/row) (:type :leaf) (:at 1520440529037) (:by |root) (:id |HyN_RVc6OM)
                              |j $ {} (:text |ui/flex) (:type :leaf) (:at 1520440725956) (:by |root) (:id |rkehqrcadG)
                            :type :expr
                            :at 1520440722051
                            :by |root
                            :id |H1e55rqTOG
                        :type :expr
                        :at 1520440527298
                        :by |root
                        :id |SylDRNqT_M
                    :type :expr
                    :at 1520440523915
                    :by |root
                    :id |ByzNANq6_f
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |textarea) (:type :leaf) (:at 1520440463193) (:by |root) (:id |SkGr5E9a_Gleaf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1520440463813) (:by |root) (:id |rkSP5Vc6OG)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1520440465851) (:by |root) (:id |SyWuqVqpuz)
                              |j $ {}
                                :data $ {}
                                  |D $ {} (:text |merge) (:type :leaf) (:at 1520440514195) (:by |root) (:id |Hyup4qTuM)
                                  |T $ {} (:text |ui/textarea) (:type :leaf) (:at 1520440467839) (:by |root) (:id |rkMq54q6dz)
                                  |b $ {} (:text |ui/flex) (:type :leaf) (:at 1520440712727) (:by |root) (:id |Bkey9S5adf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1520440515267) (:by |root) (:id |B1ip4cTOz)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:width) (:type :leaf) (:at 1520440516317) (:by |root) (:id |HJQsp4q6dG)
                                          |j $ {} (:text ||100%) (:type :leaf) (:at 1520440519584) (:by |root) (:id |H1UhpV5p_G)
                                        :type :expr
                                        :at 1520440515569
                                        :by |root
                                        :id |r1h6V5pOG
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:font-family) (:type :leaf) (:at 1520440946515) (:by |root) (:id |HJZOuUqTOMleaf)
                                          |j $ {} (:text |ui/font-code) (:type :leaf) (:at 1520440949963) (:by |root) (:id |HyouLcTdf)
                                        :type :expr
                                        :at 1520440944118
                                        :by |root
                                        :id |HJZOuUqTOM
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:font-size) (:type :leaf) (:at 1520440956799) (:by |root) (:id |SJezF8qaufleaf)
                                          |j $ {} (:text |12) (:type :leaf) (:at 1520440969418) (:by |root) (:id |ByWSFLcTOG)
                                        :type :expr
                                        :at 1520440954463
                                        :by |root
                                        :id |SJezF8qauf
                                      |x $ {}
                                        :data $ {}
                                          |T $ {} (:text |:line-height) (:type :leaf) (:at 1520440962283) (:by |root) (:id |rkPFLqpuMleaf)
                                          |j $ {} (:text ||1.4em) (:type :leaf) (:at 1520440967690) (:by |root) (:id |rJI9Y8ca_f)
                                        :type :expr
                                        :at 1520440958524
                                        :by |root
                                        :id |rkPFLqpuM
                                    :type :expr
                                    :at 1520440514957
                                    :by |root
                                    :id |BkgipV5Tdz
                                :type :expr
                                :at 1520440511418
                                :by |root
                                :id |HJxDaNqp_M
                            :type :expr
                            :at 1520440464394
                            :by |root
                            :id |S1fdq4cpOz
                          |n $ {}
                            :data $ {}
                              |T $ {} (:text |:value) (:type :leaf) (:at 1520440489162) (:by |root) (:id |rJx3Nc6ufleaf)
                              |j $ {} (:text |text) (:type :leaf) (:at 1520440490356) (:by |root) (:id |SkE-349puG)
                            :type :expr
                            :at 1520440488195
                            :by |root
                            :id |rJx3Nc6uf
                          |p $ {}
                            :data $ {}
                              |T $ {} (:text |:placeholder) (:type :leaf) (:at 1520440492268) (:by |root) (:id |B1QnN9TOfleaf)
                              |j $ {} (:text "|\"Paste calcit.cirru content here...") (:type :leaf) (:at 1629136267925) (:by |qvLe3TKxz) (:id |BkU4hVqa_z)
                            :type :expr
                            :at 1520440490648
                            :by |root
                            :id |B1QnN9TOf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |:on-input) (:type :leaf) (:at 1520440472184) (:by |root) (:id |ry42qVcp_Mleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1520440473156) (:by |root) (:id |B1bgjN9adz)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |e) (:type :leaf) (:at 1520440473647) (:by |root) (:id |B1ZWo4qpOM)
                                      |j $ {} (:text |d!) (:type :leaf) (:at 1520440474230) (:by |root) (:id |SyxGiE96OM)
                                    :type :expr
                                    :at 1520440473451
                                    :by |root
                                    :id |H1G-sEcTdG
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |d!) (:type :leaf) (:at 1520440476124) (:by |root) (:id |By7ms4c6dMleaf)
                                      |j $ {} (:text |:text) (:type :leaf) (:at 1520440476972) (:by |root) (:id |r1ZNs4cadM)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:value) (:type :leaf) (:at 1520440481771) (:by |root) (:id |ByMSi4cp_f)
                                          |j $ {} (:text |e) (:type :leaf) (:at 1520440482998) (:by |root) (:id |H1WcsV9adf)
                                        :type :expr
                                        :at 1520440479246
                                        :by |root
                                        :id |H1wjN9p_z
                                    :type :expr
                                    :at 1520440475407
                                    :by |root
                                    :id |By7ms4c6dM
                                :type :expr
                                :at 1520440472458
                                :by |root
                                :id |ByMgsVq6OM
                            :type :expr
                            :at 1520440468359
                            :by |root
                            :id |ry42qVcp_M
                        :type :expr
                        :at 1520440463481
                        :by |root
                        :id |rk8vqEqpuG
                    :type :expr
                    :at 1520440461278
                    :by |root
                    :id |SkGr5E9a_G
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1520440532106) (:by |root) (:id |HkljRE9Tufleaf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1520440532599) (:by |root) (:id |S1fhANqauf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1520440733450) (:by |root) (:id |rkgzirq6_f)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1520440734537) (:by |root) (:id |ryUsSca_M)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:padding) (:type :leaf) (:at 1520440737283) (:by |root) (:id |rkgDiH9pdG)
                                      |j $ {} (:text |8) (:type :leaf) (:at 1520440738033) (:by |root) (:id |HkIYjBcTOM)
                                    :type :expr
                                    :at 1520440735062
                                    :by |root
                                    :id |B1WPiHqpuz
                                :type :expr
                                :at 1520440733674
                                :by |root
                                :id |BklLsBcTdz
                            :type :expr
                            :at 1520440730388
                            :by |root
                            :id |B1-Gsr96df
                        :type :expr
                        :at 1520440532308
                        :by |root
                        :id |BJ7nCVcp_z
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |button) (:type :leaf) (:at 1520440534035) (:by |root) (:id |HyG6RNqTuGleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1520440535037) (:by |root) (:id |rJkyB5Tdz)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1520440539689) (:by |root) (:id |S1f1r5Tuf)
                                  |j $ {} (:text |ui/button) (:type :leaf) (:at 1520440540908) (:by |root) (:id |rJZNJScTuM)
                                :type :expr
                                :at 1520440538940
                                :by |root
                                :id |HyXyHcpuf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:on-click) (:type :leaf) (:at 1520440550834) (:by |root) (:id |S1lT1BcaOMleaf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1520440552572) (:by |root) (:id |SJllHq6OM)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |e) (:type :leaf) (:at 1520440553435) (:by |root) (:id |ry--eB9pdG)
                                          |j $ {} (:text |d!) (:type :leaf) (:at 1520440554561) (:by |root) (:id |ryE-grqadM)
                                        :type :expr
                                        :at 1520440553250
                                        :by |root
                                        :id |SkfZlrq6_z
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |try) (:type :leaf) (:at 1520440574384) (:by |root) (:id |SJgVgr9puGleaf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |d!) (:type :leaf) (:at 1520440692981) (:by |root) (:id |S1wWSqp_f)
                                              |b $ {} (:text |:load/calcit) (:type :leaf) (:at 1561262699830) (:by |qvLe3TKxz) (:id |HkLtrcT_f)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1629135362309) (:by |qvLe3TKxz) (:id |HkDBScp_z)
                                                  |j $ {} (:text |text) (:type :leaf) (:at 1520440700864) (:by |root) (:id |HyeftHq6_G)
                                                :type :expr
                                                :at 1520440639649
                                                :by |root
                                                :id |SkbFSqpdz
                                            :type :expr
                                            :at 1520440574694
                                            :by |root
                                            :id |H1gvbBqT_f
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |fn) (:type :leaf) (:at 1629135350424) (:by |qvLe3TKxz) (:id |S1mMHcadzleaf)
                                              |r $ {} (:type :expr) (:by |qvLe3TKxz) (:at 1629135351067)
                                                :data $ {}
                                                  |T $ {} (:text |error) (:type :leaf) (:at 1520440597809) (:by |root) (:id |Bymhfr96uM)
                                              |v $ {}
                                                :data $ {}
                                                  |T $ {} (:text |d!) (:type :leaf) (:at 1520440673367) (:by |root) (:id |Byf0zScpOf)
                                                  |j $ {} (:text |:error) (:type :leaf) (:at 1520440684225) (:by |root) (:id |B15wHcp_G)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |str) (:type :leaf) (:at 1520440685715) (:by |root) (:id |rJeSOrqpOf)
                                                      |j $ {} (:text |error) (:type :leaf) (:at 1520440687211) (:by |root) (:id |Sy-U_BqT_f)
                                                    :type :expr
                                                    :at 1520440685161
                                                    :by |root
                                                    :id |SkZHuHqTdz
                                                :type :expr
                                                :at 1520440598603
                                                :by |root
                                                :id |r11QHqp_G
                                            :type :expr
                                            :at 1520440586659
                                            :by |root
                                            :id |S1mMHcadz
                                        :type :expr
                                        :at 1520440555713
                                        :by |root
                                        :id |SJgVgr9puG
                                    :type :expr
                                    :at 1520440552072
                                    :by |root
                                    :id |SyeglHc6uG
                                :type :expr
                                :at 1520440549334
                                :by |root
                                :id |S1lT1BcaOM
                            :type :expr
                            :at 1520440534727
                            :by |root
                            :id |Bkb1JH5Tuz
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1520440543865) (:by |root) (:id |SJUJS96_Mleaf)
                              |j $ {} (:text "|\"Parse") (:type :leaf) (:at 1561262198398) (:by |qvLe3TKxz) (:id |B1euJBqauz)
                            :type :expr
                            :at 1520440541716
                            :by |root
                            :id |SJUJS96_M
                        :type :expr
                        :at 1520440532989
                        :by |root
                        :id |HyG6RNqTuG
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1520441401783) (:by |root) (:id |BJl-H_9aOGleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1520441406916) (:by |root) (:id |HJMGrO9a_M)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1520441411862) (:by |root) (:id |rJlird5Tdz)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1520441412698) (:by |root) (:id |BkMnrdqTuM)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:color) (:type :leaf) (:at 1520441414622) (:by |root) (:id |B1-Tr_qadM)
                                          |j $ {} (:text |:red) (:type :leaf) (:at 1520441415377) (:by |root) (:id |ry-y8Oq6dM)
                                        :type :expr
                                        :at 1520441413293
                                        :by |root
                                        :id |SyM6H_9adG
                                    :type :expr
                                    :at 1520441412293
                                    :by |root
                                    :id |rk7hS_9a_f
                                :type :expr
                                :at 1520441411052
                                :by |root
                                :id |HJWjrdcauM
                            :type :expr
                            :at 1520441402121
                            :by |root
                            :id |Hk7fSdq6Of
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1520441407907) (:by |root) (:id |ryEvrdcpuzleaf)
                              |j $ {} (:text |error) (:type :leaf) (:at 1520441409728) (:by |root) (:id |rybOH_cpdf)
                            :type :expr
                            :at 1520441407387
                            :by |root
                            :id |ryEvrdcpuz
                        :type :expr
                        :at 1520441401023
                        :by |root
                        :id |BJl-H_9aOG
                    :type :expr
                    :at 1520440530996
                    :by |root
                    :id |HkljRE9Tuf
                :type :expr
                :at 1520440522971
                :by |root
                :id |BJlQ04c6df
            :type :expr
            :at 1520440456412
            :by |root
            :id |HkZl9Nq6df
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
          :by nil
          :id |rksbjOYqpSZ
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root) (:id |rJgjuY5pSb)
            |j $ {} (:text |app.comp.container) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HybjuF9pS-)
            |v $ {}
              :data $ {}
                |yyT $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1572778248284) (:by |qvLe3TKxz) (:id |vaQq_wJRNleaf)
                    |j $ {} (:text |respo-message.action) (:type :leaf) (:at 1572778254225) (:by |qvLe3TKxz) (:id |9-LKXT7U1m)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1572778259689) (:by |qvLe3TKxz) (:id |B4-lR5F0n)
                    |v $ {} (:text |action) (:type :leaf) (:at 1572778260966) (:by |qvLe3TKxz) (:id |COYX8yVpdn)
                  :type :expr
                  :at 1572778247951
                  :by |qvLe3TKxz
                  :id |vaQq_wJRN
                |yyj $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1572778262347) (:by |qvLe3TKxz) (:id |ZW1wwVz8g_leaf)
                    |j $ {} (:text |respo-message.comp.messages) (:type :leaf) (:at 1572778267809) (:by |qvLe3TKxz) (:id |vRaPgA_dN)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1572778270570) (:by |qvLe3TKxz) (:id |pAaV_SRpSO)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1572778271010) (:by |qvLe3TKxz) (:id |qjN-XkmzV9)
                        |j $ {} (:text |comp-messages) (:type :leaf) (:at 1572778276015) (:by |qvLe3TKxz) (:id |KP80_lrCOL)
                      :type :expr
                      :at 1572778270792
                      :by |qvLe3TKxz
                      :id |6hUJfZaee7
                  :type :expr
                  :at 1572778262005
                  :by |qvLe3TKxz
                  :id |ZW1wwVz8g_
                |yT $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1508430604513) (:by |root) (:id |SJVz7LITZleaf)
                    |j $ {} (:text |cljs.reader) (:type :leaf) (:at 1508430606495) (:by |root) (:id |BkrGm8I6W)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1508430607141) (:by |root) (:id |rkDGmLIpW)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1508430607493) (:by |root) (:id |SJLvfm8UaW)
                        |j $ {} (:text |read-string) (:type :leaf) (:at 1508430608765) (:by |root) (:id |HkdG78UTZ)
                      :type :expr
                      :at 1508430607345
                      :by |root
                      :id |HywDf7LIa-
                  :type :expr
                  :at 1508430603641
                  :by |root
                  :id |SJVz7LITZ
                |yj $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1508431348227) (:by |root) (:id |rJgnxUUITWleaf)
                    |j $ {} (:text |app.comp.viewer) (:type :leaf) (:at 1508431351974) (:by |root) (:id |BJ72eULUTZ)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1508431352775) (:by |root) (:id |rkVx-LL86b)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1508431353170) (:by |root) (:id |H1z-ZII8ab)
                        |j $ {} (:text |comp-viewer) (:type :leaf) (:at 1508431354943) (:by |root) (:id |HkLW-88Upb)
                      :type :expr
                      :at 1508431352998
                      :by |root
                      :id |BkX-ZI88aZ
                  :type :expr
                  :at 1508431347889
                  :by |root
                  :id |rJgnxUUITW
                |yv $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1520441098996) (:by |root) (:id |BymMw9pdGleaf)
                    |j $ {} (:text |respo-md.comp.md) (:type :leaf) (:at 1520441103520) (:by |root) (:id |rJzXfPqT_f)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1520441105493) (:by |root) (:id |H1xOGPc6dG)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1520441109783) (:by |root) (:id |Bkg5Mwq6_f)
                        |j $ {} (:text |comp-md) (:type :leaf) (:at 1520441111399) (:by |root) (:id |BJGAfDqauf)
                      :type :expr
                      :at 1520441108760
                      :by |root
                      :id |Hy6fw5pdz
                  :type :expr
                  :at 1520441098536
                  :by |root
                  :id |BymMw9pdG
                |yx $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1561261440817) (:by |qvLe3TKxz) (:id |QgfaaAE9QIleaf)
                    |j $ {} (:text |feather.core) (:type :leaf) (:at 1561261470217) (:by |qvLe3TKxz) (:id |HsWnkcUc18)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1561261472843) (:by |qvLe3TKxz) (:id |FMP-suDWIV)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1561261474913) (:by |qvLe3TKxz) (:id |o5vlIzmGZV)
                        |j $ {} (:text |comp-i) (:type :leaf) (:at 1561261479982) (:by |qvLe3TKxz) (:id |sx7pDXHRBG)
                      :type :expr
                      :at 1561261473051
                      :by |qvLe3TKxz
                      :id |IJVVtumXm5
                  :type :expr
                  :at 1561261440434
                  :by |qvLe3TKxz
                  :id |QgfaaAE9QI
                |yy $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1561262023663) (:by |qvLe3TKxz) (:id |fb1jUO4PPqleaf)
                    |j $ {} (:text |respo.comp.inspect) (:type :leaf) (:at 1561262026922) (:by |qvLe3TKxz) (:id |iZ51cD8GaT)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1561262027681) (:by |qvLe3TKxz) (:id |Bway7WGG8w)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1561262028134) (:by |qvLe3TKxz) (:id |QEqmoF9BO6)
                        |j $ {} (:text |comp-inspect) (:type :leaf) (:at 1561262032647) (:by |qvLe3TKxz) (:id |y4upUpET1W)
                      :type :expr
                      :at 1561262027900
                      :by |qvLe3TKxz
                      :id |aSL1QgEOTi
                  :type :expr
                  :at 1561262023363
                  :by |qvLe3TKxz
                  :id |fb1jUO4PPq
                |T $ {} (:text |:require) (:type :leaf) (:at 1499755354983) (:by |root) (:id |H1egs_K9pSZ)
                |j $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |S1Mgj_K9TBZ)
                    |j $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135166317) (:text |respo-ui.core)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HkVxodtqTrW)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |BkLgidF56rb)
                        |j $ {} (:text |hsl) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SkPxidY56H-)
                      :type :expr
                      :at 1499755354983
                      :by nil
                      :id |SyHeiOYcTr-
                  :type :expr
                  :at 1499755354983
                  :by nil
                  :id |ryWeiOtqTBW
                |r $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HJtgouK5pBZ)
                    |j $ {} (:text |respo-ui.core) (:type :leaf) (:at 1520437361330) (:by |root) (:id |HJ5eouFqaHb)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HJoxsuF5pr-)
                    |v $ {} (:text |ui) (:type :leaf) (:at 1499755354983) (:by |root) (:id |r1hgjuY5TH-)
                  :type :expr
                  :at 1499755354983
                  :by nil
                  :id |Sydli_Ycarb
                |v $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |r1BodKcprZ)
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1561260936377) (:by |qvLe3TKxz) (:id |ryLoOY5pHb)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SJDjOYqaHW)
                    |v $ {}
                      :data $ {}
                        |xT $ {} (:text |textarea) (:type :leaf) (:at 1520439437119) (:by |root) (:id |r1gVqx56dM)
                        |yT $ {} (:text |input) (:type :leaf) (:at 1508429846685) (:by |root) (:id |BkpMxIL6-)
                        |yj $ {} (:text |pre) (:type :leaf) (:at 1509554003072) (:by |root) (:id |HkjLD_wR-)
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |S1KidKq6r-)
                        |j $ {} (:text |defcomp) (:type :leaf) (:at 1499755354983) (:by |root) (:id |B1cs_Fq6B-)
                        |n $ {} (:text |>>) (:type :leaf) (:at 1596680663249) (:by |qvLe3TKxz) (:id |r1l36DuD0b)
                        |r $ {} (:text |<>) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SJsiOY5pr-)
                        |v $ {} (:text |div) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SJ2oOY96S-)
                        |x $ {} (:text |button) (:type :leaf) (:at 1499755354983) (:by |root) (:id |BkpiOFq6S-)
                        |y $ {} (:text |span) (:type :leaf) (:at 1499755354983) (:by |root) (:id |r1Aj_YqaB-)
                      :type :expr
                      :at 1499755354983
                      :by nil
                      :id |H1do_K5aS-
                  :type :expr
                  :at 1499755354983
                  :by nil
                  :id |BygoL8rRab
                |x $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HJH-s_t96rb)
                    |j $ {} (:text |respo.comp.space) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SyUbi_t5pH-)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root) (:id |S1v-s_KcTHZ)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |rkFWouKcTr-)
                        |j $ {} (:text |=<) (:type :leaf) (:at 1499755354983) (:by |root) (:id |Hy5WjdY5TS-)
                      :type :expr
                      :at 1499755354983
                      :by nil
                      :id |rJd-iOKc6rZ
                  :type :expr
                  :at 1499755354983
                  :by nil
                  :id |Sy4-oOt96SZ
                |y $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1507461846175) (:by |root) (:id |SkACcYv2-leaf)
                    |j $ {} (:text |reel.comp.reel) (:type :leaf) (:at 1507461855480) (:by |root) (:id |HJfRR5KPh-)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507461856264) (:by |root) (:id |ryOyjtwnb)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1507461856706) (:by |root) (:id |HJ8u1otP3W)
                        |j $ {} (:text |comp-reel) (:type :leaf) (:at 1507461858342) (:by |root) (:id |r1bt1sKwhZ)
                      :type :expr
                      :at 1507461856484
                      :by |root
                      :id |BJwOyitPhW
                  :type :expr
                  :at 1507461845717
                  :by |root
                  :id |SkACcYv2-
              :type :expr
              :at 1499755354983
              :by nil
              :id |SJkgodY9TSW
          :type :expr
          :at 1499755354983
          :by nil
          :id |H1o_Y9ar-
      |app.schema $ {}
        :defs $ {}
          |store $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1499755354983) (:by |root) (:id |ryBoejdY5arb)
              |j $ {} (:text |store) (:type :leaf) (:at 1499755354983) (:by |root) (:id |H1Iils_Y96BZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |{}) (:type :leaf) (:at 1499755354983) (:by |root) (:id |Bkuogo_F9pr-)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:states) (:type :leaf) (:at 1499755354983) (:by |root) (:id |By5oeoOY5pBb)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1499755354983) (:by |root) (:id |Hyhixo_F9prb)
                        :type :expr
                        :at 1499755354983
                        :by nil
                        :id |H1iieoOKqTSZ
                    :type :expr
                    :at 1499755354983
                    :by nil
                    :id |BkYogiuK9TBZ
                  |n $ {}
                    :data $ {}
                      |T $ {} (:text |:error) (:type :leaf) (:at 1508430821171) (:by |root) (:id |SJehJELLTWleaf)
                      |j $ {} (:text |nil) (:type :leaf) (:at 1508430822493) (:by |root) (:id |ByRkV8UT-)
                    :type :expr
                    :at 1508430820190
                    :by |root
                    :id |SJehJELLTW
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:calcit) (:type :leaf) (:at 1508430339389) (:by |root) (:id |BJ0oxjdFq6rb)
                      |j $ {} (:text |nil) (:type :leaf) (:at 1508430341420) (:by |root) (:id |BJy2go_tcaBZ)
                    :type :expr
                    :at 1499755354983
                    :by nil
                    :id |B1aixsdK9pHb
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:page) (:type :leaf) (:at 1520439501247) (:by |root) (:id |rJxVRlqTdzleaf)
                      |j $ {} (:text |:input) (:type :leaf) (:at 1520439503308) (:by |root) (:id |H1Er0e56OG)
                    :type :expr
                    :at 1520439500467
                    :by |root
                    :id |rJxVRlqTdz
                  |x $ {}
                    :data $ {}
                      |T $ {} (:text |:text) (:type :leaf) (:at 1520440438269) (:by |root) (:id |Hkx6_N5puMleaf)
                      |j $ {} (:text "|\"") (:type :leaf) (:at 1561262107376) (:by |qvLe3TKxz) (:id |HJVAuN5pdM)
                    :type :expr
                    :at 1520440437441
                    :by |root
                    :id |Hkx6_N5puM
                :type :expr
                :at 1499755354983
                :by nil
                :id |ryviloOFc6B-
            :type :expr
            :at 1499755354983
            :by nil
            :id |HkEjgouFcpBW
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
          :by nil
          :id |rkmjesdF9Trb
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HyWslouK56HZ)
            |j $ {} (:text |app.schema) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SkGsgsOtcTBb)
          :type :expr
          :at 1499755354983
          :by nil
          :id |rJxieodtqarW
      |app.comp.viewer $ {}
        :defs $ {}
          |comp-viewer $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1508431316090) (:by |root) (:id |H1W76HLIpb)
              |j $ {} (:text |comp-viewer) (:type :leaf) (:at 1508431291056) (:by |root) (:id |B1G7TBL86b)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |calcit) (:type :leaf) (:at 1534089768866) (:by |root) (:id |rJHJ8LI6Z)
                :type :expr
                :at 1508431291056
                :by |root
                :id |rkQQaBLIp-
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1508431450355) (:by |root) (:id |rkZyvLLIaW)
                  |L $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |ir) (:type :leaf) (:at 1508431451714) (:by |root) (:id |BJEGP88Up-)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:ir) (:type :leaf) (:at 1508431452397) (:by |root) (:id |H1Z4PL8U6-)
                              |j $ {} (:text |calcit) (:type :leaf) (:at 1534089774905) (:by |root) (:id |r1IVDIU8a-)
                            :type :expr
                            :at 1508431451935
                            :by |root
                            :id |HJzEwULI6b
                        :type :expr
                        :at 1508431450783
                        :by |root
                        :id |B1xQwU8Ia-
                    :type :expr
                    :at 1508431450620
                    :by |root
                    :id |r1Xw8ILp-
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1508431318475) (:by |root) (:id |rkg60HII6-)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1508431319087) (:by |root) (:id |SkJJ8LLpW)
                        :type :expr
                        :at 1508431318762
                        :by |root
                        :id |HylkkU886W
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1508431368641) (:by |root) (:id |SJkGULUpZleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1508431371261) (:by |root) (:id |r1g-zU88pb)
                            :type :expr
                            :at 1508431368822
                            :by |root
                            :id |r1--fL8UTb
                          |n $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1508431513870) (:by |root) (:id |SJ-iIUUT-leaf)
                              |j $ {} (:text "|\"Namespace:") (:type :leaf) (:at 1561263889211) (:by |qvLe3TKxz) (:id |B1Wzo8IUT-)
                            :type :expr
                            :at 1508431512529
                            :by |root
                            :id |SJ-iIUUT-
                          |p $ {}
                            :data $ {}
                              |T $ {} (:text |=<) (:type :leaf) (:at 1508431521802) (:by |root) (:id |SJlFoI8IaZleaf)
                              |j $ {} (:text |8) (:type :leaf) (:at 1508431522292) (:by |root) (:id |BJW5jL8ITb)
                              |r $ {} (:text |nil) (:type :leaf) (:at 1508431524027) (:by |root) (:id |H1m5i8L8pW)
                            :type :expr
                            :at 1508431521085
                            :by |root
                            :id |SJlFoI8IaZ
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1508431372779) (:by |root) (:id |SJe4GIUUaZleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:package) (:type :leaf) (:at 1508431375552) (:by |root) (:id |BJWSGU8IpW)
                                  |j $ {} (:text |ir) (:type :leaf) (:at 1508431459111) (:by |root) (:id |SJWx78IITb)
                                :type :expr
                                :at 1508431383726
                                :by |root
                                :id |BJgxXUIUa-
                            :type :expr
                            :at 1508431372074
                            :by |root
                            :id |SJe4GIUUaZ
                        :type :expr
                        :at 1508431366644
                        :by |root
                        :id |SJkGULUpZ
                      |t $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1508431463477) (:by |root) (:id |rJkOI8Upbleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1508431464202) (:by |root) (:id |HkguL8LpW)
                            :type :expr
                            :at 1508431463702
                            :by |root
                            :id |Sylg_IIU6W
                          |n $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1508431527155) (:by |root) (:id |ByRiILLTZleaf)
                              |j $ {} (:text "|\"Users:") (:type :leaf) (:at 1561263891850) (:by |qvLe3TKxz) (:id |HJl3ULLpZ)
                            :type :expr
                            :at 1508431525852
                            :by |root
                            :id |ByRiILLTZ
                          |p $ {}
                            :data $ {}
                              |T $ {} (:text |=<) (:type :leaf) (:at 1508431533483) (:by |root) (:id |SyeQ3UILaWleaf)
                              |j $ {} (:text |8) (:type :leaf) (:at 1508431534031) (:by |root) (:id |SkI28ULTZ)
                              |r $ {} (:text |nil) (:type :leaf) (:at 1508431535379) (:by |root) (:id |B1-L2ULIa-)
                            :type :expr
                            :at 1508431530976
                            :by |root
                            :id |SyeQ3UILaW
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1508431466778) (:by |root) (:id |SygG_8IITZleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:users) (:type :leaf) (:at 1508431469099) (:by |root) (:id |B1Zm_L88T-)
                                  |j $ {} (:text |calcit) (:type :leaf) (:at 1534089776352) (:by |root) (:id |S1VHOULLa-)
                                :type :expr
                                :at 1508431467235
                                :by |root
                                :id |B1GQdUUIpb
                            :type :expr
                            :at 1508431466277
                            :by |root
                            :id |SygG_8IITZ
                        :type :expr
                        :at 1508431462743
                        :by |root
                        :id |rJkOI8Upb
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1508431377812) (:by |root) (:id |ryetzL8IpWleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1508431378627) (:by |root) (:id |BkzcfUIUaZ)
                            :type :expr
                            :at 1508431378067
                            :by |root
                            :id |ryQqf8L8pW
                          |n $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1508431538236) (:by |root) (:id |r1lt2LUUpWleaf)
                              |j $ {} (:text "|\"Configs:") (:type :leaf) (:at 1561263894082) (:by |qvLe3TKxz) (:id |SJW3hUL8pW)
                            :type :expr
                            :at 1508431537019
                            :by |root
                            :id |r1lt2LUUpW
                          |p $ {}
                            :data $ {}
                              |T $ {} (:text |=<) (:type :leaf) (:at 1508431548354) (:by |root) (:id |rkV6LUITbleaf)
                              |j $ {} (:text |8) (:type :leaf) (:at 1508431549735) (:by |root) (:id |HkHaLI8a-)
                              |r $ {} (:text |nil) (:type :leaf) (:at 1508431550351) (:by |root) (:id |HyeI68LUTW)
                            :type :expr
                            :at 1508431547770
                            :by |root
                            :id |rkV6LUITb
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1508431380827) (:by |root) (:id |HJghzL8IpWleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:configs) (:type :leaf) (:at 1508431388215) (:by |root) (:id |ryRMIUU6Z)
                                  |j $ {} (:text |calcit) (:type :leaf) (:at 1534089777522) (:by |root) (:id |HkHXULLa-)
                                :type :expr
                                :at 1508431386314
                                :by |root
                                :id |S1ef7II8pW
                            :type :expr
                            :at 1508431380132
                            :by |root
                            :id |HJghzL8IpW
                        :type :expr
                        :at 1508431377235
                        :by |root
                        :id |ryetzL8IpW
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1508431391480) (:by |root) (:id |r1wm8UUT-leaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1508431392109) (:by |root) (:id |B1O7U886b)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1509554647543) (:by |root) (:id |SkTRK_PRW)
                                  |j $ {} (:text |ui/row) (:type :leaf) (:at 1509554648901) (:by |root) (:id |rJlgyquv0Z)
                                :type :expr
                                :at 1509554646639
                                :by |root
                                :id |r1yy9_PCb
                            :type :expr
                            :at 1508431391756
                            :by |root
                            :id |S1l_7888aW
                          |n $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1508431570072) (:by |root) (:id |HkYCUUIableaf)
                              |j $ {} (:text "|\"Files:") (:type :leaf) (:at 1561263895856) (:by |qvLe3TKxz) (:id |Hki0ULLTb)
                            :type :expr
                            :at 1508431569268
                            :by |root
                            :id |HkYCUUIab
                          |p $ {}
                            :data $ {}
                              |T $ {} (:text |=<) (:type :leaf) (:at 1508431575355) (:by |root) (:id |rkg00UUIableaf)
                              |j $ {} (:text |16) (:type :leaf) (:at 1509554695448) (:by |root) (:id |HJe1vIUTb)
                              |r $ {} (:text |nil) (:type :leaf) (:at 1508431576828) (:by |root) (:id |HJ-gkDL86Z)
                            :type :expr
                            :at 1508431574395
                            :by |root
                            :id |rkg00UUIab
                          |u $ {}
                            :data $ {}
                              |T $ {} (:text |list->) (:type :leaf) (:at 1509554546632) (:by |root) (:id |ByrOFuP0-leaf)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1509554548716) (:by |root) (:id |BJnuY_wR-)
                                :type :expr
                                :at 1509554548166
                                :by |root
                                :id |H1l3dtuD0-
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |->) (:type :leaf) (:at 1629135208842) (:by |qvLe3TKxz) (:id |BkRdKOPAbleaf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:files) (:type :leaf) (:at 1509554561989) (:by |root) (:id |BJZZKKOwCb)
                                      |j $ {} (:text |ir) (:type :leaf) (:at 1509554562958) (:by |root) (:id |BJoFFdPAZ)
                                    :type :expr
                                    :at 1509554562186
                                    :by |root
                                    :id |S1NctKdwRZ
                                  |n $ {}
                                    :data $ {}
                                      |T $ {} (:text |.to-list) (:type :leaf) (:at 1629135212825) (:by |qvLe3TKxz)
                                    :type :expr
                                    :at 1629135210929
                                    :by |qvLe3TKxz
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |map) (:type :leaf) (:at 1509554564727) (:by |root) (:id |r12KtuwAWleaf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |fn) (:type :leaf) (:at 1509554566915) (:by |root) (:id |ByAKtdwC-)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |entry) (:type :leaf) (:at 1509554568002) (:by |root) (:id |ryf15FuwRZ)
                                            :type :expr
                                            :at 1509554567450
                                            :by |root
                                            :id |SkmyqtdPRW
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |let-sugar) (:type :leaf) (:at 1629135216163) (:by |qvLe3TKxz) (:id |H1zcKOPR-leaf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {}
                                                    :data $ {}
                                                      |T $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |[]) (:type :leaf) (:at 1509554573016) (:by |root) (:id |rJMXcK_wA-)
                                                          |j $ {} (:text |filename) (:type :leaf) (:at 1509554575142) (:by |root) (:id |H1g85FOwCZ)
                                                          |r $ {} (:text |file-info) (:type :leaf) (:at 1509554578164) (:by |root) (:id |By_cYdvRb)
                                                        :type :expr
                                                        :at 1509554573732
                                                        :by |root
                                                        :id |Sk85t_vCW
                                                      |j $ {} (:text |entry) (:type :leaf) (:at 1509554582090) (:by |root) (:id |SJ3qtdw0W)
                                                    :type :expr
                                                    :at 1509554571830
                                                    :by |root
                                                    :id |rygV5tdPCW
                                                :type :expr
                                                :at 1509554571687
                                                :by |root
                                                :id |Hy45Y_DRZ
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |[]) (:type :leaf) (:at 1509554593909) (:by |root) (:id |ryxyituvC-leaf)
                                                  |j $ {} (:text |filename) (:type :leaf) (:at 1509554597241) (:by |root) (:id |H1WqituPC-)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |comp-file) (:type :leaf) (:at 1509554600964) (:by |root) (:id |H1NTsYdPAW)
                                                      |j $ {} (:text |filename) (:type :leaf) (:at 1509554605702) (:by |root) (:id |S1fhFdDRW)
                                                      |r $ {} (:text |file-info) (:type :leaf) (:at 1509554607443) (:by |root) (:id |r1M82tOD0-)
                                                    :type :expr
                                                    :at 1509554597543
                                                    :by |root
                                                    :id |ryAitdwAW
                                                :type :expr
                                                :at 1509554582997
                                                :by |root
                                                :id |ryxyituvC-
                                            :type :expr
                                            :at 1509554569869
                                            :by |root
                                            :id |H1zcKOPR-
                                        :type :expr
                                        :at 1509554566640
                                        :by |root
                                        :id |rJ15FOvR-
                                    :type :expr
                                    :at 1509554563738
                                    :by |root
                                    :id |r12KtuwAW
                                :type :expr
                                :at 1509554549567
                                :by |root
                                :id |BkRdKOPAb
                            :type :expr
                            :at 1509554540633
                            :by |root
                            :id |ByrOFuP0-
                        :type :expr
                        :at 1508431390953
                        :by |root
                        :id |r1wm8UUT-
                    :type :expr
                    :at 1508431317393
                    :by |root
                    :id |H1Z6AHIIT-
                :type :expr
                :at 1508431446731
                :by |root
                :id |B1xJv8L8pb
            :type :expr
            :at 1508431291056
            :by |root
            :id |HylXTrLU6W
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1508431287719
          :by |root
          :id |HyXxpBILTW
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1508431287719) (:by |root) (:id |B1bxTBL86b)
            |j $ {} (:text |app.comp.viewer) (:type :leaf) (:at 1508431287719) (:by |root) (:id |Byzx6r8La-)
            |v $ {}
              :data $ {}
                |yT $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1508430604513) (:by |root) (:id |SJVz7LITZleaf)
                    |j $ {} (:text |cljs.reader) (:type :leaf) (:at 1508430606495) (:by |root) (:id |BkrGm8I6W)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1508430607141) (:by |root) (:id |rkDGmLIpW)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1508430607493) (:by |root) (:id |SJLvfm8UaW)
                        |j $ {} (:text |read-string) (:type :leaf) (:at 1508430608765) (:by |root) (:id |HkdG78UTZ)
                      :type :expr
                      :at 1508430607345
                      :by |root
                      :id |HywDf7LIa-
                  :type :expr
                  :at 1508430603641
                  :by |root
                  :id |SJVz7LITZ
                |yj $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1509554610662) (:by |root) (:id |BJgcnYdvCbleaf)
                    |j $ {} (:text |app.comp.file) (:type :leaf) (:at 1509554615365) (:by |root) (:id |SyWjhKOw0W)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1509554616127) (:by |root) (:id |B1GJpK_vRZ)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1509554616700) (:by |root) (:id |r1BlatOw0-)
                        |j $ {} (:text |comp-file) (:type :leaf) (:at 1509554619076) (:by |root) (:id |HyWbatdPCW)
                      :type :expr
                      :at 1509554616313
                      :by |root
                      :id |H18eTF_DCW
                  :type :expr
                  :at 1509554610157
                  :by |root
                  :id |BJgcnYdvCb
                |T $ {} (:text |:require) (:type :leaf) (:at 1499755354983) (:by |root) (:id |H1egs_K9pSZ)
                |j $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |S1Mgj_K9TBZ)
                    |j $ {} (:text |hsl.core) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HkQgiutcTBW)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HkVxodtqTrW)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |BkLgidF56rb)
                        |j $ {} (:text |hsl) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SkPxidY56H-)
                      :type :expr
                      :at 1499755354983
                      :by nil
                      :id |SyHeiOYcTr-
                  :type :expr
                  :at 1499755354983
                  :by nil
                  :id |ryWeiOtqTBW
                |r $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HJtgouK5pBZ)
                    |j $ {} (:text |respo-ui.core) (:type :leaf) (:at 1520437453215) (:by |root) (:id |HJ5eouFqaHb)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HJoxsuF5pr-)
                    |v $ {} (:text |ui) (:type :leaf) (:at 1499755354983) (:by |root) (:id |r1hgjuY5TH-)
                  :type :expr
                  :at 1499755354983
                  :by nil
                  :id |Sydli_Ycarb
                |v $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |r1BodKcprZ)
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1561260949351) (:by |qvLe3TKxz) (:id |ryLoOY5pHb)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SJDjOYqaHW)
                    |v $ {}
                      :data $ {}
                        |yT $ {} (:text |input) (:type :leaf) (:at 1508429846685) (:by |root) (:id |BkpMxIL6-)
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |S1KidKq6r-)
                        |j $ {} (:text |defcomp) (:type :leaf) (:at 1499755354983) (:by |root) (:id |B1cs_Fq6B-)
                        |r $ {} (:text |<>) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SJsiOY5pr-)
                        |v $ {} (:text |div) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SJ2oOY96S-)
                        |w $ {} (:text |list->) (:type :leaf) (:at 1509554631132) (:by |root) (:id |SJ66Fuw0Z)
                        |x $ {} (:text |button) (:type :leaf) (:at 1499755354983) (:by |root) (:id |BkpiOFq6S-)
                        |y $ {} (:text |span) (:type :leaf) (:at 1499755354983) (:by |root) (:id |r1Aj_YqaB-)
                      :type :expr
                      :at 1499755354983
                      :by nil
                      :id |H1do_K5aS-
                  :type :expr
                  :at 1499755354983
                  :by nil
                  :id |HkeqrUHCTZ
                |x $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HJH-s_t96rb)
                    |j $ {} (:text |respo.comp.space) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SyUbi_t5pH-)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root) (:id |S1v-s_KcTHZ)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |rkFWouKcTr-)
                        |j $ {} (:text |=<) (:type :leaf) (:at 1499755354983) (:by |root) (:id |Hy5WjdY5TS-)
                      :type :expr
                      :at 1499755354983
                      :by nil
                      :id |rJd-iOKc6rZ
                  :type :expr
                  :at 1499755354983
                  :by nil
                  :id |Sy4-oOt96SZ
              :type :expr
              :at 1499755354983
              :by nil
              :id |SJkgodY9TSW
          :type :expr
          :at 1508431287719
          :by |root
          :id |rJleaS886W
      |app.updater $ {}
        :defs $ {}
          |updater $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root) (:id |H1U1esuY5TBZ)
              |j $ {} (:text |updater) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SJwJxj_Y5aHZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |store) (:type :leaf) (:at 1499755354983) (:by |root) (:id |r1YyxidF96rW)
                  |j $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root) (:id |r1cJxouK5aSZ)
                  |r $ {} (:text |op-data) (:type :leaf) (:at 1499755354983) (:by |root) (:id |Bkj1ljdY5Tr-)
                  |v $ {} (:text |op-id) (:type :leaf) (:at 1629135871281) (:by |qvLe3TKxz)
                  |x $ {} (:text |op-time) (:type :leaf) (:at 1629135872473) (:by |qvLe3TKxz)
                :type :expr
                :at 1499755354983
                :by nil
                :id |SkdkeiOK5TBZ
              |v $ {}
                :data $ {}
                  |T $ {} (:text |case-default) (:type :leaf) (:at 1629135494193) (:by |qvLe3TKxz) (:id |ry61gjOFqpH-)
                  |j $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HyAylout56Hb)
                  |l $ {}
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135495304) (:text |let)
                      |j $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135495304) (:text |op-time)
                              |j $ {}
                                :data $ {}
                                  |j $ {} (:text |js/Date.now) (:type :leaf) (:at 1629135510174) (:by |qvLe3TKxz)
                                :type :expr
                                :at 1629135495304
                                :by |qvLe3TKxz
                            :type :expr
                            :at 1629135495304
                            :by |qvLe3TKxz
                          |j $ {}
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135495304) (:text |op-id)
                              |j $ {}
                                :data $ {}
                                  |j $ {} (:text |js/Math.random) (:type :leaf) (:at 1629135507049) (:by |qvLe3TKxz)
                                :type :expr
                                :at 1629135495304
                                :by |qvLe3TKxz
                            :type :expr
                            :at 1629135495304
                            :by |qvLe3TKxz
                        :type :expr
                        :at 1629135495304
                        :by |qvLe3TKxz
                      |r $ {}
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135495304) (:text |cond)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:type :expr) (:by |qvLe3TKxz) (:at 1629135495304)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135495304) (:text |action/message-action?)
                                  |j $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135495304) (:text |op)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135495304) (:text |update)
                                  |j $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135495304) (:text |store)
                                  |r $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135495304) (:text |:messages)
                                  |v $ {}
                                    :data $ {}
                                      |yT $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135495304) (:text |op-time)
                                      |T $ {} (:text |\) (:type :leaf) (:at 1629135632133) (:by |qvLe3TKxz)
                                      |j $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135495304) (:text |update-messages)
                                      |r $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135495304) (:text |%)
                                      |v $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135495304) (:text |op)
                                      |x $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135495304) (:text |op-data)
                                      |y $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135495304) (:text |op-id)
                                    :type :expr
                                    :at 1629135495304
                                    :by |qvLe3TKxz
                                :type :expr
                                :at 1629135495304
                                :by |qvLe3TKxz
                            :type :expr
                            :at 1629135495304
                            :by |qvLe3TKxz
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |true) (:type :leaf) (:at 1629135500178) (:by |qvLe3TKxz)
                              |j $ {} (:type :expr) (:by |qvLe3TKxz) (:at 1629135495304)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135495304) (:text |do)
                                  |j $ {} (:type :expr) (:by |qvLe3TKxz) (:at 1629135495304)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135495304) (:text |println)
                                      |j $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135495304) (:text "|\"Unknown op:")
                                      |r $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135495304) (:text |op)
                                  |r $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135495304) (:text |store)
                            :type :expr
                            :at 1629135495304
                            :by |qvLe3TKxz
                        :type :expr
                        :at 1629135495304
                        :by |qvLe3TKxz
                    :type :expr
                    :at 1629135495304
                    :by |qvLe3TKxz
                  |n $ {}
                    :data $ {}
                      |T $ {} (:text |:states) (:type :leaf) (:at 1507399855618) (:by |root) (:id |HJxX2OqUh-)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |update-states) (:type :leaf) (:at 1596680858976) (:by |qvLe3TKxz) (:id |rylOn_5I2Z)
                          |j $ {} (:text |store) (:type :leaf) (:at 1507399858922) (:by |root) (:id |ByE92uq82b)
                          |r $ {} (:text |op-data) (:type :leaf) (:at 1507399860888) (:by |root) (:id |HJNh3uqL2W)
                        :type :expr
                        :at 1507399856471
                        :by |root
                        :id |Sk-_hdqU2b
                    :type :expr
                    :at 1507399852251
                    :by |root
                    :id |ryNh_5L3b
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:load/calcit) (:type :leaf) (:at 1508430323713) (:by |root) (:id |S1lxeout56HW)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |->) (:type :leaf) (:at 1561263432087) (:by |qvLe3TKxz) (:id |omkdiS36ua)
                          |j $ {} (:text |store) (:type :leaf) (:at 1561263432087) (:by |qvLe3TKxz) (:id |iVoPajTOsA)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |assoc) (:type :leaf) (:at 1561263432087) (:by |qvLe3TKxz) (:id |sQWR_P4cYX)
                              |j $ {} (:text |:calcit) (:type :leaf) (:at 1561263432087) (:by |qvLe3TKxz) (:id |oORtnL5cAn)
                              |r $ {} (:text |op-data) (:type :leaf) (:at 1561263432087) (:by |qvLe3TKxz) (:id |xqt3VUMHI1)
                            :type :expr
                            :at 1561263432087
                            :by |qvLe3TKxz
                            :id |F_Hz2r4HlR
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |assoc) (:type :leaf) (:at 1561263432087) (:by |qvLe3TKxz) (:id |vziiYpUCAl)
                              |j $ {} (:text |:error) (:type :leaf) (:at 1561263432087) (:by |qvLe3TKxz) (:id |6cAg10LUSj)
                              |r $ {} (:text |nil) (:type :leaf) (:at 1561263432087) (:by |qvLe3TKxz) (:id |YOaOYvv2Me)
                            :type :expr
                            :at 1561263432087
                            :by |qvLe3TKxz
                            :id |pJy1zM25h8
                          |x $ {}
                            :data $ {}
                              |T $ {} (:text |assoc) (:type :leaf) (:at 1561263432087) (:by |qvLe3TKxz) (:id |Ot_a9YQTBO)
                              |j $ {} (:text |:page) (:type :leaf) (:at 1561263432087) (:by |qvLe3TKxz) (:id |04clCMVJq8a)
                              |r $ {} (:text |:viewer) (:type :leaf) (:at 1561263432087) (:by |qvLe3TKxz) (:id |ROaXHmZBAKF)
                            :type :expr
                            :at 1561263432087
                            :by |qvLe3TKxz
                            :id |sSw4M6r3qa
                        :type :expr
                        :at 1561263432087
                        :by |qvLe3TKxz
                        :id |c2KJr9rS5Z
                    :type :expr
                    :at 1499755354983
                    :by nil
                    :id |S1kexiuF9arZ
                  |s $ {}
                    :data $ {}
                      |T $ {} (:text |:text) (:type :leaf) (:at 1520440427735) (:by |root) (:id |Byxd496Ofleaf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |assoc) (:type :leaf) (:at 1520440430089) (:by |root) (:id |ryxVuV9aOf)
                          |j $ {} (:text |store) (:type :leaf) (:at 1520440432353) (:by |root) (:id |HyWUdEqauM)
                          |r $ {} (:text |:text) (:type :leaf) (:at 1520440433350) (:by |root) (:id |HkYuEcT_M)
                          |v $ {} (:text |op-data) (:type :leaf) (:at 1520440434298) (:by |root) (:id |rJBt_EqTdz)
                        :type :expr
                        :at 1520440427918
                        :by |root
                        :id |SJbNdV9pdG
                    :type :expr
                    :at 1520440423565
                    :by |root
                    :id |Byxd496Of
                  |t $ {}
                    :data $ {}
                      |T $ {} (:text |:error) (:type :leaf) (:at 1508430928021) (:by |root) (:id |rklwLN88p-leaf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |assoc) (:type :leaf) (:at 1508430929323) (:by |root) (:id |rJXdUVIITZ)
                          |j $ {} (:text |store) (:type :leaf) (:at 1508430930844) (:by |root) (:id |Hk5IEUIpW)
                          |r $ {} (:text |:error) (:type :leaf) (:at 1508430932633) (:by |root) (:id |rkQjLN8UTW)
                          |v $ {} (:text |op-data) (:type :leaf) (:at 1508430933512) (:by |root) (:id |BJgaU4U8pb)
                        :type :expr
                        :at 1508430928409
                        :by |root
                        :id |HkEOUEU8aW
                    :type :expr
                    :at 1508430926973
                    :by |root
                    :id |rklwLN88p-
                  |u $ {}
                    :data $ {}
                      |T $ {} (:text |:page) (:type :leaf) (:at 1520440358773) (:by |root) (:id |B1l2Q4caOGleaf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |assoc) (:type :leaf) (:at 1520440359811) (:by |root) (:id |rkM14N9Tdf)
                          |j $ {} (:text |store) (:type :leaf) (:at 1520440362015) (:by |root) (:id |B1Gg4Vcpuz)
                          |r $ {} (:text |:page) (:type :leaf) (:at 1520440362695) (:by |root) (:id |ryNG4Vcpuf)
                          |v $ {} (:text |op-data) (:type :leaf) (:at 1520440364240) (:by |root) (:id |By-QN4cTuf)
                        :type :expr
                        :at 1520440359034
                        :by |root
                        :id |H1QyNVcTdM
                    :type :expr
                    :at 1520440356050
                    :by |root
                    :id |B1l2Q4caOG
                :type :expr
                :at 1499755354983
                :by nil
                :id |BJ2yxjOKqpHb
            :type :expr
            :at 1499755354983
            :by nil
            :id |SkS1lout5aBb
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
          :by nil
          :id |HJ41lsuY5pSZ
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SkG1lo_t9pHZ)
            |j $ {} (:text |app.updater) (:type :leaf) (:at 1499755354983) (:by |root) (:id |B17kxjdFq6r-)
            |r $ {}
              :data $ {}
                |T $ {} (:text |:require) (:type :leaf) (:at 1507399864640) (:by |root) (:id |H1xR2d5Uh-)
                |j $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1507399865654) (:by |root) (:id |rkf-6u9InW)
                    |j $ {} (:text |respo.cursor) (:type :leaf) (:at 1507399873143) (:by |root) (:id |Hkefpu983W)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507399874041) (:by |root) (:id |rkrYaO5UnZ)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1507399874938) (:by |root) (:id |BJBqpOq8hZ)
                        |j $ {} (:text |update-states) (:type :leaf) (:at 1596680866961) (:by |qvLe3TKxz) (:id |rJbi6_c83-)
                      :type :expr
                      :at 1507399874214
                      :by |root
                      :id |BkUcpdc83b
                  :type :expr
                  :at 1507399864883
                  :by |root
                  :id |r17bT_cLnZ
                |r $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1572778318796) (:by |qvLe3TKxz) (:id |QTeq96DaW8leaf)
                    |j $ {} (:text |respo-message.action) (:type :leaf) (:at 1572778319459) (:by |qvLe3TKxz) (:id |Hlt4c0S9G6)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1572778322591) (:by |qvLe3TKxz) (:id |Ps3KXtKmY)
                    |v $ {} (:text |action) (:type :leaf) (:at 1572778323461) (:by |qvLe3TKxz) (:id |QXOzpfQlpB)
                  :type :expr
                  :at 1572778318448
                  :by |qvLe3TKxz
                  :id |QTeq96DaW8
                |v $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1572778329487) (:by |qvLe3TKxz) (:id |T9tTAvWEeUleaf)
                    |j $ {} (:text |respo-message.updater) (:type :leaf) (:at 1572778329877) (:by |qvLe3TKxz) (:id |DlQb6jadB)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1572778330803) (:by |qvLe3TKxz) (:id |QJu2boigMI)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1572778331262) (:by |qvLe3TKxz) (:id |IBn1sbLm_S)
                        |j $ {} (:text |update-messages) (:type :leaf) (:at 1572778334439) (:by |qvLe3TKxz) (:id |O9317dDYXn)
                      :type :expr
                      :at 1572778331038
                      :by |qvLe3TKxz
                      :id |2QbA-AL6tP
                  :type :expr
                  :at 1572778329222
                  :by |qvLe3TKxz
                  :id |T9tTAvWEeU
              :type :expr
              :at 1507399862664
              :by |root
              :id |rykTu9L2Z
          :type :expr
          :at 1499755354983
          :by nil
          :id |B1Z1gjdFqaBZ
      |app.main $ {}
        :defs $ {}
          |render-app! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HkDssOFcaBb)
              |j $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root) (:id |Sy_osdKc6Hb)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1499755354983
                :by nil
                :id |B1YjiOY5TSb
              |v $ {}
                :data $ {}
                  |T $ {} (:text |render!) (:type :leaf) (:at 1629135654877) (:by |qvLe3TKxz) (:id |B12oiuFcTH-)
                  |j $ {} (:text |mount-target) (:type :leaf) (:at 1499755354983) (:by |root) (:id |BJpssOY5arW)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root) (:id |ry12out96SZ)
                      |j $ {} (:text |@*reel) (:type :leaf) (:at 1507400119272) (:by |root) (:id |S1ehi_tcTSW)
                    :type :expr
                    :at 1499755354983
                    :by nil
                    :id |SkCijOK9TBW
                  |v $ {} (:text |dispatch!) (:type :leaf) (:at 1629135558277) (:by |qvLe3TKxz)
                :type :expr
                :at 1499755354983
                :by nil
                :id |Hkisi_K9aBb
            :type :expr
            :at 1499755354983
            :by nil
            :id |rkIjoOt9TSZ
          |mount-target $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1499755354983) (:by |root) (:id |S1oAjut5TBZ)
              |j $ {} (:text |mount-target) (:type :leaf) (:at 1499755354983) (:by |root) (:id |rJ2Cj_t5aBZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |.querySelector) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HyRCs_tqpH-)
                  |j $ {} (:text |js/document) (:type :leaf) (:at 1499755354983) (:by |root) (:id |ryy1ejdFq6SW)
                  |r $ {} (:text ||.app) (:type :leaf) (:at 1499755354983) (:by |root) (:id |B1gygs_t56rW)
                :type :expr
                :at 1499755354983
                :by nil
                :id |HJpAjOY5arZ
            :type :expr
            :at 1499755354983
            :by nil
            :id |B1qRjdF9aH-
          |*reel $ {}
            :data $ {}
              |T $ {} (:text |defatom) (:type :leaf) (:at 1629135549023) (:by |qvLe3TKxz) (:id |Hym2s_F9Tr-)
              |j $ {} (:text |*reel) (:type :leaf) (:at 1499755354983) (:by |root) (:id |rJEhsuY5arW)
              |r $ {}
                :data $ {}
                  |D $ {} (:text |->) (:type :leaf) (:at 1507399778895) (:by |root) (:id |Bkx5wOq83b)
                  |T $ {} (:text |reel-schema/reel) (:type :leaf) (:at 1507399776350) (:by |root) (:id |SkvhsuKqaBW)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |assoc) (:type :leaf) (:at 1507399781682) (:by |root) (:id |ByMjD_cL2b)
                      |j $ {} (:text |:base) (:type :leaf) (:at 1507401405076) (:by |root) (:id |SJb0w_qL3b)
                      |r $ {} (:text |schema/store) (:type :leaf) (:at 1507399787471) (:by |root) (:id |S1xdu5U3Z)
                    :type :expr
                    :at 1507399779656
                    :by |root
                    :id |H1hvucUnZ
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |assoc) (:type :leaf) (:at 1507399781682) (:by |root) (:id |ByMjD_cL2b)
                      |j $ {} (:text |:store) (:type :leaf) (:at 1507399793097) (:by |root) (:id |SJb0w_qL3b)
                      |r $ {} (:text |schema/store) (:type :leaf) (:at 1507399787471) (:by |root) (:id |S1xdu5U3Z)
                    :type :expr
                    :at 1507399779656
                    :by |root
                    :id |S1P__5I3b
                :type :expr
                :at 1507399777531
                :by |root
                :id |HJ9Pd5U3-
            :type :expr
            :at 1499755354983
            :by nil
            :id |Hkf2sOYqpBb
          |main! $ {}
            :data $ {}
              |yD $ {}
                :data $ {}
                  |T $ {} (:text |listen-devtools!) (:type :leaf) (:at 1507461739167) (:by |root) (:id |Hyg2E5tPhbleaf)
                  |j $ {} (:text ||a) (:type :leaf) (:at 1507461691211) (:by |root) (:id |HkffSqFv2W)
                  |r $ {} (:text |dispatch!) (:type :leaf) (:at 1507461693919) (:by |root) (:id |SJEBqYD2W)
                :type :expr
                :at 1507461684494
                :by |root
                :id |Hyg2E5tPhb
              |yT $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1499755354983) (:by |root) (:id |H1dAiOtqpBZ)
                  |j $ {} (:text "||App started.") (:type :leaf) (:at 1499755354983) (:by |root) (:id |Byt0idYcaHW)
                :type :expr
                :at 1499755354983
                :by nil
                :id |H1vRoOF5pSZ
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root) (:id |ByW6ouF5Trb)
              |j $ {} (:text |main!) (:type :leaf) (:at 1499755354983) (:by |root) (:id |H1Gpo_YqaHb)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1499755354983
                :by nil
                :id |BkX6juY5aB-
              |t $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1561261182494) (:by |qvLe3TKxz) (:id |QYbVWDtgdb)
                  |j $ {} (:text "|\"Running mode:") (:type :leaf) (:at 1561261182494) (:by |qvLe3TKxz) (:id |lnYOrRTOTu)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1561261182494) (:by |qvLe3TKxz) (:id |bsMlV-pMi7)
                      |j $ {} (:text |config/dev?) (:type :leaf) (:at 1561261182494) (:by |qvLe3TKxz) (:id |Ov86IwTHAJ)
                      |r $ {} (:text "|\"dev") (:type :leaf) (:at 1561261182494) (:by |qvLe3TKxz) (:id |GzrlnUd9Qp)
                      |v $ {} (:text "|\"release") (:type :leaf) (:at 1561261182494) (:by |qvLe3TKxz) (:id |l98br4YqBC)
                    :type :expr
                    :at 1561261182494
                    :by |qvLe3TKxz
                    :id |kqCYDZNrEj
                :type :expr
                :at 1561261182494
                :by |qvLe3TKxz
                :id |JJH-dbw_bT
              |x $ {}
                :data $ {}
                  |T $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SJoas_K9arW)
                :type :expr
                :at 1499755354983
                :by nil
                :id |B1qaj_K5aSZ
              |y $ {}
                :data $ {}
                  |T $ {} (:text |add-watch) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HJRTs_F56Hb)
                  |j $ {} (:text |*reel) (:type :leaf) (:at 1507399915531) (:by |root) (:id |rky0s_YqaBZ)
                  |r $ {} (:text |:changes) (:type :leaf) (:at 1499755354983) (:by |root) (:id |H1lRsOY56H-)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1499755354983) (:by |root) (:id |ryz0jOtcTrW)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |r) (:type :leaf) (:at 1629135648583) (:by |qvLe3TKxz)
                          |j $ {} (:text |p) (:type :leaf) (:at 1629135649196) (:by |qvLe3TKxz)
                        :type :expr
                        :at 1499755354983
                        :by nil
                        :id |B1QCi_t9pS-
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root) (:id |BkHCsOY5aBb)
                        :type :expr
                        :at 1499755354983
                        :by nil
                        :id |SJV0jdKqprW
                    :type :expr
                    :at 1499755354983
                    :by nil
                    :id |H1bCidtcaSb
                :type :expr
                :at 1499755354983
                :by nil
                :id |r1p6oOFcTrZ
            :type :expr
            :at 1499755354983
            :by nil
            :id |Hkl6i_F5aBb
          |dispatch! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root) (:id |rJ5_idt5TBW)
              |j $ {} (:text |dispatch!) (:type :leaf) (:at 1499755354983) (:by |root) (:id |B1i_oOY9pHW)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HyT_suY56Bb)
                  |j $ {} (:text |op-data) (:type :leaf) (:at 1499755354983) (:by |root) (:id |S1AdidYc6Hb)
                :type :expr
                :at 1499755354983
                :by nil
                :id |BJhOjOYqpSW
              |t $ {}
                :data $ {}
                  |T $ {} (:text |when) (:type :leaf) (:at 1561261163366) (:by |qvLe3TKxz) (:id |_4g7Q9ZL5o)
                  |j $ {} (:text |config/dev?) (:type :leaf) (:at 1561261163366) (:by |qvLe3TKxz) (:id |QGkQb4xqR5)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |println) (:type :leaf) (:at 1561261163366) (:by |qvLe3TKxz) (:id |KeXqOHq6qw)
                      |j $ {} (:text "|\"Dispatch:") (:type :leaf) (:at 1561261163366) (:by |qvLe3TKxz) (:id |giyCjiB2uZ)
                      |r $ {} (:text |op) (:type :leaf) (:at 1561261163366) (:by |qvLe3TKxz) (:id |CXjg4Vd4JZ)
                    :type :expr
                    :at 1561261163366
                    :by |qvLe3TKxz
                    :id |FYUOfN3069
                :type :expr
                :at 1561261163366
                :by |qvLe3TKxz
                :id |g7I8g5FrZt
              |v $ {}
                :data $ {}
                  |T $ {} (:text |reset!) (:type :leaf) (:at 1499755354983) (:by |root) (:id |H1w9iOt56S-)
                  |j $ {} (:text |*reel) (:type :leaf) (:at 1507399899641) (:by |root) (:id |rJOcjdYqaHW)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |reel-updater) (:type :leaf) (:at 1507399887573) (:by |root) (:id |HkB0Oc8n-leaf)
                      |j $ {} (:text |updater) (:type :leaf) (:at 1507399888500) (:by |root) (:id |r1eu0dqL2Z)
                      |r $ {} (:text |@*reel) (:type :leaf) (:at 1507399891576) (:by |root) (:id |r1tRdqU3W)
                      |v $ {} (:text |op) (:type :leaf) (:at 1507399892687) (:by |root) (:id |S1e3CO9I3W)
                      |x $ {} (:text |op-data) (:type :leaf) (:at 1507399894594) (:by |root) (:id |HklaCd58nb)
                    :type :expr
                    :at 1507399884621
                    :by |root
                    :id |HJXmKK6_G
                :type :expr
                :at 1499755354983
                :by nil
                :id |HkLqs_K56H-
            :type :expr
            :at 1499755354983
            :by nil
            :id |SytOodK9pSZ
          |reload! $ {}
            :data $ {}
              |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text |defn)
              |j $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text |reload!)
              |r $ {} (:type :expr) (:by |qvLe3TKxz) (:at 1629135667188)
                :data $ {}
              |v $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text |if)
                  |j $ {} (:type :expr) (:by |qvLe3TKxz) (:at 1629135667188)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text |nil?)
                      |j $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text |build-errors)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |do) (:type :leaf) (:at 1629135667188) (:by |qvLe3TKxz)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |remove-watch) (:type :leaf) (:at 1629135667188) (:by |qvLe3TKxz)
                          |j $ {} (:text |*reel) (:type :leaf) (:at 1629135667188) (:by |qvLe3TKxz)
                          |r $ {} (:text |:changes) (:type :leaf) (:at 1629135667188) (:by |qvLe3TKxz)
                        :type :expr
                        :at 1629135667188
                        :by |qvLe3TKxz
                      |r $ {} (:type :expr) (:by |qvLe3TKxz) (:at 1629135667188)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text |clear-cache!)
                      |v $ {} (:type :expr) (:by |qvLe3TKxz) (:at 1629135667188)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text |add-watch)
                          |j $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text |*reel)
                          |r $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text |:changes)
                          |v $ {} (:type :expr) (:by |qvLe3TKxz) (:at 1629135667188)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text |fn)
                              |j $ {} (:type :expr) (:by |qvLe3TKxz) (:at 1629135667188)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text |reel)
                                  |j $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text |prev)
                              |r $ {} (:type :expr) (:by |qvLe3TKxz) (:at 1629135667188)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text |render-app!)
                      |x $ {} (:type :expr) (:by |qvLe3TKxz) (:at 1629135667188)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text |reset!)
                          |j $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text |*reel)
                          |r $ {} (:type :expr) (:by |qvLe3TKxz) (:at 1629135667188)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text |refresh-reel)
                              |j $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text |@*reel)
                              |r $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text |schema/store)
                              |v $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text |updater)
                      |y $ {} (:type :expr) (:by |qvLe3TKxz) (:at 1629135667188)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text |hud!)
                          |j $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text "|\"ok~")
                          |r $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text "|\"Ok")
                    :type :expr
                    :at 1629135667188
                    :by |qvLe3TKxz
                  |v $ {} (:type :expr) (:by |qvLe3TKxz) (:at 1629135667188)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text |hud!)
                      |j $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text "|\"error")
                      |r $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135667188) (:text |build-errors)
                :type :expr
                :at 1629135667188
                :by |qvLe3TKxz
            :type :expr
            :at 1629135667188
            :by |qvLe3TKxz
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
          :by nil
          :id |SkGujdK5aSW
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root) (:id |S1ESouY9pSW)
            |j $ {} (:text |app.main) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HJHriOFcTHZ)
            |r $ {}
              :data $ {}
                |yyT $ {} (:type :expr) (:by |qvLe3TKxz) (:at 1629135676051)
                  :data $ {}
                    |T $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135676051) (:text "|\"bottom-tip")
                    |j $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135676051) (:text |:default)
                    |r $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135676051) (:text |hud!)
                |yT $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HJ0DiuF5aSZ)
                    |j $ {} (:text |app.schema) (:type :leaf) (:at 1499755354983) (:by |root) (:id |rJJOoOY5pS-)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1499755354983) (:by |root) (:id |rye_i_FqTBb)
                    |v $ {} (:text |schema) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SJbujOK96rW)
                  :type :expr
                  :at 1499755354983
                  :by nil
                  :id |BJawo_tcaHW
                |yj $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1507399674614) (:by |root) (:id |Byez-dqLhbleaf)
                    |j $ {} (:text |reel.util) (:type :leaf) (:at 1507399678694) (:by |root) (:id |r1-XZO5LnW)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507399680625) (:by |root) (:id |BkuW_qLnZ)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1507399681518) (:by |root) (:id |ByeF-uqI3W)
                        |j $ {} (:text |listen-devtools!) (:type :leaf) (:at 1520437485511) (:by |root) (:id |Syxc-_cI3b)
                      :type :expr
                      :at 1507399680857
                      :by |root
                      :id |ByZK-uq83b
                  :type :expr
                  :at 1507399674125
                  :by |root
                  :id |Byez-dqLhb
                |yr $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1507399684313) (:by |root) (:id |HyxhW_582-leaf)
                    |j $ {} (:text |reel.core) (:type :leaf) (:at 1507399687162) (:by |root) (:id |rkT-OcUn-)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507399688098) (:by |root) (:id |Bkr1MOqL2Z)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1507399688928) (:by |root) (:id |BkEgM_qU3W)
                        |j $ {} (:text |reel-updater) (:type :leaf) (:at 1507399691010) (:by |root) (:id |Bk--G_q8h-)
                        |v $ {} (:text |refresh-reel) (:type :leaf) (:at 1507461662341) (:by |root) (:id |HJgXdcUn-)
                      :type :expr
                      :at 1507399688322
                      :by |root
                      :id |BkHgM_q8hW
                  :type :expr
                  :at 1507399683930
                  :by |root
                  :id |HyxhW_582-
                |yv $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1507399715600) (:by |root) (:id |rJgi7OcU3Wleaf)
                    |j $ {} (:text |reel.schema) (:type :leaf) (:at 1507399717674) (:by |root) (:id |BybnXdcIhW)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1507399755750) (:by |root) (:id |rJ-Cmu583Z)
                    |v $ {} (:text |reel-schema) (:type :leaf) (:at 1507399757678) (:by |root) (:id |Hk-NL_q8n-)
                  :type :expr
                  :at 1507399715229
                  :by |root
                  :id |rJgi7OcU3W
                |yx $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1561261312571) (:by |qvLe3TKxz) (:id |mjOH3X8nUkleaf)
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1561261314083) (:by |qvLe3TKxz) (:id |HR4IL0PjD5)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1561261316405) (:by |qvLe3TKxz) (:id |QNVeHhN_l)
                    |v $ {} (:text |config) (:type :leaf) (:at 1561261317202) (:by |qvLe3TKxz) (:id |R0YXohel2)
                  :type :expr
                  :at 1561261312190
                  :by |qvLe3TKxz
                  :id |mjOH3X8nUk
                |yy $ {}
                  :data $ {}
                    |T $ {} (:text "|\"./calcit.build-errors") (:type :leaf) (:at 1629135676051) (:by |qvLe3TKxz)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1629135676051) (:by |qvLe3TKxz)
                    |r $ {} (:type :leaf) (:by |qvLe3TKxz) (:at 1629135676051) (:text |build-errors)
                  :type :expr
                  :at 1629135676051
                  :by |qvLe3TKxz
                |T $ {} (:text |:require) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SkPHjOK96rZ)
                |j $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |ByKHidF56r-)
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1499755354983) (:by |root) (:id |H15HidK9Tr-)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root) (:id |ByiSsOF9THZ)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |rJ6BiuF96BZ)
                        |j $ {} (:text |render!) (:type :leaf) (:at 1499755354983) (:by |root) (:id |rJAri_KcTS-)
                        |r $ {} (:text |clear-cache!) (:type :leaf) (:at 1499755354983) (:by |root) (:id |Hkk8sOFq6rb)
                        |v $ {} (:text |realize-ssr!) (:type :leaf) (:at 1499755354983) (:by |root) (:id |Byx8i_F9TH-)
                      :type :expr
                      :at 1499755354983
                      :by nil
                      :id |rJhBiuK5aHb
                  :type :expr
                  :at 1499755354983
                  :by nil
                  :id |Hk_HouY9prW
                |v $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HkYUj_t9pBW)
                    |j $ {} (:text |app.comp.container) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SyqIj_Y9aHZ)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root) (:id |BkoIjut9pHW)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HkTLj_FcpBW)
                        |j $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root) (:id |Hy0IidKqTr-)
                      :type :expr
                      :at 1499755354983
                      :by nil
                      :id |Sy2IsOYqaSZ
                  :type :expr
                  :at 1499755354983
                  :by nil
                  :id |Sy_IiOKqprZ
                |x $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HJxwjdF96B-)
                    |j $ {} (:text |cljs.reader) (:type :leaf) (:at 1499755354983) (:by |root) (:id |S1-wjut5aHW)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root) (:id |ByMvjOt5aH-)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HkEvo_Kq6Hb)
                        |j $ {} (:text |read-string) (:type :leaf) (:at 1499755354983) (:by |root) (:id |ByHDiuKcaB-)
                      :type :expr
                      :at 1499755354983
                      :by nil
                      :id |HJXPj_YqpH-
                  :type :expr
                  :at 1499755354983
                  :by nil
                  :id |rk1vs_Y5pr-
                |y $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |ryDvs_K96rb)
                    |j $ {} (:text |app.updater) (:type :leaf) (:at 1520437480182) (:by |root) (:id |B1_vsuK96r-)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root) (:id |BJKvodKcTB-)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root) (:id |HJjDjuFqpSb)
                        |j $ {} (:text |updater) (:type :leaf) (:at 1499755354983) (:by |root) (:id |SJhwiOY5TB-)
                      :type :expr
                      :at 1499755354983
                      :by nil
                      :id |Hy5woOKqTHb
                  :type :expr
                  :at 1499755354983
                  :by nil
                  :id |SyLDodYcTS-
              :type :expr
              :at 1499755354983
              :by nil
              :id |BJ8SodF9prb
          :type :expr
          :at 1499755354983
          :by nil
          :id |rkQBo_Yc6Hb
      |app.util $ {}
        :defs $ {}
          |tree->cirru $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1572777481438) (:by |qvLe3TKxz) (:id |S-7s6xrZhz)
              |j $ {} (:text |tree->cirru) (:type :leaf) (:at 1572777481438) (:by |qvLe3TKxz) (:id |I75KXXXH0C)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |x) (:type :leaf) (:at 1572777484135) (:by |qvLe3TKxz) (:id |QiF_b9cfR)
                :type :expr
                :at 1572777481438
                :by |qvLe3TKxz
                :id |e2jz2cm4OZ
              |v $ {}
                :data $ {}
                  |T $ {} (:text |if) (:type :leaf) (:at 1572777486659) (:by |qvLe3TKxz) (:id |e9uy_D5acsleaf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |=) (:type :leaf) (:at 1572777489102) (:by |qvLe3TKxz) (:id |DjvsqsLGDc)
                      |j $ {} (:text |:leaf) (:type :leaf) (:at 1572777492526) (:by |qvLe3TKxz) (:id |qujN2p1Gv)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |:type) (:type :leaf) (:at 1572777494523) (:by |qvLe3TKxz) (:id |aTWyvH1I7G)
                          |j $ {} (:text |x) (:type :leaf) (:at 1572777495081) (:by |qvLe3TKxz) (:id |4Ch4jd2Lzx)
                        :type :expr
                        :at 1572777493232
                        :by |qvLe3TKxz
                        :id |H5Ah9duxN8
                    :type :expr
                    :at 1572777489355
                    :by |qvLe3TKxz
                    :id |cVWuVgKXCE
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:text) (:type :leaf) (:at 1572777498522) (:by |qvLe3TKxz) (:id |VURY5OHUu-leaf)
                      |j $ {} (:text |x) (:type :leaf) (:at 1572777499187) (:by |qvLe3TKxz) (:id |JXAKsIDNTc)
                    :type :expr
                    :at 1572777496512
                    :by |qvLe3TKxz
                    :id |VURY5OHUu-
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |->) (:type :leaf) (:at 1629135242682) (:by |qvLe3TKxz) (:id |pgSlT9uMO6leaf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:data) (:type :leaf) (:at 1572777505465) (:by |qvLe3TKxz) (:id |3ForGHs0r)
                          |j $ {} (:text |x) (:type :leaf) (:at 1572777505981) (:by |qvLe3TKxz) (:id |_vcqzsk2a)
                        :type :expr
                        :at 1572777504793
                        :by |qvLe3TKxz
                        :id |vlrLes071j
                      |n $ {}
                        :data $ {}
                          |T $ {} (:text |.to-list) (:type :leaf) (:at 1629135248174) (:by |qvLe3TKxz)
                        :type :expr
                        :at 1629135246729
                        :by |qvLe3TKxz
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |.sort-by) (:type :leaf) (:at 1629135249853) (:by |qvLe3TKxz) (:id |UiUo6YVHpVleaf)
                          |j $ {} (:text |first) (:type :leaf) (:at 1572777511306) (:by |qvLe3TKxz) (:id |CdzEKENs0)
                        :type :expr
                        :at 1572777506892
                        :by |qvLe3TKxz
                        :id |UiUo6YVHpV
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |map) (:type :leaf) (:at 1572777512825) (:by |qvLe3TKxz) (:id |S5kh2hTfG7leaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1572777513609) (:by |qvLe3TKxz) (:id |4f6r4ZLRqz)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |pair) (:type :leaf) (:at 1629135258697) (:by |qvLe3TKxz)
                                :type :expr
                                :at 1572777513881
                                :by |qvLe3TKxz
                                :id |6A0qKfrCAh
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |tree->cirru) (:type :leaf) (:at 1572777523544) (:by |qvLe3TKxz) (:id |U8RLhk0Vzleaf)
                                  |j $ {}
                                    :data $ {}
                                      |D $ {} (:text |last) (:type :leaf) (:at 1629135254357) (:by |qvLe3TKxz)
                                      |T $ {} (:text |pair) (:type :leaf) (:at 1629135255636) (:by |qvLe3TKxz) (:id |I9a3Qdot_O)
                                    :type :expr
                                    :at 1629135253105
                                    :by |qvLe3TKxz
                                :type :expr
                                :at 1572777521321
                                :by |qvLe3TKxz
                                :id |U8RLhk0Vz
                            :type :expr
                            :at 1572777513324
                            :by |qvLe3TKxz
                            :id |-kPg_o2g_r
                        :type :expr
                        :at 1572777511907
                        :by |qvLe3TKxz
                        :id |S5kh2hTfG7
                    :type :expr
                    :at 1572777500073
                    :by |qvLe3TKxz
                    :id |pgSlT9uMO6
                :type :expr
                :at 1572777485431
                :by |qvLe3TKxz
                :id |e9uy_D5acs
            :type :expr
            :at 1572777481438
            :by |qvLe3TKxz
            :id |z-jwL6QEiP
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1572777469888
          :by |qvLe3TKxz
          :id |M3j3TiUAji
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1572777469888) (:by |qvLe3TKxz) (:id |eIjOiJcXlb)
            |j $ {} (:text |app.util) (:type :leaf) (:at 1572777469888) (:by |qvLe3TKxz) (:id |-qLpP5jZPL)
          :type :expr
          :at 1572777469888
          :by |qvLe3TKxz
          :id |TcIwhOtK0D
      |app.config $ {}
        :defs $ {}
          |dev? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1561261394327) (:by |qvLe3TKxz) (:id |Rzef5oFHu3)
              |j $ {} (:text |dev?) (:type :leaf) (:at 1561261394327) (:by |qvLe3TKxz) (:id |HzQAHvFhVo)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |=) (:type :leaf) (:at 1629135526056) (:by |qvLe3TKxz)
                  |j $ {} (:text "|\"dev") (:type :leaf) (:at 1629135527879) (:by |qvLe3TKxz)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |get-env) (:type :leaf) (:at 1629135529692) (:by |qvLe3TKxz)
                      |j $ {} (:text "|\"mode") (:type :leaf) (:at 1629135532295) (:by |qvLe3TKxz)
                    :type :expr
                    :at 1629135528213
                    :by |qvLe3TKxz
                :type :expr
                :at 1629135525071
                :by |qvLe3TKxz
            :type :expr
            :at 1561261394327
            :by |qvLe3TKxz
            :id |bO8gr4e5oC
          |site $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1534088762989) (:by |root) (:id |oLvCOs0Tb37)
              |j $ {} (:text |site) (:type :leaf) (:at 1534088762989) (:by |root) (:id |oLVI7VHX5PI)
              |r $ {}
                :data $ {}
                  |yT $ {}
                    :data $ {}
                      |T $ {} (:text |:title) (:type :leaf) (:at 1534088762989) (:by |root) (:id |2w78_fevJ_a)
                      |j $ {} (:text "|\"Calcit Viewer") (:type :leaf) (:at 1534088796697) (:by |root) (:id |3sy3fzhT7P3)
                    :type :expr
                    :at 1534088762989
                    :by |root
                    :id |qCgfM1QCQC_
                  |yj $ {}
                    :data $ {}
                      |T $ {} (:text |:icon) (:type :leaf) (:at 1534088762989) (:by |root) (:id |l3LFArL3g4l)
                      |j $ {} (:text "|\"http://cdn.tiye.me/logo/cirru.png") (:type :leaf) (:at 1534088800229) (:by |root) (:id |o-jC1pk8iqw)
                    :type :expr
                    :at 1534088762989
                    :by |root
                    :id |h50Fs_OILC6
                  |yn $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1561261124616) (:by |qvLe3TKxz) (:id |K7KRSp8Xzy)
                      |j $ {} (:text "|\"calcit-viewer") (:type :leaf) (:at 1561261122159) (:by |qvLe3TKxz) (:id |veqdeecfNv)
                    :type :expr
                    :at 1561261122159
                    :by |qvLe3TKxz
                    :id |BgsysEIOf6
                  |T $ {} (:text |{}) (:type :leaf) (:at 1534088762989) (:by |root) (:id |VZwPFjLphyP)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:dev-ui) (:type :leaf) (:at 1534088762989) (:by |root) (:id |O9OO2_fs9yd)
                      |j $ {} (:text "|\"http://localhost:8100/main.css") (:type :leaf) (:at 1534088762989) (:by |root) (:id |nEHk8PqWpgD)
                    :type :expr
                    :at 1534088762989
                    :by |root
                    :id |_9P1mVBk79J
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:release-ui) (:type :leaf) (:at 1534088762989) (:by |root) (:id |hRVSijtvdB4)
                      |j $ {} (:text "|\"http://cdn.tiye.me/favored-fonts/main.css") (:type :leaf) (:at 1534088762989) (:by |root) (:id |xNS5jghlW8S)
                    :type :expr
                    :at 1534088762989
                    :by |root
                    :id |h6JZPf_y_dn
                  |x $ {}
                    :data $ {}
                      |T $ {} (:text |:cdn-url) (:type :leaf) (:at 1534088762989) (:by |root) (:id |eg_i-HzX18D)
                      |j $ {} (:text "|\"http://cdn.tiye.me/calcit-viewer/") (:type :leaf) (:at 1534088783760) (:by |root) (:id |BP79uM1jYEm)
                    :type :expr
                    :at 1534088762989
                    :by |root
                    :id |XcTRwulibce
                :type :expr
                :at 1534088762989
                :by |root
                :id |AQf2L7kxiPt
            :type :expr
            :at 1534088762989
            :by |root
            :id |bKD9AXh289A
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1534088762989
          :by |root
          :id |_RukXO-CDG
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1534088762989) (:by |root) (:id |KaIw6UMXQi)
            |j $ {} (:text |app.config) (:type :leaf) (:at 1534088762989) (:by |root) (:id |7arOXBYOYf)
          :type :expr
          :at 1534088762989
          :by |root
          :id |edo4pmOHxp
  :users $ {}
    |root $ {} (:avatar nil) (:name |root) (:nickname |root) (:id |root) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
    |qvLe3TKxz $ {} (:avatar nil) (:name |chen) (:nickname |chen) (:id |qvLe3TKxz) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
