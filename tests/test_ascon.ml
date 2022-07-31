open Usuba_lib

open Rsc

open Test_utils

let runner = new Pass_runner.pass_runner Ascon_config.conf
(* 
* let () = Unfold_unnest.reset_cpt ()*)

let test_rename_001 () =
  Alcotest.(check testable_prog) "action: rename, id: 001, runner: Rename, "
    Ascon_001.ascon_001 (Usuba_lib.Rename.run runner Ascon_000.ascon_000
    Ascon_config.conf)

let test_expand_multiples_002 () =
  Alcotest.(check testable_prog)
    "action: expand_multiples, id: 002, runner: Expand_multiples, "
    Ascon_002.ascon_002 (Usuba_lib.Expand_multiples.run runner
    Ascon_001.ascon_001 Ascon_config.conf)

let test_convert_tables_003 () =
  Alcotest.(check testable_prog)
    "action: convert_tables, id: 003, runner: Convert_tables, "
    Ascon_003.ascon_003 (Usuba_lib.Convert_tables.run runner
    Ascon_002.ascon_002 Ascon_config.conf)

let test_expand_array_004 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 004, runner: Expand_array, "
    Ascon_004.ascon_004 (Usuba_lib.Expand_array.run runner
    Ascon_003.ascon_003 Ascon_config.conf)

let test_remove_sync_005 () =
  Alcotest.(check testable_prog)
    "action: remove_sync, id: 005, runner: Remove_sync, " Ascon_005.ascon_005
    (Usuba_lib.Remove_sync.run runner Ascon_004.ascon_004 Ascon_config.conf)

let test_init_scheduler_006 () =
  Alcotest.(check testable_prog)
    "action: init_scheduler, id: 006, runner: Init_scheduler, "
    Ascon_006.ascon_006 (Usuba_lib.Init_scheduler.run runner
    Ascon_005.ascon_005 Ascon_config.conf)

let test_expand_array_007 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 007, runner: Expand_array, "
    Ascon_007.ascon_007 (Usuba_lib.Expand_array.run runner
    Ascon_006.ascon_006 Ascon_config.conf)

let test_unfold_unnest_008 () =
  Alcotest.(check testable_prog)
    "action: unfold_unnest, id: 008, runner: Unfold_unnest, "
    Ascon_008.ascon_008 (Usuba_lib.Unfold_unnest.run runner
    Ascon_007.ascon_007 Ascon_config.conf)

let test_expand_array_009 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 009, runner: Expand_array, "
    Ascon_009.ascon_009 (Usuba_lib.Expand_array.run runner
    Ascon_008.ascon_008 Ascon_config.conf)

let test_expand_permut_010 () =
  Alcotest.(check testable_prog)
    "action: expand_permut, id: 010, runner: Expand_permut, "
    Ascon_010.ascon_010 (Usuba_lib.Expand_permut.run runner
    Ascon_009.ascon_009 Ascon_config.conf)

let test_simplify_tuples_011 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 011, runner: Simplify_tuples, "
    Ascon_011.ascon_011 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_010.ascon_010 Ascon_config.conf)

let test_split_tuples_012 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 012, runner: Split_tuples, "
    Ascon_012.ascon_012 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_011.ascon_011 Ascon_config.conf)

let test_simplify_tuples_013 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 013, runner: Simplify_tuples, "
    Ascon_013.ascon_013 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_012.ascon_012 Ascon_config.conf)

let test_simplify_tuples_014 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 014, runner: Simplify_tuples, "
    Ascon_014.ascon_014 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_013.ascon_013 Ascon_config.conf)

let test_split_tuples_015 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 015, runner: Split_tuples, "
    Ascon_015.ascon_015 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_014.ascon_014 Ascon_config.conf)

let test_simplify_tuples_016 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 016, runner: Simplify_tuples, "
    Ascon_016.ascon_016 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_015.ascon_015 Ascon_config.conf)

let test_shift_tuples_017 () =
  Alcotest.(check testable_prog)
    "action: shift_tuples, id: 017, runner: Shift_tuples, "
    Ascon_017.ascon_017 (Usuba_lib.Shift_tuples.run runner
    Ascon_016.ascon_016 Ascon_config.conf)

let test_simplify_tuples_018 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 018, runner: Simplify_tuples, "
    Ascon_018.ascon_018 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_017.ascon_017 Ascon_config.conf)

let test_split_tuples_019 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 019, runner: Split_tuples, "
    Ascon_019.ascon_019 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_018.ascon_018 Ascon_config.conf)

let test_simplify_tuples_020 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 020, runner: Simplify_tuples, "
    Ascon_020.ascon_020 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_019.ascon_019 Ascon_config.conf)

let test_expand_parameters_021 () =
  Alcotest.(check testable_prog)
    "action: expand_parameters, id: 021, runner: Expand_parameters, "
    Ascon_021.ascon_021 (Usuba_lib.Expand_parameters.run runner
    Ascon_020.ascon_020 Ascon_config.conf)

let test_expand_array_022 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 022, runner: Expand_array, "
    Ascon_022.ascon_022 (Usuba_lib.Expand_array.run runner
    Ascon_021.ascon_021 Ascon_config.conf)

let test_unfold_unnest_023 () =
  Alcotest.(check testable_prog)
    "action: unfold_unnest, id: 023, runner: Unfold_unnest, "
    Ascon_023.ascon_023 (Usuba_lib.Unfold_unnest.run runner
    Ascon_022.ascon_022 Ascon_config.conf)

let test_expand_array_024 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 024, runner: Expand_array, "
    Ascon_024.ascon_024 (Usuba_lib.Expand_array.run runner
    Ascon_023.ascon_023 Ascon_config.conf)

let test_expand_permut_025 () =
  Alcotest.(check testable_prog)
    "action: expand_permut, id: 025, runner: Expand_permut, "
    Ascon_025.ascon_025 (Usuba_lib.Expand_permut.run runner
    Ascon_024.ascon_024 Ascon_config.conf)

let test_simplify_tuples_026 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 026, runner: Simplify_tuples, "
    Ascon_026.ascon_026 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_025.ascon_025 Ascon_config.conf)

let test_split_tuples_027 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 027, runner: Split_tuples, "
    Ascon_027.ascon_027 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_026.ascon_026 Ascon_config.conf)

let test_simplify_tuples_028 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 028, runner: Simplify_tuples, "
    Ascon_028.ascon_028 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_027.ascon_027 Ascon_config.conf)

let test_simplify_tuples_029 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 029, runner: Simplify_tuples, "
    Ascon_029.ascon_029 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_028.ascon_028 Ascon_config.conf)

let test_split_tuples_030 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 030, runner: Split_tuples, "
    Ascon_030.ascon_030 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_029.ascon_029 Ascon_config.conf)

let test_simplify_tuples_031 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 031, runner: Simplify_tuples, "
    Ascon_031.ascon_031 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_030.ascon_030 Ascon_config.conf)

let test_shift_tuples_032 () =
  Alcotest.(check testable_prog)
    "action: shift_tuples, id: 032, runner: Shift_tuples, "
    Ascon_032.ascon_032 (Usuba_lib.Shift_tuples.run runner
    Ascon_031.ascon_031 Ascon_config.conf)

let test_simplify_tuples_033 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 033, runner: Simplify_tuples, "
    Ascon_033.ascon_033 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_032.ascon_032 Ascon_config.conf)

let test_split_tuples_034 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 034, runner: Split_tuples, "
    Ascon_034.ascon_034 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_033.ascon_033 Ascon_config.conf)

let test_simplify_tuples_035 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 035, runner: Simplify_tuples, "
    Ascon_035.ascon_035 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_034.ascon_034 Ascon_config.conf)

let test_expand_parameters_036 () =
  Alcotest.(check testable_prog)
    "action: expand_parameters, id: 036, runner: Expand_parameters, "
    Ascon_036.ascon_036 (Usuba_lib.Expand_parameters.run runner
    Ascon_035.ascon_035 Ascon_config.conf)

let test_expand_array_037 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 037, runner: Expand_array, "
    Ascon_037.ascon_037 (Usuba_lib.Expand_array.run runner
    Ascon_036.ascon_036 Ascon_config.conf)

let test_unfold_unnest_038 () =
  Alcotest.(check testable_prog)
    "action: unfold_unnest, id: 038, runner: Unfold_unnest, "
    Ascon_038.ascon_038 (Usuba_lib.Unfold_unnest.run runner
    Ascon_037.ascon_037 Ascon_config.conf)

let test_expand_array_039 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 039, runner: Expand_array, "
    Ascon_039.ascon_039 (Usuba_lib.Expand_array.run runner
    Ascon_038.ascon_038 Ascon_config.conf)

let test_expand_permut_040 () =
  Alcotest.(check testable_prog)
    "action: expand_permut, id: 040, runner: Expand_permut, "
    Ascon_040.ascon_040 (Usuba_lib.Expand_permut.run runner
    Ascon_039.ascon_039 Ascon_config.conf)

let test_simplify_tuples_041 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 041, runner: Simplify_tuples, "
    Ascon_041.ascon_041 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_040.ascon_040 Ascon_config.conf)

let test_split_tuples_042 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 042, runner: Split_tuples, "
    Ascon_042.ascon_042 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_041.ascon_041 Ascon_config.conf)

let test_simplify_tuples_043 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 043, runner: Simplify_tuples, "
    Ascon_043.ascon_043 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_042.ascon_042 Ascon_config.conf)

let test_simplify_tuples_044 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 044, runner: Simplify_tuples, "
    Ascon_044.ascon_044 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_043.ascon_043 Ascon_config.conf)

let test_split_tuples_045 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 045, runner: Split_tuples, "
    Ascon_045.ascon_045 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_044.ascon_044 Ascon_config.conf)

let test_simplify_tuples_046 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 046, runner: Simplify_tuples, "
    Ascon_046.ascon_046 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_045.ascon_045 Ascon_config.conf)

let test_shift_tuples_047 () =
  Alcotest.(check testable_prog)
    "action: shift_tuples, id: 047, runner: Shift_tuples, "
    Ascon_047.ascon_047 (Usuba_lib.Shift_tuples.run runner
    Ascon_046.ascon_046 Ascon_config.conf)

let test_simplify_tuples_048 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 048, runner: Simplify_tuples, "
    Ascon_048.ascon_048 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_047.ascon_047 Ascon_config.conf)

let test_split_tuples_049 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 049, runner: Split_tuples, "
    Ascon_049.ascon_049 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_048.ascon_048 Ascon_config.conf)

let test_simplify_tuples_050 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 050, runner: Simplify_tuples, "
    Ascon_050.ascon_050 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_049.ascon_049 Ascon_config.conf)

let test_monomorphize_051 () =
  Alcotest.(check testable_prog)
    "action: monomorphize, id: 051, runner: Monomorphize, "
    Ascon_051.ascon_051 (Usuba_lib.Monomorphize.run runner
    Ascon_050.ascon_050 Ascon_config.conf)

let test_expand_array_052 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 052, runner: Expand_array, "
    Ascon_052.ascon_052 (Usuba_lib.Expand_array.run runner
    Ascon_051.ascon_051 Ascon_config.conf)

let test_unfold_unnest_053 () =
  Alcotest.(check testable_prog)
    "action: unfold_unnest, id: 053, runner: Unfold_unnest, "
    Ascon_053.ascon_053 (Usuba_lib.Unfold_unnest.run runner
    Ascon_052.ascon_052 Ascon_config.conf)

let test_expand_array_054 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 054, runner: Expand_array, "
    Ascon_054.ascon_054 (Usuba_lib.Expand_array.run runner
    Ascon_053.ascon_053 Ascon_config.conf)

let test_expand_permut_055 () =
  Alcotest.(check testable_prog)
    "action: expand_permut, id: 055, runner: Expand_permut, "
    Ascon_055.ascon_055 (Usuba_lib.Expand_permut.run runner
    Ascon_054.ascon_054 Ascon_config.conf)

let test_simplify_tuples_056 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 056, runner: Simplify_tuples, "
    Ascon_056.ascon_056 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_055.ascon_055 Ascon_config.conf)

let test_split_tuples_057 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 057, runner: Split_tuples, "
    Ascon_057.ascon_057 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_056.ascon_056 Ascon_config.conf)

let test_simplify_tuples_058 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 058, runner: Simplify_tuples, "
    Ascon_058.ascon_058 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_057.ascon_057 Ascon_config.conf)

