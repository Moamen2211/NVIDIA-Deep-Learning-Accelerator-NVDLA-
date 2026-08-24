# ================================================================ #
# -- Project Name         : nv_small(NV_NVDLA_partition_o) 
# -- Target Technology    : SAED_EDK32 (32nm)   
# -- Target Corner        : Worst 
# -- Step Name            : Routing  
# -- Create By            : Moamen Ashraf
# -- Target Tool          : ICC2 (Synopsys) 
# -- Version              : 1.6
# ================================================================ #


# ########################################## #
# ============= Variable Setup ============= #
# ########################################## #

set_host_options -max_cores 12 -num_process 2

set project_dir  "/home/ICer/EDA_projects/NVDLA"
set dlib_dir     "/home/ICer/EDA_projects/NVDLA/nv_small/PnR/2_design_library/results/library/NV_NVDLA_partition_o.dlib"
set design       "NV_NVDLA_partition_o"

# ########################################## #
# ============= Open Block ================= #
# ########################################## #

open_block  ${dlib_dir}:${design}_routing_f_optv1.design
current_block ${design}_routing_f_optv1.design


copy_block -from_block ${design}.dlib:${design}_routing_f_optv1.design -to_block ${design}_signoff_test
current_block ${design}_signoff_test.design

# ########################################## #
# =============== Pre-Route ================ #
# ########################################## # 
#  check for any issues that might cause problems during routing
check_routability 
check_legality 
check_design -checks pre_route_stage

set_ignored_layers -min_routing_layer M2 -max_routing_layer M9
# =================================================================================== #
# ================================ Constrains ======================================= #
# =================================================================================== #
# --- Update The Clock_Uncertanity Value  --- #
remove_clock_uncertainty [all_clocks] -scenarios [all_scenarios]

# --- uncertainty_setup = 2.5% From Clocks --- #
# --- nvdla_core_clk   = 12ns --- #
# --- nvdla_falcon_clk = 4ns  --- #
set_clock_uncertainty -setup 0.28 [get_clocks nvdla_core_clk]   -scenarios [all_scenarios]
set_clock_uncertainty -setup 0.1 [get_clocks nvdla_falcon_clk] -scenarios [all_scenarios]

# --- uncertainty_hold = 1.5% From Clocks --- #
set_clock_uncertainty -hold 0.16 [get_clocks nvdla_core_clk]   -scenarios [all_scenarios]
set_clock_uncertainty -hold 0.06 [get_clocks nvdla_falcon_clk] -scenarios [all_scenarios]

# --- Max Transition and Max Capacitance --- #
set_max_transition 0.2 [current_design]
set_max_capacitance 32 [current_design]

# --- Must be define driving cell on Clock ports (Root)
# --- if used weak driving cell will have affects QoR during CTS
set_driving_cell -lib_cell NBUFFX2_RVT  -pin Y  [get_ports nvdla_core_clk  ] 
set_driving_cell -lib_cell NBUFFX2_RVT  -pin Y  [get_ports nvdla_falcon_clk] 

# --- Load on the output ports --- #
set_load 0.005 [all_outputs]

# ---- Just assign Func mode --- #
set_case_analysis 0 [get_port test_mode] 


# ########################################## #
# ============== App-Options =============== #
# ########################################## # 
                                # ===== Timing ===== #
# --- Enable Timing Driven 
set_app_options -name route.global.timing_driven                        -value true 
set_app_options -name route.track.timing_driven                         -value true 
set_app_options -name route.detail.timing_driven                        -value true 

                     # ============================== Time Setup ============================== # 
# --- Prevent tool check Reset path 
set_app_options -name time.disable_recovery_removal_checks      -value false
# --- Enhanced Time Check by adding CRPR for Timing path 
set_app_options -name time.remove_clock_reconvergence_pessimism -value true 


                                # ===== Cross Talk ===== #
# --- Enable crosstalk-aware routing 
set_app_options -name route.global.crosstalk_driven                     -value true 
set_app_options -name route.track.crosstalk_driven                      -value true

#crosstalk reduction perior to logic optimization
set_app_options -name route_opt.flow.xtalk_reduction                    -value true


# --- Timing Analysis 
set_app_options -name time.si_enable_analysis                           -value true 
set_app_options -name time.all_clocks_propagated                        -value true 



                                # ===== DRC ===== #
# ---  Improve DRC convergence
set_app_options -name route.detail.eco_max_number_of_iterations         -value 40
set_app_options -name route.detail.force_max_number_iterations          -value true
set_app_options -name route.detail.drc_convergence_effort_level         -value high 

