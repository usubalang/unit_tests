open Tests

let suite =
  [
    ("test_ascon", Test_ascon.suite);
    ("test_rectangle", Test_rectangle.suite);
    ("test_aes_generic", Test_aes_generic.suite);
    ("test_ace", Test_ace.suite);
    ("test_aes_mslice", Test_aes_mslice.suite);
  ]
  
let () = Alcotest.run "test pass_runner" suite
