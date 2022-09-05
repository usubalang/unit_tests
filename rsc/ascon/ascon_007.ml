open Usuba_lib
open Usuba_AST

let ascon_007 = { nodes =
                  [{ id = (Ident.create_unbound "Sbox'");
                     p_in =
                     [{ vd_id = (Ident.create_unbound "x'");
                        vd_typ =
                        (Uint ((Varslice (Ident.create_unbound "D")),
                           (Mvar (Ident.create_unbound "m")), 5));
                        vd_opts = []; vd_orig = [] }
                       ];
                     p_out =
                     [{ vd_id = (Ident.create_unbound "xr'");
                        vd_typ =
                        (Uint ((Varslice (Ident.create_unbound "D")),
                           (Mvar (Ident.create_unbound "m")), 5));
                        vd_opts = []; vd_orig = [] }
                       ];
                     opt = [Is_table];
                     node =
                     (Single (
                        [{ vd_id = (Ident.create_unbound "x0'");
                           vd_typ =
                           (Uint ((Varslice (Ident.create_unbound "D")),
                              (Mvar (Ident.create_unbound "m")), 1));
                           vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "x1'");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "x2'");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "x3'");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "x4'");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "t0'");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "t1'");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "t2'");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "t3'");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "t4'");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x2'17_");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x3'16_");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x0'15_");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x1'14_");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x4'13_");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x3'12_");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x2'11_");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x1'10_");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x0'9_");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_t4'8_");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_t3'7_");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_t2'6_");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_t1'5_");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_t0'4_");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x2'3_");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x4'2_");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                          { vd_id = (Ident.create_unbound "_shadow_x0'1_");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] }
                          ],
                        [{ content =
                           (Eqn (
                              [(Var (Ident.create_unbound "x0'"));
                                (Var (Ident.create_unbound "x1'"));
                                (Var (Ident.create_unbound "x2'"));
                                (Var (Ident.create_unbound "x3'"));
                                (Var (Ident.create_unbound "x4'"))],
                              (Tuple
                                 [(Tuple
                                     [(ExpVar
                                         (Var (Ident.create_unbound "x'")))
                                       ])
                                   ]),
                              false));
                           orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x0'1_"))],
                               (Log (Xor,
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "x0'")))
                                           ])
                                       ]),
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "x4'")))
                                           ])
                                       ])
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x4'2_"))],
                               (Log (Xor,
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "x4'")))
                                           ])
                                       ]),
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "x3'")))
                                           ])
                                       ])
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x2'3_"))],
                               (Log (Xor,
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "x2'")))
                                           ])
                                       ]),
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "x1'")))
                                           ])
                                       ])
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn ([(Var (Ident.create_unbound "t0'"))],
                               (Not
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x0'1_")))
                                           ])
                                       ])),
                               false));
                            orig = [] };
                          { content =
                            (Eqn ([(Var (Ident.create_unbound "t1'"))],
                               (Not
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "x1'")))
                                           ])
                                       ])),
                               false));
                            orig = [] };
                          { content =
                            (Eqn ([(Var (Ident.create_unbound "t2'"))],
                               (Not
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x2'3_")))
                                           ])
                                       ])),
                               false));
                            orig = [] };
                          { content =
                            (Eqn ([(Var (Ident.create_unbound "t3'"))],
                               (Not
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "x3'")))
                                           ])
                                       ])),
                               false));
                            orig = [] };
                          { content =
                            (Eqn ([(Var (Ident.create_unbound "t4'"))],
                               (Not
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x4'2_")))
                                           ])
                                       ])),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_t0'4_"))],
                               (Log (And,
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "t0'")))
                                           ])
                                       ]),
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "x1'")))
                                           ])
                                       ])
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_t1'5_"))],
                               (Log (And,
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "t1'")))
                                           ])
                                       ]),
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x2'3_")))
                                           ])
                                       ])
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_t2'6_"))],
                               (Log (And,
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "t2'")))
                                           ])
                                       ]),
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "x3'")))
                                           ])
                                       ])
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_t3'7_"))],
                               (Log (And,
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "t3'")))
                                           ])
                                       ]),
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x4'2_")))
                                           ])
                                       ])
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_t4'8_"))],
                               (Log (And,
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "t4'")))
                                           ])
                                       ]),
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x0'1_")))
                                           ])
                                       ])
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x0'9_"))],
                               (Log (Xor,
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x0'1_")))
                                           ])
                                       ]),
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_t1'5_")))
                                           ])
                                       ])
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x1'10_"))
                                 ],
                               (Log (Xor,
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "x1'")))
                                           ])
                                       ]),
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_t2'6_")))
                                           ])
                                       ])
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x2'11_"))
                                 ],
                               (Log (Xor,
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x2'3_")))
                                           ])
                                       ]),
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_t3'7_")))
                                           ])
                                       ])
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x3'12_"))
                                 ],
                               (Log (Xor,
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "x3'")))
                                           ])
                                       ]),
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_t4'8_")))
                                           ])
                                       ])
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x4'13_"))
                                 ],
                               (Log (Xor,
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x4'2_")))
                                           ])
                                       ]),
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_t0'4_")))
                                           ])
                                       ])
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x1'14_"))
                                 ],
                               (Log (Xor,
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x1'10_")))
                                           ])
                                       ]),
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x0'9_")))
                                           ])
                                       ])
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x0'15_"))
                                 ],
                               (Log (Xor,
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x0'9_")))
                                           ])
                                       ]),
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x4'13_")))
                                           ])
                                       ])
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x3'16_"))
                                 ],
                               (Log (Xor,
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x3'12_")))
                                           ])
                                       ]),
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x2'11_")))
                                           ])
                                       ])
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x2'17_"))
                                 ],
                               (Not
                                  (Tuple
                                     [(Tuple
                                         [(ExpVar
                                             (Var
                                                (Ident.create_unbound "_shadow_x2'11_")))
                                           ])
                                       ])),
                               false));
                            orig = [] };
                          { content =
                            (Eqn ([(Var (Ident.create_unbound "xr'"))],
                               (Tuple
                                  [(Tuple
                                      [(Tuple
                                          [(ExpVar
                                              (Var
                                                 (Ident.create_unbound "_shadow_x0'15_")))
                                            ])
                                        ]);
                                    (Tuple
                                       [(Tuple
                                           [(ExpVar
                                               (Var
                                                  (Ident.create_unbound "_shadow_x1'14_")))
                                             ])
                                         ]);
                                    (Tuple
                                       [(Tuple
                                           [(ExpVar
                                               (Var
                                                  (Ident.create_unbound "_shadow_x2'17_")))
                                             ])
                                         ]);
                                    (Tuple
                                       [(Tuple
                                           [(ExpVar
                                               (Var
                                                  (Ident.create_unbound "_shadow_x3'16_")))
                                             ])
                                         ]);
                                    (Tuple
                                       [(Tuple
                                           [(ExpVar
                                               (Var
                                                  (Ident.create_unbound "_shadow_x4'13_")))
                                             ])
                                         ])
                                    ]),
                               false));
                            orig = [] }
                          ]
                        ))
                     };
                    { id = (Ident.create_unbound "AddConstant'");
                      p_in =
                      [{ vd_id = (Ident.create_unbound "state'");
                         vd_typ =
                         (Uint ((Varslice (Ident.create_unbound "D")),
                            (Mint 64), 5));
                         vd_opts = []; vd_orig = [] };
                        { vd_id = (Ident.create_unbound "c'");
                          vd_typ =
                          (Uint ((Varslice (Ident.create_unbound "D")),
                             (Mint 64), 1));
                          vd_opts = []; vd_orig = [] }
                        ];
                      p_out =
                      [{ vd_id = (Ident.create_unbound "stateR'");
                         vd_typ =
                         (Uint ((Varslice (Ident.create_unbound "D")),
                            (Mint 64), 5));
                         vd_opts = []; vd_orig = [] }
                        ];
                      opt = [];
                      node =
                      (Single ([],
                         [{ content =
                            (Eqn ([(Var (Ident.create_unbound "stateR'"))],
                               (Tuple
                                  [(Tuple
                                      [(Tuple
                                          [(ExpVar
                                              (Index (
                                                 (Var
                                                    (Ident.create_unbound "state'")),
                                                 (Const_e 0))))
                                            ]);
                                        (Tuple
                                           [(ExpVar
                                               (Index (
                                                  (Var
                                                     (Ident.create_unbound "state'")),
                                                  (Const_e 1))))
                                             ])
                                        ]);
                                    (Log (Xor,
                                       (Tuple
                                          [(Tuple
                                              [(ExpVar
                                                  (Index (
                                                     (Var
                                                        (Ident.create_unbound "state'")),
                                                     (Const_e 2))))
                                                ])
                                            ]),
                                       (Tuple
                                          [(Tuple
                                              [(ExpVar
                                                  (Var
                                                     (Ident.create_unbound "c'")))
                                                ])
                                            ])
                                       ));
                                    (Tuple
                                       [(Tuple
                                           [(ExpVar
                                               (Index (
                                                  (Var
                                                     (Ident.create_unbound "state'")),
                                                  (Const_e 3))))
                                             ]);
                                         (Tuple
                                            [(ExpVar
                                                (Index (
                                                   (Var
                                                      (Ident.create_unbound "state'")),
                                                   (Const_e 4))))
                                              ])
                                         ])
                                    ]),
                               false));
                            orig = [] }
                           ]
                         ))
                      };
                    { id = (Ident.create_unbound "LinearLayer'");
                      p_in =
                      [{ vd_id = (Ident.create_unbound "state'");
                         vd_typ =
                         (Uint ((Varslice (Ident.create_unbound "D")),
                            (Mint 64), 5));
                         vd_opts = []; vd_orig = [] }
                        ];
                      p_out =
                      [{ vd_id = (Ident.create_unbound "stateR'");
                         vd_typ =
                         (Uint ((Varslice (Ident.create_unbound "D")),
                            (Mint 64), 5));
                         vd_opts = []; vd_orig = [] }
                        ];
                      opt = [];
                      node =
                      (Single ([],
                         [{ content =
                            (Eqn (
                               [(Index (
                                   (Var (Ident.create_unbound "stateR'")),
                                   (Const_e 0)))
                                 ],
                               (Log (Xor,
                                  (Log (Xor,
                                     (Tuple
                                        [(Tuple
                                            [(ExpVar
                                                (Index (
                                                   (Var
                                                      (Ident.create_unbound "state'")),
                                                   (Const_e 0))))
                                              ])
                                          ]),
                                     (Shift (Rrotate,
                                        (Tuple
                                           [(Tuple
                                               [(ExpVar
                                                   (Index (
                                                      (Var
                                                         (Ident.create_unbound "state'")),
                                                      (Const_e 0))))
                                                 ])
                                             ]),
                                        (Const_e 19)))
                                     )),
                                  (Shift (Rrotate,
                                     (Tuple
                                        [(Tuple
                                            [(ExpVar
                                                (Index (
                                                   (Var
                                                      (Ident.create_unbound "state'")),
                                                   (Const_e 0))))
                                              ])
                                          ]),
                                     (Const_e 28)))
                                  )),
                               false));
                            orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "stateR'")),
                                    (Const_e 1)))
                                  ],
                                (Log (Xor,
                                   (Log (Xor,
                                      (Tuple
                                         [(Tuple
                                             [(ExpVar
                                                 (Index (
                                                    (Var
                                                       (Ident.create_unbound "state'")),
                                                    (Const_e 1))))
                                               ])
                                           ]),
                                      (Shift (Rrotate,
                                         (Tuple
                                            [(Tuple
                                                [(ExpVar
                                                    (Index (
                                                       (Var
                                                          (Ident.create_unbound "state'")),
                                                       (Const_e 1))))
                                                  ])
                                              ]),
                                         (Const_e 61)))
                                      )),
                                   (Shift (Rrotate,
                                      (Tuple
                                         [(Tuple
                                             [(ExpVar
                                                 (Index (
                                                    (Var
                                                       (Ident.create_unbound "state'")),
                                                    (Const_e 1))))
                                               ])
                                           ]),
                                      (Const_e 39)))
                                   )),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "stateR'")),
                                    (Const_e 2)))
                                  ],
                                (Log (Xor,
                                   (Log (Xor,
                                      (Tuple
                                         [(Tuple
                                             [(ExpVar
                                                 (Index (
                                                    (Var
                                                       (Ident.create_unbound "state'")),
                                                    (Const_e 2))))
                                               ])
                                           ]),
                                      (Shift (Rrotate,
                                         (Tuple
                                            [(Tuple
                                                [(ExpVar
                                                    (Index (
                                                       (Var
                                                          (Ident.create_unbound "state'")),
                                                       (Const_e 2))))
                                                  ])
                                              ]),
                                         (Const_e 1)))
                                      )),
                                   (Shift (Rrotate,
                                      (Tuple
                                         [(Tuple
                                             [(ExpVar
                                                 (Index (
                                                    (Var
                                                       (Ident.create_unbound "state'")),
                                                    (Const_e 2))))
                                               ])
                                           ]),
                                      (Const_e 6)))
                                   )),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "stateR'")),
                                    (Const_e 3)))
                                  ],
                                (Log (Xor,
                                   (Log (Xor,
                                      (Tuple
                                         [(Tuple
                                             [(ExpVar
                                                 (Index (
                                                    (Var
                                                       (Ident.create_unbound "state'")),
                                                    (Const_e 3))))
                                               ])
                                           ]),
                                      (Shift (Rrotate,
                                         (Tuple
                                            [(Tuple
                                                [(ExpVar
                                                    (Index (
                                                       (Var
                                                          (Ident.create_unbound "state'")),
                                                       (Const_e 3))))
                                                  ])
                                              ]),
                                         (Const_e 10)))
                                      )),
                                   (Shift (Rrotate,
                                      (Tuple
                                         [(Tuple
                                             [(ExpVar
                                                 (Index (
                                                    (Var
                                                       (Ident.create_unbound "state'")),
                                                    (Const_e 3))))
                                               ])
                                           ]),
                                      (Const_e 17)))
                                   )),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "stateR'")),
                                    (Const_e 4)))
                                  ],
                                (Log (Xor,
                                   (Log (Xor,
                                      (Tuple
                                         [(Tuple
                                             [(ExpVar
                                                 (Index (
                                                    (Var
                                                       (Ident.create_unbound "state'")),
                                                    (Const_e 4))))
                                               ])
                                           ]),
                                      (Shift (Rrotate,
                                         (Tuple
                                            [(Tuple
                                                [(ExpVar
                                                    (Index (
                                                       (Var
                                                          (Ident.create_unbound "state'")),
                                                       (Const_e 4))))
                                                  ])
                                              ]),
                                         (Const_e 7)))
                                      )),
                                   (Shift (Rrotate,
                                      (Tuple
                                         [(Tuple
                                             [(ExpVar
                                                 (Index (
                                                    (Var
                                                       (Ident.create_unbound "state'")),
                                                    (Const_e 4))))
                                               ])
                                           ]),
                                      (Const_e 41)))
                                   )),
                                false));
                             orig = [] }
                           ]
                         ))
                      };
                    { id = (Ident.create_unbound "ascon12'");
                      p_in =
                      [{ vd_id = (Ident.create_unbound "input'");
                         vd_typ =
                         (Uint ((Varslice (Ident.create_unbound "D")),
                            (Mint 64), 5));
                         vd_opts = []; vd_orig = [] }
                        ];
                      p_out =
                      [{ vd_id = (Ident.create_unbound "output'");
                         vd_typ =
                         (Uint ((Varslice (Ident.create_unbound "D")),
                            (Mint 64), 5));
                         vd_opts = []; vd_orig = [] }
                        ];
                      opt = [];
                      node =
                      (Single (
                         [{ vd_id = (Ident.create_unbound "consts'");
                            vd_typ =
                            (Array (
                               (Uint ((Varslice (Ident.create_unbound "D")),
                                  (Mint 64), 1)),
                               (Const_e 12)));
                            vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "state'");
                             vd_typ =
                             (Array (
                                (Uint ((Varslice (Ident.create_unbound "D")),
                                   (Mint 64), 5)),
                                (Const_e 13)));
                             vd_opts = []; vd_orig = [] }
                           ],
                         [{ content =
                            (Eqn ([(Var (Ident.create_unbound "consts'"))],
                               (Tuple
                                  [(Const (240,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 64), 1)))
                                      ));
                                    (Const (225,
                                       (Some (Uint (
                                                (Varslice
                                                   (Ident.create_unbound "D")),
                                                (Mint 64), 1)))
                                       ));
                                    (Const (210,
                                       (Some (Uint (
                                                (Varslice
                                                   (Ident.create_unbound "D")),
                                                (Mint 64), 1)))
                                       ));
                                    (Const (195,
                                       (Some (Uint (
                                                (Varslice
                                                   (Ident.create_unbound "D")),
                                                (Mint 64), 1)))
                                       ));
                                    (Const (180,
                                       (Some (Uint (
                                                (Varslice
                                                   (Ident.create_unbound "D")),
                                                (Mint 64), 1)))
                                       ));
                                    (Const (165,
                                       (Some (Uint (
                                                (Varslice
                                                   (Ident.create_unbound "D")),
                                                (Mint 64), 1)))
                                       ));
                                    (Const (150,
                                       (Some (Uint (
                                                (Varslice
                                                   (Ident.create_unbound "D")),
                                                (Mint 64), 1)))
                                       ));
                                    (Const (135,
                                       (Some (Uint (
                                                (Varslice
                                                   (Ident.create_unbound "D")),
                                                (Mint 64), 1)))
                                       ));
                                    (Const (120,
                                       (Some (Uint (
                                                (Varslice
                                                   (Ident.create_unbound "D")),
                                                (Mint 64), 1)))
                                       ));
                                    (Const (105,
                                       (Some (Uint (
                                                (Varslice
                                                   (Ident.create_unbound "D")),
                                                (Mint 64), 1)))
                                       ));
                                    (Const (90,
                                       (Some (Uint (
                                                (Varslice
                                                   (Ident.create_unbound "D")),
                                                (Mint 64), 1)))
                                       ));
                                    (Const (75,
                                       (Some (Uint (
                                                (Varslice
                                                   (Ident.create_unbound "D")),
                                                (Mint 64), 1)))
                                       ))
                                    ]),
                               false));
                            orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "state'")),
                                    (Const_e 0)))
                                  ],
                                (Tuple
                                   [(Tuple
                                       [(ExpVar
                                           (Var
                                              (Ident.create_unbound "input'")))
                                         ])
                                     ]),
                                false));
                             orig = [] };
                           { content =
                             Loop {id = (Ident.create_unbound "i'");
                               start = (Const_e 0); stop = (Const_e 11);
                               body =
                               [{ content =
                                  (Eqn (
                                     [(Index (
                                         (Var (Ident.create_unbound "state'")),
                                         (Op_e (Add,
                                            (Var_e
                                               (Ident.create_unbound "i'")),
                                            (Const_e 1)))
                                         ))
                                       ],
                                     (Fun (
                                        (Ident.create_unbound "LinearLayer'"),
                                        [(Fun (
                                            (Ident.create_unbound "Sbox'"),
                                            [(Fun (
                                                (Ident.create_unbound "AddConstant'"),
                                                [(Tuple
                                                    [(Tuple
                                                        [(ExpVar
                                                            (Index (
                                                               (Var
                                                                  (Ident.create_unbound "state'")),
                                                               (Var_e
                                                                  (Ident.create_unbound "i'"))
                                                               )))
                                                          ])
                                                      ]);
                                                  (Tuple
                                                     [(Tuple
                                                         [(ExpVar
                                                             (Index (
                                                                (Var
                                                                   (Ident.create_unbound "consts'")),
                                                                (Var_e
                                                                   (Ident.create_unbound "i'"))
                                                                )))
                                                           ])
                                                       ])
                                                  ]
                                                ))
                                              ]
                                            ))
                                          ]
                                        )),
                                     false));
                                  orig = [] }
                                 ];
                               opts = []};
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "output'"))],
                                (Tuple
                                   [(Tuple
                                       [(ExpVar
                                           (Index (
                                              (Var
                                                 (Ident.create_unbound "state'")),
                                              (Const_e 12))))
                                         ])
                                     ]),
                                false));
                             orig = [] }
                           ]
                         ))
                      }
                    ]
                  }