let test_simplify_tuples_059 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 059, runner: Simplify_tuples, "
    Ascon_059.ascon_059 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_058.ascon_058 Ascon_config.conf)

let test_split_tuples_060 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 060, runner: Split_tuples, "
    Ascon_060.ascon_060 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_059.ascon_059 Ascon_config.conf)

let test_simplify_tuples_061 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 061, runner: Simplify_tuples, "
    Ascon_061.ascon_061 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_060.ascon_060 Ascon_config.conf)

let test_shift_tuples_062 () =
  Alcotest.(check testable_prog)
    "action: shift_tuples, id: 062, runner: Shift_tuples, "
    Ascon_062.ascon_062 (Usuba_lib.Shift_tuples.run runner
    Ascon_061.ascon_061 Ascon_config.conf)

let test_simplify_tuples_063 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 063, runner: Simplify_tuples, "
    Ascon_063.ascon_063 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_062.ascon_062 Ascon_config.conf)

let test_split_tuples_064 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 064, runner: Split_tuples, "
    Ascon_064.ascon_064 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_063.ascon_063 Ascon_config.conf)

let test_simplify_tuples_065 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 065, runner: Simplify_tuples, "
    Ascon_065.ascon_065 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_064.ascon_064 Ascon_config.conf)

let test_expand_parameters_066 () =
  Alcotest.(check testable_prog)
    "action: expand_parameters, id: 066, runner: Expand_parameters, "
    Ascon_066.ascon_066 (Usuba_lib.Expand_parameters.run runner
    Ascon_065.ascon_065 Ascon_config.conf)

let test_expand_array_067 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 067, runner: Expand_array, "
    Ascon_067.ascon_067 (Usuba_lib.Expand_array.run runner
    Ascon_066.ascon_066 Ascon_config.conf)

let test_unfold_unnest_068 () =
  Alcotest.(check testable_prog)
    "action: unfold_unnest, id: 068, runner: Unfold_unnest, "
    Ascon_068.ascon_068 (Usuba_lib.Unfold_unnest.run runner
    Ascon_067.ascon_067 Ascon_config.conf)

let test_expand_array_069 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 069, runner: Expand_array, "
    Ascon_069.ascon_069 (Usuba_lib.Expand_array.run runner
    Ascon_068.ascon_068 Ascon_config.conf)

let test_expand_permut_070 () =
  Alcotest.(check testable_prog)
    "action: expand_permut, id: 070, runner: Expand_permut, "
    Ascon_070.ascon_070 (Usuba_lib.Expand_permut.run runner
    Ascon_069.ascon_069 Ascon_config.conf)

let test_simplify_tuples_071 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 071, runner: Simplify_tuples, "
    Ascon_071.ascon_071 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_070.ascon_070 Ascon_config.conf)

let test_split_tuples_072 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 072, runner: Split_tuples, "
    Ascon_072.ascon_072 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_071.ascon_071 Ascon_config.conf)

let test_simplify_tuples_073 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 073, runner: Simplify_tuples, "
    Ascon_073.ascon_073 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_072.ascon_072 Ascon_config.conf)

let test_simplify_tuples_074 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 074, runner: Simplify_tuples, "
    Ascon_074.ascon_074 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_073.ascon_073 Ascon_config.conf)

let test_split_tuples_075 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 075, runner: Split_tuples, "
    Ascon_075.ascon_075 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_074.ascon_074 Ascon_config.conf)

let test_simplify_tuples_076 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 076, runner: Simplify_tuples, "
    Ascon_076.ascon_076 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_075.ascon_075 Ascon_config.conf)

let test_shift_tuples_077 () =
  Alcotest.(check testable_prog)
    "action: shift_tuples, id: 077, runner: Shift_tuples, "
    Ascon_077.ascon_077 (Usuba_lib.Shift_tuples.run runner
    Ascon_076.ascon_076 Ascon_config.conf)

let test_simplify_tuples_078 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 078, runner: Simplify_tuples, "
    Ascon_078.ascon_078 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_077.ascon_077 Ascon_config.conf)

let test_split_tuples_079 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 079, runner: Split_tuples, "
    Ascon_079.ascon_079 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_078.ascon_078 Ascon_config.conf)

let test_simplify_tuples_080 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 080, runner: Simplify_tuples, "
    Ascon_080.ascon_080 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_079.ascon_079 Ascon_config.conf)

let test_expand_parameters_081 () =
  Alcotest.(check testable_prog)
    "action: expand_parameters, id: 081, runner: Expand_parameters, "
    Ascon_081.ascon_081 (Usuba_lib.Expand_parameters.run runner
    Ascon_080.ascon_080 Ascon_config.conf)

let test_expand_array_082 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 082, runner: Expand_array, "
    Ascon_082.ascon_082 (Usuba_lib.Expand_array.run runner
    Ascon_081.ascon_081 Ascon_config.conf)

let test_unfold_unnest_083 () =
  Alcotest.(check testable_prog)
    "action: unfold_unnest, id: 083, runner: Unfold_unnest, "
    Ascon_083.ascon_083 (Usuba_lib.Unfold_unnest.run runner
    Ascon_082.ascon_082 Ascon_config.conf)

let test_expand_array_084 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 084, runner: Expand_array, "
    Ascon_084.ascon_084 (Usuba_lib.Expand_array.run runner
    Ascon_083.ascon_083 Ascon_config.conf)

let test_expand_permut_085 () =
  Alcotest.(check testable_prog)
    "action: expand_permut, id: 085, runner: Expand_permut, "
    Ascon_085.ascon_085 (Usuba_lib.Expand_permut.run runner
    Ascon_084.ascon_084 Ascon_config.conf)

let test_simplify_tuples_086 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 086, runner: Simplify_tuples, "
    Ascon_086.ascon_086 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_085.ascon_085 Ascon_config.conf)

let test_split_tuples_087 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 087, runner: Split_tuples, "
    Ascon_087.ascon_087 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_086.ascon_086 Ascon_config.conf)

let test_simplify_tuples_088 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 088, runner: Simplify_tuples, "
    Ascon_088.ascon_088 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_087.ascon_087 Ascon_config.conf)

let test_simplify_tuples_089 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 089, runner: Simplify_tuples, "
    Ascon_089.ascon_089 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_088.ascon_088 Ascon_config.conf)

let test_split_tuples_090 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 090, runner: Split_tuples, "
    Ascon_090.ascon_090 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_089.ascon_089 Ascon_config.conf)

let test_simplify_tuples_091 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 091, runner: Simplify_tuples, "
    Ascon_091.ascon_091 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_090.ascon_090 Ascon_config.conf)

let test_shift_tuples_092 () =
  Alcotest.(check testable_prog)
    "action: shift_tuples, id: 092, runner: Shift_tuples, "
    Ascon_092.ascon_092 (Usuba_lib.Shift_tuples.run runner
    Ascon_091.ascon_091 Ascon_config.conf)

let test_simplify_tuples_093 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 093, runner: Simplify_tuples, "
    Ascon_093.ascon_093 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_092.ascon_092 Ascon_config.conf)

let test_split_tuples_094 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 094, runner: Split_tuples, "
    Ascon_094.ascon_094 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_093.ascon_093 Ascon_config.conf)

let test_simplify_tuples_095 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 095, runner: Simplify_tuples, "
    Ascon_095.ascon_095 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_094.ascon_094 Ascon_config.conf)

let test_init_scheduler_096 () =
  Alcotest.(check testable_prog)
    "action: init_scheduler, id: 096, runner: Init_scheduler, "
    Ascon_096.ascon_096 (Usuba_lib.Init_scheduler.run runner
    Ascon_095.ascon_095 Ascon_config.conf)

let test_constant_folding_097 () =
  Alcotest.(check testable_prog)
    "action: constant_folding, id: 097, runner: Constant_folding, "
    Ascon_097.ascon_097 (Usuba_lib.Constant_folding.run runner
    Ascon_096.ascon_096 Ascon_config.conf)

let test_simplify_tuples_099 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 099, runner: Simplify_tuples, "
    Ascon_099.ascon_099 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_098.ascon_098 Ascon_config.conf)

let test_split_tuples_100 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 100, runner: Split_tuples, "
    Ascon_100.ascon_100 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_099.ascon_099 Ascon_config.conf)

let test_simplify_tuples_101 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 101, runner: Simplify_tuples, "
    Ascon_101.ascon_101 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_100.ascon_100 Ascon_config.conf)

let test_copy_propagation_102 () =
  Alcotest.(check testable_prog)
    "action: copy_propagation, id: 102, runner: Copy_propagation, "
    Ascon_102.ascon_102 (Usuba_lib.Copy_propagation.run runner
    Ascon_101.ascon_101 Ascon_config.conf)

let test_simplify_tuples_103 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 103, runner: Simplify_tuples, "
    Ascon_103.ascon_103 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_102.ascon_102 Ascon_config.conf)

let test_split_tuples_104 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 104, runner: Split_tuples, "
    Ascon_104.ascon_104 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_103.ascon_103 Ascon_config.conf)

let test_simplify_tuples_105 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 105, runner: Simplify_tuples, "
    Ascon_105.ascon_105 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_104.ascon_104 Ascon_config.conf)

let test_constant_folding_106 () =
  Alcotest.(check testable_prog)
    "action: constant_folding, id: 106, runner: Constant_folding, "
    Ascon_106.ascon_106 (Usuba_lib.Constant_folding.run runner
    Ascon_105.ascon_105 Ascon_config.conf)

let test_simplify_tuples_108 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 108, runner: Simplify_tuples, "
    Ascon_108.ascon_108 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_107.ascon_107 Ascon_config.conf)

let test_split_tuples_109 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 109, runner: Split_tuples, "
    Ascon_109.ascon_109 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_108.ascon_108 Ascon_config.conf)

let test_simplify_tuples_110 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 110, runner: Simplify_tuples, "
    Ascon_110.ascon_110 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_109.ascon_109 Ascon_config.conf)

let test_copy_propagation_111 () =
  Alcotest.(check testable_prog)
    "action: copy_propagation, id: 111, runner: Copy_propagation, "
    Ascon_111.ascon_111 (Usuba_lib.Copy_propagation.run runner
    Ascon_110.ascon_110 Ascon_config.conf)

let test_simplify_tuples_112 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 112, runner: Simplify_tuples, "
    Ascon_112.ascon_112 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_111.ascon_111 Ascon_config.conf)

let test_split_tuples_113 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 113, runner: Split_tuples, "
    Ascon_113.ascon_113 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_112.ascon_112 Ascon_config.conf)

let test_simplify_tuples_114 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 114, runner: Simplify_tuples, "
    Ascon_114.ascon_114 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_113.ascon_113 Ascon_config.conf)

let test_pre_schedule_115 () =
  Alcotest.(check testable_prog)
    "action: pre_schedule, id: 115, runner: Pre_schedule, "
    Ascon_115.ascon_115 (Usuba_lib.Pre_schedule.run runner
    Ascon_114.ascon_114 Ascon_config.conf)

let test_expand_array_116 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 116, runner: Expand_array, "
    Ascon_116.ascon_116 (Usuba_lib.Expand_array.run runner
    Ascon_115.ascon_115 Ascon_config.conf)

let test_unfold_unnest_117 () =
  Alcotest.(check testable_prog)
    "action: unfold_unnest, id: 117, runner: Unfold_unnest, "
    Ascon_117.ascon_117 (Usuba_lib.Unfold_unnest.run runner
    Ascon_116.ascon_116 Ascon_config.conf)

let test_expand_array_118 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 118, runner: Expand_array, "
    Ascon_118.ascon_118 (Usuba_lib.Expand_array.run runner
    Ascon_117.ascon_117 Ascon_config.conf)

let test_expand_permut_119 () =
  Alcotest.(check testable_prog)
    "action: expand_permut, id: 119, runner: Expand_permut, "
    Ascon_119.ascon_119 (Usuba_lib.Expand_permut.run runner
    Ascon_118.ascon_118 Ascon_config.conf)

let test_simplify_tuples_120 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 120, runner: Simplify_tuples, "
    Ascon_120.ascon_120 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_119.ascon_119 Ascon_config.conf)

let test_split_tuples_121 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 121, runner: Split_tuples, "
    Ascon_121.ascon_121 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_120.ascon_120 Ascon_config.conf)