# -- Resolved DRCs {Min_Area/Min_length/End-of-line spacing } by metal patching. 
set_app_options -name route.detail.check_patchable_drc_from_fixed_shapes -value true

# ---- Solved min area in pins of gate 
set_app_options -name route.detail.check_pin_min_area_min_length         -value true

# ---- Solved DRC Grid-off by make routed snapped 
set_app_options -name route.detail.force_end_on_preferred_grid           -value true


                                # ===== CCD ===== #
# ---- Enable concurrent clock and data optimization helps setup timing closure
set_app_options -name route_opt.flow.enable_ccd                         -value true

# --- fix  clock  transition  and  capacitance violations already on 
set_app_options -name route_opt.flow.enable_ccd_clock_drc_fixing        -value auto


                                # ===== Naming ===== #
# --- Prefix-Routing
set_app_options -name opt.common.user_instance_name_prefix              -value "ROUTE_"



# ########################################## #
# ============= Global Stages ============== #
# ########################################## # 
# --- Initial Routing Stage: Establishes the baseline routing topology from scratch.
# --- Executes three sequential phases: Global Routing, Track Assignment, and Detail Routing.
# --- Primary Goal: Achieve 100% design connectivity and mitigate global routing congestion.
# --- Constraints: It does NOT modify the netlist or change cell sizes (No sizing/buffering allowed).
route_auto -save_after_global_route     true \
           -save_after_track_assignment true \
           -save_after_detail_route     true \
           -save_cell_prefix     "Auto_Route"  
#save_block -as route_auto_f_optv1

# ########################################## #
# ================ Connect PG ============== #
# ########################################## # 
# hierarchical [include top module + sub modules]
connect_pg_net -net VDD [get_pins -hierarchical */VDD]
connect_pg_net -net VSS [get_pins -hierarchical */VSS]


# ########################################## #
# ============ Optimized Route ============= #
# ########################################## #
# --- Post-Route Optimization Stage: Achieves timing closure (Setup/Hold) using real wire parasitics (RC).
# --- Core Actions: Fixes setup/hold violations and logical DRCs (Max Transition, Max Capacitance, Max Fanout).
# --- Netlist Modification: Fully authorized to alter the logic via cell upsizing/downsizing and buffer insertion.
# --- Side Effect: Cell layout modifications usually introduce new local physical DRCs (shorts/spacing).
route_opt 
#save_block -as route_opt_f_v1

# --- Check number of Cells inserted through CTS step  
#sizeof_collection [get_cells "ROUTE_*"]

# ########################################## #
# ================ Connect PG ============== #
# ########################################## # 
# hierarchical [include top module + sub modules]
connect_pg_net -net VDD [get_pins -hierarchical */VDD]
connect_pg_net -net VSS [get_pins -hierarchical */VSS]


# ########################################## #
# ============ Important Checks ============ #
# ########################################## #
#check_routes               
#check_lvs -max_errors 0    
#check_pg_drc               
#check_pg_connectivity      
#check_legality 			   
#check_timing 


# ########################################## #
# ============= Enhanced Route ============= #
# ########################################## #
# --- Physical DRC Cleansing Stage: Exclusively targets physical routing violations (Shorts, Spacing, Min Area).
# --- Core Actions: Reroutes only the violating wire segments incrementally while keeping the main topology intact.
# --- Timing Preservation: Does NOT alter the netlist structure or cell sizes, preserving all route_opt timing fixes.
# --- Pro Tip: Add '-initial_drc_from_input true' to jumpstart routing directly from existing DRC markers.

#route_detail -incremental true -initial_drc_from_input true -max_number_iterations 60
route_detail -incremental true
#save_block -as route_detail_f_optv1

# ########################################## #
# ============ Important Checks ============ #
# ########################################## #
#check_routes             
#check_lvs -max_errors 0  


# ########################################## #
# ============== Solved DRCs =============== #
# ########################################## #
# --- Sign-off ECO Routing Stage: A highly localized, surgical tool used for minor engineering changes (ECOs).
# --- Core Actions: Connects newly introduced open nets and resolves lingering DRCs within a tight bounding box.
# --- Freeze Mechanism: Freezes untouched, fully-connected nets to protect the final sign-off timing from degrading.
route_eco    -reroute any_nets                 \
			 -open_net_driven true \
             -reuse_existing_global_route true \
             -utilize_dangling_wires true
#save_block -as route_eco_f_optv1

