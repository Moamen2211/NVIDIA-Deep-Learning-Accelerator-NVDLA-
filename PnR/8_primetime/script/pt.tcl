# ********************************************
# -- Project Name         : NVDLA
# -- Target Technology    : SAED32|32nm 
# -- Target Corner        : Worst | Best  
# -- Step Name            : STA Signoff  
# -- Target Tool          : Primetime (Synopsys) 
# -- Create By            : Moamen Ashraf
# -- Version              : 1.3
# *******************************************
# ########################################## #
# ============= Variable Setup ============= #
# ########################################## #
         
# --- Top Level 
set design "NV_NVDLA_partition_o"

# --- Paths 
set project_dir      "/home/ICer/EDA_projects/NVDLA/nv_small"
set out_dir          "/PnR/7_routing/results/outputs"

set Lib_path_std     "/home/ICer/Downloads/SAED32/STD"
set Lib_path_sram    "/home/ICer/Downloads/SAED32/SRAM"

# --- Std_Cells 
set worst_case_sram     "saed32sram_ss0p95vn40c.db" 
set best_case_sram      "saed32sram_ff1p16v125c.db" 

# --- Std_Memories 
set worst_case_std      "saed32rvt_ss0p95vn40c.db" 
set best_case_std       "saed32rvt_ff1p16v125c.db"


# --- Search path & link_lib 
# --- search_path: Directories containing design files and technology libraries
set  search_path [list . "$Lib_path_std" "$Lib_path_sram" "$project_dir/$out_dir" ]

# --- Scenarios 
set scenarios {func_slow_cmax func_fast_cmin}

# ########################################## #
# ============== Handle Files ============== #
# ########################################## #
sh rm    -r ../results/reports
sh rm    -r ../results/sessions

sh mkdir -p ../results/reports
sh mkdir -p ../results/sessions

# ########################################## #
# ================ STA Flow ================ #
# ########################################## # 
# *********** Standard PrimeTime *********** #

foreach scenario $scenarios {
    puts "\n****************** Running Scenario: $scenario ******************\n"
    switch $scenario {
        func_slow_cmax {
            set case_sram     "saed32sram_ss0p95vn40c.db" 
            set case_std      "saed32rvt_ss0p95vn40c.db"
            set parasitic     "$project_dir/$out_dir/parasitics/${design}.tlup_max_-40.spef"
			set SDC     	  "$project_dir/$out_dir/sdc/${design}_slow.sdc"			
        }
        func_fast_cmin {
            set case_sram      "saed32sram_ff1p16v125c.db" 
            set case_std       "saed32rvt_ff1p16v125c.db" 
            set parasitic      "$project_dir/$out_dir/parasitics/${design}.tlup_min_125.spef"
			set SDC            "$project_dir/$out_dir/sdc/${design}_fast.sdc"			
        }        
    }    
    #set timing_save_pin_arrival_and_slack true 
    # ===== Handle File  
    sh mkdir -p ../results/reports/$scenario
	
    # ===== Link_library 
    set link_path [list {*} $case_sram $case_std]
	
    # ===== Read Netlist  
    read_verilog "$project_dir/$out_dir/netlist/${design}.v"
	current_design $design
    link
	current_design $design  
  
    # ===== Read SDC Constrints   
    read_sdc $SDC
	
    # ===== Read Spef   
    read_parasitics $parasitic
    update_timing
	
    # ===== Report full timing analysis 
    report_global_timing                                 > ../results/reports/$scenario/global_timing_before.rpt
    report_constraint  -all_violators                    > ../results/reports/$scenario/all_violations.rpt         
    report_qor         -summary                          > ../results/reports/$scenario/qor_summary.rpt 
	
    # --- Common point in the design that contributes to multiple violations
    report_bottleneck                                    > ../results/reports/$scenario/bottleneck.rpt
    report_analysis_coverage                             > ../results/reports/$scenario/analysis_coverage.rpt
    update_timing          
	
    # --- Detailed Report Timing 
    report_timing -delay_type max  -max_paths 10     \
                  -capacitance     -transition_time  \
                  -pba_mode path   -crosstalk_delta  \
                  -path_type  full_clock                 > ../results/reports/$scenario/setup_reports.rpt
    
    
    report_timing -delay_type min  -max_paths 10     \
                  -capacitance     -transition_time  \
                  -pba_mode path   -crosstalk_delta  \
                  -path_type  full_clock                 > ../results/reports/$scenario/hold_reports.rpt

    # ===== Save session
    save_session  ../results/sessions/$scenario 
	
    # ===== Remove Lib & design 
    remove_design -all
    remove_lib    -all
	
    puts "\n****************** Finished Scenario: $scenario ******************\n"

}