let test_simplify_tuples_122 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 122, runner: Simplify_tuples, "
    Ascon_122.ascon_122 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_121.ascon_121 Ascon_config.conf)

let test_simplify_tuples_123 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 123, runner: Simplify_tuples, "
    Ascon_123.ascon_123 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_122.ascon_122 Ascon_config.conf)

let test_split_tuples_124 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 124, runner: Split_tuples, "
    Ascon_124.ascon_124 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_123.ascon_123 Ascon_config.conf)

let test_simplify_tuples_125 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 125, runner: Simplify_tuples, "
    Ascon_125.ascon_125 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_124.ascon_124 Ascon_config.conf)

let test_shift_tuples_126 () =
  Alcotest.(check testable_prog)
    "action: shift_tuples, id: 126, runner: Shift_tuples, "
    Ascon_126.ascon_126 (Usuba_lib.Shift_tuples.run runner
    Ascon_125.ascon_125 Ascon_config.conf)

let test_simplify_tuples_127 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 127, runner: Simplify_tuples, "
    Ascon_127.ascon_127 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_126.ascon_126 Ascon_config.conf)

let test_split_tuples_128 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 128, runner: Split_tuples, "
    Ascon_128.ascon_128 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_127.ascon_127 Ascon_config.conf)

let test_simplify_tuples_129 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 129, runner: Simplify_tuples, "
    Ascon_129.ascon_129 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_128.ascon_128 Ascon_config.conf)

let test_expand_parameters_130 () =
  Alcotest.(check testable_prog)
    "action: expand_parameters, id: 130, runner: Expand_parameters, "
    Ascon_130.ascon_130 (Usuba_lib.Expand_parameters.run runner
    Ascon_129.ascon_129 Ascon_config.conf)

let test_expand_array_131 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 131, runner: Expand_array, "
    Ascon_131.ascon_131 (Usuba_lib.Expand_array.run runner
    Ascon_130.ascon_130 Ascon_config.conf)

let test_unfold_unnest_132 () =
  Alcotest.(check testable_prog)
    "action: unfold_unnest, id: 132, runner: Unfold_unnest, "
    Ascon_132.ascon_132 (Usuba_lib.Unfold_unnest.run runner
    Ascon_131.ascon_131 Ascon_config.conf)

let test_expand_array_133 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 133, runner: Expand_array, "
    Ascon_133.ascon_133 (Usuba_lib.Expand_array.run runner
    Ascon_132.ascon_132 Ascon_config.conf)

let test_expand_permut_134 () =
  Alcotest.(check testable_prog)
    "action: expand_permut, id: 134, runner: Expand_permut, "
    Ascon_134.ascon_134 (Usuba_lib.Expand_permut.run runner
    Ascon_133.ascon_133 Ascon_config.conf)

let test_simplify_tuples_135 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 135, runner: Simplify_tuples, "
    Ascon_135.ascon_135 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_134.ascon_134 Ascon_config.conf)

let test_split_tuples_136 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 136, runner: Split_tuples, "
    Ascon_136.ascon_136 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_135.ascon_135 Ascon_config.conf)

let test_simplify_tuples_137 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 137, runner: Simplify_tuples, "
    Ascon_137.ascon_137 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_136.ascon_136 Ascon_config.conf)

let test_simplify_tuples_138 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 138, runner: Simplify_tuples, "
    Ascon_138.ascon_138 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_137.ascon_137 Ascon_config.conf)

let test_split_tuples_139 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 139, runner: Split_tuples, "
    Ascon_139.ascon_139 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_138.ascon_138 Ascon_config.conf)

let test_simplify_tuples_140 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 140, runner: Simplify_tuples, "
    Ascon_140.ascon_140 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_139.ascon_139 Ascon_config.conf)

let test_shift_tuples_141 () =
  Alcotest.(check testable_prog)
    "action: shift_tuples, id: 141, runner: Shift_tuples, "
    Ascon_141.ascon_141 (Usuba_lib.Shift_tuples.run runner
    Ascon_140.ascon_140 Ascon_config.conf)

let test_simplify_tuples_142 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 142, runner: Simplify_tuples, "
    Ascon_142.ascon_142 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_141.ascon_141 Ascon_config.conf)

let test_split_tuples_143 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 143, runner: Split_tuples, "
    Ascon_143.ascon_143 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_142.ascon_142 Ascon_config.conf)

let test_simplify_tuples_144 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 144, runner: Simplify_tuples, "
    Ascon_144.ascon_144 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_143.ascon_143 Ascon_config.conf)

let test_expand_parameters_145 () =
  Alcotest.(check testable_prog)
    "action: expand_parameters, id: 145, runner: Expand_parameters, "
    Ascon_145.ascon_145 (Usuba_lib.Expand_parameters.run runner
    Ascon_144.ascon_144 Ascon_config.conf)

let test_expand_array_146 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 146, runner: Expand_array, "
    Ascon_146.ascon_146 (Usuba_lib.Expand_array.run runner
    Ascon_145.ascon_145 Ascon_config.conf)

let test_unfold_unnest_147 () =
  Alcotest.(check testable_prog)
    "action: unfold_unnest, id: 147, runner: Unfold_unnest, "
    Ascon_147.ascon_147 (Usuba_lib.Unfold_unnest.run runner
    Ascon_146.ascon_146 Ascon_config.conf)

let test_expand_array_148 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 148, runner: Expand_array, "
    Ascon_148.ascon_148 (Usuba_lib.Expand_array.run runner
    Ascon_147.ascon_147 Ascon_config.conf)

let test_expand_permut_149 () =
  Alcotest.(check testable_prog)
    "action: expand_permut, id: 149, runner: Expand_permut, "
    Ascon_149.ascon_149 (Usuba_lib.Expand_permut.run runner
    Ascon_148.ascon_148 Ascon_config.conf)

let test_simplify_tuples_150 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 150, runner: Simplify_tuples, "
    Ascon_150.ascon_150 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_149.ascon_149 Ascon_config.conf)

let test_split_tuples_151 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 151, runner: Split_tuples, "
    Ascon_151.ascon_151 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_150.ascon_150 Ascon_config.conf)

let test_simplify_tuples_152 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 152, runner: Simplify_tuples, "
    Ascon_152.ascon_152 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_151.ascon_151 Ascon_config.conf)

let test_simplify_tuples_153 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 153, runner: Simplify_tuples, "
    Ascon_153.ascon_153 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_152.ascon_152 Ascon_config.conf)

let test_split_tuples_154 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 154, runner: Split_tuples, "
    Ascon_154.ascon_154 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_153.ascon_153 Ascon_config.conf)

let test_simplify_tuples_155 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 155, runner: Simplify_tuples, "
    Ascon_155.ascon_155 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_154.ascon_154 Ascon_config.conf)

let test_shift_tuples_156 () =
  Alcotest.(check testable_prog)
    "action: shift_tuples, id: 156, runner: Shift_tuples, "
    Ascon_156.ascon_156 (Usuba_lib.Shift_tuples.run runner
    Ascon_155.ascon_155 Ascon_config.conf)

let test_simplify_tuples_157 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 157, runner: Simplify_tuples, "
    Ascon_157.ascon_157 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_156.ascon_156 Ascon_config.conf)

let test_split_tuples_158 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 158, runner: Split_tuples, "
    Ascon_158.ascon_158 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_157.ascon_157 Ascon_config.conf)

let test_simplify_tuples_159 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 159, runner: Simplify_tuples, "
    Ascon_159.ascon_159 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_158.ascon_158 Ascon_config.conf)

let test_constant_folding_160 () =
  Alcotest.(check testable_prog)
    "action: constant_folding, id: 160, runner: Constant_folding, "
    Ascon_160.ascon_160 (Usuba_lib.Constant_folding.run runner
    Ascon_159.ascon_159 Ascon_config.conf)

let test_simplify_tuples_162 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 162, runner: Simplify_tuples, "
    Ascon_162.ascon_162 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_161.ascon_161 Ascon_config.conf)

let test_split_tuples_163 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 163, runner: Split_tuples, "
    Ascon_163.ascon_163 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_162.ascon_162 Ascon_config.conf)

let test_simplify_tuples_164 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 164, runner: Simplify_tuples, "
    Ascon_164.ascon_164 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_163.ascon_163 Ascon_config.conf)

let test_copy_propagation_165 () =
  Alcotest.(check testable_prog)
    "action: copy_propagation, id: 165, runner: Copy_propagation, "
    Ascon_165.ascon_165 (Usuba_lib.Copy_propagation.run runner
    Ascon_164.ascon_164 Ascon_config.conf)

let test_simplify_tuples_166 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 166, runner: Simplify_tuples, "
    Ascon_166.ascon_166 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_165.ascon_165 Ascon_config.conf)

let test_split_tuples_167 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 167, runner: Split_tuples, "
    Ascon_167.ascon_167 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_166.ascon_166 Ascon_config.conf)

let test_simplify_tuples_168 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 168, runner: Simplify_tuples, "
    Ascon_168.ascon_168 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_167.ascon_167 Ascon_config.conf)

let test_constant_folding_170 () =
  Alcotest.(check testable_prog)
    "action: constant_folding, id: 170, runner: Constant_folding, "
    Ascon_170.ascon_170 (Usuba_lib.Constant_folding.run runner
    Ascon_169.ascon_169 Ascon_config.conf)

let test_simplify_tuples_172 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 172, runner: Simplify_tuples, "
    Ascon_172.ascon_172 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_171.ascon_171 Ascon_config.conf)

let test_split_tuples_173 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 173, runner: Split_tuples, "
    Ascon_173.ascon_173 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_172.ascon_172 Ascon_config.conf)

let test_simplify_tuples_174 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 174, runner: Simplify_tuples, "
    Ascon_174.ascon_174 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_173.ascon_173 Ascon_config.conf)

let test_copy_propagation_175 () =
  Alcotest.(check testable_prog)
    "action: copy_propagation, id: 175, runner: Copy_propagation, "
    Ascon_175.ascon_175 (Usuba_lib.Copy_propagation.run runner
    Ascon_174.ascon_174 Ascon_config.conf)

let test_simplify_tuples_176 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 176, runner: Simplify_tuples, "
    Ascon_176.ascon_176 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_175.ascon_175 Ascon_config.conf)

let test_split_tuples_177 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 177, runner: Split_tuples, "
    Ascon_177.ascon_177 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_176.ascon_176 Ascon_config.conf)

let test_simplify_tuples_178 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 178, runner: Simplify_tuples, "
    Ascon_178.ascon_178 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_177.ascon_177 Ascon_config.conf)

let test_constant_folding_180 () =
  Alcotest.(check testable_prog)
    "action: constant_folding, id: 180, runner: Constant_folding, "
    Ascon_180.ascon_180 (Usuba_lib.Constant_folding.run runner
    Ascon_179.ascon_179 Ascon_config.conf)

let test_simplify_tuples_182 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 182, runner: Simplify_tuples, "
    Ascon_182.ascon_182 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_181.ascon_181 Ascon_config.conf)

let test_split_tuples_183 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 183, runner: Split_tuples, "
    Ascon_183.ascon_183 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_182.ascon_182 Ascon_config.conf)

let test_simplify_tuples_184 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 184, runner: Simplify_tuples, "
    Ascon_184.ascon_184 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_183.ascon_183 Ascon_config.conf)

let test_copy_propagation_185 () =
  Alcotest.(check testable_prog)
    "action: copy_propagation, id: 185, runner: Copy_propagation, "
    Ascon_185.ascon_185 (Usuba_lib.Copy_propagation.run runner
    Ascon_184.ascon_184 Ascon_config.conf)

let test_simplify_tuples_186 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 186, runner: Simplify_tuples, "
    Ascon_186.ascon_186 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_185.ascon_185 Ascon_config.conf)

let test_split_tuples_187 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 187, runner: Split_tuples, "
    Ascon_187.ascon_187 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_186.ascon_186 Ascon_config.conf)

let test_simplify_tuples_188 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 188, runner: Simplify_tuples, "
    Ascon_188.ascon_188 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_187.ascon_187 Ascon_config.conf)

let test_inlineHpre_189 () =
  Alcotest.(check testable_prog)
    "action: inlineHpre, id: 189, runner: InlineHpre, " Ascon_189.ascon_189
    (Usuba_lib.Inline.run_pre_inline runner Ascon_188.ascon_188
    Ascon_config.conf)