# ########################################## #
# ================ Connect PG ============== #
# ########################################## # 
# hierarchical [include top module + sub modules]
connect_pg_net -net VDD [get_pins -hierarchical */VDD]
connect_pg_net -net VSS [get_pins -hierarchical */VSS]

# ########################################## #
# ============ Important Checks ============ #
# ########################################## #
check_routes               
check_lvs -max_errors 0
check_pg_drc 
check_pg_connectivity
check_legality 
check_timing 

# ########################################## #
# ============== Debug Checks ============== #
# ########################################## #

# --- This nets make many shorts with the stacked of vias from M8 --> M1_rails --- #


change_selection [get_nets "ropt_net_99563"]
gui_zoom -window [gui_get_current_window -type Layout] -selection

# --- TO fix nets of routing_optv1.design --- #
route_eco -nets [get_nets "u_NV_NVDLA_cdp_u_dp_u_NV_NVDLA_CDP_DP_lut_n886  \
                           ropt_net_99637 "]  \		
          -reroute modified_nets_first_then_others \
          -utilize_dangling_wires true
	
	
# ----- 1st Modification --- #
 
set_via_def  -via_def VIA12SQ_C -pitch "0.2 0.2"  -vias [get_vias * -filter "via_def.name  == VIA12SQ_C"]  -size "1 6" 
set_via_def  -via_def VIA23SQ_C -pitch "0.2 0.2"  -vias [get_vias * -filter "via_def.name  == VIA23SQ_C"]  -size "1 6"
set_via_def  -via_def VIA34SQ_C -pitch "0.2 0.2"  -vias [get_vias * -filter "via_def.name  == VIA34SQ_C"]  -size "1 6"
set_via_def  -via_def VIA45SQ_C -pitch "0.2 0.2"  -vias [get_vias * -filter "via_def.name  == VIA45SQ_C"]  -size "1 6" 
set_via_def  -via_def VIA56SQ_C -pitch "0.2 0.2"  -vias [get_vias * -filter "via_def.name  == VIA56SQ_C"]  -size "1 6"
set_via_def  -via_def VIA67SQ_C -pitch "0.2 0.2"  -vias [get_vias * -filter "via_def.name  == VIA67SQ_C"]  -size "1 6"
set_via_def  -via_def VIA78SQ_C -pitch "0.2 0.2"  -vias [get_vias * -filter "via_def.name  == VIA78SQ_C"]  -size "1 6" 

# ---------------------------------------------------------------------------------------------------------------------- #

# ----- 2nd Modification --- #

set_via_def -vias [get_vias * -filter "via_def.name == VIA12SQ_C && (net_type == power || net_type == ground)"] -size "1 6"
set_via_def -vias [get_vias * -filter "via_def.name == VIA23SQ_C && (net_type == power || net_type == ground)"] -size "1 6"
set_via_def -vias [get_vias * -filter "via_def.name == VIA34SQ_C && (net_type == power || net_type == ground)"] -size "1 6"
set_via_def -vias [get_vias * -filter "via_def.name == VIA45SQ_C && (net_type == power || net_type == ground)"] -size "1 6"
set_via_def -vias [get_vias * -filter "via_def.name == VIA56SQ_C && (net_type == power || net_type == ground)"] -size "1 6"
set_via_def -vias [get_vias * -filter "via_def.name == VIA67SQ_C && (net_type == power || net_type == ground)"] -size "1 6"
set_via_def -vias [get_vias * -filter "via_def.name == VIA78SQ_C && (net_type == power || net_type == ground)"] -size "1 6"

# ---------------------------------------------------------------------------------------------------------------------- #

# ----- 3rd Modification --- #
# --- Apply ECO Routing After Changes The VIA_def --- #


route_eco -nets [get_nets " BUF_net_7061 "] \
		  -reroute modified_nets_first_then_others\
          -utilize_dangling_wires true


change_selection [get_pins " u_NV_NVDLA_pdp_u_core_u_cal2d_bank5_uram_0_r_nv_ram_rws_128x18_ram_Inst_128X18/O1[0]"]
gui_zoom -window [gui_get_current_window -type Layout] -selection
							
# --- Add buffers on route to solve specific nets violations (capacitance and transition) --- #							
add_buffer_on_route -lib_cell saed32rvt_c/NBUFFX8_RVT     \
                    -cell_prefix "fix_max_cap_buf"    \
                    -location {746.943 1258.490}          \
                    -detect_layer						  \
                    [get_nets BUF_net_27895]
					
size_cell [get_cells fix_wire_length_buf*] saed32rvt_c/NBUFFX4_RVT					
			
