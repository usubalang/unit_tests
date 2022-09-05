open Usuba_lib
open Usuba_AST

let ascon_056 = { nodes =
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
                           (Eqn ([(Var (Ident.create_unbound "x0'"))],
                              (ExpVar
                                 (Index ((Var (Ident.create_unbound "x'")),
                                    (Const_e 0)))),
                              false));
                           orig = [] };
                          { content =
                            (Eqn ([(Var (Ident.create_unbound "x1'"))],
                               (ExpVar
                                  (Index ((Var (Ident.create_unbound "x'")),
                                     (Const_e 1)))),
                               false));
                            orig = [] };
                          { content =
                            (Eqn ([(Var (Ident.create_unbound "x2'"))],
                               (ExpVar
                                  (Index ((Var (Ident.create_unbound "x'")),
                                     (Const_e 2)))),
                               false));
                            orig = [] };
                          { content =
                            (Eqn ([(Var (Ident.create_unbound "x3'"))],
                               (ExpVar
                                  (Index ((Var (Ident.create_unbound "x'")),
                                     (Const_e 3)))),
                               false));
                            orig = [] };
                          { content =
                            (Eqn ([(Var (Ident.create_unbound "x4'"))],
                               (ExpVar
                                  (Index ((Var (Ident.create_unbound "x'")),
                                     (Const_e 4)))),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x0'1_"))],
                               (Log (Xor,
                                  (ExpVar (Var (Ident.create_unbound "x0'"))),
                                  (ExpVar (Var (Ident.create_unbound "x4'")))
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x4'2_"))],
                               (Log (Xor,
                                  (ExpVar (Var (Ident.create_unbound "x4'"))),
                                  (ExpVar (Var (Ident.create_unbound "x3'")))
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x2'3_"))],
                               (Log (Xor,
                                  (ExpVar (Var (Ident.create_unbound "x2'"))),
                                  (ExpVar (Var (Ident.create_unbound "x1'")))
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn ([(Var (Ident.create_unbound "t0'"))],
                               (Not
                                  (ExpVar
                                     (Var
                                        (Ident.create_unbound "_shadow_x0'1_")))),
                               false));
                            orig = [] };
                          { content =
                            (Eqn ([(Var (Ident.create_unbound "t1'"))],
                               (Not
                                  (ExpVar (Var (Ident.create_unbound "x1'")))),
                               false));
                            orig = [] };
                          { content =
                            (Eqn ([(Var (Ident.create_unbound "t2'"))],
                               (Not
                                  (ExpVar
                                     (Var
                                        (Ident.create_unbound "_shadow_x2'3_")))),
                               false));
                            orig = [] };
                          { content =
                            (Eqn ([(Var (Ident.create_unbound "t3'"))],
                               (Not
                                  (ExpVar (Var (Ident.create_unbound "x3'")))),
                               false));
                            orig = [] };
                          { content =
                            (Eqn ([(Var (Ident.create_unbound "t4'"))],
                               (Not
                                  (ExpVar
                                     (Var
                                        (Ident.create_unbound "_shadow_x4'2_")))),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_t0'4_"))],
                               (Log (And,
                                  (ExpVar (Var (Ident.create_unbound "t0'"))),
                                  (ExpVar (Var (Ident.create_unbound "x1'")))
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_t1'5_"))],
                               (Log (And,
                                  (ExpVar (Var (Ident.create_unbound "t1'"))),
                                  (ExpVar
                                     (Var
                                        (Ident.create_unbound "_shadow_x2'3_")))
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_t2'6_"))],
                               (Log (And,
                                  (ExpVar (Var (Ident.create_unbound "t2'"))),
                                  (ExpVar (Var (Ident.create_unbound "x3'")))
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_t3'7_"))],
                               (Log (And,
                                  (ExpVar (Var (Ident.create_unbound "t3'"))),
                                  (ExpVar
                                     (Var
                                        (Ident.create_unbound "_shadow_x4'2_")))
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_t4'8_"))],
                               (Log (And,
                                  (ExpVar (Var (Ident.create_unbound "t4'"))),
                                  (ExpVar
                                     (Var
                                        (Ident.create_unbound "_shadow_x0'1_")))
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x0'9_"))],
                               (Log (Xor,
                                  (ExpVar
                                     (Var
                                        (Ident.create_unbound "_shadow_x0'1_"))),
                                  (ExpVar
                                     (Var
                                        (Ident.create_unbound "_shadow_t1'5_")))
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x1'10_"))
                                 ],
                               (Log (Xor,
                                  (ExpVar (Var (Ident.create_unbound "x1'"))),
                                  (ExpVar
                                     (Var
                                        (Ident.create_unbound "_shadow_t2'6_")))
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x2'11_"))
                                 ],
                               (Log (Xor,
                                  (ExpVar
                                     (Var
                                        (Ident.create_unbound "_shadow_x2'3_"))),
                                  (ExpVar
                                     (Var
                                        (Ident.create_unbound "_shadow_t3'7_")))
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x3'12_"))
                                 ],
                               (Log (Xor,
                                  (ExpVar (Var (Ident.create_unbound "x3'"))),
                                  (ExpVar
                                     (Var
                                        (Ident.create_unbound "_shadow_t4'8_")))
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x4'13_"))
                                 ],
                               (Log (Xor,
                                  (ExpVar
                                     (Var
                                        (Ident.create_unbound "_shadow_x4'2_"))),
                                  (ExpVar
                                     (Var
                                        (Ident.create_unbound "_shadow_t0'4_")))
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x1'14_"))
                                 ],
                               (Log (Xor,
                                  (ExpVar
                                     (Var
                                        (Ident.create_unbound "_shadow_x1'10_"))),
                                  (ExpVar
                                     (Var
                                        (Ident.create_unbound "_shadow_x0'9_")))
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x0'15_"))
                                 ],
                               (Log (Xor,
                                  (ExpVar
                                     (Var
                                        (Ident.create_unbound "_shadow_x0'9_"))),
                                  (ExpVar
                                     (Var
                                        (Ident.create_unbound "_shadow_x4'13_")))
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x3'16_"))
                                 ],
                               (Log (Xor,
                                  (ExpVar
                                     (Var
                                        (Ident.create_unbound "_shadow_x3'12_"))),
                                  (ExpVar
                                     (Var
                                        (Ident.create_unbound "_shadow_x2'11_")))
                                  )),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Var (Ident.create_unbound "_shadow_x2'17_"))
                                 ],
                               (Not
                                  (ExpVar
                                     (Var
                                        (Ident.create_unbound "_shadow_x2'11_")))),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Index ((Var (Ident.create_unbound "xr'")),
                                   (Const_e 0)))
                                 ],
                               (ExpVar
                                  (Var
                                     (Ident.create_unbound "_shadow_x0'15_"))),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Index ((Var (Ident.create_unbound "xr'")),
                                   (Const_e 1)))
                                 ],
                               (ExpVar
                                  (Var
                                     (Ident.create_unbound "_shadow_x1'14_"))),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Index ((Var (Ident.create_unbound "xr'")),
                                   (Const_e 2)))
                                 ],
                               (ExpVar
                                  (Var
                                     (Ident.create_unbound "_shadow_x2'17_"))),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Index ((Var (Ident.create_unbound "xr'")),
                                   (Const_e 3)))
                                 ],
                               (ExpVar
                                  (Var
                                     (Ident.create_unbound "_shadow_x3'16_"))),
                               false));
                            orig = [] };
                          { content =
                            (Eqn (
                               [(Index ((Var (Ident.create_unbound "xr'")),
                                   (Const_e 4)))
                                 ],
                               (ExpVar
                                  (Var
                                     (Ident.create_unbound "_shadow_x4'13_"))),
                               false));
                            orig = [] }
                          ]
                        ))
                     };
                    { id = (Ident.create_unbound "AddConstant'V64");
                      p_in =
                      [{ vd_id = (Ident.create_unbound "state'");
                         vd_typ = (Uint (Vslice, (Mint 64), 5));
                         vd_opts = []; vd_orig = [] };
                        { vd_id = (Ident.create_unbound "c'");
                          vd_typ = (Uint (Vslice, (Mint 64), 1));
                          vd_opts = []; vd_orig = [] }
                        ];
                      p_out =
                      [{ vd_id = (Ident.create_unbound "stateR'");
                         vd_typ = (Uint (Vslice, (Mint 64), 5));
                         vd_opts = []; vd_orig = [] }
                        ];
                      opt = [];
                      node =
                      (Single (
                         [{ vd_id = (Ident.create_unbound "_tmp1_");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] }
                           ],
                         [{ content =
                            (Eqn ([(Var (Ident.create_unbound "_tmp1_"))],
                               (Log (Xor,
                                  (ExpVar
                                     (Index (
                                        (Var (Ident.create_unbound "state'")),
                                        (Const_e 2)))),
                                  (ExpVar (Var (Ident.create_unbound "c'")))
                                  )),
                               false));
                            orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "stateR'")),
                                    (Const_e 0)))
                                  ],
                                (ExpVar
                                   (Index (
                                      (Var (Ident.create_unbound "state'")),
                                      (Const_e 0)))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "stateR'")),
                                    (Const_e 1)))
                                  ],
                                (ExpVar
                                   (Index (
                                      (Var (Ident.create_unbound "state'")),
                                      (Const_e 1)))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "stateR'")),
                                    (Const_e 2)))
                                  ],
                                (ExpVar (Var (Ident.create_unbound "_tmp1_"))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "stateR'")),
                                    (Const_e 3)))
                                  ],
                                (ExpVar
                                   (Index (
                                      (Var (Ident.create_unbound "state'")),
                                      (Const_e 3)))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "stateR'")),
                                    (Const_e 4)))
                                  ],
                                (ExpVar
                                   (Index (
                                      (Var (Ident.create_unbound "state'")),
                                      (Const_e 4)))),
                                false));
                             orig = [] }
                           ]
                         ))
                      };
                    { id = (Ident.create_unbound "LinearLayer'V64");
                      p_in =
                      [{ vd_id = (Ident.create_unbound "state'");
                         vd_typ = (Uint (Vslice, (Mint 64), 5));
                         vd_opts = []; vd_orig = [] }
                        ];
                      p_out =
                      [{ vd_id = (Ident.create_unbound "stateR'");
                         vd_typ = (Uint (Vslice, (Mint 64), 5));
                         vd_opts = []; vd_orig = [] }
                        ];
                      opt = [];
                      node =
                      (Single (
                         [{ vd_id = (Ident.create_unbound "_tmp16_");
                            vd_typ = (Uint (Vslice, (Mint 64), 1));
                            vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp15_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp14_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp13_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp12_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp11_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp10_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp9_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp8_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp7_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp6_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp5_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp4_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp3_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] };
                           { vd_id = (Ident.create_unbound "_tmp2_");
                             vd_typ = (Uint (Vslice, (Mint 64), 1));
                             vd_opts = []; vd_orig = [] }
                           ],
                         [{ content =
                            (Eqn ([(Var (Ident.create_unbound "_tmp2_"))],
                               (Shift (Rrotate,
                                  (ExpVar
                                     (Index (
                                        (Var (Ident.create_unbound "state'")),
                                        (Const_e 0)))),
                                  (Const_e 19))),
                               false));
                            orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp3_"))],
                                (Log (Xor,
                                   (ExpVar
                                      (Index (
                                         (Var (Ident.create_unbound "state'")),
                                         (Const_e 0)))),
                                   (ExpVar
                                      (Var (Ident.create_unbound "_tmp2_")))
                                   )),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp4_"))],
                                (Shift (Rrotate,
                                   (ExpVar
                                      (Index (
                                         (Var (Ident.create_unbound "state'")),
                                         (Const_e 0)))),
                                   (Const_e 28))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "stateR'")),
                                    (Const_e 0)))
                                  ],
                                (Log (Xor,
                                   (ExpVar
                                      (Var (Ident.create_unbound "_tmp3_"))),
                                   (ExpVar
                                      (Var (Ident.create_unbound "_tmp4_")))
                                   )),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp5_"))],
                                (Shift (Rrotate,
                                   (ExpVar
                                      (Index (
                                         (Var (Ident.create_unbound "state'")),
                                         (Const_e 1)))),
                                   (Const_e 61))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp6_"))],
                                (Log (Xor,
                                   (ExpVar
                                      (Index (
                                         (Var (Ident.create_unbound "state'")),
                                         (Const_e 1)))),
                                   (ExpVar
                                      (Var (Ident.create_unbound "_tmp5_")))
                                   )),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp7_"))],
                                (Shift (Rrotate,
                                   (ExpVar
                                      (Index (
                                         (Var (Ident.create_unbound "state'")),
                                         (Const_e 1)))),
                                   (Const_e 39))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "stateR'")),
                                    (Const_e 1)))
                                  ],
                                (Log (Xor,
                                   (ExpVar
                                      (Var (Ident.create_unbound "_tmp6_"))),
                                   (ExpVar
                                      (Var (Ident.create_unbound "_tmp7_")))
                                   )),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp8_"))],
                                (Shift (Rrotate,
                                   (ExpVar
                                      (Index (
                                         (Var (Ident.create_unbound "state'")),
                                         (Const_e 2)))),
                                   (Const_e 1))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp9_"))],
                                (Log (Xor,
                                   (ExpVar
                                      (Index (
                                         (Var (Ident.create_unbound "state'")),
                                         (Const_e 2)))),
                                   (ExpVar
                                      (Var (Ident.create_unbound "_tmp8_")))
                                   )),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp10_"))],
                                (Shift (Rrotate,
                                   (ExpVar
                                      (Index (
                                         (Var (Ident.create_unbound "state'")),
                                         (Const_e 2)))),
                                   (Const_e 6))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "stateR'")),
                                    (Const_e 2)))
                                  ],
                                (Log (Xor,
                                   (ExpVar
                                      (Var (Ident.create_unbound "_tmp9_"))),
                                   (ExpVar
                                      (Var (Ident.create_unbound "_tmp10_")))
                                   )),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp11_"))],
                                (Shift (Rrotate,
                                   (ExpVar
                                      (Index (
                                         (Var (Ident.create_unbound "state'")),
                                         (Const_e 3)))),
                                   (Const_e 10))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp12_"))],
                                (Log (Xor,
                                   (ExpVar
                                      (Index (
                                         (Var (Ident.create_unbound "state'")),
                                         (Const_e 3)))),
                                   (ExpVar
                                      (Var (Ident.create_unbound "_tmp11_")))
                                   )),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp13_"))],
                                (Shift (Rrotate,
                                   (ExpVar
                                      (Index (
                                         (Var (Ident.create_unbound "state'")),
                                         (Const_e 3)))),
                                   (Const_e 17))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "stateR'")),
                                    (Const_e 3)))
                                  ],
                                (Log (Xor,
                                   (ExpVar
                                      (Var (Ident.create_unbound "_tmp12_"))),
                                   (ExpVar
                                      (Var (Ident.create_unbound "_tmp13_")))
                                   )),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp14_"))],
                                (Shift (Rrotate,
                                   (ExpVar
                                      (Index (
                                         (Var (Ident.create_unbound "state'")),
                                         (Const_e 4)))),
                                   (Const_e 7))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp15_"))],
                                (Log (Xor,
                                   (ExpVar
                                      (Index (
                                         (Var (Ident.create_unbound "state'")),
                                         (Const_e 4)))),
                                   (ExpVar
                                      (Var (Ident.create_unbound "_tmp14_")))
                                   )),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp16_"))],
                                (Shift (Rrotate,
                                   (ExpVar
                                      (Index (
                                         (Var (Ident.create_unbound "state'")),
                                         (Const_e 4)))),
                                   (Const_e 41))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "stateR'")),
                                    (Const_e 4)))
                                  ],
                                (Log (Xor,
                                   (ExpVar
                                      (Var (Ident.create_unbound "_tmp15_"))),
                                   (ExpVar
                                      (Var (Ident.create_unbound "_tmp16_")))
                                   )),
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
                             vd_opts = []; vd_orig = [] }
                           ],
                         [{ content =
                            (Eqn ([(Var (Ident.create_unbound "_tmp17_"))],
                               (Const (240,
                                  (Some (Uint (Vslice, (Mint 64), 1))))),
                               false));
                            orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp18_"))],
                                (Const (225,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp19_"))],
                                (Const (210,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp20_"))],
                                (Const (195,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp21_"))],
                                (Const (180,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp22_"))],
                                (Const (165,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp23_"))],
                                (Const (150,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp24_"))],
                                (Const (135,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp25_"))],
                                (Const (120,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp26_"))],
                                (Const (105,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp27_"))],
                                (Const (90,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn ([(Var (Ident.create_unbound "_tmp28_"))],
                                (Const (75,
                                   (Some (Uint (Vslice, (Mint 64), 1))))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 0)))
                                  ],
                                (ExpVar
                                   (Var (Ident.create_unbound "_tmp17_"))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 1)))
                                  ],
                                (ExpVar
                                   (Var (Ident.create_unbound "_tmp18_"))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 2)))
                                  ],
                                (ExpVar
                                   (Var (Ident.create_unbound "_tmp19_"))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 3)))
                                  ],
                                (ExpVar
                                   (Var (Ident.create_unbound "_tmp20_"))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 4)))
                                  ],
                                (ExpVar
                                   (Var (Ident.create_unbound "_tmp21_"))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 5)))
                                  ],
                                (ExpVar
                                   (Var (Ident.create_unbound "_tmp22_"))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 6)))
                                  ],
                                (ExpVar
                                   (Var (Ident.create_unbound "_tmp23_"))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 7)))
                                  ],
                                (ExpVar
                                   (Var (Ident.create_unbound "_tmp24_"))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 8)))
                                  ],
                                (ExpVar
                                   (Var (Ident.create_unbound "_tmp25_"))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 9)))
                                  ],
                                (ExpVar
                                   (Var (Ident.create_unbound "_tmp26_"))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 10)))
                                  ],
                                (ExpVar
                                   (Var (Ident.create_unbound "_tmp27_"))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "consts'")),
                                    (Const_e 11)))
                                  ],
                                (ExpVar
                                   (Var (Ident.create_unbound "_tmp28_"))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Index (
                                       (Var (Ident.create_unbound "state'")),
                                       (Const_e 0))),
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
                                    (Index (
                                       (Var (Ident.create_unbound "state'")),
                                       (Const_e 0))),
                                    (Const_e 1)))
                                  ],
                                (ExpVar
                                   (Index (
                                      (Var (Ident.create_unbound "input'")),
                                      (Const_e 1)))),
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
                                (ExpVar
                                   (Index (
                                      (Var (Ident.create_unbound "input'")),
                                      (Const_e 2)))),
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
                                (ExpVar
                                   (Index (
                                      (Var (Ident.create_unbound "input'")),
                                      (Const_e 3)))),
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
                                (ExpVar
                                   (Index (
                                      (Var (Ident.create_unbound "input'")),
                                      (Const_e 4)))),
                                false));
                             orig = [] };
                           { content =
                             Loop {id = (Ident.create_unbound "i'");
                               start = (Const_e 0); stop = (Const_e 11);
                               body =
                               [{ content =
                                  (Eqn (
                                     [(Index (
                                         (Var
                                            (Ident.create_unbound "_tmp29_")),
                                         (Var_e (Ident.create_unbound "i'"))
                                         ))
                                       ],
                                     (Fun (
                                        (Ident.create_unbound "AddConstant'V64"),
                                        [(ExpVar
                                            (Index (
                                               (Var
                                                  (Ident.create_unbound "state'")),
                                               (Var_e
                                                  (Ident.create_unbound "i'"))
                                               )));
                                          (ExpVar
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "consts'")),
                                                (Var_e
                                                   (Ident.create_unbound "i'"))
                                                )))
                                          ]
                                        )),
                                     false));
                                  orig = [] };
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
                                         [(ExpVar
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "_tmp29_")),
                                                (Var_e
                                                   (Ident.create_unbound "i'"))
                                                )))
                                           ]
                                         )),
                                      false));
                                   orig = [] };
                                 { content =
                                   (Eqn (
                                      [(Index (
                                          (Var
                                             (Ident.create_unbound "state'")),
                                          (Op_e (Add,
                                             (Var_e
                                                (Ident.create_unbound "i'")),
                                             (Const_e 1)))
                                          ))
                                        ],
                                      (Fun (
                                         (Ident.create_unbound "LinearLayer'V64"),
                                         [(ExpVar
                                             (Index (
                                                (Var
                                                   (Ident.create_unbound "_tmp30_")),
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
                                    (Var (Ident.create_unbound "output'")),
                                    (Const_e 0)))
                                  ],
                                (ExpVar
                                   (Index (
                                      (Index (
                                         (Var (Ident.create_unbound "state'")),
                                         (Const_e 12))),
                                      (Const_e 0)))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "output'")),
                                    (Const_e 1)))
                                  ],
                                (ExpVar
                                   (Index (
                                      (Index (
                                         (Var (Ident.create_unbound "state'")),
                                         (Const_e 12))),
                                      (Const_e 1)))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "output'")),
                                    (Const_e 2)))
                                  ],
                                (ExpVar
                                   (Index (
                                      (Index (
                                         (Var (Ident.create_unbound "state'")),
                                         (Const_e 12))),
                                      (Const_e 2)))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "output'")),
                                    (Const_e 3)))
                                  ],
                                (ExpVar
                                   (Index (
                                      (Index (
                                         (Var (Ident.create_unbound "state'")),
                                         (Const_e 12))),
                                      (Const_e 3)))),
                                false));
                             orig = [] };
                           { content =
                             (Eqn (
                                [(Index (
                                    (Var (Ident.create_unbound "output'")),
                                    (Const_e 4)))
                                  ],
                                (ExpVar
                                   (Index (
                                      (Index (
                                         (Var (Ident.create_unbound "state'")),
                                         (Const_e 12))),
                                      (Const_e 4)))),
                                false));
                             orig = [] }
                           ]
                         ))
                      }
                    ]
                  }
