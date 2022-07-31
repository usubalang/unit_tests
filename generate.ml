#!/usr/bin/env -S ocaml str.cma

let cwd = Sys.getcwd ()
let rsc_dir = ref Filename.(concat cwd "rsc")

let set_dir r dir =
  let dir = if Filename.is_relative dir then Filename.concat cwd dir else dir in
  r := dir

let fold_lines f acc file =
  let ci = open_in file in

  let rec aux_parse acc =
    match input_line ci with
    | s -> aux_parse (f acc s)
    | exception End_of_file ->
        close_in ci;
        acc
  in
  aux_parse acc

let args =
  [
    ( "--rsc-dir",
      Arg.String (set_dir rsc_dir),
      "DIR where the examples are stored for testing (not mandatory)" );
  ]

let line_regexp = Str.regexp {|\([-a-zA-Z_.]+\)_\([0-9]+\)|}

let split_line line =
  if Str.string_match line_regexp line 0 then
    (Str.matched_group 1 line, Str.matched_group 2 line |> int_of_string)
  else
    failwith (Format.sprintf "%s doesn't represent a caller_id construct" line)

let pp_check ppf ~name ~descr ~runner ~ua_file ~id ~unfold ~remove =
  let run =
    if String.contains runner 'H' then
      match String.split_on_char 'H' runner with
      | runner :: _ -> runner ^ ".run_pre_inline"
      | _ -> assert false
    else if
      String.equal runner "Simplify_tuples"
      || String.equal runner "Split_tuples"
    then "Norm_tuples." ^ runner ^ ".run"
    else if String.equal runner "Inline" then "Inline.run_simple"
    else if String.equal runner "Cse" then "CSE.run"
    else runner ^ ".run"
  in
  let ua_module = String.capitalize_ascii ua_file in
  let prev =
    Format.sprintf "%s_%03d.%s_%03d" ua_module (id - 1) ua_file (id - 1)
  in
  let next = Format.sprintf "%s_%03d.%s_%03d" ua_module id ua_file id in
  let resetunfold, unfold =
    if false && unfold && run = "Unfold_unnest.run" then
      (Format.sprintf "Unfold_unnest.reset_cpt ();@,", false)
    else ("", unfold)
  in
  let resetremove, remove =
    if false && remove && run = "Remove_sync.run" then
      (Format.sprintf "Remove_sync.reset_cpt ();@,", false)
    else ("", unfold)
  in
  Format.fprintf ppf
    "@[<v 2>let %s () =@,\
     @[<hov 2>%s%sAlcotest.(check testable_prog)@ \"%s\"@ %s@ (Usuba_lib.%s@ \
     runner@ %s@ %s_config.conf)@]@]@.@."
    name resetunfold resetremove descr next run prev ua_module;
  (unfold, remove)

let pp_dirs_test ppf dirs =
  let pp_test ppf s = Format.fprintf ppf {|("test_%s", Test_%s.suite);|} s s in
  Format.(pp_print_list ~pp_sep:pp_print_cut pp_test)
    ppf
    (List.filter
       (fun s -> Filename.concat !rsc_dir s |> Sys.is_directory)
       (Array.to_list dirs))

