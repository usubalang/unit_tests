open Usuba_lib
open Usuba_AST

let ace_003 = { nodes =
                [{ id = (Ident.create_unbound "f'");
                   p_in =
                   [{ vd_id = (Ident.create_unbound "x'");
                      vd_typ =
                      (Uint ((Varslice (Ident.create_unbound "D")),
                         (Mint 32), 1));
                      vd_opts = []; vd_orig = [] }
                     ];
                   p_out =
                   [{ vd_id = (Ident.create_unbound "y'");
                      vd_typ =
                      (Uint ((Varslice (Ident.create_unbound "D")),
                         (Mint 32), 1));
                      vd_opts = []; vd_orig = [] }
                     ];
                   opt = [];
                   node =
                   (Single ([],
                      [{ content =
                         (Eqn ([(Var (Ident.create_unbound "y'"))],
                            (Log (Xor,
                               (Log (And,
                                  (Shift (Lrotate,
                                     (ExpVar
                                        (Var (Ident.create_unbound "x'"))),
                                     (Const_e 5))),
                                  (Fun ((Ident.create_unbound "refresh"),
                                     [(ExpVar
                                         (Var (Ident.create_unbound "x'")))
                                       ]
                                     ))
                                  )),
                               (Shift (Lrotate,
                                  (ExpVar (Var (Ident.create_unbound "x'"))),
                                  (Const_e 1)))
                               )),
                            false));
                         orig = [] }
                        ]
                      ))
                   };
                  { id = (Ident.create_unbound "simeck_box'");
                    p_in =
                    [{ vd_id = (Ident.create_unbound "input'");
                       vd_typ =
                       (Uint ((Varslice (Ident.create_unbound "D")),
                          (Mint 32), 2));
                       vd_opts = []; vd_orig = [] };
                      { vd_id = (Ident.create_unbound "rc'");
                        vd_typ =
                        (Uint ((Varslice (Ident.create_unbound "D")),
                           (Mint 32), 1));
                        vd_opts = []; vd_orig = [] }
                      ];
                    p_out =
                    [{ vd_id = (Ident.create_unbound "output'");
                       vd_typ =
                       (Uint ((Varslice (Ident.create_unbound "D")),
                          (Mint 32), 2));
                       vd_opts = []; vd_orig = [] }
                      ];
                    opt = [];
                    node =
                    (Single (
                       [{ vd_id = (Ident.create_unbound "round'");
                          vd_typ =
                          (Array (
                             (Uint ((Varslice (Ident.create_unbound "D")),
                                (Mint 32), 2)),
                             (Const_e 9)));
                          vd_opts = []; vd_orig = [] }
                         ],
                       [{ content =
                          (Eqn (
                             [(Index ((Var (Ident.create_unbound "round'")),
                                 (Const_e 0)))
                               ],
                             (ExpVar (Var (Ident.create_unbound "input'"))),
                             false));
                          orig = [] };
                         { content =
                           Loop {id = (Ident.create_unbound "i'");
                             start = (Const_e 0); stop = (Const_e 7);
                             body =
                             [{ content =
                                (Eqn (
                                   [(Index (
                                       (Var (Ident.create_unbound "round'")),
                                       (Op_e (Add,
                                          (Var_e (Ident.create_unbound "i'")),
                                          (Const_e 1)))
                                       ))
                                     ],
                                   (Tuple
                                      [(Log (Xor,
                                          (Log (Xor,
                                             (Log (Xor,
                                                (Fun (
                                                   (Ident.create_unbound "f'"),
                                                   [(ExpVar
                                                       (Index (
                                                          (Index (
                                                             (Var
                                                                (Ident.create_unbound "round'")),
                                                             (Var_e
                                                                (Ident.create_unbound "i'"))
                                                             )),
                                                          (Const_e 0))))
                                                     ]
                                                   )),
                                                (ExpVar
                                                   (Index (
                                                      (Index (
                                                         (Var
                                                            (Ident.create_unbound "round'")),
                                                         (Var_e
                                                            (Ident.create_unbound "i'"))
                                                         )),
                                                      (Const_e 1))))
                                                )),
                                             (Const (4294967294,
                                                (Some (Uint (
                                                         (Varslice
                                                            (Ident.create_unbound "D")),
                                                         (Mint 32), 1)))
                                                ))
                                             )),
                                          (Log (And,
                                             (Shift (Rshift,
                                                (ExpVar
                                                   (Var
                                                      (Ident.create_unbound "rc'"))),
                                                (Var_e
                                                   (Ident.create_unbound "i'"))
                                                )),
                                             (Const (1,
                                                (Some (Uint (
                                                         (Varslice
                                                            (Ident.create_unbound "D")),
                                                         (Mint 32), 1)))
                                                ))
                                             ))
                                          ));
                                        (ExpVar
                                           (Index (
                                              (Index (
                                                 (Var
                                                    (Ident.create_unbound "round'")),
                                                 (Var_e
                                                    (Ident.create_unbound "i'"))
                                                 )),
                                              (Const_e 0))))
                                        ]),
                                   false));
                                orig = [] }
                               ];
                             opts = []};
                           orig = [] };
                         { content =
                           (Eqn ([(Var (Ident.create_unbound "output'"))],
                              (ExpVar
                                 (Index (
                                    (Var (Ident.create_unbound "round'")),
                                    (Const_e 8)))),
                              false));
                           orig = [] }
                         ]
                       ))
                    };
                  { id = (Ident.create_unbound "ACE_step'");
                    p_in =
                    [{ vd_id = (Ident.create_unbound "A'");
                       vd_typ =
                       (Uint ((Varslice (Ident.create_unbound "D")),
                          (Mint 32), 2));
                       vd_opts = []; vd_orig = [] };
                      { vd_id = (Ident.create_unbound "B'");
                        vd_typ =
                        (Uint ((Varslice (Ident.create_unbound "D")),
                           (Mint 32), 2));
                        vd_opts = []; vd_orig = [] };
                      { vd_id = (Ident.create_unbound "C'");
                        vd_typ =
                        (Uint ((Varslice (Ident.create_unbound "D")),
                           (Mint 32), 2));
                        vd_opts = []; vd_orig = [] };
                      { vd_id = (Ident.create_unbound "D'");
                        vd_typ =
                        (Uint ((Varslice (Ident.create_unbound "D")),
                           (Mint 32), 2));
                        vd_opts = []; vd_orig = [] };
                      { vd_id = (Ident.create_unbound "E'");
                        vd_typ =
                        (Uint ((Varslice (Ident.create_unbound "D")),
                           (Mint 32), 2));
                        vd_opts = []; vd_orig = [] };
                      { vd_id = (Ident.create_unbound "RC'");
                        vd_typ =
                        (Array (
                           (Uint ((Varslice (Ident.create_unbound "D")),
                              (Mint 32), 1)),
                           (Const_e 3)));
                        vd_opts = []; vd_orig = [] };
                      { vd_id = (Ident.create_unbound "SC'");
                        vd_typ =
                        (Array (
                           (Uint ((Varslice (Ident.create_unbound "D")),
                              (Mint 32), 1)),
                           (Const_e 3)));
                        vd_opts = []; vd_orig = [] }
                      ];
                    p_out =
                    [{ vd_id = (Ident.create_unbound "Ar'");
                       vd_typ =
                       (Uint ((Varslice (Ident.create_unbound "D")),
                          (Mint 32), 2));
                       vd_opts = []; vd_orig = [] };
                      { vd_id = (Ident.create_unbound "Br'");
                        vd_typ =
                        (Uint ((Varslice (Ident.create_unbound "D")),
                           (Mint 32), 2));
                        vd_opts = []; vd_orig = [] };
                      { vd_id = (Ident.create_unbound "Cr'");
                        vd_typ =
                        (Uint ((Varslice (Ident.create_unbound "D")),
                           (Mint 32), 2));
                        vd_opts = []; vd_orig = [] };
                      { vd_id = (Ident.create_unbound "Dr'");
                        vd_typ =
                        (Uint ((Varslice (Ident.create_unbound "D")),
                           (Mint 32), 2));
                        vd_opts = []; vd_orig = [] };
                      { vd_id = (Ident.create_unbound "Er'");
                        vd_typ =
                        (Uint ((Varslice (Ident.create_unbound "D")),
                           (Mint 32), 2));
                        vd_opts = []; vd_orig = [] }
                      ];
                    opt = [];
                    node =
                    (Single ([],
                       [{ content =
                          (Eqn ([(Var (Ident.create_unbound "A'"))],
                             (Fun ((Ident.create_unbound "simeck_box'"),
                                [(ExpVar (Var (Ident.create_unbound "A'")));
                                  (ExpVar
                                     (Index (
                                        (Var (Ident.create_unbound "RC'")),
                                        (Const_e 0))))
                                  ]
                                )),
                             true));
                          orig = [] };
                         { content =
                           (Eqn ([(Var (Ident.create_unbound "C'"))],
                              (Fun ((Ident.create_unbound "simeck_box'"),
                                 [(ExpVar (Var (Ident.create_unbound "C'")));
                                   (ExpVar
                                      (Index (
                                         (Var (Ident.create_unbound "RC'")),
                                         (Const_e 1))))
                                   ]
                                 )),
                              true));
                           orig = [] };
                         { content =
                           (Eqn ([(Var (Ident.create_unbound "E'"))],
                              (Fun ((Ident.create_unbound "simeck_box'"),
                                 [(ExpVar (Var (Ident.create_unbound "E'")));
                                   (ExpVar
                                      (Index (
                                         (Var (Ident.create_unbound "RC'")),
                                         (Const_e 2))))
                                   ]
                                 )),
                              true));
                           orig = [] };
                         { content =
                           (Eqn ([(Var (Ident.create_unbound "B'"))],
                              (Log (Xor,
                                 (Log (Xor,
                                    (Log (Xor,
                                       (ExpVar
                                          (Var (Ident.create_unbound "B'"))),
                                       (ExpVar
                                          (Var (Ident.create_unbound "C'")))
                                       )),
                                    (Tuple
                                       [(Const (0,
                                           (Some (Uint (
                                                    (Varslice
                                                       (Ident.create_unbound "D")),
                                                    (Mint 32), 1)))
                                           ));
                                         (ExpVar
                                            (Index (
                                               (Var
                                                  (Ident.create_unbound "SC'")),
                                               (Const_e 0))))
                                         ])
                                    )),
                                 (Tuple
                                    [(Const (4294967295,
                                        (Some (Uint (
                                                 (Varslice
                                                    (Ident.create_unbound "D")),
                                                 (Mint 32), 1)))
                                        ));
                                      (Const (4294967040,
                                         (Some (Uint (
                                                  (Varslice
                                                     (Ident.create_unbound "D")),
                                                  (Mint 32), 1)))
                                         ))
                                      ])
                                 )),
                              true));
                           orig = [] };
                         { content =
                           (Eqn ([(Var (Ident.create_unbound "D'"))],
                              (Log (Xor,
                                 (Log (Xor,
                                    (Log (Xor,
                                       (ExpVar
                                          (Var (Ident.create_unbound "D'"))),
                                       (ExpVar
                                          (Var (Ident.create_unbound "E'")))
                                       )),
                                    (Tuple
                                       [(Const (0,
                                           (Some (Uint (
                                                    (Varslice
                                                       (Ident.create_unbound "D")),
                                                    (Mint 32), 1)))
                                           ));
                                         (ExpVar
                                            (Index (
                                               (Var
                                                  (Ident.create_unbound "SC'")),
                                               (Const_e 1))))
                                         ])
                                    )),
                                 (Tuple
                                    [(Const (4294967295,
                                        (Some (Uint (
                                                 (Varslice
                                                    (Ident.create_unbound "D")),
                                                 (Mint 32), 1)))
                                        ));
                                      (Const (4294967040,
                                         (Some (Uint (
                                                  (Varslice
                                                     (Ident.create_unbound "D")),
                                                  (Mint 32), 1)))
                                         ))
                                      ])
                                 )),
                              true));
                           orig = [] };
                         { content =
                           (Eqn ([(Var (Ident.create_unbound "E'"))],
                              (Log (Xor,
                                 (Log (Xor,
                                    (Log (Xor,
                                       (ExpVar
                                          (Var (Ident.create_unbound "E'"))),
                                       (ExpVar
                                          (Var (Ident.create_unbound "A'")))
                                       )),
                                    (Tuple
                                       [(Const (0,
                                           (Some (Uint (
                                                    (Varslice
                                                       (Ident.create_unbound "D")),
                                                    (Mint 32), 1)))
                                           ));
                                         (ExpVar
                                            (Index (
                                               (Var
                                                  (Ident.create_unbound "SC'")),
                                               (Const_e 2))))
                                         ])
                                    )),
                                 (Tuple
                                    [(Const (4294967295,
                                        (Some (Uint (
                                                 (Varslice
                                                    (Ident.create_unbound "D")),
                                                 (Mint 32), 1)))
                                        ));
                                      (Const (4294967040,
                                         (Some (Uint (
                                                  (Varslice
                                                     (Ident.create_unbound "D")),
                                                  (Mint 32), 1)))
                                         ))
                                      ])
                                 )),
                              true));
                           orig = [] };
                         { content =
                           (Eqn (
                              [(Var (Ident.create_unbound "Ar'"));
                                (Var (Ident.create_unbound "Br'"));
                                (Var (Ident.create_unbound "Cr'"));
                                (Var (Ident.create_unbound "Dr'"));
                                (Var (Ident.create_unbound "Er'"))],
                              (Tuple
                                 [(ExpVar (Var (Ident.create_unbound "D'")));
                                   (ExpVar (Var (Ident.create_unbound "C'")));
                                   (ExpVar (Var (Ident.create_unbound "A'")));
                                   (ExpVar (Var (Ident.create_unbound "E'")));
                                   (ExpVar (Var (Ident.create_unbound "B'")))
                                   ]),
                              false));
                           orig = [] }
                         ]
                       ))
                    };
                  { id = (Ident.create_unbound "ACE'");
                    p_in =
                    [{ vd_id = (Ident.create_unbound "input'");
                       vd_typ =
                       (Array (
                          (Uint ((Varslice (Ident.create_unbound "D")),
                             (Mint 32), 2)),
                          (Const_e 5)));
                       vd_opts = []; vd_orig = [] }
                      ];
                    p_out =
                    [{ vd_id = (Ident.create_unbound "output'");
                       vd_typ =
                       (Array (
                          (Uint ((Varslice (Ident.create_unbound "D")),
                             (Mint 32), 2)),
                          (Const_e 5)));
                       vd_opts = []; vd_orig = [] }
                      ];
                    opt = [];
                    node =
                    (Single (
                       [{ vd_id = (Ident.create_unbound "SC'");
                          vd_typ =
                          (Array (
                             (Array (
                                (Uint ((Varslice (Ident.create_unbound "D")),
                                   (Mint 32), 1)),
                                (Const_e 16))),
                             (Const_e 3)));
                          vd_opts = []; vd_orig = [] };
                         { vd_id = (Ident.create_unbound "RC'");
                           vd_typ =
                           (Array (
                              (Array (
                                 (Uint (
                                    (Varslice (Ident.create_unbound "D")),
                                    (Mint 32), 1)),
                                 (Const_e 16))),
                              (Const_e 3)));
                           vd_opts = []; vd_orig = [] };
                         { vd_id = (Ident.create_unbound "state'");
                           vd_typ =
                           (Array (
                              (Array (
                                 (Uint (
                                    (Varslice (Ident.create_unbound "D")),
                                    (Mint 32), 2)),
                                 (Const_e 5))),
                              (Const_e 17)));
                           vd_opts = []; vd_orig = [] }
                         ],
                       [{ content =
                          (Eqn ([(Var (Ident.create_unbound "SC'"))],
                             (Tuple
                                [(Const (80,
                                    (Some (Uint (
                                             (Varslice
                                                (Ident.create_unbound "D")),
                                             (Mint 32), 1)))
                                    ));
                                  (Const (92,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (145,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (141,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (83,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (96,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (104,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (225,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (246,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (157,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (64,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (79,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (190,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (91,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (233,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (127,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (40,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (174,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (72,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (198,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (169,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (48,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (52,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (112,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (123,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (206,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (32,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (39,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (95,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (173,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (116,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (63,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (20,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (87,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (36,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (99,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (84,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (24,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (154,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (56,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (189,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (103,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (16,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (19,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (47,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (214,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (186,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                  (Const (31,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ))
                                  ]),
                             false));
                          orig = [] };
                         { content =
                           (Eqn ([(Var (Ident.create_unbound "RC'"))],
                              (Tuple
                                 [(Const (7,
                                     (Some (Uint (
                                              (Varslice
                                                 (Ident.create_unbound "D")),
                                              (Mint 32), 1)))
                                     ));
                                   (Const (10,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (155,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (224,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (209,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (26,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (34,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (247,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (98,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (150,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (113,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (170,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (43,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (233,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (207,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (183,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (83,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (93,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (73,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (127,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (190,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (29,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (40,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (108,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (130,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (71,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (107,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (136,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (220,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (139,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (89,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (198,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (67,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (228,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (94,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (204,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (50,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (78,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (117,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (37,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (253,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (249,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (118,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (160,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (176,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (9,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (30,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ));
                                   (Const (173,
                                      (Some (Uint (
                                               (Varslice
                                                  (Ident.create_unbound "D")),
                                               (Mint 32), 1)))
                                      ))
                                   ]),
                              false));
                           orig = [] };
                         { content =
                           (Eqn (
                              [(Index ((Var (Ident.create_unbound "state'")),
                                  (Const_e 0)))
                                ],
                              (ExpVar (Var (Ident.create_unbound "input'"))),
                              false));
                           orig = [] };
                         { content =
                           Loop {id = (Ident.create_unbound "i'");
                             start = (Const_e 0); stop = (Const_e 15);
                             body =
                             [{ content =
                                (Eqn (
                                   [(Index (
                                       (Var (Ident.create_unbound "state'")),
                                       (Op_e (Add,
                                          (Var_e (Ident.create_unbound "i'")),
                                          (Const_e 1)))
                                       ))
                                     ],
                                   (Fun ((Ident.create_unbound "ACE_step'"),
                                      [(ExpVar
                                          (Index (
                                             (Var
                                                (Ident.create_unbound "state'")),
                                             (Var_e
                                                (Ident.create_unbound "i'"))
                                             )));
                                        (ExpVar
                                           (Index (
                                              (Slice (
                                                 (Var
                                                    (Ident.create_unbound "RC'")),
                                                 [(Const_e 0); (Const_e 1);
                                                   (Const_e 2)]
                                                 )),
                                              (Var_e
                                                 (Ident.create_unbound "i'"))
                                              )));
                                        (ExpVar
                                           (Index (
                                              (Slice (
                                                 (Var
                                                    (Ident.create_unbound "SC'")),
                                                 [(Const_e 0); (Const_e 1);
                                                   (Const_e 2)]
                                                 )),
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
                           (Eqn ([(Var (Ident.create_unbound "output'"))],
                              (ExpVar
                                 (Index (
                                    (Var (Ident.create_unbound "state'")),
                                    (Const_e 16)))),
                              false));
                           orig = [] }
                         ]
                       ))
                    }
                  ]
                }
