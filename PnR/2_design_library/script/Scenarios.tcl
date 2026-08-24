# ============================================
# -- Project Name         : nv_small(NV_NVDLA_partition_o)  
# -- Target Technology    : SAED_EDK32 (32nm) # -- Target Corner  : Worst   
# -- Step Name            : Library Creation 
# -- Target Tool          : MMMC 
# -- Create By            : Moamen Ashraf
# -- Version              : 1.00
# ============================================

# ########################################## #
# =============== Initalize  =============== #
# ########################################## #
remove_corners   -all
remove_modes     -all
remove_scenarios -all


# ########################################## #
# ============ Corner Creation  ============ #
# ########################################## #
create_corner slow_cmax
create_corner fast_cmin

# ########################################## #
# =========== Corner Defenation  =========== #
# ########################################## #
# -- Must be define for each corner {Tool will be defined attrbuite value if not define }
# -- slow slow 

set_operating_conditions ss0p95vn40c
set_process_label   "ss0p95vn40c"   -corners {slow_cmax}  
set_process_number  0.99	        -corners {slow_cmax}  
set_temperature     -40             -corners {slow_cmax}  
set_voltage         0.95  	        -corners {slow_cmax}   

# -- fast fast 
set_operating_conditions ff1p16v125c
set_process_label   "ff1p16v125c"   -corners {fast_cmin}  
set_process_number  1.01	        -corners {fast_cmin}  
set_temperature     125             -corners {fast_cmin}  
set_voltage         1.16            -corners {fast_cmin} 

# ########################################## #
# ======= Load Parasitics Extraction ======= #
# ########################################## #
set Tech "/home/ICer/Downloads/SAED32"

read_parasitic_tech -layermap ${Tech}/saed32nm_tf_itf_tluplus.map   \
                    -tlup     ${Tech}/saed32nm_1p9m_Cmax.tluplus    \
                    -name tlup_max

read_parasitic_tech -layermap  ${Tech}/saed32nm_tf_itf_tluplus.map  \
                    -tlup      ${Tech}/saed32nm_1p9m_Cmin.tluplus   \
                    -name tlup_min


# ########################################## #
# ======== RC Extaction & Corners ========== #
# ########################################## #
# -- associates the parasitic parameters with the constraint corner or a list of constraint corners.
set_parasitics_parameters 	-early_spec tlup_max    -late_spec tlup_max   -corners {slow_cmax}
set_parasitics_parameters 	-early_spec tlup_min    -late_spec tlup_min   -corners {fast_cmin}
# --- corner done here 


# ########################################## #
# ================= Modes  ================= #
# ########################################## #
create_mode func


# ########################################## #
# =========== Scenario Creation ============ #
# ########################################## #
# Scenario = Mode + Corner  
# --- Function Mode 
create_scenario -mode func -corner slow_cmax -name func_slow_cmax
create_scenario -mode func -corner fast_cmin -name func_fast_cmin
set func_scenarios [get_scenarios -mode func]


# # ########################################## #
# # =========== Timing Constraints =========== #
# # ########################################## #
 foreach_in_collection scenario $func_scenarios {
 	current_scenario $scenario
 	read_sdc ${project_dir}/syn/syn_partition_o_32nm/cons/${design}.sdc }


# ########################################## #
# ========= Define Scenario Status ========= #
# ########################################## #

set_scenario_status -leakage_power false -dynamic_power false [get_scenarios [list func_slow_cmax func_fast_cmin]]
set_scenario_status -active false [get_scenarios func_fast_cmin] 
current_scenario func_slow_cmax 

report_scenarios