let () =
  Arg.parse (Arg.align args)
    (Format.ksprintf
       (fun s -> raise (Arg.Bad s))
       "Don't know what to do with %s")
    "Usage: ./generate [OPTIONS]\nOPTIONS are:";
  let dirs = Sys.readdir !rsc_dir in
  let co = open_out "main.ml" in
  let main_ppf = Format.formatter_of_out_channel co in

  (* Printers *)
  (* Print a check function : the unit test *)

  (* Initialise main file by opening the lib and creating the proper testable type for prog *)
  Format.fprintf main_ppf
    "@[<v 0>open Tests@,\
     @,\
     @[<v 2>let suite =@,\
     @[<v 2>[@,\
     %a@]@,\
     ]@,\
     @]@,\
     @[<v 2>let () = Alcotest.run \"test pass_runner\" suite@." pp_dirs_test
    dirs;
  Array.iter
    (fun dir ->
      let dir = Filename.concat !rsc_dir dir in
      if Sys.is_directory dir then (
        let files = Sys.readdir dir in
        Array.iter
          (fun file ->
            if Filename.check_suffix file ".callers" then (
              let ua_file = Filename.chop_suffix file ".callers" in
              let co =
                open_out (Filename.concat "tests" ("test_" ^ ua_file ^ ".ml"))
              in
              let ua_file_ppf = Format.formatter_of_out_channel co in

              Format.fprintf ua_file_ppf
                "@[<v 0>open Usuba_lib@,\
                 @,\
                 open Rsc@,\
                 @,\
                 open Test_utils@,\
                 @,\
                 let runner = new Pass_runner.pass_runner %s_config.conf@,\
                 (* @,\
                 * let () = Unfold_unnest.reset_cpt ()*)@,\
                 @."
                (String.capitalize_ascii ua_file);

              let file = Filename.concat dir file in
              let _ =
                fold_lines
                  (fun (unfold, remove) line ->
                    (* line has the form : module(.module)*_[0-9]+
                     *
                     * These modules are the ones containing the run function that
                     * was called to generate the next step of
                     * normalisation/optimisation
                     *
                     * We need to capitalise each module to make the proper calls
                     *
                     * Example, expand_multiples_002 from ace.callers
                     *  - There will be a ace_002.ml file in the Ace directory
                     *  - The original value will come from the previously handled file (so ace_001.ml)
                     *  - The modified value will be the one located in Ace_002 named ace_002
                     *  - The runner is Expand_multiples
                     *)

                    (* runner: the runner that was executed
                     * (i.e. Rename.run, Inline.run etc)
                     * id: the unique identifier for this execution (from 001 to n) *)
                    let action, id = split_line line in

                    (* id_module : If our usuba file is named ua_file.ua:
                     *  - a directory named <Ua_file> is created
                     *  - for each run pass, a file named <ua_file>_<id>.ml is created
                     *    + this file contains an unique value let <ua_file>_<id> = <ast>
                     *    + the corresponding module is called <Ua_file>_<id>
                     *  - *)

                    (*  *)
                    let runner =
                      String.(
                        split_on_char 'D' action |> List.map capitalize_ascii
                        |> concat ".")
                    in
                    let name = "test_" ^ line in
                    let descr =
                      Format.sprintf "action: %s, id: %03d, runner: %s, " action
                        id runner
                    in

                    pp_check ua_file_ppf ~name ~descr ~runner ~ua_file ~id
                      ~unfold ~remove)
                  (true, true) file
              in
              Format.eprintf "%s@." file))
          files;
        Array.iter
          (fun file ->
            if Filename.check_suffix file ".callers" then (
              let ua_file = Filename.chop_suffix file ".callers" in
              let co =
                open_out_gen
                  [ Open_wronly; Open_append; Open_text ]
                  0o666
                  (Filename.concat "tests" ("test_" ^ ua_file ^ ".ml"))
              in
              let ua_file_ppf = Format.formatter_of_out_channel co in

              Format.fprintf ua_file_ppf "@[<v 2>let suite =@,@[<v 2>[@,";

              let file = Filename.concat dir file in
              fold_lines
                (fun () line ->
                  Format.fprintf ua_file_ppf
                    "Alcotest.test_case \"%s\" `Quick test_%s;@," line line)
                () file;
              Format.fprintf ua_file_ppf "@]@,]@."))
          files))
    dirs

(* Format.fprintf main_ppf
 *   "@[<v 2>let () =@,\
 *    let open Alcotest in@,\
 *    run \"Utils\" [ (\"rename\", [ test_case \"Renaming\" `Quick test_rename \
 *    ]) ]@." *)
