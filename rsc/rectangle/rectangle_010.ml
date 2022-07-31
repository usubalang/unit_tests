open Usuba_lib
open Usuba_AST

let rectangle_010 = { nodes =
                      [{ id = (Ident.create_unbound "SubColumn'");
                         p_in =
                         [{ vd_id = (Ident.create_unbound "a0'");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "a1'");
                             vd_typ =
                             (Uint ((Varslice (Ident.create_unbound "D")),
                                (Mvar (Ident.create_unbound "m")), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "a2'");
                             vd_typ =
                             (Uint ((Varslice (Ident.create_unbound "D")),
                                (Mvar (Ident.create_unbound "m")), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "a3'");
                             vd_typ =
                             (Uint ((Varslice (Ident.create_unbound "D")),
                                (Mvar (Ident.create_unbound "m")), 1));
                             vd_opts = []; vd_orig = [] }
                           ];
                         p_out =
                         [{ vd_id = (Ident.create_unbound "b0'");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 1));
                            vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "b1'");
                             vd_typ =
                             (Uint ((Varslice (Ident.create_unbound "D")),
                                (Mvar (Ident.create_unbound "m")), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "b2'");
                             vd_typ =
                             (Uint ((Varslice (Ident.create_unbound "D")),
                                (Mvar (Ident.create_unbound "m")), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "b3'");
                             vd_typ =
                             (Uint ((Varslice (Ident.create_unbound "D")),
                                (Mvar (Ident.create_unbound "m")), 1));
                             vd_opts = []; vd_orig = [] }
                           ];
                         opt = [Is_table];
                         node =
                         (Single (
                            [{ vd_id = (Ident.create_unbound "t1'");
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
                              { vd_id = (Ident.create_unbound "t5'");
                                vd_typ =
                                (Uint ((Varslice (Ident.create_unbound "D")),
                                   (Mvar (Ident.create_unbound "m")), 1));
                                vd_opts = []; vd_orig = [] };
                              { vd_id = (Ident.create_unbound "t6'");
                                vd_typ =
                                (Uint ((Varslice (Ident.create_unbound "D")),
                                   (Mvar (Ident.create_unbound "m")), 1));
                                vd_opts = []; vd_orig = [] };
                              { vd_id = (Ident.create_unbound "t7'");
                                vd_typ =
                                (Uint ((Varslice (Ident.create_unbound "D")),
                                   (Mvar (Ident.create_unbound "m")), 1));
                                vd_opts = []; vd_orig = [] };
                              { vd_id = (Ident.create_unbound "t8'");
                                vd_typ =
                                (Uint ((Varslice (Ident.create_unbound "D")),
                                   (Mvar (Ident.create_unbound "m")), 1));
                                vd_opts = []; vd_orig = [] };
                              { vd_id = (Ident.create_unbound "t9'");
                                vd_typ =
                                (Uint ((Varslice (Ident.create_unbound "D")),
                                   (Mvar (Ident.create_unbound "m")), 1));
                                vd_opts = []; vd_orig = [] };
                              { vd_id = (Ident.create_unbound "t10'");
                                vd_typ =
                                (Uint ((Varslice (Ident.create_unbound "D")),
                                   (Mvar (Ident.create_unbound "m")), 1));
                                vd_opts = []; vd_orig = [] };
                              { vd_id = (Ident.create_unbound "t11'");
                                vd_typ =
                                (Uint ((Varslice (Ident.create_unbound "D")),
                                   (Mvar (Ident.create_unbound "m")), 1));
                                vd_opts = []; vd_orig = [] };
                              { vd_id = (Ident.create_unbound "t12'");
                                vd_typ =
                                (Uint ((Varslice (Ident.create_unbound "D")),
                                   (Mvar (Ident.create_unbound "m")), 1));
                                vd_opts = []; vd_orig = [] }
                              ],
                            [{ content =
                               (Eqn ([(Var (Ident.create_unbound "t1'"))],
                                  (Tuple
                                     [(Not
                                         (Tuple
                                            [(ExpVar
                                                (Var
                                                   (Ident.create_unbound "a1'")))
                                              ]))
                                       ]),
                                  false));
                               orig = [] };
                              { content =
                                (Eqn ([(Var (Ident.create_unbound "t2'"))],
                                   (Tuple
                                      [(Log (And,
                                          (Tuple
                                             [(ExpVar
                                                 (Var
                                                    (Ident.create_unbound "a0'")))
                                               ]),
                                          (Tuple
                                             [(ExpVar
                                                 (Var
                                                    (Ident.create_unbound "t1'")))
                                               ])
                                          ))
                                        ]),
                                   false));
                                orig = [] };
                              { content =
                                (Eqn ([(Var (Ident.create_unbound "t3'"))],
                                   (Tuple
                                      [(Log (Xor,
                                          (Tuple
                                             [(ExpVar
                                                 (Var
                                                    (Ident.create_unbound "a2'")))
                                               ]),
                                          (Tuple
                                             [(ExpVar
                                                 (Var
                                                    (Ident.create_unbound "a3'")))
                                               ])
                                          ))
                                        ]),
                                   false));
                                orig = [] };
                              { content =
                                (Eqn ([(Var (Ident.create_unbound "b0'"))],
                                   (Tuple
                                      [(Log (Xor,
                                          (Tuple
                                             [(ExpVar
                                                 (Var
                                                    (Ident.create_unbound "t2'")))
                                               ]),
                                          (Tuple
                                             [(ExpVar
                                                 (Var
                                                    (Ident.create_unbound "t3'")))
                                               ])
                                          ))
                                        ]),
                                   false));
                                orig = [] };
                              { content =
                                (Eqn ([(Var (Ident.create_unbound "t5'"))],
                                   (Tuple
                                      [(Log (Or,
                                          (Tuple
                                             [(ExpVar
                                                 (Var
                                                    (Ident.create_unbound "a3'")))
                                               ]),
                                          (Tuple
                                             [(ExpVar
                                                 (Var
                                                    (Ident.create_unbound "t1'")))
                                               ])
                                          ))
                                        ]),
                                   false));
                                orig = [] };
                              { content =
                                (Eqn ([(Var (Ident.create_unbound "t6'"))],
                                   (Tuple
                                      [(Log (Xor,
                                          (Tuple
                                             [(ExpVar
                                                 (Var
                                                    (Ident.create_unbound "a0'")))
                                               ]),
                                          (Tuple
                                             [(ExpVar
                                                 (Var
                                                    (Ident.create_unbound "t5'")))
                                               ])
                                          ))
                                        ]),
                                   false));
                                orig = [] };
                              { content =
                                (Eqn ([(Var (Ident.create_unbound "b1'"))],
                                   (Tuple
                                      [(Log (Xor,
                                          (Tuple
                                             [(ExpVar
                                                 (Var
                                                    (Ident.create_unbound "a2'")))
                                               ]),
                                          (Tuple
                                             [(ExpVar
                                                 (Var
                                                    (Ident.create_unbound "t6'")))
                                               ])
                                          ))
                                        ]),
                                   false));
                                orig = [] };
                              { content =
                                (Eqn ([(Var (Ident.create_unbound "t8'"))],
                                   (Tuple
                                      [(Log (Xor,
                                          (Tuple
                                             [(ExpVar
                                                 (Var
                                                    (Ident.create_unbound "a1'")))
                                               ]),
                                          (Tuple
                                             [(ExpVar
                                                 (Var
                                                    (Ident.create_unbound "a2'")))
                                               ])
                                          ))
                                        ]),
                                   false));
                                orig = [] };
                              { content =
                                (Eqn ([(Var (Ident.create_unbound "t9'"))],
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
                                                    (Ident.create_unbound "t6'")))
                                               ])
                                          ))
                                        ]),
                                   false));
                                orig = [] };
                              { content =
                                (Eqn ([(Var (Ident.create_unbound "b3'"))],
                                   (Tuple
                                      [(Log (Xor,
                                          (Tuple
                                             [(ExpVar
                                                 (Var
                                                    (Ident.create_unbound "t8'")))
                                               ]),
                                          (Tuple
                                             [(ExpVar
                                                 (Var
                                                    (Ident.create_unbound "t9'")))
                                               ])
                                          ))
                                        ]),
                                   false));
                                orig = [] };
                              { content =
                                (Eqn ([(Var (Ident.create_unbound "t11'"))],
                                   (Tuple
                                      [(Log (Or,
                                          (Tuple
                                             [(ExpVar
                                                 (Var
                                                    (Ident.create_unbound "b0'")))
                                               ]),
                                          (Tuple
                                             [(ExpVar
                                                 (Var
                                                    (Ident.create_unbound "t8'")))
                                               ])
                                          ))
                                        ]),
                                   false));
                                orig = [] };
                              { content =
                                (Eqn ([(Var (Ident.create_unbound "b2'"))],
                                   (Tuple
                                      [(Log (Xor,
                                          (Tuple
                                             [(ExpVar
                                                 (Var
                                                    (Ident.create_unbound "t6'")))
                                               ]),
                                          (Tuple
                                             [(ExpVar
                                                 (Var
                                                    (Ident.create_unbound "t11'")))
                                               ])
                                          ))
                                        ]),
                                   false));
                                orig = [] }
                              ]
                            ))
                         };
                        { id = (Ident.create_unbound "ShiftRows'");
                          p_in =
                          [{ vd_id = (Ident.create_unbound "input'");
                             vd_typ =
                             (Uint ((Varslice (Ident.create_unbound "D")),
                                (Mint 16), 4));
                             vd_opts = []; vd_orig = [] }
                            ];
                          p_out =
                          [{ vd_id = (Ident.create_unbound "out'");
                             vd_typ =
                             (Uint ((Varslice (Ident.create_unbound "D")),
                                (Mint 16), 4));
                             vd_opts = []; vd_orig = [] }
                            ];
                          opt = [];
                          node =
                          (Single ([],
                             [{ content =
                                (Eqn (
                                   [(Index (
                                       (Var (Ident.create_unbound "out'")),
                                       (Const_e 0)))
                                     ],
                                   (Tuple
                                      [(Tuple
                                          [(ExpVar
                                              (Index (
                                                 (Var
                                                    (Ident.create_unbound "input'")),
                                                 (Const_e 0))))
                                            ])
                                        ]),
                                   false));
                                orig = [] };
                               { content =
                                 (Eqn (
                                    [(Index (
                                        (Var (Ident.create_unbound "out'")),
                                        (Const_e 1)))
                                      ],
                                    (Shift (Lrotate,
                                       (Tuple
                                          [(Tuple
                                              [(ExpVar
                                                  (Index (
                                                     (Var
                                                        (Ident.create_unbound "input'")),
                                                     (Const_e 1))))
                                                ])
                                            ]),
                                       (Const_e 1))),
                                    false));
                                 orig = [] };
                               { content =
                                 (Eqn (
                                    [(Index (
                                        (Var (Ident.create_unbound "out'")),
                                        (Const_e 2)))
                                      ],
                                    (Shift (Lrotate,
                                       (Tuple
                                          [(Tuple
                                              [(ExpVar
                                                  (Index (
                                                     (Var
                                                        (Ident.create_unbound "input'")),
                                                     (Const_e 2))))
                                                ])
                                            ]),
                                       (Const_e 12))),
                                    false));
                                 orig = [] };
                               { content =
                                 (Eqn (
                                    [(Index (
                                        (Var (Ident.create_unbound "out'")),
                                        (Const_e 3)))
                                      ],
                                    (Shift (Lrotate,
                                       (Tuple
                                          [(Tuple
                                              [(ExpVar
                                                  (Index (
                                                     (Var
                                                        (Ident.create_unbound "input'")),
                                                     (Const_e 3))))
                                                ])
                                            ]),
                                       (Const_e 13))),
                                    false));
                                 orig = [] }
                               ]
                             ))
                          };
                        { id = (Ident.create_unbound "Rectangle'");
                          p_in =
                          [{ vd_id = (Ident.create_unbound "plain'");
                             vd_typ =
                             (Uint ((Varslice (Ident.create_unbound "D")),
                                (Mint 16), 4));
                             vd_opts = []; vd_orig = [] };
                            { vd_id = (Ident.create_unbound "key'");
                              vd_typ =
                              (Array (
                                 (Uint (
                                    (Varslice (Ident.create_unbound "D")),
                                    (Mint 16), 4)),
                                 (Const_e 26)));
                              vd_opts = [Pconst]; vd_orig = [] }
                            ];
                          p_out =
                          [{ vd_id = (Ident.create_unbound "cipher'");
                             vd_typ =
                             (Uint ((Varslice (Ident.create_unbound "D")),
                                (Mint 16), 4));
                             vd_opts = []; vd_orig = [] }
                            ];
                          opt = [];
                          node =
                          (Single (
                             [{ vd_id = (Ident.create_unbound "tmp'");
                                vd_typ =
                                (Array (
                                   (Uint (
                                      (Varslice (Ident.create_unbound "D")),
                                      (Mint 16), 4)),
                                   (Const_e 26)));
                                vd_opts = []; vd_orig = [] };
                               { vd_id = (Ident.create_unbound "_tmp2_");
                                 vd_typ =
                                 (Array (
                                    (Array (
                                       (Uint (
                                          (Varslice
                                             (Ident.create_unbound "D")),
                                          (Mint 16), 1)),
                                       (Const_e 4))),
                                    (Const_e 25)));
                                 vd_opts = []; vd_orig = [] };
                               { vd_id = (Ident.create_unbound "_tmp1_");
                                 vd_typ =
                                 (Array (
                                    (Array (
                                       (Uint (
                                          (Varslice
                                             (Ident.create_unbound "D")),
                                          (Mint 16), 1)),
                                       (Const_e 4))),
                                    (Const_e 25)));
                                 vd_opts = []; vd_orig = [] }
                               ],
                             [{ content =
                                (Eqn (
                                   [(Index (
                                       (Var (Ident.create_unbound "tmp'")),
                                       (Const_e 0)))
                                     ],
                                   (Tuple
                                      [(Tuple
                                          [(ExpVar
                                              (Var
                                                 (Ident.create_unbound "plain'")))
                                            ])
                                        ]),
                                   false));
                                orig = [] };
                               { content =
                                 (Loop ((Ident.create_unbound "i'"),
                                    (Const_e 0), (Const_e 24),
                                    [{ content =
                                       (Eqn (
                                          [(Index (
                                              (Var
                                                 (Ident.create_unbound "_tmp1_")),
                                              (Var_e
                                                 (Ident.create_unbound "i'"))
                                              ))
                                            ],
                                          (Tuple
                                             [(Log (Xor,
                                                 (Tuple
                                                    [(ExpVar
                                                        (Index (
                                                           (Index (
                                                              (Var
                                                                 (Ident.create_unbound "tmp'")),
                                                              (Var_e
                                                                 (Ident.create_unbound "i'"))
                                                              )),
                                                           (Const_e 0))))
                                                      ]),
                                                 (Tuple
                                                    [(ExpVar
                                                        (Index (
                                                           (Index (
                                                              (Var
                                                                 (Ident.create_unbound "key'")),
                                                              (Var_e
                                                                 (Ident.create_unbound "i'"))
                                                              )),
                                                           (Const_e 0))))
                                                      ])
                                                 ));
                                               (Log (Xor,
                                                  (Tuple
                                                     [(ExpVar
                                                         (Index (
                                                            (Index (
                                                               (Var
                                                                  (Ident.create_unbound "tmp'")),
                                                               (Var_e
                                                                  (Ident.create_unbound "i'"))
                                                               )),
                                                            (Const_e 1))))
                                                       ]),
                                                  (Tuple
                                                     [(ExpVar
                                                         (Index (
                                                            (Index (
                                                               (Var
                                                                  (Ident.create_unbound "key'")),
                                                               (Var_e
                                                                  (Ident.create_unbound "i'"))
                                                               )),
                                                            (Const_e 1))))
                                                       ])
                                                  ));
                                               (Log (Xor,
                                                  (Tuple
                                                     [(ExpVar
                                                         (Index (
                                                            (Index (
                                                               (Var
                                                                  (Ident.create_unbound "tmp'")),
                                                               (Var_e
                                                                  (Ident.create_unbound "i'"))
                                                               )),
                                                            (Const_e 2))))
                                                       ]),
                                                  (Tuple
                                                     [(ExpVar
                                                         (Index (
                                                            (Index (
                                                               (Var
                                                                  (Ident.create_unbound "key'")),
                                                               (Var_e
                                                                  (Ident.create_unbound "i'"))
                                                               )),
                                                            (Const_e 2))))
                                                       ])
                                                  ));
                                               (Log (Xor,
                                                  (Tuple
                                                     [(ExpVar
                                                         (Index (
                                                            (Index (
                                                               (Var
                                                                  (Ident.create_unbound "tmp'")),
                                                               (Var_e
                                                                  (Ident.create_unbound "i'"))
                                                               )),
                                                            (Const_e 3))))
                                                       ]),
                                                  (Tuple
                                                     [(ExpVar
                                                         (Index (
                                                            (Index (
                                                               (Var
                                                                  (Ident.create_unbound "key'")),
                                                               (Var_e
                                                                  (Ident.create_unbound "i'"))
                                                               )),
                                                            (Const_e 3))))
                                                       ])
                                                  ))
                                               ]),
                                          false));
                                       orig = [] };
                                      { content =
                                        (Eqn (
                                           [(Index (
                                               (Var
                                                  (Ident.create_unbound "_tmp2_")),
                                               (Var_e
                                                  (Ident.create_unbound "i'"))
                                               ))
                                             ],
                                           (Fun (
                                              (Ident.create_unbound "SubColumn'"),
                                              [(Tuple
                                                  [(ExpVar
                                                      (Index (
                                                         (Var
                                                            (Ident.create_unbound "_tmp1_")),
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
                                                  (Ident.create_unbound "tmp'")),
                                               (Op_e (Add,
                                                  (Var_e
                                                     (Ident.create_unbound "i'")),
                                                  (Const_e 1)))
                                               ))
                                             ],
                                           (Fun (
                                              (Ident.create_unbound "ShiftRows'"),
                                              [(Tuple
                                                  [(ExpVar
                                                      (Index (
                                                         (Var
                                                            (Ident.create_unbound "_tmp2_")),
                                                         (Var_e
                                                            (Ident.create_unbound "i'"))
                                                         )))
                                                    ])
                                                ]
                                              )),
                                           false));
                                        orig = [] }
                                      ],
                                    []));
                                 orig = [] };
                               { content =
                                 (Eqn (
                                    [(Var (Ident.create_unbound "cipher'"))],
                                    (Tuple
                                       [(Log (Xor,
                                           (Tuple
                                              [(ExpVar
                                                  (Index (
                                                     (Index (
                                                        (Var
                                                           (Ident.create_unbound "tmp'")),
                                                        (Const_e 25))),
                                                     (Const_e 0))))
                                                ]),
                                           (Tuple
                                              [(ExpVar
                                                  (Index (
                                                     (Index (
                                                        (Var
                                                           (Ident.create_unbound "key'")),
                                                        (Const_e 25))),
                                                     (Const_e 0))))
                                                ])
                                           ));
                                         (Log (Xor,
                                            (Tuple
                                               [(ExpVar
                                                   (Index (
                                                      (Index (
                                                         (Var
                                                            (Ident.create_unbound "tmp'")),
                                                         (Const_e 25))),
                                                      (Const_e 1))))
                                                 ]),
                                            (Tuple
                                               [(ExpVar
                                                   (Index (
                                                      (Index (
                                                         (Var
                                                            (Ident.create_unbound "key'")),
                                                         (Const_e 25))),
                                                      (Const_e 1))))
                                                 ])
                                            ));
                                         (Log (Xor,
                                            (Tuple
                                               [(ExpVar
                                                   (Index (
                                                      (Index (
                                                         (Var
                                                            (Ident.create_unbound "tmp'")),
                                                         (Const_e 25))),
                                                      (Const_e 2))))
                                                 ]),
                                            (Tuple
                                               [(ExpVar
                                                   (Index (
                                                      (Index (
                                                         (Var
                                                            (Ident.create_unbound "key'")),
                                                         (Const_e 25))),
                                                      (Const_e 2))))
                                                 ])
                                            ));
                                         (Log (Xor,
                                            (Tuple
                                               [(ExpVar
                                                   (Index (
                                                      (Index (
                                                         (Var
                                                            (Ident.create_unbound "tmp'")),
                                                         (Const_e 25))),
                                                      (Const_e 3))))
                                                 ]),
                                            (Tuple
                                               [(ExpVar
                                                   (Index (
                                                      (Index (
                                                         (Var
                                                            (Ident.create_unbound "key'")),
                                                         (Const_e 25))),
                                                      (Const_e 3))))
                                                 ])
                                            ))
                                         ]),
                                    false));
                                 orig = [] }
                               ]
                             ))
                          }
                        ]
                      }