# --------------------------------------------------------------------------------------------------------------------



# ########################################## #
# ================= Reports ================ #
# ########################################## #
report_qor                                               > ../results/reports/qor/qor.rpt
report_qor -summary                                      > ../results/reports/qor_summary/qor_summary.rpt
check_routes -drc true                                   > ../results/reports/DRC/DRC.rpt
check_pg_drc                                             > ../results/reports/pg_drc_final/pg_drc_final.rpt
check_pg_connectivity                                    > ../results/reports/pg_drc_connection/pg_drc_connection.rpt
analyze_design_violations                                > ../results/reports/analyze_design_violations/analyze_design_violations.rpt
report_design  -all                                      > ../results/reports/design/design.rpt
check_legality                                           > ../results/reports/leglaity/leglaity.rpt
report_congestion                                        > ../results/reports/Congestion/Congestion.rpt
report_timing -delay_type max -nosplit                   > ../results/reports/setup_check_paths/setup_check_paths.rpt
report_timing -delay_type min -nosplit                   > ../results/reports/hold_check_paths/hold_check_paths.rpt
report_timing -delay_type max -slack_lesser_than 0       > ../results/reports/setup_check_violation/setup_check_violation.rpt
report_timing -delay_type min -slack_lesser_than 0       > ../results/reports/hold_check_violation/hold_check_violation.rpt
report_utilization                                       > ../results/reports/Utilization/Utilization.rpt
report_utilization -config config_all                    > ../results/reports/utilization_config_all/utilization_config_all.rpt
report_utilization -config config_hard_mcaro_keep_out    > ../results/reports/utilization_config_hard_mcaro_keep_out/utilization_config_hard_mcaro_keep_out.rpt
report_utilization -config config_hard_mcaro_only        > ../results/reports/utilization_config_hard_mcaro_only/utilization_config_hard_mcaro_only.rpt
report_utilization -config config_all_exclude_pg_staraps > ../results/reports/utilization_config_all_exclude_pg_staraps/utilization_config_all_exclude_pg_staraps.rpt

# ########################################## #
# ================= outputs ================ #
# ########################################## #
write_def  ../results/outputs/def/${design}.def
write_sdc -scenario {func_slow_cmax} -output  	../results/outputs/sdc/${design}_slow.sdc
write_sdc -scenario {func_fast_cmin} -output  	../results/outputs/sdc/${design}_fast.sdc
write_parasitics -output        ../results/outputs/parasitics/${design}
write_verilog -include {all}    ../results/outputs/netlist/${design}.v
write_verilog -top_module_first ../results/outputs/netlist_top/${design}.v
analyze_design_violations


					
# --- Add buffers on route to solve specific nets violations (capacitance and transition) --- #							
add_buffer_on_route -lib_cell saed32rvt_c/NBUFFX4_RVT     \
                    -cell_prefix "fix_max_tr_buf"    \
                    -location {746.943 1258.490}          \
                    -detect_layer						  \
                    [get_nets BUF_net_27895]
					
size_cell [get_cells u_NV_NVDLA_cdp_u_wdma_NV_NVDLA_CDP_WDMA_wr_U12] saed32rvt_c/NAND2X1_RVT					

report_timing -to "PLACE_BUFT_P_40445/Y" -delay_type min
report_timing -to "PLACE_BUFT_P_40445/Y" -delay_type max                           


# #########################################################################################################################
# ############################################  Prime Time  ##############################################################
# #########################################################################################################################

legalize_placement  -incremental 

# ########################################## #
# ============== ECO Routing =============== #
# ########################################## # 
route_eco    -reroute any_nets                 \
			 -open_net_driven true 			   \
             -reuse_existing_global_route true \
             -utilize_dangling_wires true

# ########################################## #
# ============== Halos =============== #
# ########################################## # 
remove_placement_blockages -all
set my_macros [get_cells -hierarchical -filter "is_hard_macro==true || design_type==macro"]
create_keepout_margin -type hard -outer {8.68 8.68 8.68 8.68} $my_macros


# ########################################## #
# =============== DECAP Cell =============== #
# ########################################## #

set DCAP_fillers     [get_lib_cell */DCAP_RVT]
set_attribute $DCAP_fillers  dont_touch false
set_attribute $DCAP_fillers  dont_use   false

create_stdcell_fillers -lib_cells $DCAP_fillers \
                       -utilization 50          \
                       -prefix "DECAP_"         \
					   -post_eco				
					   