let test_expand_array_190 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 190, runner: Expand_array, "
    Ascon_190.ascon_190 (Usuba_lib.Expand_array.run runner
    Ascon_189.ascon_189 Ascon_config.conf)

let test_unfold_unnest_191 () =
  Alcotest.(check testable_prog)
    "action: unfold_unnest, id: 191, runner: Unfold_unnest, "
    Ascon_191.ascon_191 (Usuba_lib.Unfold_unnest.run runner
    Ascon_190.ascon_190 Ascon_config.conf)

let test_expand_array_192 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 192, runner: Expand_array, "
    Ascon_192.ascon_192 (Usuba_lib.Expand_array.run runner
    Ascon_191.ascon_191 Ascon_config.conf)

let test_expand_permut_193 () =
  Alcotest.(check testable_prog)
    "action: expand_permut, id: 193, runner: Expand_permut, "
    Ascon_193.ascon_193 (Usuba_lib.Expand_permut.run runner
    Ascon_192.ascon_192 Ascon_config.conf)

let test_simplify_tuples_194 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 194, runner: Simplify_tuples, "
    Ascon_194.ascon_194 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_193.ascon_193 Ascon_config.conf)

let test_split_tuples_195 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 195, runner: Split_tuples, "
    Ascon_195.ascon_195 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_194.ascon_194 Ascon_config.conf)

let test_simplify_tuples_196 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 196, runner: Simplify_tuples, "
    Ascon_196.ascon_196 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_195.ascon_195 Ascon_config.conf)

let test_simplify_tuples_197 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 197, runner: Simplify_tuples, "
    Ascon_197.ascon_197 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_196.ascon_196 Ascon_config.conf)

let test_split_tuples_198 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 198, runner: Split_tuples, "
    Ascon_198.ascon_198 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_197.ascon_197 Ascon_config.conf)

let test_simplify_tuples_199 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 199, runner: Simplify_tuples, "
    Ascon_199.ascon_199 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_198.ascon_198 Ascon_config.conf)

let test_shift_tuples_200 () =
  Alcotest.(check testable_prog)
    "action: shift_tuples, id: 200, runner: Shift_tuples, "
    Ascon_200.ascon_200 (Usuba_lib.Shift_tuples.run runner
    Ascon_199.ascon_199 Ascon_config.conf)

let test_simplify_tuples_201 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 201, runner: Simplify_tuples, "
    Ascon_201.ascon_201 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_200.ascon_200 Ascon_config.conf)

let test_split_tuples_202 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 202, runner: Split_tuples, "
    Ascon_202.ascon_202 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_201.ascon_201 Ascon_config.conf)

let test_simplify_tuples_203 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 203, runner: Simplify_tuples, "
    Ascon_203.ascon_203 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_202.ascon_202 Ascon_config.conf)

let test_expand_parameters_204 () =
  Alcotest.(check testable_prog)
    "action: expand_parameters, id: 204, runner: Expand_parameters, "
    Ascon_204.ascon_204 (Usuba_lib.Expand_parameters.run runner
    Ascon_203.ascon_203 Ascon_config.conf)

let test_expand_array_205 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 205, runner: Expand_array, "
    Ascon_205.ascon_205 (Usuba_lib.Expand_array.run runner
    Ascon_204.ascon_204 Ascon_config.conf)

let test_unfold_unnest_206 () =
  Alcotest.(check testable_prog)
    "action: unfold_unnest, id: 206, runner: Unfold_unnest, "
    Ascon_206.ascon_206 (Usuba_lib.Unfold_unnest.run runner
    Ascon_205.ascon_205 Ascon_config.conf)

let test_expand_array_207 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 207, runner: Expand_array, "
    Ascon_207.ascon_207 (Usuba_lib.Expand_array.run runner
    Ascon_206.ascon_206 Ascon_config.conf)

let test_expand_permut_208 () =
  Alcotest.(check testable_prog)
    "action: expand_permut, id: 208, runner: Expand_permut, "
    Ascon_208.ascon_208 (Usuba_lib.Expand_permut.run runner
    Ascon_207.ascon_207 Ascon_config.conf)

let test_simplify_tuples_209 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 209, runner: Simplify_tuples, "
    Ascon_209.ascon_209 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_208.ascon_208 Ascon_config.conf)

let test_split_tuples_210 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 210, runner: Split_tuples, "
    Ascon_210.ascon_210 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_209.ascon_209 Ascon_config.conf)

let test_simplify_tuples_211 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 211, runner: Simplify_tuples, "
    Ascon_211.ascon_211 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_210.ascon_210 Ascon_config.conf)

let test_simplify_tuples_212 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 212, runner: Simplify_tuples, "
    Ascon_212.ascon_212 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_211.ascon_211 Ascon_config.conf)

let test_split_tuples_213 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 213, runner: Split_tuples, "
    Ascon_213.ascon_213 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_212.ascon_212 Ascon_config.conf)

let test_simplify_tuples_214 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 214, runner: Simplify_tuples, "
    Ascon_214.ascon_214 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_213.ascon_213 Ascon_config.conf)

let test_shift_tuples_215 () =
  Alcotest.(check testable_prog)
    "action: shift_tuples, id: 215, runner: Shift_tuples, "
    Ascon_215.ascon_215 (Usuba_lib.Shift_tuples.run runner
    Ascon_214.ascon_214 Ascon_config.conf)

let test_simplify_tuples_216 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 216, runner: Simplify_tuples, "
    Ascon_216.ascon_216 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_215.ascon_215 Ascon_config.conf)

let test_split_tuples_217 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 217, runner: Split_tuples, "
    Ascon_217.ascon_217 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_216.ascon_216 Ascon_config.conf)

let test_simplify_tuples_218 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 218, runner: Simplify_tuples, "
    Ascon_218.ascon_218 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_217.ascon_217 Ascon_config.conf)

let test_expand_parameters_219 () =
  Alcotest.(check testable_prog)
    "action: expand_parameters, id: 219, runner: Expand_parameters, "
    Ascon_219.ascon_219 (Usuba_lib.Expand_parameters.run runner
    Ascon_218.ascon_218 Ascon_config.conf)

let test_expand_array_220 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 220, runner: Expand_array, "
    Ascon_220.ascon_220 (Usuba_lib.Expand_array.run runner
    Ascon_219.ascon_219 Ascon_config.conf)

let test_unfold_unnest_221 () =
  Alcotest.(check testable_prog)
    "action: unfold_unnest, id: 221, runner: Unfold_unnest, "
    Ascon_221.ascon_221 (Usuba_lib.Unfold_unnest.run runner
    Ascon_220.ascon_220 Ascon_config.conf)

let test_expand_array_222 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 222, runner: Expand_array, "
    Ascon_222.ascon_222 (Usuba_lib.Expand_array.run runner
    Ascon_221.ascon_221 Ascon_config.conf)

let test_expand_permut_223 () =
  Alcotest.(check testable_prog)
    "action: expand_permut, id: 223, runner: Expand_permut, "
    Ascon_223.ascon_223 (Usuba_lib.Expand_permut.run runner
    Ascon_222.ascon_222 Ascon_config.conf)

let test_simplify_tuples_224 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 224, runner: Simplify_tuples, "
    Ascon_224.ascon_224 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_223.ascon_223 Ascon_config.conf)

let test_split_tuples_225 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 225, runner: Split_tuples, "
    Ascon_225.ascon_225 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_224.ascon_224 Ascon_config.conf)

let test_simplify_tuples_226 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 226, runner: Simplify_tuples, "
    Ascon_226.ascon_226 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_225.ascon_225 Ascon_config.conf)

let test_simplify_tuples_227 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 227, runner: Simplify_tuples, "
    Ascon_227.ascon_227 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_226.ascon_226 Ascon_config.conf)

let test_split_tuples_228 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 228, runner: Split_tuples, "
    Ascon_228.ascon_228 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_227.ascon_227 Ascon_config.conf)

let test_simplify_tuples_229 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 229, runner: Simplify_tuples, "
    Ascon_229.ascon_229 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_228.ascon_228 Ascon_config.conf)

let test_shift_tuples_230 () =
  Alcotest.(check testable_prog)
    "action: shift_tuples, id: 230, runner: Shift_tuples, "
    Ascon_230.ascon_230 (Usuba_lib.Shift_tuples.run runner
    Ascon_229.ascon_229 Ascon_config.conf)

let test_simplify_tuples_231 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 231, runner: Simplify_tuples, "
    Ascon_231.ascon_231 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_230.ascon_230 Ascon_config.conf)

let test_split_tuples_232 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 232, runner: Split_tuples, "
    Ascon_232.ascon_232 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_231.ascon_231 Ascon_config.conf)

let test_simplify_tuples_233 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 233, runner: Simplify_tuples, "
    Ascon_233.ascon_233 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_232.ascon_232 Ascon_config.conf)

let test_pre_schedule_234 () =
  Alcotest.(check testable_prog)
    "action: pre_schedule, id: 234, runner: Pre_schedule, "
    Ascon_234.ascon_234 (Usuba_lib.Pre_schedule.run runner
    Ascon_233.ascon_233 Ascon_config.conf)

let test_expand_array_235 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 235, runner: Expand_array, "
    Ascon_235.ascon_235 (Usuba_lib.Expand_array.run runner
    Ascon_234.ascon_234 Ascon_config.conf)

let test_unfold_unnest_236 () =
  Alcotest.(check testable_prog)
    "action: unfold_unnest, id: 236, runner: Unfold_unnest, "
    Ascon_236.ascon_236 (Usuba_lib.Unfold_unnest.run runner
    Ascon_235.ascon_235 Ascon_config.conf)

let test_expand_array_237 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 237, runner: Expand_array, "
    Ascon_237.ascon_237 (Usuba_lib.Expand_array.run runner
    Ascon_236.ascon_236 Ascon_config.conf)

let test_expand_permut_238 () =
  Alcotest.(check testable_prog)
    "action: expand_permut, id: 238, runner: Expand_permut, "
    Ascon_238.ascon_238 (Usuba_lib.Expand_permut.run runner
    Ascon_237.ascon_237 Ascon_config.conf)

let test_simplify_tuples_239 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 239, runner: Simplify_tuples, "
    Ascon_239.ascon_239 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_238.ascon_238 Ascon_config.conf)

let test_split_tuples_240 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 240, runner: Split_tuples, "
    Ascon_240.ascon_240 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_239.ascon_239 Ascon_config.conf)

let test_simplify_tuples_241 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 241, runner: Simplify_tuples, "
    Ascon_241.ascon_241 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_240.ascon_240 Ascon_config.conf)

let test_simplify_tuples_242 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 242, runner: Simplify_tuples, "
    Ascon_242.ascon_242 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_241.ascon_241 Ascon_config.conf)

let test_split_tuples_243 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 243, runner: Split_tuples, "
    Ascon_243.ascon_243 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_242.ascon_242 Ascon_config.conf)

let test_simplify_tuples_244 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 244, runner: Simplify_tuples, "
    Ascon_244.ascon_244 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_243.ascon_243 Ascon_config.conf)

let test_shift_tuples_245 () =
  Alcotest.(check testable_prog)
    "action: shift_tuples, id: 245, runner: Shift_tuples, "
    Ascon_245.ascon_245 (Usuba_lib.Shift_tuples.run runner
    Ascon_244.ascon_244 Ascon_config.conf)

let test_simplify_tuples_246 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 246, runner: Simplify_tuples, "
    Ascon_246.ascon_246 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_245.ascon_245 Ascon_config.conf)

let test_split_tuples_247 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 247, runner: Split_tuples, "
    Ascon_247.ascon_247 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_246.ascon_246 Ascon_config.conf)

let test_simplify_tuples_248 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 248, runner: Simplify_tuples, "
    Ascon_248.ascon_248 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_247.ascon_247 Ascon_config.conf)

let test_expand_parameters_249 () =
  Alcotest.(check testable_prog)
    "action: expand_parameters, id: 249, runner: Expand_parameters, "
    Ascon_249.ascon_249 (Usuba_lib.Expand_parameters.run runner
    Ascon_248.ascon_248 Ascon_config.conf)

let test_expand_array_250 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 250, runner: Expand_array, "
    Ascon_250.ascon_250 (Usuba_lib.Expand_array.run runner
    Ascon_249.ascon_249 Ascon_config.conf)

