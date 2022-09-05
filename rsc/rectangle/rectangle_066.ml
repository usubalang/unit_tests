open Usuba_lib
open Usuba_AST

let rectangle_066 = { nodes =
                      [{ id = (Ident.create_unbound "SubColumn'H16");
                         p_in =
                         [{ vd_id = (Ident.create_unbound "a0'");
                            vd_typ = (Uint (Hslice, (Mint 16), 1));
                            vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "a1'");
                             vd_typ = (Uint (Hslice, (Mint 16), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "a2'");
                             vd_typ = (Uint (Hslice, (Mint 16), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "a3'");
                             vd_typ = (Uint (Hslice, (Mint 16), 1));
                             vd_opts = []; vd_orig = [] }
                           ];
                         p_out =
                         [{ vd_id = (Ident.create_unbound "b0'");
                            vd_typ = (Uint (Hslice, (Mint 16), 1));
                            vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "b1'");
                             vd_typ = (Uint (Hslice, (Mint 16), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "b2'");
                             vd_typ = (Uint (Hslice, (Mint 16), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "b3'");
                             vd_typ = (Uint (Hslice, (Mint 16), 1));
                             vd_opts = []; vd_orig = [] }
                           ];
                         opt = [Is_table];
                         node =
                         (Single (
                            [{ vd_id = (Ident.create_unbound "t1'");
                               vd_typ = (Uint (Hslice, (Mint 16), 1));
                               vd_opts = []; vd_orig = [] };
                              { vd_id = (Ident.create_unbound "t2'");
                                vd_typ = (Uint (Hslice, (Mint 16), 1));
                                vd_opts = []; vd_orig = [] };
                              { vd_id = (Ident.create_unbound "t3'");
                                vd_typ = (Uint (Hslice, (Mint 16), 1));
                                vd_opts = []; vd_orig = [] };
                              { vd_id = (Ident.create_unbound "t4'");
                                vd_typ = (Uint (Hslice, (Mint 16), 1));
                                vd_opts = []; vd_orig = [] };
                              { vd_id = (Ident.create_unbound "t5'");
                                vd_typ = (Uint (Hslice, (Mint 16), 1));
                                vd_opts = []; vd_orig = [] };
                              { vd_id = (Ident.create_unbound "t6'");
                                vd_typ = (Uint (Hslice, (Mint 16), 1));
                                vd_opts = []; vd_orig = [] };
                              { vd_id = (Ident.create_unbound "t7'");
                                vd_typ = (Uint (Hslice, (Mint 16), 1));
                                vd_opts = []; vd_orig = [] };
                              { vd_id = (Ident.create_unbound "t8'");
                                vd_typ = (Uint (Hslice, (Mint 16), 1));
                                vd_opts = []; vd_orig = [] };
                              { vd_id = (Ident.create_unbound "t9'");
                                vd_typ = (Uint (Hslice, (Mint 16), 1));
                                vd_opts = []; vd_orig = [] };
                              { vd_id = (Ident.create_unbound "t10'");
                                vd_typ = (Uint (Hslice, (Mint 16), 1));
                                vd_opts = []; vd_orig = [] };
                              { vd_id = (Ident.create_unbound "t11'");
                                vd_typ = (Uint (Hslice, (Mint 16), 1));
                                vd_opts = []; vd_orig = [] };
                              { vd_id = (Ident.create_unbound "t12'");
                                vd_typ = (Uint (Hslice, (Mint 16), 1));
                                vd_opts = []; vd_orig = [] }
                              ],
                            [{ content =
                               (Eqn ([(Var (Ident.create_unbound "t1'"))],
                                  (Not
                                     (ExpVar
                                        (Var (Ident.create_unbound "a1'")))),
                                  false));
                               orig = [] };
                              { content =
                                (Eqn ([(Var (Ident.create_unbound "t2'"))],
                                   (Log (And,
                                      (ExpVar
                                         (Var (Ident.create_unbound "a0'"))),
                                      (ExpVar
                                         (Var (Ident.create_unbound "t1'")))
                                      )),
                                   false));
                                orig = [] };
                              { content =
                                (Eqn ([(Var (Ident.create_unbound "t3'"))],
                                   (Log (Xor,
                                      (ExpVar
                                         (Var (Ident.create_unbound "a2'"))),
                                      (ExpVar
                                         (Var (Ident.create_unbound "a3'")))
                                      )),
                                   false));
                                orig = [] };
                              { content =
                                (Eqn ([(Var (Ident.create_unbound "b0'"))],
                                   (Log (Xor,
                                      (ExpVar
                                         (Var (Ident.create_unbound "t2'"))),
                                      (ExpVar
                                         (Var (Ident.create_unbound "t3'")))
                                      )),
                                   false));
                                orig = [] };
                              { content =
                                (Eqn ([(Var (Ident.create_unbound "t5'"))],
                                   (Log (Or,
                                      (ExpVar
                                         (Var (Ident.create_unbound "a3'"))),
                                      (ExpVar
                                         (Var (Ident.create_unbound "t1'")))
                                      )),
                                   false));
                                orig = [] };
                              { content =
                                (Eqn ([(Var (Ident.create_unbound "t6'"))],
                                   (Log (Xor,
                                      (ExpVar
                                         (Var (Ident.create_unbound "a0'"))),
                                      (ExpVar
                                         (Var (Ident.create_unbound "t5'")))
                                      )),
                                   false));
                                orig = [] };
                              { content =
                                (Eqn ([(Var (Ident.create_unbound "b1'"))],
                                   (Log (Xor,
                                      (ExpVar
                                         (Var (Ident.create_unbound "a2'"))),
                                      (ExpVar
                                         (Var (Ident.create_unbound "t6'")))
                                      )),
                                   false));
                                orig = [] };
                              { content =
                                (Eqn ([(Var (Ident.create_unbound "t8'"))],
                                   (Log (Xor,
                                      (ExpVar
                                         (Var (Ident.create_unbound "a1'"))),
                                      (ExpVar
                                         (Var (Ident.create_unbound "a2'")))
                                      )),
                                   false));
                                orig = [] };
                              { content =
                                (Eqn ([(Var (Ident.create_unbound "t9'"))],
                                   (Log (And,
                                      (ExpVar
                                         (Var (Ident.create_unbound "t3'"))),
                                      (ExpVar
                                         (Var (Ident.create_unbound "t6'")))
                                      )),
                                   false));
                                orig = [] };
                              { content =
                                (Eqn ([(Var (Ident.create_unbound "b3'"))],
                                   (Log (Xor,
                                      (ExpVar
                                         (Var (Ident.create_unbound "t8'"))),
                                      (ExpVar
                                         (Var (Ident.create_unbound "t9'")))
                                      )),
                                   false));
                                orig = [] };
                              { content =
                                (Eqn ([(Var (Ident.create_unbound "t11'"))],
                                   (Log (Or,
                                      (ExpVar
                                         (Var (Ident.create_unbound "b0'"))),
                                      (ExpVar
                                         (Var (Ident.create_unbound "t8'")))
                                      )),
                                   false));
                                orig = [] };
                              { content =
                                (Eqn ([(Var (Ident.create_unbound "b2'"))],
                                   (Log (Xor,
                                      (ExpVar
                                         (Var (Ident.create_unbound "t6'"))),
                                      (ExpVar
                                         (Var (Ident.create_unbound "t11'")))
                                      )),
                                   false));
                                orig = [] }
                              ]
                            ))
                         };
                        { id = (Ident.create_unbound "ShiftRows'H16");
                          p_in =
                          [{ vd_id = (Ident.create_unbound "input'");
                             vd_typ = (Uint (Hslice, (Mint 16), 4));
                             vd_opts = []; vd_orig = [] }
                            ];
                          p_out =
                          [{ vd_id = (Ident.create_unbound "out'");
                             vd_typ = (Uint (Hslice, (Mint 16), 4));
                             vd_opts = []; vd_orig = [] }
                            ];
                          opt = [];
                          node =
                          (Single (
                             [{ vd_id = (Ident.create_unbound "_tmp5_");
                                vd_typ = (Uint (Hslice, (Mint 16), 1));
                                vd_opts = []; vd_orig = [] };
                               { vd_id = (Ident.create_unbound "_tmp4_");
                                 vd_typ = (Uint (Hslice, (Mint 16), 1));
                                 vd_opts = []; vd_orig = [] };
                               { vd_id = (Ident.create_unbound "_tmp3_");
                                 vd_typ = (Uint (Hslice, (Mint 16), 1));
                                 vd_opts = []; vd_orig = [] }
                               ],
                             [{ content =
                                (Eqn (
                                   [(Index (
                                       (Var (Ident.create_unbound "out'")),
                                       (Const_e 0)))
                                     ],
                                   (ExpVar
                                      (Index (
                                         (Var (Ident.create_unbound "input'")),
                                         (Const_e 0)))),
                                   false));
                                orig = [] };
                               { content =
                                 (Eqn (
                                    [(Var (Ident.create_unbound "_tmp3_"))],
                                    (Shuffle (
                                       (Index (
                                          (Var
                                             (Ident.create_unbound "input'")),
                                          (Const_e 1))),
                                       [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11;
                                         12; 13; 14; 15; 0]
                                       )),
                                    false));
                                 orig = [] };
                               { content =
                                 (Eqn (
                                    [(Index (
                                        (Var (Ident.create_unbound "out'")),
                                        (Const_e 1)))
                                      ],
                                    (ExpVar
                                       (Var (Ident.create_unbound "_tmp3_"))),
                                    false));
                                 orig = [] };
                               { content =
                                 (Eqn (
                                    [(Var (Ident.create_unbound "_tmp4_"))],
                                    (Shuffle (
                                       (Index (
                                          (Var
                                             (Ident.create_unbound "input'")),
                                          (Const_e 2))),
                                       [12; 13; 14; 15; 0; 1; 2; 3; 4; 5; 6;
                                         7; 8; 9; 10; 11]
                                       )),
                                    false));
                                 orig = [] };
                               { content =
                                 (Eqn (
                                    [(Index (
                                        (Var (Ident.create_unbound "out'")),
                                        (Const_e 2)))
                                      ],
                                    (ExpVar
                                       (Var (Ident.create_unbound "_tmp4_"))),
                                    false));
                                 orig = [] };
                               { content =
                                 (Eqn (
                                    [(Var (Ident.create_unbound "_tmp5_"))],
                                    (Shuffle (
                                       (Index (
                                          (Var
                                             (Ident.create_unbound "input'")),
                                          (Const_e 3))),
                                       [13; 14; 15; 0; 1; 2; 3; 4; 5; 6; 7;
                                         8; 9; 10; 11; 12]
                                       )),
                                    false));
                                 orig = [] };
                               { content =
                                 (Eqn (
                                    [(Index (
                                        (Var (Ident.create_unbound "out'")),
                                        (Const_e 3)))
                                      ],
                                    (ExpVar
                                       (Var (Ident.create_unbound "_tmp5_"))),
                                    false));
                                 orig = [] }
                               ]
                             ))
                          };
                        { id = (Ident.create_unbound "Rectangle'");
                          p_in =
                          [{ vd_id = (Ident.create_unbound "plain'");
                             vd_typ = (Uint (Hslice, (Mint 16), 4));
                             vd_opts = []; vd_orig = [] };
                            { vd_id = (Ident.create_unbound "key'");
                              vd_typ =
                              (Array ((Uint (Hslice, (Mint 16), 4)),
                                 (Const_e 26)));
                              vd_opts = [Pconst]; vd_orig = [] }
                            ];
                          p_out =
                          [{ vd_id = (Ident.create_unbound "cipher'");
                             vd_typ = (Uint (Hslice, (Mint 16), 4));
                             vd_opts = []; vd_orig = [] }
                            ];
                          opt = [];
                          node =
                          (Single (
                             [{ vd_id = (Ident.create_unbound "tmp'");
                                vd_typ =
                                (Array ((Uint (Hslice, (Mint 16), 4)),
                                   (Const_e 26)));
                                vd_opts = []; vd_orig = [] };
                               { vd_id = (Ident.create_unbound "_tmp2_");
                                 vd_typ =
                                 (Array (
                                    (Array ((Uint (Hslice, (Mint 16), 1)),
                                       (Const_e 4))),
                                    (Const_e 25)));
                                 vd_opts = []; vd_orig = [] };
                               { vd_id = (Ident.create_unbound "_tmp1_");
                                 vd_typ =
                                 (Array (
                                    (Array ((Uint (Hslice, (Mint 16), 1)),
                                       (Const_e 4))),
                                    (Const_e 25)));
                                 vd_opts = []; vd_orig = [] }
                               ],
                             [{ content =
                                (Eqn (
                                   [(Index (
                                       (Index (
                                          (Var (Ident.create_unbound "tmp'")),
                                          (Const_e 0))),
                                       (Const_e 0)))
                                     ],
                                   (ExpVar
                                      (Index (
                                         (Var (Ident.create_unbound "plain'")),
                                         (Const_e 0)))),
                                   false));
                                orig = [] };
                               { content =
                                 (Eqn (
                                    [(Index (
                                        (Index (
                                           (Var (Ident.create_unbound "tmp'")),
                                           (Const_e 0))),
                                        (Const_e 1)))
                                      ],
                                    (ExpVar
                                       (Index (
                                          (Var
                                             (Ident.create_unbound "plain'")),
                                          (Const_e 1)))),
                                    false));
                                 orig = [] };
                               { content =
                                 (Eqn (
                                    [(Index (
                                        (Index (
                                           (Var (Ident.create_unbound "tmp'")),
                                           (Const_e 0))),
                                        (Const_e 2)))
                                      ],
                                    (ExpVar
                                       (Index (
                                          (Var
                                             (Ident.create_unbound "plain'")),
                                          (Const_e 2)))),
                                    false));
                                 orig = [] };
                               { content =
                                 (Eqn (
                                    [(Index (
                                        (Index (
                                           (Var (Ident.create_unbound "tmp'")),
                                           (Const_e 0))),
                                        (Const_e 3)))
                                      ],
                                    (ExpVar
                                       (Index (
                                          (Var
                                             (Ident.create_unbound "plain'")),
                                          (Const_e 3)))),
                                    false));
                                 orig = [] };
                               { content =
                                 Loop {id = (Ident.create_unbound "i'");
                                   start = (Const_e 0); stop = (Const_e 24);
                                   body =
                                   [{ content =
                                      (Eqn (
                                         [(Index (
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "_tmp1_")),
                                                (Var_e
                                                   (Ident.create_unbound "i'"))
                                                )),
                                             (Const_e 0)))
                                           ],
                                         (Log (Xor,
                                            (ExpVar
                                               (Index (
                                                  (Index (
                                                     (Var
                                                        (Ident.create_unbound "tmp'")),
                                                     (Var_e
                                                        (Ident.create_unbound "i'"))
                                                     )),
                                                  (Const_e 0)))),
                                            (ExpVar
                                               (Index (
                                                  (Index (
                                                     (Var
                                                        (Ident.create_unbound "key'")),
                                                     (Var_e
                                                        (Ident.create_unbound "i'"))
                                                     )),
                                                  (Const_e 0))))
                                            )),
                                         false));
                                      orig = [] };
                                     { content =
                                       (Eqn (
                                          [(Index (
                                              (Index (
                                                 (Var
                                                    (Ident.create_unbound "_tmp1_")),
                                                 (Var_e
                                                    (Ident.create_unbound "i'"))
                                                 )),
                                              (Const_e 1)))
                                            ],
                                          (Log (Xor,
                                             (ExpVar
                                                (Index (
                                                   (Index (
                                                      (Var
                                                         (Ident.create_unbound "tmp'")),
                                                      (Var_e
                                                         (Ident.create_unbound "i'"))
                                                      )),
                                                   (Const_e 1)))),
                                             (ExpVar
                                                (Index (
                                                   (Index (
                                                      (Var
                                                         (Ident.create_unbound "key'")),
                                                      (Var_e
                                                         (Ident.create_unbound "i'"))
                                                      )),
                                                   (Const_e 1))))
                                             )),
                                          false));
                                       orig = [] };
                                     { content =
                                       (Eqn (
                                          [(Index (
                                              (Index (
                                                 (Var
                                                    (Ident.create_unbound "_tmp1_")),
                                                 (Var_e
                                                    (Ident.create_unbound "i'"))
                                                 )),
                                              (Const_e 2)))
                                            ],
                                          (Log (Xor,
                                             (ExpVar
                                                (Index (
                                                   (Index (
                                                      (Var
                                                         (Ident.create_unbound "tmp'")),
                                                      (Var_e
                                                         (Ident.create_unbound "i'"))
                                                      )),
                                                   (Const_e 2)))),
                                             (ExpVar
                                                (Index (
                                                   (Index (
                                                      (Var
                                                         (Ident.create_unbound "key'")),
                                                      (Var_e
                                                         (Ident.create_unbound "i'"))
                                                      )),
                                                   (Const_e 2))))
                                             )),
                                          false));
                                       orig = [] };
                                     { content =
                                       (Eqn (
                                          [(Index (
                                              (Index (
                                                 (Var
                                                    (Ident.create_unbound "_tmp1_")),
                                                 (Var_e
                                                    (Ident.create_unbound "i'"))
                                                 )),
                                              (Const_e 3)))
                                            ],
                                          (Log (Xor,
                                             (ExpVar
                                                (Index (
                                                   (Index (
                                                      (Var
                                                         (Ident.create_unbound "tmp'")),
                                                      (Var_e
                                                         (Ident.create_unbound "i'"))
                                                      )),
                                                   (Const_e 3)))),
                                             (ExpVar
                                                (Index (
                                                   (Index (
                                                      (Var
                                                         (Ident.create_unbound "key'")),
                                                      (Var_e
                                                         (Ident.create_unbound "i'"))
                                                      )),
                                                   (Const_e 3))))
                                             )),
                                          false));
                                       orig = [] };
                                     { content =
                                       (Eqn (
                                          [(Index (
                                              (Index (
                                                 (Var
                                                    (Ident.create_unbound "_tmp2_")),
                                                 (Var_e
                                                    (Ident.create_unbound "i'"))
                                                 )),
                                              (Const_e 0)));
                                            (Index (
                                               (Index (
                                                  (Var
                                                     (Ident.create_unbound "_tmp2_")),
                                                  (Var_e
                                                     (Ident.create_unbound "i'"))
                                                  )),
                                               (Const_e 1)));
                                            (Index (
                                               (Index (
                                                  (Var
                                                     (Ident.create_unbound "_tmp2_")),
                                                  (Var_e
                                                     (Ident.create_unbound "i'"))
                                                  )),
                                               (Const_e 2)));
                                            (Index (
                                               (Index (
                                                  (Var
                                                     (Ident.create_unbound "_tmp2_")),
                                                  (Var_e
                                                     (Ident.create_unbound "i'"))
                                                  )),
                                               (Const_e 3)))
                                            ],
                                          (Fun (
                                             (Ident.create_unbound "SubColumn'H16"),
                                             [(ExpVar
                                                 (Index (
                                                    (Index (
                                                       (Var
                                                          (Ident.create_unbound "_tmp1_")),
                                                       (Var_e
                                                          (Ident.create_unbound "i'"))
                                                       )),
                                                    (Const_e 0))));
                                               (ExpVar
                                                  (Index (
                                                     (Index (
                                                        (Var
                                                           (Ident.create_unbound "_tmp1_")),
                                                        (Var_e
                                                           (Ident.create_unbound "i'"))
                                                        )),
                                                     (Const_e 1))));
                                               (ExpVar
                                                  (Index (
                                                     (Index (
                                                        (Var
                                                           (Ident.create_unbound "_tmp1_")),
                                                        (Var_e
                                                           (Ident.create_unbound "i'"))
                                                        )),
                                                     (Const_e 2))));
                                               (ExpVar
                                                  (Index (
                                                     (Index (
                                                        (Var
                                                           (Ident.create_unbound "_tmp1_")),
                                                        (Var_e
                                                           (Ident.create_unbound "i'"))
                                                        )),
                                                     (Const_e 3))))
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
                                             (Ident.create_unbound "ShiftRows'H16"),
                                             [(ExpVar
                                                 (Index (
                                                    (Var
                                                       (Ident.create_unbound "_tmp2_")),
                                                    (Var_e
                                                       (Ident.create_unbound "i'"))
                                                    )))
                                               ]
                                             )),
                                          false));
                                       orig = [] }
                                     ];
                                   opts = []};
                                 orig = [] };
                               { content =
                                 (Eqn (
                                    [(Index (
                                        (Var (Ident.create_unbound "cipher'")),
                                        (Const_e 0)))
                                      ],
                                    (Log (Xor,
                                       (ExpVar
                                          (Index (
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "tmp'")),
                                                (Const_e 25))),
                                             (Const_e 0)))),
                                       (ExpVar
                                          (Index (
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "key'")),
                                                (Const_e 25))),
                                             (Const_e 0))))
                                       )),
                                    false));
                                 orig = [] };
                               { content =
                                 (Eqn (
                                    [(Index (
                                        (Var (Ident.create_unbound "cipher'")),
                                        (Const_e 1)))
                                      ],
                                    (Log (Xor,
                                       (ExpVar
                                          (Index (
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "tmp'")),
                                                (Const_e 25))),
                                             (Const_e 1)))),
                                       (ExpVar
                                          (Index (
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "key'")),
                                                (Const_e 25))),
                                             (Const_e 1))))
                                       )),
                                    false));
                                 orig = [] };
                               { content =
                                 (Eqn (
                                    [(Index (
                                        (Var (Ident.create_unbound "cipher'")),
                                        (Const_e 2)))
                                      ],
                                    (Log (Xor,
                                       (ExpVar
                                          (Index (
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "tmp'")),
                                                (Const_e 25))),
                                             (Const_e 2)))),
                                       (ExpVar
                                          (Index (
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "key'")),
                                                (Const_e 25))),
                                             (Const_e 2))))
                                       )),
                                    false));
                                 orig = [] };
                               { content =
                                 (Eqn (
                                    [(Index (
                                        (Var (Ident.create_unbound "cipher'")),
                                        (Const_e 3)))
                                      ],
                                    (Log (Xor,
                                       (ExpVar
                                          (Index (
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "tmp'")),
                                                (Const_e 25))),
                                             (Const_e 3)))),
                                       (ExpVar
                                          (Index (
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "key'")),
                                                (Const_e 25))),
                                             (Const_e 3))))
                                       )),
                                    false));
                                 orig = [] }
                               ]
                             ))
                          }
                        ]
                      }