# ########################################## #
# ================ Connect PG ============== #
# ########################################## # 
# hierarchical [include top module + sub modules]
connect_pg_net -net VDD [get_pins -hierarchical */VDD]
connect_pg_net -net VSS [get_pins -hierarchical */VSS]

remove_stdcell_fillers_with_violation

# ---  verify filler placement legality
check_legality -verbose

legalize_placement  -incremental 

# ########################################## #
# ============== Filler Cell =============== #
# ########################################## #

set FILLER_names [list "*/SHFILL128_RVT" "*/SHFILL64_RVT" "*/SHFILL3_RVT" "*/SHFILL2_RVT" "*/SHFILL1_RVT"]

# ---- If Found attributes of Filler Cells  { dont_touch = true && dont_use = true } ---------- #
set_attribute $FILLER_names  dont_touch false
set_attribute $FILLER_names  dont_use   false


# --- insert non-metal fillers
create_stdcell_fillers -lib_cells $FILLER_names \
                       -prefix "FILLER_"            \
					   -utilization 100				\
					   -post_eco
					   
# ########################################## #
# ================ Connect PG ============== #
# ########################################## # 
# hierarchical [include top module + sub modules]
connect_pg_net -net VDD [get_pins -hierarchical */VDD]
connect_pg_net -net VSS [get_pins -hierarchical */VSS]

remove_stdcell_fillers_with_violation

# ---  verify filler placement legality
check_legality -verbose

set_app_options -name place.legalize.enable_prerouted_net_check -value false
set_app_options -name place.legalize.enable_advanced_prerouted_net_check -value false

set FILLER_names [list "*/SHFILL128_RVT" "*/SHFILL64_RVT" "*/SHFILL3_RVT" "*/SHFILL2_RVT" "*/SHFILL1_RVT"]

create_stdcell_fillers -lib_cells $FILLER_names \
                       -prefix "FILLER_"        \
                       -post_eco
					   
connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]

# ########################################## #
# ================= Reports ================ #
# ########################################## #
report_qor                                               > ../results/reports/qor.rpt
report_qor -summary                                      > ../results/reports/qor_summary.rpt
check_routes -drc true                                   > ../results/reports/DRC.rpt
check_pg_drc                                             > ../results/reports/pg_drc_final.rpt
check_pg_connectivity                                    > ../results/reports/pg_drc_connection.rpt
analyze_design_violations                                > ../results/reports/setup_check_paths.rpt
report_design  -all                                      > ../results/reports/design.rpt
report_constraints -all_violators                        > ../results/reports/cons_violated.rpt 
report_constraints  -all_violators -max_transition       > ../results/reports/trans_violated_all_violators.rpt
report_constraints  -all_violators -max_capacitance      > ../results/reports/cap_violated_all_violators.rpt
check_legality                                           > ../results/reports/leglaity.rpt
report_congestion                                        >  ../results/reports/Congestion.rpt
report_timing -delay_type max  -nosplit                   > ../results/reports/setup_check_paths.rpt
report_timing -delay_type min  -nosplit                   > ../results/reports/hold_check_paths.rpt
report_timing -delay_type max  -slack_lesser_than 0       > ../results/reports/setup_check_violation.rpt
report_timing -delay_type min  -capacitance       \
              -transition_time -max_paths 200            > ../results/reports/hold_check_violation.rpt
report_utilization                                       > ../results/reports/Utilization.rpt
report_utilization -config config_all                    > ../results/utilization_config_all.rpt
report_utilization -config config_hard_mcaro_keep_out    > ../results/utilization_config_hard_mcaro_keep_out.rpt
report_utilization -config config_hard_mcaro_only        > ../results/utilization_config_hard_mcaro_only.rpt
report_utilization -config config_all_exclude_pg_staraps > ../results/utilization_config_all_exclude_pg_staraps.rpt
report_congestion                                        > ../results/congestion.rpt
analyze_design_violations

# ########################################## #
# ================= outputs ================ #
# ########################################## #
define_name_rules  no_case -case_insensitive
change_names -rule no_case -hierarchy
change_names -rule verilog -hierarchy
set verilogout_no_tri	 true
set verilogout_equation  false

write_verilog -top_module_first                             ../results/outputs/${design}_finished_icc2.v
write_verilog -exclude [list pg_objects all_physical_cells] ../results/outputs/${design}_icc2_no_phy.v
write_verilog -exclude pg_objects                           ../results/outputs/${design}_icc2_nopg.v

# ########################################## #
# ================ Save Block ============== #
# ########################################## #

save_block -as ${design}_routing_f_optv1
save_block -as ${design}_signoff_fv

