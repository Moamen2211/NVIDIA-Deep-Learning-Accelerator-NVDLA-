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
set out_dir          "pnr/8_timing_analysis/results/outputs"



# ########################################## #
# ============= Work Directory ============= #
# ########################################## #
file delete -force ./work
set multi_scenario_working_directory ./work 

# ########################################## #
# ============ Scenario Creation =========== #
# ########################################## #
create_scenario -name func_slow_Cmax -image ../results/sessions/func_slow_cmax
create_scenario -name func_fast_Cmin -image ../results/sessions/func_fast_cmin

set_host_options -num_processes 2 -max_cores 2
start_hosts

current_session {func_slow_Cmax func_fast_Cmin}

# ########################################## #
# ================ Before Fix ============== #
# ########################################## #

report_constraints -all_violators > constraint_violations_before.rpt 
report_global_timing 			  > global_timing_before.rpt

# ########################################## #
# ================= ECO Fix ================ #
# ########################################## #

# 1. Hold Fixing
# ------------------
fix_eco_timing -type hold \
			   -hold_margin 0.01 \
			   -buffer_list { NBUFFX2_RVT NBUFFX4_RVT NBUFFX8_RVT NBUFFX16_RVT DELLN1X2_RVT DELLN2X2_RVT DELLN3X2_RVT } \ 

			   
# 2. Capacitance Fixing
# ------------------------
fix_eco_drc -type max_capacitance \
			-buffer_list { NBUFFX2_RVT NBUFFX4_RVT NBUFFX8_RVT NBUFFX16_RVT NBUFFX32_RVT}


# 3. Transition Fixing
# ------------------------
fix_eco_drc -type max_transition \
			-buffer_list { NBUFFX2_RVT NBUFFX4_RVT NBUFFX8_RVT NBUFFX16_RVT NBUFFX32_RVT}


# ########################################## #
# ================ After Fix =============== #
# ########################################## #

report_constraints -all_violators > constraint_violations_after.rpt 
report_global_timing 			  > global_timing_after.rpt

# ########################################## #
# ================ ECO Save ================ #
# ########################################## #
remote_execute {write_changes -format icc2tcl -output ./eco.tcl }



                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                         
               