let test_unfold_unnest_251 () =
  Alcotest.(check testable_prog)
    "action: unfold_unnest, id: 251, runner: Unfold_unnest, "
    Ascon_251.ascon_251 (Usuba_lib.Unfold_unnest.run runner
    Ascon_250.ascon_250 Ascon_config.conf)

let test_expand_array_252 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 252, runner: Expand_array, "
    Ascon_252.ascon_252 (Usuba_lib.Expand_array.run runner
    Ascon_251.ascon_251 Ascon_config.conf)

let test_expand_permut_253 () =
  Alcotest.(check testable_prog)
    "action: expand_permut, id: 253, runner: Expand_permut, "
    Ascon_253.ascon_253 (Usuba_lib.Expand_permut.run runner
    Ascon_252.ascon_252 Ascon_config.conf)

let test_simplify_tuples_254 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 254, runner: Simplify_tuples, "
    Ascon_254.ascon_254 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_253.ascon_253 Ascon_config.conf)

let test_split_tuples_255 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 255, runner: Split_tuples, "
    Ascon_255.ascon_255 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_254.ascon_254 Ascon_config.conf)

let test_simplify_tuples_256 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 256, runner: Simplify_tuples, "
    Ascon_256.ascon_256 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_255.ascon_255 Ascon_config.conf)

let test_simplify_tuples_257 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 257, runner: Simplify_tuples, "
    Ascon_257.ascon_257 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_256.ascon_256 Ascon_config.conf)

let test_split_tuples_258 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 258, runner: Split_tuples, "
    Ascon_258.ascon_258 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_257.ascon_257 Ascon_config.conf)

let test_simplify_tuples_259 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 259, runner: Simplify_tuples, "
    Ascon_259.ascon_259 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_258.ascon_258 Ascon_config.conf)

let test_shift_tuples_260 () =
  Alcotest.(check testable_prog)
    "action: shift_tuples, id: 260, runner: Shift_tuples, "
    Ascon_260.ascon_260 (Usuba_lib.Shift_tuples.run runner
    Ascon_259.ascon_259 Ascon_config.conf)

let test_simplify_tuples_261 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 261, runner: Simplify_tuples, "
    Ascon_261.ascon_261 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_260.ascon_260 Ascon_config.conf)

let test_split_tuples_262 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 262, runner: Split_tuples, "
    Ascon_262.ascon_262 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_261.ascon_261 Ascon_config.conf)

let test_simplify_tuples_263 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 263, runner: Simplify_tuples, "
    Ascon_263.ascon_263 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_262.ascon_262 Ascon_config.conf)

let test_expand_parameters_264 () =
  Alcotest.(check testable_prog)
    "action: expand_parameters, id: 264, runner: Expand_parameters, "
    Ascon_264.ascon_264 (Usuba_lib.Expand_parameters.run runner
    Ascon_263.ascon_263 Ascon_config.conf)

let test_expand_array_265 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 265, runner: Expand_array, "
    Ascon_265.ascon_265 (Usuba_lib.Expand_array.run runner
    Ascon_264.ascon_264 Ascon_config.conf)

let test_unfold_unnest_266 () =
  Alcotest.(check testable_prog)
    "action: unfold_unnest, id: 266, runner: Unfold_unnest, "
    Ascon_266.ascon_266 (Usuba_lib.Unfold_unnest.run runner
    Ascon_265.ascon_265 Ascon_config.conf)

let test_expand_array_267 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 267, runner: Expand_array, "
    Ascon_267.ascon_267 (Usuba_lib.Expand_array.run runner
    Ascon_266.ascon_266 Ascon_config.conf)

let test_expand_permut_268 () =
  Alcotest.(check testable_prog)
    "action: expand_permut, id: 268, runner: Expand_permut, "
    Ascon_268.ascon_268 (Usuba_lib.Expand_permut.run runner
    Ascon_267.ascon_267 Ascon_config.conf)

let test_simplify_tuples_269 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 269, runner: Simplify_tuples, "
    Ascon_269.ascon_269 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_268.ascon_268 Ascon_config.conf)

let test_split_tuples_270 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 270, runner: Split_tuples, "
    Ascon_270.ascon_270 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_269.ascon_269 Ascon_config.conf)

let test_simplify_tuples_271 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 271, runner: Simplify_tuples, "
    Ascon_271.ascon_271 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_270.ascon_270 Ascon_config.conf)

let test_simplify_tuples_272 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 272, runner: Simplify_tuples, "
    Ascon_272.ascon_272 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_271.ascon_271 Ascon_config.conf)

let test_split_tuples_273 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 273, runner: Split_tuples, "
    Ascon_273.ascon_273 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_272.ascon_272 Ascon_config.conf)

let test_simplify_tuples_274 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 274, runner: Simplify_tuples, "
    Ascon_274.ascon_274 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_273.ascon_273 Ascon_config.conf)

let test_shift_tuples_275 () =
  Alcotest.(check testable_prog)
    "action: shift_tuples, id: 275, runner: Shift_tuples, "
    Ascon_275.ascon_275 (Usuba_lib.Shift_tuples.run runner
    Ascon_274.ascon_274 Ascon_config.conf)

let test_simplify_tuples_276 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 276, runner: Simplify_tuples, "
    Ascon_276.ascon_276 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_275.ascon_275 Ascon_config.conf)

let test_split_tuples_277 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 277, runner: Split_tuples, "
    Ascon_277.ascon_277 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_276.ascon_276 Ascon_config.conf)

let test_simplify_tuples_278 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 278, runner: Simplify_tuples, "
    Ascon_278.ascon_278 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_277.ascon_277 Ascon_config.conf)

let test_constant_folding_279 () =
  Alcotest.(check testable_prog)
    "action: constant_folding, id: 279, runner: Constant_folding, "
    Ascon_279.ascon_279 (Usuba_lib.Constant_folding.run runner
    Ascon_278.ascon_278 Ascon_config.conf)

let test_simplify_tuples_281 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 281, runner: Simplify_tuples, "
    Ascon_281.ascon_281 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_280.ascon_280 Ascon_config.conf)

let test_split_tuples_282 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 282, runner: Split_tuples, "
    Ascon_282.ascon_282 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_281.ascon_281 Ascon_config.conf)

let test_simplify_tuples_283 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 283, runner: Simplify_tuples, "
    Ascon_283.ascon_283 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_282.ascon_282 Ascon_config.conf)

let test_copy_propagation_284 () =
  Alcotest.(check testable_prog)
    "action: copy_propagation, id: 284, runner: Copy_propagation, "
    Ascon_284.ascon_284 (Usuba_lib.Copy_propagation.run runner
    Ascon_283.ascon_283 Ascon_config.conf)

let test_simplify_tuples_285 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 285, runner: Simplify_tuples, "
    Ascon_285.ascon_285 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_284.ascon_284 Ascon_config.conf)

let test_split_tuples_286 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 286, runner: Split_tuples, "
    Ascon_286.ascon_286 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_285.ascon_285 Ascon_config.conf)

let test_simplify_tuples_287 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 287, runner: Simplify_tuples, "
    Ascon_287.ascon_287 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_286.ascon_286 Ascon_config.conf)

let test_inline_288 () =
  Alcotest.(check testable_prog) "action: inline, id: 288, runner: Inline, "
    Ascon_288.ascon_288 (Usuba_lib.Inline.run_simple runner
    Ascon_287.ascon_287 Ascon_config.conf)

let test_constant_folding_289 () =
  Alcotest.(check testable_prog)
    "action: constant_folding, id: 289, runner: Constant_folding, "
    Ascon_289.ascon_289 (Usuba_lib.Constant_folding.run runner
    Ascon_288.ascon_288 Ascon_config.conf)

let test_simplify_tuples_291 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 291, runner: Simplify_tuples, "
    Ascon_291.ascon_291 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_290.ascon_290 Ascon_config.conf)

let test_split_tuples_292 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 292, runner: Split_tuples, "
    Ascon_292.ascon_292 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_291.ascon_291 Ascon_config.conf)

let test_simplify_tuples_293 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 293, runner: Simplify_tuples, "
    Ascon_293.ascon_293 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_292.ascon_292 Ascon_config.conf)

let test_copy_propagation_294 () =
  Alcotest.(check testable_prog)
    "action: copy_propagation, id: 294, runner: Copy_propagation, "
    Ascon_294.ascon_294 (Usuba_lib.Copy_propagation.run runner
    Ascon_293.ascon_293 Ascon_config.conf)

let test_simplify_tuples_295 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 295, runner: Simplify_tuples, "
    Ascon_295.ascon_295 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_294.ascon_294 Ascon_config.conf)

let test_split_tuples_296 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 296, runner: Split_tuples, "
    Ascon_296.ascon_296 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_295.ascon_295 Ascon_config.conf)

let test_simplify_tuples_297 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 297, runner: Simplify_tuples, "
    Ascon_297.ascon_297 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_296.ascon_296 Ascon_config.conf)

let test_pre_schedule_298 () =
  Alcotest.(check testable_prog)
    "action: pre_schedule, id: 298, runner: Pre_schedule, "
    Ascon_298.ascon_298 (Usuba_lib.Pre_schedule.run runner
    Ascon_297.ascon_297 Ascon_config.conf)

let test_unfold_unnest_299 () =
  Alcotest.(check testable_prog)
    "action: unfold_unnest, id: 299, runner: Unfold_unnest, "
    Ascon_299.ascon_299 (Usuba_lib.Unfold_unnest.run runner
    Ascon_298.ascon_298 Ascon_config.conf)

let test_expand_array_300 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 300, runner: Expand_array, "
    Ascon_300.ascon_300 (Usuba_lib.Expand_array.run runner
    Ascon_299.ascon_299 Ascon_config.conf)

let test_expand_permut_301 () =
  Alcotest.(check testable_prog)
    "action: expand_permut, id: 301, runner: Expand_permut, "
    Ascon_301.ascon_301 (Usuba_lib.Expand_permut.run runner
    Ascon_300.ascon_300 Ascon_config.conf)

let test_simplify_tuples_302 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 302, runner: Simplify_tuples, "
    Ascon_302.ascon_302 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_301.ascon_301 Ascon_config.conf)

let test_split_tuples_303 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 303, runner: Split_tuples, "
    Ascon_303.ascon_303 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_302.ascon_302 Ascon_config.conf)

let test_simplify_tuples_304 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 304, runner: Simplify_tuples, "
    Ascon_304.ascon_304 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_303.ascon_303 Ascon_config.conf)

let test_simplify_tuples_305 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 305, runner: Simplify_tuples, "
    Ascon_305.ascon_305 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_304.ascon_304 Ascon_config.conf)

let test_split_tuples_306 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 306, runner: Split_tuples, "
    Ascon_306.ascon_306 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_305.ascon_305 Ascon_config.conf)

let test_simplify_tuples_307 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 307, runner: Simplify_tuples, "
    Ascon_307.ascon_307 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_306.ascon_306 Ascon_config.conf)

let test_shift_tuples_308 () =
  Alcotest.(check testable_prog)
    "action: shift_tuples, id: 308, runner: Shift_tuples, "
    Ascon_308.ascon_308 (Usuba_lib.Shift_tuples.run runner
    Ascon_307.ascon_307 Ascon_config.conf)

let test_simplify_tuples_309 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 309, runner: Simplify_tuples, "
    Ascon_309.ascon_309 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_308.ascon_308 Ascon_config.conf)

let test_split_tuples_310 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 310, runner: Split_tuples, "
    Ascon_310.ascon_310 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_309.ascon_309 Ascon_config.conf)

let test_simplify_tuples_311 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 311, runner: Simplify_tuples, "
    Ascon_311.ascon_311 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_310.ascon_310 Ascon_config.conf)

let test_interleave_312 () =
  Alcotest.(check testable_prog)
    "action: interleave, id: 312, runner: Interleave, " Ascon_312.ascon_312
    (Usuba_lib.Interleave.run runner Ascon_311.ascon_311 Ascon_config.conf)

let test_constant_folding_313 () =
  Alcotest.(check testable_prog)
    "action: constant_folding, id: 313, runner: Constant_folding, "
    Ascon_313.ascon_313 (Usuba_lib.Constant_folding.run runner
    Ascon_312.ascon_312 Ascon_config.conf)

let test_simplify_tuples_315 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 315, runner: Simplify_tuples, "
    Ascon_315.ascon_315 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_314.ascon_314 Ascon_config.conf)

