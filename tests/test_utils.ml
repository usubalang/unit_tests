open Usuba_lib

let testable_prog =
  Alcotest.testable
    (fun ppf prog -> Format.fprintf ppf "%a" Usuba_print.(pp_prog ()) prog)
    Usuba_AST.equal_prog
