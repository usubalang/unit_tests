open Usuba_lib

let conf = { Config.output = ""; warning_as_error = false; verbose = 1;
             path = ["."]; parse_only = false; type_only = false;
             type_check = true; check_tbl = false; auto_inline = true;
             light_inline = false; inline_all = false; heavy_inline = false;
             no_inline = false; compact_mono = true; fold_const = true;
             cse = true; copy_prop = true; loop_fusion = true;
             pre_schedule = true; scheduling = true; schedule_n = 10;
             share_var = false; linearize_arr = true; precal_tbl = true;
             archi = Config.Std; bits_per_reg = 64; no_arr = false;
             arr_entry = true; unroll = false; interleave = 2;
             inter_factor = 0; fdti = ""; lazylift = false;
             slicing_set = true; slicing_type = Config.H; m_set = false;
             m_val = 1; tightPROVE = false; tightprove_dir = "";
             maskVerif = false; masked = false; ua_masked = false;
             shares = 1; gen_bench = false; keep_tables = false;
             compact = false; bench_inline = false; bench_inter = false;
             bench_bitsched = false; bench_msched = false;
             bench_sharevar = false; step_counter = ref (0);
             dump_sexp = false; dump_steps = None; dump_steps_base_file = ""
             }