let test_split_tuples_316 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 316, runner: Split_tuples, "
    Ascon_316.ascon_316 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_315.ascon_315 Ascon_config.conf)

let test_simplify_tuples_317 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 317, runner: Simplify_tuples, "
    Ascon_317.ascon_317 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_316.ascon_316 Ascon_config.conf)

let test_copy_propagation_318 () =
  Alcotest.(check testable_prog)
    "action: copy_propagation, id: 318, runner: Copy_propagation, "
    Ascon_318.ascon_318 (Usuba_lib.Copy_propagation.run runner
    Ascon_317.ascon_317 Ascon_config.conf)

let test_simplify_tuples_319 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 319, runner: Simplify_tuples, "
    Ascon_319.ascon_319 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_318.ascon_318 Ascon_config.conf)

let test_split_tuples_320 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 320, runner: Split_tuples, "
    Ascon_320.ascon_320 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_319.ascon_319 Ascon_config.conf)

let test_simplify_tuples_321 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 321, runner: Simplify_tuples, "
    Ascon_321.ascon_321 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_320.ascon_320 Ascon_config.conf)

let test_fuse_loop_general_322 () =
  Alcotest.(check testable_prog)
    "action: fuse_loop_general, id: 322, runner: Fuse_loop_general, "
    Ascon_322.ascon_322 (Usuba_lib.Fuse_loop_general.run runner
    Ascon_321.ascon_321 Ascon_config.conf)

let test_constant_folding_323 () =
  Alcotest.(check testable_prog)
    "action: constant_folding, id: 323, runner: Constant_folding, "
    Ascon_323.ascon_323 (Usuba_lib.Constant_folding.run runner
    Ascon_322.ascon_322 Ascon_config.conf)

let test_simplify_tuples_325 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 325, runner: Simplify_tuples, "
    Ascon_325.ascon_325 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_324.ascon_324 Ascon_config.conf)

let test_split_tuples_326 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 326, runner: Split_tuples, "
    Ascon_326.ascon_326 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_325.ascon_325 Ascon_config.conf)

let test_simplify_tuples_327 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 327, runner: Simplify_tuples, "
    Ascon_327.ascon_327 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_326.ascon_326 Ascon_config.conf)

let test_copy_propagation_328 () =
  Alcotest.(check testable_prog)
    "action: copy_propagation, id: 328, runner: Copy_propagation, "
    Ascon_328.ascon_328 (Usuba_lib.Copy_propagation.run runner
    Ascon_327.ascon_327 Ascon_config.conf)

let test_simplify_tuples_329 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 329, runner: Simplify_tuples, "
    Ascon_329.ascon_329 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_328.ascon_328 Ascon_config.conf)

let test_split_tuples_330 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 330, runner: Split_tuples, "
    Ascon_330.ascon_330 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_329.ascon_329 Ascon_config.conf)

let test_simplify_tuples_331 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 331, runner: Simplify_tuples, "
    Ascon_331.ascon_331 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_330.ascon_330 Ascon_config.conf)

let test_scheduler_332 () =
  Alcotest.(check testable_prog)
    "action: scheduler, id: 332, runner: Scheduler, " Ascon_332.ascon_332
    (Usuba_lib.Scheduler.run runner Ascon_331.ascon_331 Ascon_config.conf)

let test_clean_333 () =
  Alcotest.(check testable_prog) "action: clean, id: 333, runner: Clean, "
    Ascon_333.ascon_333 (Usuba_lib.Clean.run runner Ascon_332.ascon_332
    Ascon_config.conf)

let test_remove_dead_code_334 () =
  Alcotest.(check testable_prog)
    "action: remove_dead_code, id: 334, runner: Remove_dead_code, "
    Ascon_334.ascon_334 (Usuba_lib.Remove_dead_code.run runner
    Ascon_333.ascon_333 Ascon_config.conf)

let test_unfold_unnest_335 () =
  Alcotest.(check testable_prog)
    "action: unfold_unnest, id: 335, runner: Unfold_unnest, "
    Ascon_335.ascon_335 (Usuba_lib.Unfold_unnest.run runner
    Ascon_334.ascon_334 Ascon_config.conf)

let test_expand_array_336 () =
  Alcotest.(check testable_prog)
    "action: expand_array, id: 336, runner: Expand_array, "
    Ascon_336.ascon_336 (Usuba_lib.Expand_array.run runner
    Ascon_335.ascon_335 Ascon_config.conf)

let test_expand_permut_337 () =
  Alcotest.(check testable_prog)
    "action: expand_permut, id: 337, runner: Expand_permut, "
    Ascon_337.ascon_337 (Usuba_lib.Expand_permut.run runner
    Ascon_336.ascon_336 Ascon_config.conf)

let test_simplify_tuples_338 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 338, runner: Simplify_tuples, "
    Ascon_338.ascon_338 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_337.ascon_337 Ascon_config.conf)

let test_split_tuples_339 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 339, runner: Split_tuples, "
    Ascon_339.ascon_339 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_338.ascon_338 Ascon_config.conf)

let test_simplify_tuples_340 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 340, runner: Simplify_tuples, "
    Ascon_340.ascon_340 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_339.ascon_339 Ascon_config.conf)

let test_simplify_tuples_341 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 341, runner: Simplify_tuples, "
    Ascon_341.ascon_341 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_340.ascon_340 Ascon_config.conf)

let test_split_tuples_342 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 342, runner: Split_tuples, "
    Ascon_342.ascon_342 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_341.ascon_341 Ascon_config.conf)

let test_simplify_tuples_343 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 343, runner: Simplify_tuples, "
    Ascon_343.ascon_343 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_342.ascon_342 Ascon_config.conf)

let test_shift_tuples_344 () =
  Alcotest.(check testable_prog)
    "action: shift_tuples, id: 344, runner: Shift_tuples, "
    Ascon_344.ascon_344 (Usuba_lib.Shift_tuples.run runner
    Ascon_343.ascon_343 Ascon_config.conf)

let test_simplify_tuples_345 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 345, runner: Simplify_tuples, "
    Ascon_345.ascon_345 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_344.ascon_344 Ascon_config.conf)

let test_split_tuples_346 () =
  Alcotest.(check testable_prog)
    "action: split_tuples, id: 346, runner: Split_tuples, "
    Ascon_346.ascon_346 (Usuba_lib.Norm_tuples.Split_tuples.run runner
    Ascon_345.ascon_345 Ascon_config.conf)

let test_simplify_tuples_347 () =
  Alcotest.(check testable_prog)
    "action: simplify_tuples, id: 347, runner: Simplify_tuples, "
    Ascon_347.ascon_347 (Usuba_lib.Norm_tuples.Simplify_tuples.run runner
    Ascon_346.ascon_346 Ascon_config.conf)

let test_fuse_loops_348 () =
  Alcotest.(check testable_prog)
    "action: fuse_loops, id: 348, runner: Fuse_loops, " Ascon_348.ascon_348
    (Usuba_lib.Fuse_loops.run runner Ascon_347.ascon_347 Ascon_config.conf)

let test_linearize_arrays_349 () =
  Alcotest.(check testable_prog)
    "action: linearize_arrays, id: 349, runner: Linearize_arrays, "
    Ascon_349.ascon_349 (Usuba_lib.Linearize_arrays.run runner
    Ascon_348.ascon_348 Ascon_config.conf)

