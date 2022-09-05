open Usuba_lib
open Usuba_AST

let rectangle_001 = { nodes =
                      [{ id = (Ident.create_unbound "SubColumn'");
                         p_in =
                         [{ vd_id = (Ident.create_unbound "input'");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 4));
                            vd_opts = []; vd_orig = [] }
                           ];
                         p_out =
                         [{ vd_id = (Ident.create_unbound "out'");
                            vd_typ =
                            (Uint ((Varslice (Ident.create_unbound "D")),
                               (Mvar (Ident.create_unbound "m")), 4));
                            vd_opts = []; vd_orig = [] }
                           ];
                         opt = [Is_table];
                         node =
                         (Table
                            [6; 5; 12; 10; 1; 14; 7; 9; 11; 0; 3; 13; 8; 15;
                              4; 2])
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
                                   (ExpVar
                                      (Index (
                                         (Var (Ident.create_unbound "input'")),
                                         (Const_e 0)))),
                                   false));
                                orig = [] };
                               { content =
                                 (Eqn (
                                    [(Index (
                                        (Var (Ident.create_unbound "out'")),
                                        (Const_e 1)))
                                      ],
                                    (Shift (Lrotate,
                                       (ExpVar
                                          (Index (
                                             (Var
                                                (Ident.create_unbound "input'")),
                                             (Const_e 1)))),
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
                                       (ExpVar
                                          (Index (
                                             (Var
                                                (Ident.create_unbound "input'")),
                                             (Const_e 2)))),
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
                                       (ExpVar
                                          (Index (
                                             (Var
                                                (Ident.create_unbound "input'")),
                                             (Const_e 3)))),
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
                                vd_opts = []; vd_orig = [] }
                               ],
                             [{ content =
                                (Eqn (
                                   [(Index (
                                       (Var (Ident.create_unbound "tmp'")),
                                       (Const_e 0)))
                                     ],
                                   (ExpVar
                                      (Var (Ident.create_unbound "plain'"))),
                                   false));
                                orig = [] };
                               { content =
                                 Loop {id = (Ident.create_unbound "i'");
                                   start = (Const_e 0); stop = (Const_e 24);
                                   body =
                                   [{ content =
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
                                            [(Fun (
                                                (Ident.create_unbound "SubColumn'"),
                                                [(Log (Xor,
                                                    (ExpVar
                                                       (Index (
                                                          (Var
                                                             (Ident.create_unbound "tmp'")),
                                                          (Var_e
                                                             (Ident.create_unbound "i'"))
                                                          ))),
                                                    (ExpVar
                                                       (Index (
                                                          (Var
                                                             (Ident.create_unbound "key'")),
                                                          (Var_e
                                                             (Ident.create_unbound "i'"))
                                                          )))
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
                                 (Eqn (
                                    [(Var (Ident.create_unbound "cipher'"))],
                                    (Log (Xor,
                                       (ExpVar
                                          (Index (
                                             (Var
                                                (Ident.create_unbound "tmp'")),
                                             (Const_e 25)))),
                                       (ExpVar
                                          (Index (
                                             (Var
                                                (Ident.create_unbound "key'")),
                                             (Const_e 25))))
                                       )),
                                    false));
                                 orig = [] }
                               ]
                             ))
                          }
                        ]
                      }
