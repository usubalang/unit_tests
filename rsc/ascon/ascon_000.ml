open Usuba_lib
open Usuba_AST

let ascon_000 = { nodes =
                  [{ id = (Ident.create_unbound "Sbox");
                     p_in =
                     [{ vd_id = (Ident.create_unbound "x");
                        vd_typ =
                        (Uint ((Varslice (Ident.create_unbound "D")),
                           (Mvar (Ident.create_unbound "m")), 5));
                        vd_opts = []; vd_orig = [] }
                       ];
                     p_out =
                     [{ vd_id = (Ident.create_unbound "y");
                        vd_typ =
                        (Uint ((Varslice (Ident.create_unbound "D")),
                           (Mvar (Ident.create_unbound "m")), 5));
                        vd_opts = []; vd_orig = [] }
                       ];
                     opt = [Is_table];
                     node =
                     (Table
                        [4; 11; 31; 20; 26; 21; 9; 2; 27; 5; 8; 18; 29; 3; 6;
                          28; 30; 19; 7; 14; 0; 13; 17; 24; 16; 12; 1; 25;
                          22; 10; 15; 23])
                     };
                    { id = (Ident.create_unbound "AddConstant");
                      p_in =
                      [{ vd_id = (Ident.create_unbound "state");
                         vd_typ =
                         (Uint ((Varslice (Ident.create_unbound "D")),
                            (Mint 64), 5));
                         vd_opts = []; vd_orig = [] };
                        { vd_id = (Ident.create_unbound "c");
                          vd_typ =
                          (Uint ((Varslice (Ident.create_unbound "D")),
                             (Mint 64), 1));
                          vd_opts = []; vd_orig = [] }
                        ];
                      p_out =
                      [{ vd_id = (Ident.create_unbound "stateR");
                         vd_typ =
                         (Uint ((Varslice (Ident.create_unbound "D")),
                            (Mint 64), 5));
                         vd_opts = []; vd_orig = [] }
                        ];
                      opt = [];
                      node =
                      (Single ([],
                         [{ content =
                            (Eqn ([(Var (Ident.create_unbound "stateR"))],
                               (Tuple
                                  [(ExpVar
                                      (Slice (
                                         (Var (Ident.create_unbound "state")),
                                         [(Const_e 0); (Const_e 1)])));
                                    (Log (Xor,
                                       (ExpVar
                                          (Index (
                                             (Var
                                                (Ident.create_unbound "state")),
                                             (Const_e 2)))),
                                       (ExpVar
                                          (Var (Ident.create_unbound "c")))
                                       ));
                                    (ExpVar
                                       (Slice (
                                          (Var (Ident.create_unbound "state")),
                                          [(Const_e 3); (Const_e 4)])))
                                    ]),
                               false));
                            orig = [] }
                           ]
                         ))
                      };
                    { id = (Ident.create_unbound "LinearLayer");
                      p_in =
                      [{ vd_id = (Ident.create_unbound "state");
                         vd_typ =
                         (Uint ((Varslice (Ident.create_unbound "D")),
                            (Mint 64), 5));
                         vd_opts = []; vd_orig = [] }
                        ];
                      p_out =
                      [{ vd_id = (Ident.create_unbound "stateR");
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
                                   (Var (Ident.create_unbound "stateR")),
                                   (Const_e 0)))
                                 ],
                               (Log (Xor,
                                  (Log (Xor,
                                     (ExpVar
                                        (Index (
                                           (Var
                                              (Ident.create_unbound "state")),
                                           (Const_e 0)))),
                                     (Shift (Rrotate,
                                        (ExpVar
                                           (Index (
                                              (Var
                                                 (Ident.create_unbound "state")),
                                              (Const_e 0)))),
                                        (Const_e 19)))
                                     )),
                                  (Shift (Rrotate,
                                     (ExpVar
                                        (Index (
                                           (Var
                                              (Ident.create_unbound "state")),
                                           (Const_e 0)))),
                                     (Const_e 28)))
                                  )),
                               false));
                            orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "stateR")),
                                    (Const_e 1)))
                                  ],
                                (Log (Xor,
                                   (Log (Xor,
                                      (ExpVar
                                         (Index (
                                            (Var
                                               (Ident.create_unbound "state")),
                                            (Const_e 1)))),
                                      (Shift (Rrotate,
                                         (ExpVar
                                            (Index (
                                               (Var
                                                  (Ident.create_unbound "state")),
                                               (Const_e 1)))),
                                         (Const_e 61)))
                                      )),
                                   (Shift (Rrotate,
                                      (ExpVar
                                         (Index (
                                            (Var
                                               (Ident.create_unbound "state")),
                                            (Const_e 1)))),
                                      (Const_e 39)))
                                   )),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "stateR")),
                                    (Const_e 2)))
                                  ],
                                (Log (Xor,
                                   (Log (Xor,
                                      (ExpVar
                                         (Index (
                                            (Var
                                               (Ident.create_unbound "state")),
                                            (Const_e 2)))),
                                      (Shift (Rrotate,
                                         (ExpVar
                                            (Index (
                                               (Var
                                                  (Ident.create_unbound "state")),
                                               (Const_e 2)))),
                                         (Const_e 1)))
                                      )),
                                   (Shift (Rrotate,
                                      (ExpVar
                                         (Index (
                                            (Var
                                               (Ident.create_unbound "state")),
                                            (Const_e 2)))),
                                      (Const_e 6)))
                                   )),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "stateR")),
                                    (Const_e 3)))
                                  ],
                                (Log (Xor,
                                   (Log (Xor,
                                      (ExpVar
                                         (Index (
                                            (Var
                                               (Ident.create_unbound "state")),
                                            (Const_e 3)))),
                                      (Shift (Rrotate,
                                         (ExpVar
                                            (Index (
                                               (Var
                                                  (Ident.create_unbound "state")),
                                               (Const_e 3)))),
                                         (Const_e 10)))
                                      )),
                                   (Shift (Rrotate,
                                      (ExpVar
                                         (Index (
                                            (Var
                                               (Ident.create_unbound "state")),
                                            (Const_e 3)))),
                                      (Const_e 17)))
                                   )),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "stateR")),
                                    (Const_e 4)))
                                  ],
                                (Log (Xor,
                                   (Log (Xor,
                                      (ExpVar
                                         (Index (
                                            (Var
                                               (Ident.create_unbound "state")),
                                            (Const_e 4)))),
                                      (Shift (Rrotate,
                                         (ExpVar
                                            (Index (
                                               (Var
                                                  (Ident.create_unbound "state")),
                                               (Const_e 4)))),
                                         (Const_e 7)))
                                      )),
                                   (Shift (Rrotate,
                                      (ExpVar
                                         (Index (
                                            (Var
                                               (Ident.create_unbound "state")),
                                            (Const_e 4)))),
                                      (Const_e 41)))
                                   )),
                                false));
                             orig = [] }
                           ]
                         ))
                      };
                    { id = (Ident.create_unbound "ascon12");
                      p_in =
                      [{ vd_id = (Ident.create_unbound "input");
                         vd_typ =
                         (Uint ((Varslice (Ident.create_unbound "D")),
                            (Mint 64), 5));
                         vd_opts = []; vd_orig = [] }
                        ];
                      p_out =
                      [{ vd_id = (Ident.create_unbound "output");
                         vd_typ =
                         (Uint ((Varslice (Ident.create_unbound "D")),
                            (Mint 64), 5));
                         vd_opts = []; vd_orig = [] }
                        ];
                      opt = [];
                      node =
                      (Single (
                         [{ vd_id = (Ident.create_unbound "consts");
                            vd_typ =
                            (Array (
                               (Uint ((Varslice (Ident.create_unbound "D")),
                                  (Mint 64), 1)),
                               (Const_e 12)));
                            vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "state");
                             vd_typ =
                             (Array (
                                (Uint ((Varslice (Ident.create_unbound "D")),
                                   (Mint 64), 5)),
                                (Const_e 13)));
                             vd_opts = []; vd_orig = [] }
                           ],
                         [{ content =
                            (Eqn ([(Var (Ident.create_unbound "consts"))],
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
                                    (Var (Ident.create_unbound "state")),
                                    (Const_e 0)))
                                  ],
                                (ExpVar (Var (Ident.create_unbound "input"))),
                                false));
                             orig = [] };
                           { content =
                             (Loop ((Ident.create_unbound "i"), (Const_e 0),
                                (Const_e 11),
                                [{ content =
                                   (Eqn (
                                      [(Index (
                                          (Var (Ident.create_unbound "state")),
                                          (Op_e (Add,
                                             (Var_e
                                                (Ident.create_unbound "i")),
                                             (Const_e 1)))
                                          ))
                                        ],
                                      (Fun (
                                         (Ident.create_unbound "LinearLayer"),
                                         [(Fun (
                                             (Ident.create_unbound "Sbox"),
                                             [(Fun (
                                                 (Ident.create_unbound "AddConstant"),
                                                 [(ExpVar
                                                     (Index (
                                                        (Var
                                                           (Ident.create_unbound "state")),
                                                        (Var_e
                                                           (Ident.create_unbound "i"))
                                                        )));
                                                   (ExpVar
                                                      (Index (
                                                         (Var
                                                            (Ident.create_unbound "consts")),
                                                         (Var_e
                                                            (Ident.create_unbound "i"))
                                                         )))
                                                   ]
                                                 ))
                                               ]
                                             ))
                                           ]
                                         )),
                                      false));
                                   orig = [] }
                                  ],
                                []));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "output"))],
                                (ExpVar
                                   (Index (
                                      (Var (Ident.create_unbound "state")),
                                      (Const_e 12)))),
                                false));
                             orig = [] }
                           ]
                         ))
                      }
                    ]
                  }
