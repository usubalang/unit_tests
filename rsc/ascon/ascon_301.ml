open Usuba_lib
open Usuba_AST

let ascon_301 = { nodes =
                  [{ id = (Ident.create_unbound "Sbox'V64");
                     p_in =
                     [{ vd_id = (Ident.create_unbound "x'");
                        vd_typ = (Uint (Vslice, (Mint 64), 5)); vd_opts = [];
                        vd_orig = [] }
                       ];
                     p_out =
                     [{ vd_id = (Ident.create_unbound "xr'");
                        vd_typ = (Uint (Vslice, (Mint 64), 5)); vd_opts = [];
                        vd_orig = [] }
                       ];
                     opt = [Is_table];
                     node =
                     (Single (
                        [{ vd_id = (Ident.create_unbound "x0'");
                           vd_typ = (Uint (Vslice, (Mint 64), 1));
                           vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "x1'");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "x2'");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "x3'");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "x4'");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "t0'");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "t1'");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "t2'");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "t3'");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "t4'");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x2'17_");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x3'16_");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x0'15_");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x1'14_");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x4'13_");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x3'12_");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x2'11_");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x1'10_");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x0'9_");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_t4'8_");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_t3'7_");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_t2'6_");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_t1'5_");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_t0'4_");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x2'3_");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x4'2_");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x0'1_");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] }
                          ],
                        [{ content =
                           (Eqn (
                              [(Var (Ident.create_unbound "_shadow_x0'1_"))],
                              (Tuple
                                 [(Log (Xor,
                                     (Tuple
                                        [(ExpVar
                                            (Index (
                                               (Var
                                                  (Ident.create_unbound "x'")),
                                               (Const_e 0))))
                                          ]),
                                     (Tuple
                                        [(ExpVar
                                            (Index (
                                               (Var
                                                  (Ident.create_unbound "x'")),
                                               (Const_e 4))))
                                          ])
                                     ))
                                   ]),
                              false));
                           orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x4'2_"))],
                               (Tuple
                                  [(Log (Xor,
                                      (Tuple
                                         [(ExpVar
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "x'")),
                                                (Const_e 4))))
                                           ]),
                                      (Tuple
                                         [(ExpVar
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "x'")),
                                                (Const_e 3))))
                                           ])
                                      ))
                                    ]),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x2'3_"))],
                               (Tuple
                                  [(Log (Xor,
                                      (Tuple
                                         [(ExpVar
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "x'")),
                                                (Const_e 2))))
                                           ]),
                                      (Tuple
                                         [(ExpVar
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "x'")),
                                                (Const_e 1))))
                                           ])
                                      ))
                                    ]),
                               false));
                            orig = [] };
                          { content =
                            (Eqn ([(Var (Ident.create_unbound "t0'"))],
                               (Tuple
                                  [(Not
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x0'1_")))
                                           ]))
                                    ]),
                               false));
                            orig = [] };
                          { content =
                            (Eqn ([(Var (Ident.create_unbound "t1'"))],
                               (Tuple
                                  [(Not
                                      (Tuple
                                         [(ExpVar
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "x'")),
                                                (Const_e 1))))
                                           ]))
                                    ]),
                               false));
                            orig = [] };
                          { content =
                            (Eqn ([(Var (Ident.create_unbound "t2'"))],
                               (Tuple
                                  [(Not
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x2'3_")))
                                           ]))
                                    ]),
                               false));
                            orig = [] };
                          { content =
                            (Eqn ([(Var (Ident.create_unbound "t3'"))],
                               (Tuple
                                  [(Not
                                      (Tuple
                                         [(ExpVar
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "x'")),
                                                (Const_e 3))))
                                           ]))
                                    ]),
                               false));
                            orig = [] };
                          { content =
                            (Eqn ([(Var (Ident.create_unbound "t4'"))],
                               (Tuple
                                  [(Not
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x4'2_")))
                                           ]))
                                    ]),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_t0'4_"))],
                               (Tuple
                                  [(Log (And,
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "t0'")))
                                           ]),
                                      (Tuple
                                         [(ExpVar
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "x'")),
                                                (Const_e 1))))
                                           ])
                                      ))
                                    ]),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_t1'5_"))],
                               (Tuple
                                  [(Log (And,
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "t1'")))
                                           ]),
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x2'3_")))
                                           ])
                                      ))
                                    ]),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_t2'6_"))],
                               (Tuple
                                  [(Log (And,
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "t2'")))
                                           ]),
                                      (Tuple
                                         [(ExpVar
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "x'")),
                                                (Const_e 3))))
                                           ])
                                      ))
                                    ]),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_t3'7_"))],
                               (Tuple
                                  [(Log (And,
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "t3'")))
                                           ]),
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x4'2_")))
                                           ])
                                      ))
                                    ]),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_t4'8_"))],
                               (Tuple
                                  [(Log (And,
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "t4'")))
                                           ]),
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x0'1_")))
                                           ])
                                      ))
                                    ]),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x0'9_"))],
                               (Tuple
                                  [(Log (Xor,
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x0'1_")))
                                           ]),
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_t1'5_")))
                                           ])
                                      ))
                                    ]),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x1'10_"))
                                 ],
                               (Tuple
                                  [(Log (Xor,
                                      (Tuple
                                         [(ExpVar
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "x'")),
                                                (Const_e 1))))
                                           ]),
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_t2'6_")))
                                           ])
                                      ))
                                    ]),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x2'11_"))
                                 ],
                               (Tuple
                                  [(Log (Xor,
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x2'3_")))
                                           ]),
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_t3'7_")))
                                           ])
                                      ))
                                    ]),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x3'12_"))
                                 ],
                               (Tuple
                                  [(Log (Xor,
                                      (Tuple
                                         [(ExpVar
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "x'")),
                                                (Const_e 3))))
                                           ]),
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_t4'8_")))
                                           ])
                                      ))
                                    ]),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Index ((Var (Ident.create_unbound "xr'")),
                                   (Const_e 4)))
                                 ],
                               (Tuple
                                  [(Log (Xor,
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x4'2_")))
                                           ]),
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_t0'4_")))
                                           ])
                                      ))
                                    ]),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Index ((Var (Ident.create_unbound "xr'")),
                                   (Const_e 1)))
                                 ],
                               (Tuple
                                  [(Log (Xor,
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x1'10_")))
                                           ]),
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x0'9_")))
                                           ])
                                      ))
                                    ]),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Index ((Var (Ident.create_unbound "xr'")),
                                   (Const_e 0)))
                                 ],
                               (Tuple
                                  [(Log (Xor,
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x0'9_")))
                                           ]),
                                      (Tuple
                                         [(ExpVar
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "xr'")),
                                                (Const_e 4))))
                                           ])
                                      ))
                                    ]),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Index ((Var (Ident.create_unbound "xr'")),
                                   (Const_e 3)))
                                 ],
                               (Tuple
                                  [(Log (Xor,
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x3'12_")))
                                           ]),
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x2'11_")))
                                           ])
                                      ))
                                    ]),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Index ((Var (Ident.create_unbound "xr'")),
                                   (Const_e 2)))
                                 ],
                               (Tuple
                                  [(Not
                                      (Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x2'11_")))
                                           ]))
                                    ]),
                               false));
                            orig = [] }
                          ]
                        ))
                     };
                    { id = (Ident.create_unbound "ascon12'");
                      p_in =
                      [{ vd_id = (Ident.create_unbound "input'");
                         vd_typ = (Uint (Vslice, (Mint 64), 5));
                         vd_opts = []; vd_orig = [] }
                        ];
                      p_out =
                      [{ vd_id = (Ident.create_unbound "output'");
                         vd_typ = (Uint (Vslice, (Mint 64), 5));
                         vd_opts = []; vd_orig = [] }
                        ];
                      opt = [];
                      node =
                      (Single (
                         [{ vd_id = (Ident.create_unbound "consts'");
                            vd_typ =
                            (Array ((Uint (Vslice, (Mint 64), 1)),
                               (Const_e 12)));
                            vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "state'");
                             vd_typ =
                             (Array ((Uint (Vslice, (Mint 64), 5)),
                                (Const_e 13)));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp30_");
                             vd_typ =
                             (Array ((Uint (Vslice, (Mint 64), 5)),
                                (Const_e 12)));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp29_");
                             vd_typ =
                             (Array ((Uint (Vslice, (Mint 64), 5)),
                                (Const_e 12)));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp28_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp27_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp26_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp25_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp24_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp23_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp22_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp21_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp20_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp19_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp18_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp17_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id =
                             (Ident.create_unbound "AddConstant'V64_1__tmp1_");
                             vd_typ =
                             (Array ((Uint (Vslice, (Mint 64), 1)),
                                (Const_e 12)));
                             vd_opts = [];
                             vd_orig =
                             [((Ident.create_unbound "AddConstant'V64"),
                               { vd_id = (Ident.create_unbound "_tmp1_");
                                 vd_typ = (Uint (Vslice, (Mint 64), 1));
                                 vd_opts = []; vd_orig = [] })
                               ]
                             };
                           { vd_id =
                             (Ident.create_unbound "LinearLayer'V64_1__tmp16_");
                             vd_typ =
                             (Array ((Uint (Vslice, (Mint 64), 1)),
                                (Const_e 12)));
                             vd_opts = [];
                             vd_orig =
                             [((Ident.create_unbound "LinearLayer'V64"),
                               { vd_id = (Ident.create_unbound "_tmp16_");
                                 vd_typ = (Uint (Vslice, (Mint 64), 1));
                                 vd_opts = []; vd_orig = [] })
                               ]
                             };
                           { vd_id =
                             (Ident.create_unbound "LinearLayer'V64_1__tmp15_");
                             vd_typ =
                             (Array ((Uint (Vslice, (Mint 64), 1)),
                                (Const_e 12)));
                             vd_opts = [];
                             vd_orig =
                             [((Ident.create_unbound "LinearLayer'V64"),
                               { vd_id = (Ident.create_unbound "_tmp15_");
                                 vd_typ = (Uint (Vslice, (Mint 64), 1));
                                 vd_opts = []; vd_orig = [] })
                               ]
                             };
                           { vd_id =
                             (Ident.create_unbound "LinearLayer'V64_1__tmp14_");
                             vd_typ =
                             (Array ((Uint (Vslice, (Mint 64), 1)),
                                (Const_e 12)));
                             vd_opts = [];
                             vd_orig =
                             [((Ident.create_unbound "LinearLayer'V64"),
                               { vd_id = (Ident.create_unbound "_tmp14_");
                                 vd_typ = (Uint (Vslice, (Mint 64), 1));
                                 vd_opts = []; vd_orig = [] })
                               ]
                             };
                           { vd_id =
                             (Ident.create_unbound "LinearLayer'V64_1__tmp13_");
                             vd_typ =
                             (Array ((Uint (Vslice, (Mint 64), 1)),
                                (Const_e 12)));
                             vd_opts = [];
                             vd_orig =
                             [((Ident.create_unbound "LinearLayer'V64"),
                               { vd_id = (Ident.create_unbound "_tmp13_");
                                 vd_typ = (Uint (Vslice, (Mint 64), 1));
                                 vd_opts = []; vd_orig = [] })
                               ]
                             };
                           { vd_id =
                             (Ident.create_unbound "LinearLayer'V64_1__tmp12_");
                             vd_typ =
                             (Array ((Uint (Vslice, (Mint 64), 1)),
                                (Const_e 12)));
                             vd_opts = [];
                             vd_orig =
                             [((Ident.create_unbound "LinearLayer'V64"),
                               { vd_id = (Ident.create_unbound "_tmp12_");
                                 vd_typ = (Uint (Vslice, (Mint 64), 1));
                                 vd_opts = []; vd_orig = [] })
                               ]
                             };
                           { vd_id =
                             (Ident.create_unbound "LinearLayer'V64_1__tmp11_");
                             vd_typ =
                             (Array ((Uint (Vslice, (Mint 64), 1)),
                                (Const_e 12)));
                             vd_opts = [];
                             vd_orig =
                             [((Ident.create_unbound "LinearLayer'V64"),
                               { vd_id = (Ident.create_unbound "_tmp11_");
                                 vd_typ = (Uint (Vslice, (Mint 64), 1));
                                 vd_opts = []; vd_orig = [] })
                               ]
                             };
                           { vd_id =
                             (Ident.create_unbound "LinearLayer'V64_1__tmp10_");
                             vd_typ =
                             (Array ((Uint (Vslice, (Mint 64), 1)),
                                (Const_e 12)));
                             vd_opts = [];
                             vd_orig =
                             [((Ident.create_unbound "LinearLayer'V64"),
                               { vd_id = (Ident.create_unbound "_tmp10_");
                                 vd_typ = (Uint (Vslice, (Mint 64), 1));
                                 vd_opts = []; vd_orig = [] })
                               ]
                             };
                           { vd_id =
                             (Ident.create_unbound "LinearLayer'V64_1__tmp9_");
                             vd_typ =
                             (Array ((Uint (Vslice, (Mint 64), 1)),
                                (Const_e 12)));
                             vd_opts = [];
                             vd_orig =
                             [((Ident.create_unbound "LinearLayer'V64"),
                               { vd_id = (Ident.create_unbound "_tmp9_");
                                 vd_typ = (Uint (Vslice, (Mint 64), 1));
                                 vd_opts = []; vd_orig = [] })
                               ]
                             };
                           { vd_id =
                             (Ident.create_unbound "LinearLayer'V64_1__tmp8_");
                             vd_typ =
                             (Array ((Uint (Vslice, (Mint 64), 1)),
                                (Const_e 12)));
                             vd_opts = [];
                             vd_orig =
                             [((Ident.create_unbound "LinearLayer'V64"),
                               { vd_id = (Ident.create_unbound "_tmp8_");
                                 vd_typ = (Uint (Vslice, (Mint 64), 1));
                                 vd_opts = []; vd_orig = [] })
                               ]
                             };
                           { vd_id =
                             (Ident.create_unbound "LinearLayer'V64_1__tmp7_");
                             vd_typ =
                             (Array ((Uint (Vslice, (Mint 64), 1)),
                                (Const_e 12)));
                             vd_opts = [];
                             vd_orig =
                             [((Ident.create_unbound "LinearLayer'V64"),
                               { vd_id = (Ident.create_unbound "_tmp7_");
                                 vd_typ = (Uint (Vslice, (Mint 64), 1));
                                 vd_opts = []; vd_orig = [] })
                               ]
                             };
                           { vd_id =
                             (Ident.create_unbound "LinearLayer'V64_1__tmp6_");
                             vd_typ =
                             (Array ((Uint (Vslice, (Mint 64), 1)),
                                (Const_e 12)));
                             vd_opts = [];
                             vd_orig =
                             [((Ident.create_unbound "LinearLayer'V64"),
                               { vd_id = (Ident.create_unbound "_tmp6_");
                                 vd_typ = (Uint (Vslice, (Mint 64), 1));
                                 vd_opts = []; vd_orig = [] })
                               ]
                             };
                           { vd_id =
                             (Ident.create_unbound "LinearLayer'V64_1__tmp5_");
                             vd_typ =
                             (Array ((Uint (Vslice, (Mint 64), 1)),
                                (Const_e 12)));
                             vd_opts = [];
                             vd_orig =
                             [((Ident.create_unbound "LinearLayer'V64"),
                               { vd_id = (Ident.create_unbound "_tmp5_");
                                 vd_typ = (Uint (Vslice, (Mint 64), 1));
                                 vd_opts = []; vd_orig = [] })
                               ]
                             };
                           { vd_id =
                             (Ident.create_unbound "LinearLayer'V64_1__tmp4_");
                             vd_typ =
                             (Array ((Uint (Vslice, (Mint 64), 1)),
                                (Const_e 12)));
                             vd_opts = [];
                             vd_orig =
                             [((Ident.create_unbound "LinearLayer'V64"),
                               { vd_id = (Ident.create_unbound "_tmp4_");
                                 vd_typ = (Uint (Vslice, (Mint 64), 1));
                                 vd_opts = []; vd_orig = [] })
                               ]
                             };
                           { vd_id =
                             (Ident.create_unbound "LinearLayer'V64_1__tmp3_");
                             vd_typ =
                             (Array ((Uint (Vslice, (Mint 64), 1)),
                                (Const_e 12)));
                             vd_opts = [];
                             vd_orig =
                             [((Ident.create_unbound "LinearLayer'V64"),
                               { vd_id = (Ident.create_unbound "_tmp3_");
                                 vd_typ = (Uint (Vslice, (Mint 64), 1));
                                 vd_opts = []; vd_orig = [] })
                               ]
                             };
                           { vd_id =
                             (Ident.create_unbound "LinearLayer'V64_1__tmp2_");
                             vd_typ =
                             (Array ((Uint (Vslice, (Mint 64), 1)),
                                (Const_e 12)));
                             vd_opts = [];
                             vd_orig =
                             [((Ident.create_unbound "LinearLayer'V64"),
                               { vd_id = (Ident.create_unbound "_tmp2_");
                                 vd_typ = (Uint (Vslice, (Mint 64), 1));
                                 vd_opts = []; vd_orig = [] })
                               ]
                             }
                           ],
                         [{ content =
                            (Eqn (
                               [(Index (
                                   (Index (
                                      (Var (Ident.create_unbound "state'")),
                                      (Const_e 0))),
                                   (Const_e 0)))
                                 ],
                               (Tuple
                                  [(ExpVar
                                      (Index (
                                         (Var (Ident.create_unbound "input'")),
                                         (Const_e 0))))
                                    ]),
                               false));
                            orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Index (
                                       (Var (Ident.create_unbound "state'")),
                                       (Const_e 0))),
                                    (Const_e 1)))
                                  ],
                                (Tuple
                                   [(ExpVar
                                       (Index (
                                          (Var
                                             (Ident.create_unbound "input'")),
                                          (Const_e 1))))
                                     ]),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Index (
                                       (Var (Ident.create_unbound "state'")),
                                       (Const_e 0))),
                                    (Const_e 2)))
                                  ],
                                (Tuple
                                   [(ExpVar
                                       (Index (
                                          (Var
                                             (Ident.create_unbound "input'")),
                                          (Const_e 2))))
                                     ]),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 0)))
                                  ],
                                (Const (240,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 1)))
                                  ],
                                (Const (225,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 2)))
                                  ],
                                (Const (210,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 3)))
                                  ],
                                (Const (195,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 4)))
                                  ],
                                (Const (180,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 5)))
                                  ],
                                (Const (165,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 6)))
                                  ],
                                (Const (150,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 7)))
                                  ],
                                (Const (135,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 8)))
                                  ],
                                (Const (120,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 9)))
                                  ],
                                (Const (105,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 10)))
                                  ],
                                (Const (90,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 11)))
                                  ],
                                (Const (75,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Index (
                                       (Var (Ident.create_unbound "state'")),
                                       (Const_e 0))),
                                    (Const_e 3)))
                                  ],
                                (Tuple
                                   [(ExpVar
                                       (Index (
                                          (Var
                                             (Ident.create_unbound "input'")),
                                          (Const_e 3))))
                                     ]),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Index (
                                       (Var (Ident.create_unbound "state'")),
                                       (Const_e 0))),
                                    (Const_e 4)))
                                  ],
                                (Tuple
                                   [(ExpVar
                                       (Index (
                                          (Var
                                             (Ident.create_unbound "input'")),
                                          (Const_e 4))))
                                     ]),
                                false));
                             orig = [] };
                           { content =
                             (Loop ((Ident.create_unbound "i'"), (Const_e 0),
                                (Const_e 11),
                                [{ content =
                                   (Eqn (
                                      [(Index (
                                          (Index (
                                             (Var
                                                (Ident.create_unbound "_tmp29_")),
                                             (Var_e
                                                (Ident.create_unbound "i'"))
                                             )),
                                          (Const_e 0)))
                                        ],
                                      (Tuple
                                         [(ExpVar
                                             (Index (
                                                (Index (
                                                   (Var
                                                      (Ident.create_unbound "state'")),
                                                   (Var_e
                                                      (Ident.create_unbound "i'"))
                                                   )),
                                                (Const_e 0))))
                                           ]),
                                      false));
                                   orig =
                                   [((Ident.create_unbound "AddConstant'V64"),
                                     (Eqn (
                                        [(Index (
                                            (Var
                                               (Ident.create_unbound "stateR'")),
                                            (Const_e 0)))
                                          ],
                                        (ExpVar
                                           (Index (
                                              (Var
                                                 (Ident.create_unbound "state'")),
                                              (Const_e 0)))),
                                        false)))
                                     ]
                                   };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Index (
                                              (Var
                                                 (Ident.create_unbound "_tmp29_")),
                                              (Var_e
                                                 (Ident.create_unbound "i'"))
                                              )),
                                           (Const_e 1)))
                                         ],
                                       (Tuple
                                          [(ExpVar
                                              (Index (
                                                 (Index (
                                                    (Var
                                                       (Ident.create_unbound "state'")),
                                                    (Var_e
                                                       (Ident.create_unbound "i'"))
                                                    )),
                                                 (Const_e 1))))
                                            ]),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "AddConstant'V64"),
                                      (Eqn (
                                         [(Index (
                                             (Var
                                                (Ident.create_unbound "stateR'")),
                                             (Const_e 1)))
                                           ],
                                         (ExpVar
                                            (Index (
                                               (Var
                                                  (Ident.create_unbound "state'")),
                                               (Const_e 1)))),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Index (
                                              (Var
                                                 (Ident.create_unbound "_tmp29_")),
                                              (Var_e
                                                 (Ident.create_unbound "i'"))
                                              )),
                                           (Const_e 2)))
                                         ],
                                       (Tuple
                                          [(Log (Xor,
                                              (Tuple
                                                 [(ExpVar
                                                     (Index (
                                                        (Index (
                                                           (Var
                                                              (Ident.create_unbound "state'")),
                                                           (Var_e
                                                              (Ident.create_unbound "i'"))
                                                           )),
                                                        (Const_e 2))))
                                                   ]),
                                              (Tuple
                                                 [(ExpVar
                                                     (Index (
                                                        (Var
                                                           (Ident.create_unbound "consts'")),
                                                        (Var_e
                                                           (Ident.create_unbound "i'"))
                                                        )))
                                                   ])
                                              ))
                                            ]),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "AddConstant'V64"),
                                      (Eqn (
                                         [(Index (
                                             (Var
                                                (Ident.create_unbound "stateR'")),
                                             (Const_e 2)))
                                           ],
                                         (Log (Xor,
                                            (ExpVar
                                               (Index (
                                                  (Var
                                                     (Ident.create_unbound "state'")),
                                                  (Const_e 2)))),
                                            (ExpVar
                                               (Var
                                                  (Ident.create_unbound "c'")))
                                            )),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Index (
                                              (Var
                                                 (Ident.create_unbound "_tmp29_")),
                                              (Var_e
                                                 (Ident.create_unbound "i'"))
                                              )),
                                           (Const_e 3)))
                                         ],
                                       (Tuple
                                          [(ExpVar
                                              (Index (
                                                 (Index (
                                                    (Var
                                                       (Ident.create_unbound "state'")),
                                                    (Var_e
                                                       (Ident.create_unbound "i'"))
                                                    )),
                                                 (Const_e 3))))
                                            ]),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "AddConstant'V64"),
                                      (Eqn (
                                         [(Index (
                                             (Var
                                                (Ident.create_unbound "stateR'")),
                                             (Const_e 3)))
                                           ],
                                         (ExpVar
                                            (Index (
                                               (Var
                                                  (Ident.create_unbound "state'")),
                                               (Const_e 3)))),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Index (
                                              (Var
                                                 (Ident.create_unbound "_tmp29_")),
                                              (Var_e
                                                 (Ident.create_unbound "i'"))
                                              )),
                                           (Const_e 4)))
                                         ],
                                       (Tuple
                                          [(ExpVar
                                              (Index (
                                                 (Index (
                                                    (Var
                                                       (Ident.create_unbound "state'")),
                                                    (Var_e
                                                       (Ident.create_unbound "i'"))
                                                    )),
                                                 (Const_e 4))))
                                            ]),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "AddConstant'V64"),
                                      (Eqn (
                                         [(Index (
                                             (Var
                                                (Ident.create_unbound "stateR'")),
                                             (Const_e 4)))
                                           ],
                                         (ExpVar
                                            (Index (
                                               (Var
                                                  (Ident.create_unbound "state'")),
                                               (Const_e 4)))),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Var
                                              (Ident.create_unbound "_tmp30_")),
                                           (Var_e (Ident.create_unbound "i'"))
                                           ))
                                         ],
                                       (Fun (
                                          (Ident.create_unbound "Sbox'V64"),
                                          [(Tuple
                                              [(ExpVar
                                                  (Index (
                                                     (Var
                                                        (Ident.create_unbound "_tmp29_")),
                                                     (Var_e
                                                        (Ident.create_unbound "i'"))
                                                     )))
                                                ])
                                            ]
                                          )),
                                       false));
                                    orig = [] };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Var
                                              (Ident.create_unbound "LinearLayer'V64_1__tmp2_")),
                                           (Var_e (Ident.create_unbound "i'"))
                                           ))
                                         ],
                                       (Shift (Rrotate,
                                          (Tuple
                                             [(ExpVar
                                                 (Index (
                                                    (Index (
                                                       (Var
                                                          (Ident.create_unbound "_tmp30_")),
                                                       (Var_e
                                                          (Ident.create_unbound "i'"))
                                                       )),
                                                    (Const_e 0))))
                                               ]),
                                          (Const_e 19))),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "LinearLayer'V64"),
                                      (Eqn (
                                         [(Var
                                             (Ident.create_unbound "_tmp2_"))
                                           ],
                                         (Shift (Rrotate,
                                            (ExpVar
                                               (Index (
                                                  (Var
                                                     (Ident.create_unbound "state'")),
                                                  (Const_e 0)))),
                                            (Const_e 19))),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Var
                                              (Ident.create_unbound "LinearLayer'V64_1__tmp3_")),
                                           (Var_e (Ident.create_unbound "i'"))
                                           ))
                                         ],
                                       (Tuple
                                          [(Log (Xor,
                                              (Tuple
                                                 [(ExpVar
                                                     (Index (
                                                        (Index (
                                                           (Var
                                                              (Ident.create_unbound "_tmp30_")),
                                                           (Var_e
                                                              (Ident.create_unbound "i'"))
                                                           )),
                                                        (Const_e 0))))
                                                   ]),
                                              (Tuple
                                                 [(ExpVar
                                                     (Index (
                                                        (Var
                                                           (Ident.create_unbound "LinearLayer'V64_1__tmp2_")),
                                                        (Var_e
                                                           (Ident.create_unbound "i'"))
                                                        )))
                                                   ])
                                              ))
                                            ]),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "LinearLayer'V64"),
                                      (Eqn (
                                         [(Var
                                             (Ident.create_unbound "_tmp3_"))
                                           ],
                                         (Log (Xor,
                                            (ExpVar
                                               (Index (
                                                  (Var
                                                     (Ident.create_unbound "state'")),
                                                  (Const_e 0)))),
                                            (ExpVar
                                               (Var
                                                  (Ident.create_unbound "_tmp2_")))
                                            )),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Var
                                              (Ident.create_unbound "LinearLayer'V64_1__tmp4_")),
                                           (Var_e (Ident.create_unbound "i'"))
                                           ))
                                         ],
                                       (Shift (Rrotate,
                                          (Tuple
                                             [(ExpVar
                                                 (Index (
                                                    (Index (
                                                       (Var
                                                          (Ident.create_unbound "_tmp30_")),
                                                       (Var_e
                                                          (Ident.create_unbound "i'"))
                                                       )),
                                                    (Const_e 0))))
                                               ]),
                                          (Const_e 28))),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "LinearLayer'V64"),
                                      (Eqn (
                                         [(Var
                                             (Ident.create_unbound "_tmp4_"))
                                           ],
                                         (Shift (Rrotate,
                                            (ExpVar
                                               (Index (
                                                  (Var
                                                     (Ident.create_unbound "state'")),
                                                  (Const_e 0)))),
                                            (Const_e 28))),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Index (
                                              (Var
                                                 (Ident.create_unbound "state'")),
                                              (Op_e (Add,
                                                 (Var_e
                                                    (Ident.create_unbound "i'")),
                                                 (Const_e 1)))
                                              )),
                                           (Const_e 0)))
                                         ],
                                       (Tuple
                                          [(Log (Xor,
                                              (Tuple
                                                 [(ExpVar
                                                     (Index (
                                                        (Var
                                                           (Ident.create_unbound "LinearLayer'V64_1__tmp3_")),
                                                        (Var_e
                                                           (Ident.create_unbound "i'"))
                                                        )))
                                                   ]),
                                              (Tuple
                                                 [(ExpVar
                                                     (Index (
                                                        (Var
                                                           (Ident.create_unbound "LinearLayer'V64_1__tmp4_")),
                                                        (Var_e
                                                           (Ident.create_unbound "i'"))
                                                        )))
                                                   ])
                                              ))
                                            ]),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "LinearLayer'V64"),
                                      (Eqn (
                                         [(Index (
                                             (Var
                                                (Ident.create_unbound "stateR'")),
                                             (Const_e 0)))
                                           ],
                                         (Log (Xor,
                                            (ExpVar
                                               (Var
                                                  (Ident.create_unbound "_tmp3_"))),
                                            (ExpVar
                                               (Var
                                                  (Ident.create_unbound "_tmp4_")))
                                            )),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Var
                                              (Ident.create_unbound "LinearLayer'V64_1__tmp5_")),
                                           (Var_e (Ident.create_unbound "i'"))
                                           ))
                                         ],
                                       (Shift (Rrotate,
                                          (Tuple
                                             [(ExpVar
                                                 (Index (
                                                    (Index (
                                                       (Var
                                                          (Ident.create_unbound "_tmp30_")),
                                                       (Var_e
                                                          (Ident.create_unbound "i'"))
                                                       )),
                                                    (Const_e 1))))
                                               ]),
                                          (Const_e 61))),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "LinearLayer'V64"),
                                      (Eqn (
                                         [(Var
                                             (Ident.create_unbound "_tmp5_"))
                                           ],
                                         (Shift (Rrotate,
                                            (ExpVar
                                               (Index (
                                                  (Var
                                                     (Ident.create_unbound "state'")),
                                                  (Const_e 1)))),
                                            (Const_e 61))),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Var
                                              (Ident.create_unbound "LinearLayer'V64_1__tmp6_")),
                                           (Var_e (Ident.create_unbound "i'"))
                                           ))
                                         ],
                                       (Tuple
                                          [(Log (Xor,
                                              (Tuple
                                                 [(ExpVar
                                                     (Index (
                                                        (Index (
                                                           (Var
                                                              (Ident.create_unbound "_tmp30_")),
                                                           (Var_e
                                                              (Ident.create_unbound "i'"))
                                                           )),
                                                        (Const_e 1))))
                                                   ]),
                                              (Tuple
                                                 [(ExpVar
                                                     (Index (
                                                        (Var
                                                           (Ident.create_unbound "LinearLayer'V64_1__tmp5_")),
                                                        (Var_e
                                                           (Ident.create_unbound "i'"))
                                                        )))
                                                   ])
                                              ))
                                            ]),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "LinearLayer'V64"),
                                      (Eqn (
                                         [(Var
                                             (Ident.create_unbound "_tmp6_"))
                                           ],
                                         (Log (Xor,
                                            (ExpVar
                                               (Index (
                                                  (Var
                                                     (Ident.create_unbound "state'")),
                                                  (Const_e 1)))),
                                            (ExpVar
                                               (Var
                                                  (Ident.create_unbound "_tmp5_")))
                                            )),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Var
                                              (Ident.create_unbound "LinearLayer'V64_1__tmp7_")),
                                           (Var_e (Ident.create_unbound "i'"))
                                           ))
                                         ],
                                       (Shift (Rrotate,
                                          (Tuple
                                             [(ExpVar
                                                 (Index (
                                                    (Index (
                                                       (Var
                                                          (Ident.create_unbound "_tmp30_")),
                                                       (Var_e
                                                          (Ident.create_unbound "i'"))
                                                       )),
                                                    (Const_e 1))))
                                               ]),
                                          (Const_e 39))),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "LinearLayer'V64"),
                                      (Eqn (
                                         [(Var
                                             (Ident.create_unbound "_tmp7_"))
                                           ],
                                         (Shift (Rrotate,
                                            (ExpVar
                                               (Index (
                                                  (Var
                                                     (Ident.create_unbound "state'")),
                                                  (Const_e 1)))),
                                            (Const_e 39))),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Index (
                                              (Var
                                                 (Ident.create_unbound "state'")),
                                              (Op_e (Add,
                                                 (Var_e
                                                    (Ident.create_unbound "i'")),
                                                 (Const_e 1)))
                                              )),
                                           (Const_e 1)))
                                         ],
                                       (Tuple
                                          [(Log (Xor,
                                              (Tuple
                                                 [(ExpVar
                                                     (Index (
                                                        (Var
                                                           (Ident.create_unbound "LinearLayer'V64_1__tmp6_")),
                                                        (Var_e
                                                           (Ident.create_unbound "i'"))
                                                        )))
                                                   ]),
                                              (Tuple
                                                 [(ExpVar
                                                     (Index (
                                                        (Var
                                                           (Ident.create_unbound "LinearLayer'V64_1__tmp7_")),
                                                        (Var_e
                                                           (Ident.create_unbound "i'"))
                                                        )))
                                                   ])
                                              ))
                                            ]),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "LinearLayer'V64"),
                                      (Eqn (
                                         [(Index (
                                             (Var
                                                (Ident.create_unbound "stateR'")),
                                             (Const_e 1)))
                                           ],
                                         (Log (Xor,
                                            (ExpVar
                                               (Var
                                                  (Ident.create_unbound "_tmp6_"))),
                                            (ExpVar
                                               (Var
                                                  (Ident.create_unbound "_tmp7_")))
                                            )),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Var
                                              (Ident.create_unbound "LinearLayer'V64_1__tmp8_")),
                                           (Var_e (Ident.create_unbound "i'"))
                                           ))
                                         ],
                                       (Shift (Rrotate,
                                          (Tuple
                                             [(ExpVar
                                                 (Index (
                                                    (Index (
                                                       (Var
                                                          (Ident.create_unbound "_tmp30_")),
                                                       (Var_e
                                                          (Ident.create_unbound "i'"))
                                                       )),
                                                    (Const_e 2))))
                                               ]),
                                          (Const_e 1))),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "LinearLayer'V64"),
                                      (Eqn (
                                         [(Var
                                             (Ident.create_unbound "_tmp8_"))
                                           ],
                                         (Shift (Rrotate,
                                            (ExpVar
                                               (Index (
                                                  (Var
                                                     (Ident.create_unbound "state'")),
                                                  (Const_e 2)))),
                                            (Const_e 1))),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Var
                                              (Ident.create_unbound "LinearLayer'V64_1__tmp9_")),
                                           (Var_e (Ident.create_unbound "i'"))
                                           ))
                                         ],
                                       (Tuple
                                          [(Log (Xor,
                                              (Tuple
                                                 [(ExpVar
                                                     (Index (
                                                        (Index (
                                                           (Var
                                                              (Ident.create_unbound "_tmp30_")),
                                                           (Var_e
                                                              (Ident.create_unbound "i'"))
                                                           )),
                                                        (Const_e 2))))
                                                   ]),
                                              (Tuple
                                                 [(ExpVar
                                                     (Index (
                                                        (Var
                                                           (Ident.create_unbound "LinearLayer'V64_1__tmp8_")),
                                                        (Var_e
                                                           (Ident.create_unbound "i'"))
                                                        )))
                                                   ])
                                              ))
                                            ]),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "LinearLayer'V64"),
                                      (Eqn (
                                         [(Var
                                             (Ident.create_unbound "_tmp9_"))
                                           ],
                                         (Log (Xor,
                                            (ExpVar
                                               (Index (
                                                  (Var
                                                     (Ident.create_unbound "state'")),
                                                  (Const_e 2)))),
                                            (ExpVar
                                               (Var
                                                  (Ident.create_unbound "_tmp8_")))
                                            )),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Var
                                              (Ident.create_unbound "LinearLayer'V64_1__tmp10_")),
                                           (Var_e (Ident.create_unbound "i'"))
                                           ))
                                         ],
                                       (Shift (Rrotate,
                                          (Tuple
                                             [(ExpVar
                                                 (Index (
                                                    (Index (
                                                       (Var
                                                          (Ident.create_unbound "_tmp30_")),
                                                       (Var_e
                                                          (Ident.create_unbound "i'"))
                                                       )),
                                                    (Const_e 2))))
                                               ]),
                                          (Const_e 6))),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "LinearLayer'V64"),
                                      (Eqn (
                                         [(Var
                                             (Ident.create_unbound "_tmp10_"))
                                           ],
                                         (Shift (Rrotate,
                                            (ExpVar
                                               (Index (
                                                  (Var
                                                     (Ident.create_unbound "state'")),
                                                  (Const_e 2)))),
                                            (Const_e 6))),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Index (
                                              (Var
                                                 (Ident.create_unbound "state'")),
                                              (Op_e (Add,
                                                 (Var_e
                                                    (Ident.create_unbound "i'")),
                                                 (Const_e 1)))
                                              )),
                                           (Const_e 2)))
                                         ],
                                       (Tuple
                                          [(Log (Xor,
                                              (Tuple
                                                 [(ExpVar
                                                     (Index (
                                                        (Var
                                                           (Ident.create_unbound "LinearLayer'V64_1__tmp9_")),
                                                        (Var_e
                                                           (Ident.create_unbound "i'"))
                                                        )))
                                                   ]),
                                              (Tuple
                                                 [(ExpVar
                                                     (Index (
                                                        (Var
                                                           (Ident.create_unbound "LinearLayer'V64_1__tmp10_")),
                                                        (Var_e
                                                           (Ident.create_unbound "i'"))
                                                        )))
                                                   ])
                                              ))
                                            ]),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "LinearLayer'V64"),
                                      (Eqn (
                                         [(Index (
                                             (Var
                                                (Ident.create_unbound "stateR'")),
                                             (Const_e 2)))
                                           ],
                                         (Log (Xor,
                                            (ExpVar
                                               (Var
                                                  (Ident.create_unbound "_tmp9_"))),
                                            (ExpVar
                                               (Var
                                                  (Ident.create_unbound "_tmp10_")))
                                            )),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Var
                                              (Ident.create_unbound "LinearLayer'V64_1__tmp11_")),
                                           (Var_e (Ident.create_unbound "i'"))
                                           ))
                                         ],
                                       (Shift (Rrotate,
                                          (Tuple
                                             [(ExpVar
                                                 (Index (
                                                    (Index (
                                                       (Var
                                                          (Ident.create_unbound "_tmp30_")),
                                                       (Var_e
                                                          (Ident.create_unbound "i'"))
                                                       )),
                                                    (Const_e 3))))
                                               ]),
                                          (Const_e 10))),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "LinearLayer'V64"),
                                      (Eqn (
                                         [(Var
                                             (Ident.create_unbound "_tmp11_"))
                                           ],
                                         (Shift (Rrotate,
                                            (ExpVar
                                               (Index (
                                                  (Var
                                                     (Ident.create_unbound "state'")),
                                                  (Const_e 3)))),
                                            (Const_e 10))),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Var
                                              (Ident.create_unbound "LinearLayer'V64_1__tmp12_")),
                                           (Var_e (Ident.create_unbound "i'"))
                                           ))
                                         ],
                                       (Tuple
                                          [(Log (Xor,
                                              (Tuple
                                                 [(ExpVar
                                                     (Index (
                                                        (Index (
                                                           (Var
                                                              (Ident.create_unbound "_tmp30_")),
                                                           (Var_e
                                                              (Ident.create_unbound "i'"))
                                                           )),
                                                        (Const_e 3))))
                                                   ]),
                                              (Tuple
                                                 [(ExpVar
                                                     (Index (
                                                        (Var
                                                           (Ident.create_unbound "LinearLayer'V64_1__tmp11_")),
                                                        (Var_e
                                                           (Ident.create_unbound "i'"))
                                                        )))
                                                   ])
                                              ))
                                            ]),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "LinearLayer'V64"),
                                      (Eqn (
                                         [(Var
                                             (Ident.create_unbound "_tmp12_"))
                                           ],
                                         (Log (Xor,
                                            (ExpVar
                                               (Index (
                                                  (Var
                                                     (Ident.create_unbound "state'")),
                                                  (Const_e 3)))),
                                            (ExpVar
                                               (Var
                                                  (Ident.create_unbound "_tmp11_")))
                                            )),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Var
                                              (Ident.create_unbound "LinearLayer'V64_1__tmp13_")),
                                           (Var_e (Ident.create_unbound "i'"))
                                           ))
                                         ],
                                       (Shift (Rrotate,
                                          (Tuple
                                             [(ExpVar
                                                 (Index (
                                                    (Index (
                                                       (Var
                                                          (Ident.create_unbound "_tmp30_")),
                                                       (Var_e
                                                          (Ident.create_unbound "i'"))
                                                       )),
                                                    (Const_e 3))))
                                               ]),
                                          (Const_e 17))),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "LinearLayer'V64"),
                                      (Eqn (
                                         [(Var
                                             (Ident.create_unbound "_tmp13_"))
                                           ],
                                         (Shift (Rrotate,
                                            (ExpVar
                                               (Index (
                                                  (Var
                                                     (Ident.create_unbound "state'")),
                                                  (Const_e 3)))),
                                            (Const_e 17))),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Index (
                                              (Var
                                                 (Ident.create_unbound "state'")),
                                              (Op_e (Add,
                                                 (Var_e
                                                    (Ident.create_unbound "i'")),
                                                 (Const_e 1)))
                                              )),
                                           (Const_e 3)))
                                         ],
                                       (Tuple
                                          [(Log (Xor,
                                              (Tuple
                                                 [(ExpVar
                                                     (Index (
                                                        (Var
                                                           (Ident.create_unbound "LinearLayer'V64_1__tmp12_")),
                                                        (Var_e
                                                           (Ident.create_unbound "i'"))
                                                        )))
                                                   ]),
                                              (Tuple
                                                 [(ExpVar
                                                     (Index (
                                                        (Var
                                                           (Ident.create_unbound "LinearLayer'V64_1__tmp13_")),
                                                        (Var_e
                                                           (Ident.create_unbound "i'"))
                                                        )))
                                                   ])
                                              ))
                                            ]),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "LinearLayer'V64"),
                                      (Eqn (
                                         [(Index (
                                             (Var
                                                (Ident.create_unbound "stateR'")),
                                             (Const_e 3)))
                                           ],
                                         (Log (Xor,
                                            (ExpVar
                                               (Var
                                                  (Ident.create_unbound "_tmp12_"))),
                                            (ExpVar
                                               (Var
                                                  (Ident.create_unbound "_tmp13_")))
                                            )),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Var
                                              (Ident.create_unbound "LinearLayer'V64_1__tmp14_")),
                                           (Var_e (Ident.create_unbound "i'"))
                                           ))
                                         ],
                                       (Shift (Rrotate,
                                          (Tuple
                                             [(ExpVar
                                                 (Index (
                                                    (Index (
                                                       (Var
                                                          (Ident.create_unbound "_tmp30_")),
                                                       (Var_e
                                                          (Ident.create_unbound "i'"))
                                                       )),
                                                    (Const_e 4))))
                                               ]),
                                          (Const_e 7))),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "LinearLayer'V64"),
                                      (Eqn (
                                         [(Var
                                             (Ident.create_unbound "_tmp14_"))
                                           ],
                                         (Shift (Rrotate,
                                            (ExpVar
                                               (Index (
                                                  (Var
                                                     (Ident.create_unbound "state'")),
                                                  (Const_e 4)))),
                                            (Const_e 7))),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Var
                                              (Ident.create_unbound "LinearLayer'V64_1__tmp15_")),
                                           (Var_e (Ident.create_unbound "i'"))
                                           ))
                                         ],
                                       (Tuple
                                          [(Log (Xor,
                                              (Tuple
                                                 [(ExpVar
                                                     (Index (
                                                        (Index (
                                                           (Var
                                                              (Ident.create_unbound "_tmp30_")),
                                                           (Var_e
                                                              (Ident.create_unbound "i'"))
                                                           )),
                                                        (Const_e 4))))
                                                   ]),
                                              (Tuple
                                                 [(ExpVar
                                                     (Index (
                                                        (Var
                                                           (Ident.create_unbound "LinearLayer'V64_1__tmp14_")),
                                                        (Var_e
                                                           (Ident.create_unbound "i'"))
                                                        )))
                                                   ])
                                              ))
                                            ]),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "LinearLayer'V64"),
                                      (Eqn (
                                         [(Var
                                             (Ident.create_unbound "_tmp15_"))
                                           ],
                                         (Log (Xor,
                                            (ExpVar
                                               (Index (
                                                  (Var
                                                     (Ident.create_unbound "state'")),
                                                  (Const_e 4)))),
                                            (ExpVar
                                               (Var
                                                  (Ident.create_unbound "_tmp14_")))
                                            )),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Var
                                              (Ident.create_unbound "LinearLayer'V64_1__tmp16_")),
                                           (Var_e (Ident.create_unbound "i'"))
                                           ))
                                         ],
                                       (Shift (Rrotate,
                                          (Tuple
                                             [(ExpVar
                                                 (Index (
                                                    (Index (
                                                       (Var
                                                          (Ident.create_unbound "_tmp30_")),
                                                       (Var_e
                                                          (Ident.create_unbound "i'"))
                                                       )),
                                                    (Const_e 4))))
                                               ]),
                                          (Const_e 41))),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "LinearLayer'V64"),
                                      (Eqn (
                                         [(Var
                                             (Ident.create_unbound "_tmp16_"))
                                           ],
                                         (Shift (Rrotate,
                                            (ExpVar
                                               (Index (
                                                  (Var
                                                     (Ident.create_unbound "state'")),
                                                  (Const_e 4)))),
                                            (Const_e 41))),
                                         false)))
                                      ]
                                    };
                                  { content =
                                    (Eqn (
                                       [(Index (
                                           (Index (
                                              (Var
                                                 (Ident.create_unbound "state'")),
                                              (Op_e (Add,
                                                 (Var_e
                                                    (Ident.create_unbound "i'")),
                                                 (Const_e 1)))
                                              )),
                                           (Const_e 4)))
                                         ],
                                       (Tuple
                                          [(Log (Xor,
                                              (Tuple
                                                 [(ExpVar
                                                     (Index (
                                                        (Var
                                                           (Ident.create_unbound "LinearLayer'V64_1__tmp15_")),
                                                        (Var_e
                                                           (Ident.create_unbound "i'"))
                                                        )))
                                                   ]),
                                              (Tuple
                                                 [(ExpVar
                                                     (Index (
                                                        (Var
                                                           (Ident.create_unbound "LinearLayer'V64_1__tmp16_")),
                                                        (Var_e
                                                           (Ident.create_unbound "i'"))
                                                        )))
                                                   ])
                                              ))
                                            ]),
                                       false));
                                    orig =
                                    [((Ident.create_unbound "LinearLayer'V64"),
                                      (Eqn (
                                         [(Index (
                                             (Var
                                                (Ident.create_unbound "stateR'")),
                                             (Const_e 4)))
                                           ],
                                         (Log (Xor,
                                            (ExpVar
                                               (Var
                                                  (Ident.create_unbound "_tmp15_"))),
                                            (ExpVar
                                               (Var
                                                  (Ident.create_unbound "_tmp16_")))
                                            )),
                                         false)))
                                      ]
                                    }
                                  ],
                                []));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "output'")),
                                    (Const_e 0)))
                                  ],
                                (Tuple
                                   [(ExpVar
                                       (Index (
                                          (Index (
                                             (Var
                                                (Ident.create_unbound "state'")),
                                             (Const_e 12))),
                                          (Const_e 0))))
                                     ]),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "output'")),
                                    (Const_e 1)))
                                  ],
                                (Tuple
                                   [(ExpVar
                                       (Index (
                                          (Index (
                                             (Var
                                                (Ident.create_unbound "state'")),
                                             (Const_e 12))),
                                          (Const_e 1))))
                                     ]),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "output'")),
                                    (Const_e 2)))
                                  ],
                                (Tuple
                                   [(ExpVar
                                       (Index (
                                          (Index (
                                             (Var
                                                (Ident.create_unbound "state'")),
                                             (Const_e 12))),
                                          (Const_e 2))))
                                     ]),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "output'")),
                                    (Const_e 3)))
                                  ],
                                (Tuple
                                   [(ExpVar
                                       (Index (
                                          (Index (
                                             (Var
                                                (Ident.create_unbound "state'")),
                                             (Const_e 12))),
                                          (Const_e 3))))
                                     ]),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "output'")),
                                    (Const_e 4)))
                                  ],
                                (Tuple
                                   [(ExpVar
                                       (Index (
                                          (Index (
                                             (Var
                                                (Ident.create_unbound "state'")),
                                             (Const_e 12))),
                                          (Const_e 4))))
                                     ]),
                                false));
                             orig = [] }
                           ]
                         ))
                      }
                    ]
                  }