let suite =
  [
    Alcotest.test_case "rename_001" `Quick test_rename_001;
    Alcotest.test_case "expand_multiples_002" `Quick test_expand_multiples_002;
    Alcotest.test_case "convert_tables_003" `Quick test_convert_tables_003;
    Alcotest.test_case "expand_array_004" `Quick test_expand_array_004;
    Alcotest.test_case "remove_sync_005" `Quick test_remove_sync_005;
    Alcotest.test_case "init_scheduler_006" `Quick test_init_scheduler_006;
    Alcotest.test_case "expand_array_007" `Quick test_expand_array_007;
    Alcotest.test_case "unfold_unnest_008" `Quick test_unfold_unnest_008;
    Alcotest.test_case "expand_array_009" `Quick test_expand_array_009;
    Alcotest.test_case "expand_permut_010" `Quick test_expand_permut_010;
    Alcotest.test_case "simplify_tuples_011" `Quick test_simplify_tuples_011;
    Alcotest.test_case "split_tuples_012" `Quick test_split_tuples_012;
    Alcotest.test_case "simplify_tuples_013" `Quick test_simplify_tuples_013;
    Alcotest.test_case "simplify_tuples_014" `Quick test_simplify_tuples_014;
    Alcotest.test_case "split_tuples_015" `Quick test_split_tuples_015;
    Alcotest.test_case "simplify_tuples_016" `Quick test_simplify_tuples_016;
    Alcotest.test_case "shift_tuples_017" `Quick test_shift_tuples_017;
    Alcotest.test_case "simplify_tuples_018" `Quick test_simplify_tuples_018;
    Alcotest.test_case "split_tuples_019" `Quick test_split_tuples_019;
    Alcotest.test_case "simplify_tuples_020" `Quick test_simplify_tuples_020;
    Alcotest.test_case "expand_parameters_021" `Quick test_expand_parameters_021;
    Alcotest.test_case "expand_array_022" `Quick test_expand_array_022;
    Alcotest.test_case "unfold_unnest_023" `Quick test_unfold_unnest_023;
    Alcotest.test_case "expand_array_024" `Quick test_expand_array_024;
    Alcotest.test_case "expand_permut_025" `Quick test_expand_permut_025;
    Alcotest.test_case "simplify_tuples_026" `Quick test_simplify_tuples_026;
    Alcotest.test_case "split_tuples_027" `Quick test_split_tuples_027;
    Alcotest.test_case "simplify_tuples_028" `Quick test_simplify_tuples_028;
    Alcotest.test_case "simplify_tuples_029" `Quick test_simplify_tuples_029;
    Alcotest.test_case "split_tuples_030" `Quick test_split_tuples_030;
    Alcotest.test_case "simplify_tuples_031" `Quick test_simplify_tuples_031;
    Alcotest.test_case "shift_tuples_032" `Quick test_shift_tuples_032;
    Alcotest.test_case "simplify_tuples_033" `Quick test_simplify_tuples_033;
    Alcotest.test_case "split_tuples_034" `Quick test_split_tuples_034;
    Alcotest.test_case "simplify_tuples_035" `Quick test_simplify_tuples_035;
    Alcotest.test_case "expand_parameters_036" `Quick test_expand_parameters_036;
    Alcotest.test_case "expand_array_037" `Quick test_expand_array_037;
    Alcotest.test_case "unfold_unnest_038" `Quick test_unfold_unnest_038;
    Alcotest.test_case "expand_array_039" `Quick test_expand_array_039;
    Alcotest.test_case "expand_permut_040" `Quick test_expand_permut_040;
    Alcotest.test_case "simplify_tuples_041" `Quick test_simplify_tuples_041;
    Alcotest.test_case "split_tuples_042" `Quick test_split_tuples_042;
    Alcotest.test_case "simplify_tuples_043" `Quick test_simplify_tuples_043;
    Alcotest.test_case "simplify_tuples_044" `Quick test_simplify_tuples_044;
    Alcotest.test_case "split_tuples_045" `Quick test_split_tuples_045;
    Alcotest.test_case "simplify_tuples_046" `Quick test_simplify_tuples_046;
    Alcotest.test_case "shift_tuples_047" `Quick test_shift_tuples_047;
    Alcotest.test_case "simplify_tuples_048" `Quick test_simplify_tuples_048;
    Alcotest.test_case "split_tuples_049" `Quick test_split_tuples_049;
    Alcotest.test_case "simplify_tuples_050" `Quick test_simplify_tuples_050;
    Alcotest.test_case "monomorphize_051" `Quick test_monomorphize_051;
    Alcotest.test_case "expand_array_052" `Quick test_expand_array_052;
    Alcotest.test_case "unfold_unnest_053" `Quick test_unfold_unnest_053;
    Alcotest.test_case "expand_array_054" `Quick test_expand_array_054;
    Alcotest.test_case "expand_permut_055" `Quick test_expand_permut_055;
    Alcotest.test_case "simplify_tuples_056" `Quick test_simplify_tuples_056;
    Alcotest.test_case "split_tuples_057" `Quick test_split_tuples_057;
    Alcotest.test_case "simplify_tuples_058" `Quick test_simplify_tuples_058;
    Alcotest.test_case "simplify_tuples_059" `Quick test_simplify_tuples_059;
    Alcotest.test_case "split_tuples_060" `Quick test_split_tuples_060;
    Alcotest.test_case "simplify_tuples_061" `Quick test_simplify_tuples_061;
    Alcotest.test_case "shift_tuples_062" `Quick test_shift_tuples_062;
    Alcotest.test_case "simplify_tuples_063" `Quick test_simplify_tuples_063;
    Alcotest.test_case "split_tuples_064" `Quick test_split_tuples_064;
    Alcotest.test_case "simplify_tuples_065" `Quick test_simplify_tuples_065;
    Alcotest.test_case "expand_parameters_066" `Quick test_expand_parameters_066;
    Alcotest.test_case "expand_array_067" `Quick test_expand_array_067;
    Alcotest.test_case "unfold_unnest_068" `Quick test_unfold_unnest_068;
    Alcotest.test_case "expand_array_069" `Quick test_expand_array_069;
    Alcotest.test_case "expand_permut_070" `Quick test_expand_permut_070;
    Alcotest.test_case "simplify_tuples_071" `Quick test_simplify_tuples_071;
    Alcotest.test_case "split_tuples_072" `Quick test_split_tuples_072;
    Alcotest.test_case "simplify_tuples_073" `Quick test_simplify_tuples_073;
    Alcotest.test_case "simplify_tuples_074" `Quick test_simplify_tuples_074;
    Alcotest.test_case "split_tuples_075" `Quick test_split_tuples_075;
    Alcotest.test_case "simplify_tuples_076" `Quick test_simplify_tuples_076;
    Alcotest.test_case "shift_tuples_077" `Quick test_shift_tuples_077;
    Alcotest.test_case "simplify_tuples_078" `Quick test_simplify_tuples_078;
    Alcotest.test_case "split_tuples_079" `Quick test_split_tuples_079;
    Alcotest.test_case "simplify_tuples_080" `Quick test_simplify_tuples_080;
    Alcotest.test_case "expand_parameters_081" `Quick test_expand_parameters_081;
    Alcotest.test_case "expand_array_082" `Quick test_expand_array_082;
    Alcotest.test_case "unfold_unnest_083" `Quick test_unfold_unnest_083;
    Alcotest.test_case "expand_array_084" `Quick test_expand_array_084;
    Alcotest.test_case "expand_permut_085" `Quick test_expand_permut_085;
    Alcotest.test_case "simplify_tuples_086" `Quick test_simplify_tuples_086;
    Alcotest.test_case "split_tuples_087" `Quick test_split_tuples_087;
    Alcotest.test_case "simplify_tuples_088" `Quick test_simplify_tuples_088;
    Alcotest.test_case "simplify_tuples_089" `Quick test_simplify_tuples_089;
    Alcotest.test_case "split_tuples_090" `Quick test_split_tuples_090;
    Alcotest.test_case "simplify_tuples_091" `Quick test_simplify_tuples_091;
    Alcotest.test_case "shift_tuples_092" `Quick test_shift_tuples_092;
    Alcotest.test_case "simplify_tuples_093" `Quick test_simplify_tuples_093;
    Alcotest.test_case "split_tuples_094" `Quick test_split_tuples_094;
    Alcotest.test_case "simplify_tuples_095" `Quick test_simplify_tuples_095;
    Alcotest.test_case "init_scheduler_096" `Quick test_init_scheduler_096;
    Alcotest.test_case "constant_folding_097" `Quick test_constant_folding_097;
    Alcotest.test_case "simplify_tuples_099" `Quick test_simplify_tuples_099;
    Alcotest.test_case "split_tuples_100" `Quick test_split_tuples_100;
    Alcotest.test_case "simplify_tuples_101" `Quick test_simplify_tuples_101;
    Alcotest.test_case "copy_propagation_102" `Quick test_copy_propagation_102;
    Alcotest.test_case "simplify_tuples_103" `Quick test_simplify_tuples_103;
    Alcotest.test_case "split_tuples_104" `Quick test_split_tuples_104;
    Alcotest.test_case "simplify_tuples_105" `Quick test_simplify_tuples_105;
    Alcotest.test_case "constant_folding_106" `Quick test_constant_folding_106;
    Alcotest.test_case "simplify_tuples_108" `Quick test_simplify_tuples_108;
    Alcotest.test_case "split_tuples_109" `Quick test_split_tuples_109;
    Alcotest.test_case "simplify_tuples_110" `Quick test_simplify_tuples_110;
    Alcotest.test_case "copy_propagation_111" `Quick test_copy_propagation_111;
    Alcotest.test_case "simplify_tuples_112" `Quick test_simplify_tuples_112;
    Alcotest.test_case "split_tuples_113" `Quick test_split_tuples_113;
    Alcotest.test_case "simplify_tuples_114" `Quick test_simplify_tuples_114;
    Alcotest.test_case "pre_schedule_115" `Quick test_pre_schedule_115;
    Alcotest.test_case "expand_array_116" `Quick test_expand_array_116;
    Alcotest.test_case "unfold_unnest_117" `Quick test_unfold_unnest_117;
    Alcotest.test_case "expand_array_118" `Quick test_expand_array_118;
    Alcotest.test_case "expand_permut_119" `Quick test_expand_permut_119;
    Alcotest.test_case "simplify_tuples_120" `Quick test_simplify_tuples_120;
    Alcotest.test_case "split_tuples_121" `Quick test_split_tuples_121;
    Alcotest.test_case "simplify_tuples_122" `Quick test_simplify_tuples_122;
    Alcotest.test_case "simplify_tuples_123" `Quick test_simplify_tuples_123;
    Alcotest.test_case "split_tuples_124" `Quick test_split_tuples_124;
    Alcotest.test_case "simplify_tuples_125" `Quick test_simplify_tuples_125;
    Alcotest.test_case "shift_tuples_126" `Quick test_shift_tuples_126;
    Alcotest.test_case "simplify_tuples_127" `Quick test_simplify_tuples_127;
    Alcotest.test_case "split_tuples_128" `Quick test_split_tuples_128;
    Alcotest.test_case "simplify_tuples_129" `Quick test_simplify_tuples_129;
    Alcotest.test_case "expand_parameters_130" `Quick test_expand_parameters_130;
    Alcotest.test_case "expand_array_131" `Quick test_expand_array_131;
    Alcotest.test_case "unfold_unnest_132" `Quick test_unfold_unnest_132;
    Alcotest.test_case "expand_array_133" `Quick test_expand_array_133;
    Alcotest.test_case "expand_permut_134" `Quick test_expand_permut_134;
    Alcotest.test_case "simplify_tuples_135" `Quick test_simplify_tuples_135;
    Alcotest.test_case "split_tuples_136" `Quick test_split_tuples_136;
    Alcotest.test_case "simplify_tuples_137" `Quick test_simplify_tuples_137;
    Alcotest.test_case "simplify_tuples_138" `Quick test_simplify_tuples_138;
    Alcotest.test_case "split_tuples_139" `Quick test_split_tuples_139;
    Alcotest.test_case "simplify_tuples_140" `Quick test_simplify_tuples_140;
    Alcotest.test_case "shift_tuples_141" `Quick test_shift_tuples_141;
    Alcotest.test_case "simplify_tuples_142" `Quick test_simplify_tuples_142;
    Alcotest.test_case "split_tuples_143" `Quick test_split_tuples_143;
    Alcotest.test_case "simplify_tuples_144" `Quick test_simplify_tuples_144;
    Alcotest.test_case "expand_parameters_145" `Quick test_expand_parameters_145;
    Alcotest.test_case "expand_array_146" `Quick test_expand_array_146;
    Alcotest.test_case "unfold_unnest_147" `Quick test_unfold_unnest_147;
    Alcotest.test_case "expand_array_148" `Quick test_expand_array_148;
    Alcotest.test_case "expand_permut_149" `Quick test_expand_permut_149;
    Alcotest.test_case "simplify_tuples_150" `Quick test_simplify_tuples_150;
    Alcotest.test_case "split_tuples_151" `Quick test_split_tuples_151;
    Alcotest.test_case "simplify_tuples_152" `Quick test_simplify_tuples_152;
    Alcotest.test_case "simplify_tuples_153" `Quick test_simplify_tuples_153;
    Alcotest.test_case "split_tuples_154" `Quick test_split_tuples_154;
    Alcotest.test_case "simplify_tuples_155" `Quick test_simplify_tuples_155;
    Alcotest.test_case "shift_tuples_156" `Quick test_shift_tuples_156;
    Alcotest.test_case "simplify_tuples_157" `Quick test_simplify_tuples_157;
    Alcotest.test_case "split_tuples_158" `Quick test_split_tuples_158;
    Alcotest.test_case "simplify_tuples_159" `Quick test_simplify_tuples_159;
    Alcotest.test_case "constant_folding_160" `Quick test_constant_folding_160;
    Alcotest.test_case "simplify_tuples_162" `Quick test_simplify_tuples_162;
    Alcotest.test_case "split_tuples_163" `Quick test_split_tuples_163;
    Alcotest.test_case "simplify_tuples_164" `Quick test_simplify_tuples_164;
    Alcotest.test_case "copy_propagation_165" `Quick test_copy_propagation_165;
    Alcotest.test_case "simplify_tuples_166" `Quick test_simplify_tuples_166;
    Alcotest.test_case "split_tuples_167" `Quick test_split_tuples_167;
    Alcotest.test_case "simplify_tuples_168" `Quick test_simplify_tuples_168;
    Alcotest.test_case "constant_folding_170" `Quick test_constant_folding_170;
    Alcotest.test_case "simplify_tuples_172" `Quick test_simplify_tuples_172;
    Alcotest.test_case "split_tuples_173" `Quick test_split_tuples_173;
    Alcotest.test_case "simplify_tuples_174" `Quick test_simplify_tuples_174;
    Alcotest.test_case "copy_propagation_175" `Quick test_copy_propagation_175;
    Alcotest.test_case "simplify_tuples_176" `Quick test_simplify_tuples_176;
    Alcotest.test_case "split_tuples_177" `Quick test_split_tuples_177;
    Alcotest.test_case "simplify_tuples_178" `Quick test_simplify_tuples_178;
    Alcotest.test_case "constant_folding_180" `Quick test_constant_folding_180;
    Alcotest.test_case "simplify_tuples_182" `Quick test_simplify_tuples_182;
    Alcotest.test_case "split_tuples_183" `Quick test_split_tuples_183;
    Alcotest.test_case "simplify_tuples_184" `Quick test_simplify_tuples_184;
    Alcotest.test_case "copy_propagation_185" `Quick test_copy_propagation_185;
    Alcotest.test_case "simplify_tuples_186" `Quick test_simplify_tuples_186;
    Alcotest.test_case "split_tuples_187" `Quick test_split_tuples_187;
    Alcotest.test_case "simplify_tuples_188" `Quick test_simplify_tuples_188;
    Alcotest.test_case "inlineHpre_189" `Quick test_inlineHpre_189;
    Alcotest.test_case "expand_array_190" `Quick test_expand_array_190;
    Alcotest.test_case "unfold_unnest_191" `Quick test_unfold_unnest_191;
    Alcotest.test_case "expand_array_192" `Quick test_expand_array_192;
    Alcotest.test_case "expand_permut_193" `Quick test_expand_permut_193;
    Alcotest.test_case "simplify_tuples_194" `Quick test_simplify_tuples_194;
    Alcotest.test_case "split_tuples_195" `Quick test_split_tuples_195;
    Alcotest.test_case "simplify_tuples_196" `Quick test_simplify_tuples_196;
    Alcotest.test_case "simplify_tuples_197" `Quick test_simplify_tuples_197;
    Alcotest.test_case "split_tuples_198" `Quick test_split_tuples_198;
    Alcotest.test_case "simplify_tuples_199" `Quick test_simplify_tuples_199;
    Alcotest.test_case "shift_tuples_200" `Quick test_shift_tuples_200;
    Alcotest.test_case "simplify_tuples_201" `Quick test_simplify_tuples_201;
    Alcotest.test_case "split_tuples_202" `Quick test_split_tuples_202;
    Alcotest.test_case "simplify_tuples_203" `Quick test_simplify_tuples_203;
    Alcotest.test_case "expand_parameters_204" `Quick test_expand_parameters_204;
    Alcotest.test_case "expand_array_205" `Quick test_expand_array_205;
    Alcotest.test_case "unfold_unnest_206" `Quick test_unfold_unnest_206;
    Alcotest.test_case "expand_array_207" `Quick test_expand_array_207;
    Alcotest.test_case "expand_permut_208" `Quick test_expand_permut_208;
    Alcotest.test_case "simplify_tuples_209" `Quick test_simplify_tuples_209;
    Alcotest.test_case "split_tuples_210" `Quick test_split_tuples_210;
    Alcotest.test_case "simplify_tuples_211" `Quick test_simplify_tuples_211;
    Alcotest.test_case "simplify_tuples_212" `Quick test_simplify_tuples_212;
    Alcotest.test_case "split_tuples_213" `Quick test_split_tuples_213;
    Alcotest.test_case "simplify_tuples_214" `Quick test_simplify_tuples_214;
    Alcotest.test_case "shift_tuples_215" `Quick test_shift_tuples_215;
    Alcotest.test_case "simplify_tuples_216" `Quick test_simplify_tuples_216;
    Alcotest.test_case "split_tuples_217" `Quick test_split_tuples_217;
    Alcotest.test_case "simplify_tuples_218" `Quick test_simplify_tuples_218;
    Alcotest.test_case "expand_parameters_219" `Quick test_expand_parameters_219;
    Alcotest.test_case "expand_array_220" `Quick test_expand_array_220;
    Alcotest.test_case "unfold_unnest_221" `Quick test_unfold_unnest_221;
    Alcotest.test_case "expand_array_222" `Quick test_expand_array_222;
    Alcotest.test_case "expand_permut_223" `Quick test_expand_permut_223;
    Alcotest.test_case "simplify_tuples_224" `Quick test_simplify_tuples_224;
    Alcotest.test_case "split_tuples_225" `Quick test_split_tuples_225;
    Alcotest.test_case "simplify_tuples_226" `Quick test_simplify_tuples_226;
    Alcotest.test_case "simplify_tuples_227" `Quick test_simplify_tuples_227;
    Alcotest.test_case "split_tuples_228" `Quick test_split_tuples_228;
    Alcotest.test_case "simplify_tuples_229" `Quick test_simplify_tuples_229;
    Alcotest.test_case "shift_tuples_230" `Quick test_shift_tuples_230;
    Alcotest.test_case "simplify_tuples_231" `Quick test_simplify_tuples_231;
    Alcotest.test_case "split_tuples_232" `Quick test_split_tuples_232;
    Alcotest.test_case "simplify_tuples_233" `Quick test_simplify_tuples_233;
    Alcotest.test_case "pre_schedule_234" `Quick test_pre_schedule_234;
    Alcotest.test_case "expand_array_235" `Quick test_expand_array_235;
    Alcotest.test_case "unfold_unnest_236" `Quick test_unfold_unnest_236;
    Alcotest.test_case "expand_array_237" `Quick test_expand_array_237;
    Alcotest.test_case "expand_permut_238" `Quick test_expand_permut_238;
    Alcotest.test_case "simplify_tuples_239" `Quick test_simplify_tuples_239;
    Alcotest.test_case "split_tuples_240" `Quick test_split_tuples_240;
    Alcotest.test_case "simplify_tuples_241" `Quick test_simplify_tuples_241;
    Alcotest.test_case "simplify_tuples_242" `Quick test_simplify_tuples_242;
    Alcotest.test_case "split_tuples_243" `Quick test_split_tuples_243;
    Alcotest.test_case "simplify_tuples_244" `Quick test_simplify_tuples_244;
    Alcotest.test_case "shift_tuples_245" `Quick test_shift_tuples_245;
    Alcotest.test_case "simplify_tuples_246" `Quick test_simplify_tuples_246;
    Alcotest.test_case "split_tuples_247" `Quick test_split_tuples_247;
    Alcotest.test_case "simplify_tuples_248" `Quick test_simplify_tuples_248;
    Alcotest.test_case "expand_parameters_249" `Quick test_expand_parameters_249;
    Alcotest.test_case "expand_array_250" `Quick test_expand_array_250;
    Alcotest.test_case "unfold_unnest_251" `Quick test_unfold_unnest_251;
    Alcotest.test_case "expand_array_252" `Quick test_expand_array_252;
    Alcotest.test_case "expand_permut_253" `Quick test_expand_permut_253;
    Alcotest.test_case "simplify_tuples_254" `Quick test_simplify_tuples_254;
    Alcotest.test_case "split_tuples_255" `Quick test_split_tuples_255;
    Alcotest.test_case "simplify_tuples_256" `Quick test_simplify_tuples_256;
    Alcotest.test_case "simplify_tuples_257" `Quick test_simplify_tuples_257;
    Alcotest.test_case "split_tuples_258" `Quick test_split_tuples_258;
    Alcotest.test_case "simplify_tuples_259" `Quick test_simplify_tuples_259;
    Alcotest.test_case "shift_tuples_260" `Quick test_shift_tuples_260;
    Alcotest.test_case "simplify_tuples_261" `Quick test_simplify_tuples_261;
    Alcotest.test_case "split_tuples_262" `Quick test_split_tuples_262;
    Alcotest.test_case "simplify_tuples_263" `Quick test_simplify_tuples_263;
    Alcotest.test_case "expand_parameters_264" `Quick test_expand_parameters_264;
    Alcotest.test_case "expand_array_265" `Quick test_expand_array_265;
    Alcotest.test_case "unfold_unnest_266" `Quick test_unfold_unnest_266;
    Alcotest.test_case "expand_array_267" `Quick test_expand_array_267;
    Alcotest.test_case "expand_permut_268" `Quick test_expand_permut_268;
    Alcotest.test_case "simplify_tuples_269" `Quick test_simplify_tuples_269;
    Alcotest.test_case "split_tuples_270" `Quick test_split_tuples_270;
    Alcotest.test_case "simplify_tuples_271" `Quick test_simplify_tuples_271;
    Alcotest.test_case "simplify_tuples_272" `Quick test_simplify_tuples_272;
    Alcotest.test_case "split_tuples_273" `Quick test_split_tuples_273;
    Alcotest.test_case "simplify_tuples_274" `Quick test_simplify_tuples_274;
    Alcotest.test_case "shift_tuples_275" `Quick test_shift_tuples_275;
    Alcotest.test_case "simplify_tuples_276" `Quick test_simplify_tuples_276;
    Alcotest.test_case "split_tuples_277" `Quick test_split_tuples_277;
    Alcotest.test_case "simplify_tuples_278" `Quick test_simplify_tuples_278;
    Alcotest.test_case "constant_folding_279" `Quick test_constant_folding_279;
    Alcotest.test_case "simplify_tuples_281" `Quick test_simplify_tuples_281;
    Alcotest.test_case "split_tuples_282" `Quick test_split_tuples_282;
    Alcotest.test_case "simplify_tuples_283" `Quick test_simplify_tuples_283;
    Alcotest.test_case "copy_propagation_284" `Quick test_copy_propagation_284;
    Alcotest.test_case "simplify_tuples_285" `Quick test_simplify_tuples_285;
    Alcotest.test_case "split_tuples_286" `Quick test_split_tuples_286;
    Alcotest.test_case "simplify_tuples_287" `Quick test_simplify_tuples_287;
    Alcotest.test_case "inline_288" `Quick test_inline_288;
    Alcotest.test_case "constant_folding_289" `Quick test_constant_folding_289;
    Alcotest.test_case "simplify_tuples_291" `Quick test_simplify_tuples_291;
    Alcotest.test_case "split_tuples_292" `Quick test_split_tuples_292;
    Alcotest.test_case "simplify_tuples_293" `Quick test_simplify_tuples_293;
    Alcotest.test_case "copy_propagation_294" `Quick test_copy_propagation_294;
    Alcotest.test_case "simplify_tuples_295" `Quick test_simplify_tuples_295;
    Alcotest.test_case "split_tuples_296" `Quick test_split_tuples_296;
    Alcotest.test_case "simplify_tuples_297" `Quick test_simplify_tuples_297;
    Alcotest.test_case "pre_schedule_298" `Quick test_pre_schedule_298;
    Alcotest.test_case "unfold_unnest_299" `Quick test_unfold_unnest_299;
    Alcotest.test_case "expand_array_300" `Quick test_expand_array_300;
    Alcotest.test_case "expand_permut_301" `Quick test_expand_permut_301;
    Alcotest.test_case "simplify_tuples_302" `Quick test_simplify_tuples_302;
    Alcotest.test_case "split_tuples_303" `Quick test_split_tuples_303;
    Alcotest.test_case "simplify_tuples_304" `Quick test_simplify_tuples_304;
    Alcotest.test_case "simplify_tuples_305" `Quick test_simplify_tuples_305;
    Alcotest.test_case "split_tuples_306" `Quick test_split_tuples_306;
    Alcotest.test_case "simplify_tuples_307" `Quick test_simplify_tuples_307;
    Alcotest.test_case "shift_tuples_308" `Quick test_shift_tuples_308;
    Alcotest.test_case "simplify_tuples_309" `Quick test_simplify_tuples_309;
    Alcotest.test_case "split_tuples_310" `Quick test_split_tuples_310;
    Alcotest.test_case "simplify_tuples_311" `Quick test_simplify_tuples_311;
    Alcotest.test_case "interleave_312" `Quick test_interleave_312;
    Alcotest.test_case "constant_folding_313" `Quick test_constant_folding_313;
    Alcotest.test_case "simplify_tuples_315" `Quick test_simplify_tuples_315;
    Alcotest.test_case "split_tuples_316" `Quick test_split_tuples_316;
    Alcotest.test_case "simplify_tuples_317" `Quick test_simplify_tuples_317;
    Alcotest.test_case "copy_propagation_318" `Quick test_copy_propagation_318;
    Alcotest.test_case "simplify_tuples_319" `Quick test_simplify_tuples_319;
    Alcotest.test_case "split_tuples_320" `Quick test_split_tuples_320;
    Alcotest.test_case "simplify_tuples_321" `Quick test_simplify_tuples_321;
    Alcotest.test_case "fuse_loop_general_322" `Quick test_fuse_loop_general_322;
    Alcotest.test_case "constant_folding_323" `Quick test_constant_folding_323;
    Alcotest.test_case "simplify_tuples_325" `Quick test_simplify_tuples_325;
    Alcotest.test_case "split_tuples_326" `Quick test_split_tuples_326;
    Alcotest.test_case "simplify_tuples_327" `Quick test_simplify_tuples_327;
    Alcotest.test_case "copy_propagation_328" `Quick test_copy_propagation_328;
    Alcotest.test_case "simplify_tuples_329" `Quick test_simplify_tuples_329;
    Alcotest.test_case "split_tuples_330" `Quick test_split_tuples_330;
    Alcotest.test_case "simplify_tuples_331" `Quick test_simplify_tuples_331;
    Alcotest.test_case "scheduler_332" `Quick test_scheduler_332;
    Alcotest.test_case "clean_333" `Quick test_clean_333;
    Alcotest.test_case "remove_dead_code_334" `Quick test_remove_dead_code_334;
    Alcotest.test_case "unfold_unnest_335" `Quick test_unfold_unnest_335;
    Alcotest.test_case "expand_array_336" `Quick test_expand_array_336;
    Alcotest.test_case "expand_permut_337" `Quick test_expand_permut_337;
    Alcotest.test_case "simplify_tuples_338" `Quick test_simplify_tuples_338;
    Alcotest.test_case "split_tuples_339" `Quick test_split_tuples_339;
    Alcotest.test_case "simplify_tuples_340" `Quick test_simplify_tuples_340;
    Alcotest.test_case "simplify_tuples_341" `Quick test_simplify_tuples_341;
    Alcotest.test_case "split_tuples_342" `Quick test_split_tuples_342;
    Alcotest.test_case "simplify_tuples_343" `Quick test_simplify_tuples_343;
    Alcotest.test_case "shift_tuples_344" `Quick test_shift_tuples_344;
    Alcotest.test_case "simplify_tuples_345" `Quick test_simplify_tuples_345;
    Alcotest.test_case "split_tuples_346" `Quick test_split_tuples_346;
    Alcotest.test_case "simplify_tuples_347" `Quick test_simplify_tuples_347;
    Alcotest.test_case "fuse_loops_348" `Quick test_fuse_loops_348;
    Alcotest.test_case "linearize_arrays_349" `Quick test_linearize_arrays_349;
    
  ]
