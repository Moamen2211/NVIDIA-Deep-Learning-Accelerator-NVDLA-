# ============================================
# -- Project Name         : nv_small(NV_NVDLA_partition_o) 
# -- Target Technology    : SAED_EDK32 (32nm)   
# -- Target Corner        : Worst 
# -- Step Name            : CTS  
# -- Create By            : Moamen Ashraf
# -- Target Tool          : ICC2 (Synopsys) 
# -- Version              : 1.5
# ============================================

# ########################################## #
# ============= Variable Setup ============= #
# ########################################## #

set_host_options -max_cores 12 -num_process 2

set project_dir  "/home/ICer/EDA_projects/NVDLA"
set dlib_dir     "/home/ICer/EDA_projects/NVDLA/nv_small/PnR/2_design_library/results/library/NV_NVDLA_partition_o.dlib"
set design       "NV_NVDLA_partition_o"




# ########################################## #
# ============= Open CTS_Block ============= #
# ########################################## #

open_block  ${dlib_dir}:${design}_cts_f_optv1.design
current_block ${design}_cts_f_optv1.design


start_gui


# ########################################## #
# =============== dlib Setup =============== #
# ########################################## #

copy_block -from_block ${design}.dlib:${design}_placement.design -to_block ${design}_last_cts
current_block ${design}_last_cts.design


# --- Active all scenarios to solve both (setup and hold) --- #
set_scenario_status -active true  [get_scenarios *] ; # { func_slow_cmax || func_fast_cmin } 


# ================================================ # 
# =================== Pre-CTS ==================== # 
# ================================================ # 

report_qor   -summary                     > qor_pre_cts.rpt
check_design -checks pre_clock_tree_stage > checks_pre_clock_tree.rpt
report_ignored_layers 



# --- Reset all option and configration for skew and latency --- #
set_ignored_layers -max_routing_layer M7 -min_routing_layer M2 

#report_clock_tree_options
remove_clock_latency    [all_clocks]
remove_propagated_clock [all_clocks]
remove_clock_tree_options -all -target_skew -target_latency 


# --- Clock sources --- # 
report_clocks 
report_clock_qor -type structure > clock_struct_tree.rpt

# ########################################## #
# =========== Dont_touch Networks  ========= #
# ########################################## #

# --- Remove The Ideal Networks --- #
remove_ideal_network -all 


# =================================================================================== #
# ================================ Constrains ======================================= #
# =================================================================================== #
# --- Update The Clock_Uncertanity Value  --- #
remove_clock_uncertainty [all_clocks] -scenarios [all_scenarios]

# --- uncertainty_setup = 2.5% From Clocks --- #
# --- nvdla_core_clk   = 12ns --- #
# --- nvdla_falcon_clk = 4ns  --- #
set_clock_uncertainty -setup 0.3 [get_clocks nvdla_core_clk]   -scenarios [all_scenarios]
set_clock_uncertainty -setup 0.1 [get_clocks nvdla_falcon_clk] -scenarios [all_scenarios]

# --- uncertainty_hold = 1.5% From Clocks --- #
set_clock_uncertainty -hold 0.18 [get_clocks nvdla_core_clk]   -scenarios [all_scenarios]
set_clock_uncertainty -hold 0.06 [get_clocks nvdla_falcon_clk] -scenarios [all_scenarios]

# --- Max Transition and Max Capacitance --- #
set_max_transition 0.2 [current_design]
set_max_capacitance 32 [current_design]

set_clock_transition -max -rise 0.15 [get_clocks {nvdla_core_clk nvdla_falcon_clk}]
set_clock_transition -max -fall 0.15 [get_clocks {nvdla_core_clk nvdla_falcon_clk}]

# --- Must be define driving cell on Clock ports (Root)
# --- if used weak driving cell will have affects QoR during CTS
set_driving_cell -lib_cell NBUFFX2_RVT  -pin Y  [get_ports nvdla_core_clk  ] 
set_driving_cell -lib_cell NBUFFX2_RVT  -pin Y  [get_ports nvdla_falcon_clk] 

# --- Load on the output ports --- #
set_load 0.005 [all_outputs]

# ---- Just assign Func mode --- #
set_case_analysis 0 [get_port test_mode] 


# ================================================ #
# ================= CTS_Cells ==================== #
# ================================================ #

# --- Forstly Exclude All cells in library and after that detrmined only cells for cts --- #
set_lib_cell_purpose -exclude cts          [get_lib_cells */*]
set_lib_cell_purpose -exclude hold         [get_lib_cells */*]
  


# --- Prefred ( High drive strength and INV Cells ) --- #
# --- INV Prefred to resisitance of wire interconnect and trainstions --- #
 
set_lib_cell_purpose -include cts { saed32rvt_c/NBUFFX2_RVT saed32rvt_c/NBUFFX4_RVT saed32rvt_c/NBUFFX8_RVT saed32rvt_c/NBUFFX16_RVT}
set_lib_cell_purpose -include cts { saed32rvt_c/IBUFFX2_RVT saed32rvt_c/IBUFFX4_RVT saed32rvt_c/IBUFFX8_RVT saed32rvt_c/IBUFFX16_RVT} 
set_lib_cell_purpose -include cts { saed32rvt_c/INVX2_RVT saed32rvt_c/INVX4_RVT  saed32rvt_c/INVX8_RVT saed32rvt_c/INVX16_RVT} 

# --- This for hold Violations --- #
set_lib_cell_purpose -include hold  [get_lib_cells  */DELLN*] 
#set_lib_cell_purpose -include hold  [get_lib_cells */IBUFF*]


# --- Clock Configurations {corner, trans, cap, skew, latency} and Routing rules { Root, Internal, Sink} --- #
#report_clock_setting


# ================================================ #
# ====================== NDR ===================== #
# ================================================ #

# defines non_default routing rules (NDR) in the design --- #
create_routing_rule clk_network_NDR_root     -multiplier_spacing 2 -multiplier_width 2
create_routing_rule clk_network_NDR_internal -multiplier_spacing 2 -multiplier_width 2



# --- root >> from port to first buffer --- # 
set_clock_routing_rules -net_type root               			  \
						-clocks {nvdla_core_clk nvdla_falcon_clk} \
                        -rules clk_network_NDR_root               \
                        -max_routing_layer M7                     \
                        -min_routing_layer M4
						
# --- internal >> from first buffer to last buffer before sink --- #   
set_clock_routing_rules -net_type internal                        \
						-clocks {nvdla_core_clk nvdla_falcon_clk} \
                        -rules clk_network_NDR_internal           \
                        -max_routing_layer M7                     \
                        -min_routing_layer M4
						
# --- Sink >> from last buffer to sink(leaf) without NDR --- #     
set_clock_routing_rules -net_type sink                            \
						-clocks {nvdla_core_clk nvdla_falcon_clk} \
                        -default_rule                             \
                        -max_routing_layer M3                     \
                        -min_routing_layer M1
						
# --- Special Clock net all Rules --- # 
#report_clock_routing_rules   >  ../results/reports/clock_routing_rules.rpt

# ================================================ #
# ====================== DRC ===================== #
# ================================================ #

set_max_capacitance 45  [get_clocks  nvdla_core_clk]     -corners [all_corners] -clock_path  
set_max_capacitance 45  [get_clocks  nvdla_falcon_clk]   -corners [all_corners] -clock_path  

set_max_transition  0.4 [get_clocks  nvdla_core_clk ]    -corners [all_corners] -clock_path  
set_max_transition  0.4 [get_clocks  nvdla_falcon_clk ]  -corners [all_corners] -clock_path  


# ================================================ #
# ================ Skew & Latency ================ #
# ================================================ #  

set_clock_tree_options -corners [all_corners] -clocks [get_clocks  nvdla_core_clk]      -target_skew 0.1
set_clock_tree_options -corners [all_corners] -clocks [get_clocks  nvdla_falcon_clk]    -target_skew 0.1

set_clock_tree_options -corners [all_corners] -clocks [get_clocks  nvdla_core_clk]      -target_latency 0.1
set_clock_tree_options -corners [all_corners] -clocks [get_clocks  nvdla_falcon_clk]    -target_latency 0.1


#report_clock_setting   


# ================================================ #
# ================= CTS Options ================== #
# ================================================ # 

                     # ============================== Setup ============================== # 
# --- Limit Fanout and net_length of clock network  
set_app_options -list {cts.common.max_fanout {15}}
set_app_options -list {cts.common.max_net_length {140}}

# --- sinks marked as fixed after CTS
set_app_options -list {cts.compile.fix_clock_tree_sinks {true}}
# --- Aware with Congestion through Build CTS 
set_app_options -list {cts.compile.enable_global_route true}
# --- Remove each buffer inserted in clock tree before cts 
set_app_options -name cts.compile.remove_existing_clock_trees -value true 
# --- CTS Engine Try solve Hold by usefuel Skew and data path 
set_app_options -list {clock_opt.hold.effort        {high} }

                     # ============================== CCD ============================== # 
# --- Make CTS Engine work on CCD flow and Not used CTS Classic 
set_app_options -list {clock_opt.flow.enable_ccd    {true} }
# --- Prevent CCD optimiza Sequentail cells Boundary
set_app_options -list {ccd.optimize_boundary_timing {false}}
# ---  To prevent latency adjustment on boundary registers
set_app_options -name ccd.ignore_ports_for_boundary_identification \
                -value [list test_mode direct_reset_  dla_reset_rstn nvdla_core_rstn]
# --- Make clock arrive earlier at a sink by limit 
#set_app_options -name ccd.max_prepone -value 0.3
# --- Make clock arrive later at a sink by limit 
#set_app_options -name ccd.max_postpone -value 0.3 

					# ============================== Cross Talk ============================== # 
# --- Enable Check Asyn Reset  for removal and Recovery  
set_app_options -list {time.enable_si_timing_windows {true}}
set_app_options -list {time.si_enable_analysis       {true}}

                     # ============================== Time Setup ============================== # 
# --- Prevent tool check Reset path 
set_app_options -name time.disable_recovery_removal_checks      -value false
# --- Enhanced Time Check by adding CRPR for Timing path 
set_app_options -name time.remove_clock_reconvergence_pessimism -value true 


                     # ============================= Prefix ============================= # 
# --- Prefix for Optimization 
set_app_options -name cts.common.user_instance_name_prefix -value "CTS_"
set_app_options -name opt.common.user_instance_name_prefix -value "OPT_"



# ================================================ #
# =================== Clock_Opto ================= #
# ================================================ # 

# ------------------------------------------------------------------------------------------#
# ------------------------ clock_opt can do (3) main stages --------------------------------#
# ------------------------------------------------------------------------------------------#

# 1_) Clock Synthesize --> Build the Clock Network (Buffers and Inverters)
	  clock_opt -from build_clock -to build_clock
	  save_block -as cts_optv1_build
	  
# -------------------------------------------------------------------------------------------

# 2_) Route The Clock Network (Buffers and Inverters)
	 
	  clock_opt -from route_clock -to route_clock 
	  save_block -as cts_optv1_route
	  
# -------------------------------------------------------------------------------------------

# 3_) Final_Opto --> (Resizing and Relocation Cells &&  Resizing and Relocation Clock Network {BUFFs and INVs})
	 
	  clock_opt -from final_opto  -to final_opto 
	  save_block -as cts_optv1_final
	  
# -------------------------------------------------------------------------------------------


# == clock_opt --> Can make all the last steps (Build || Route || Opto) in single step --- #
# == clock_opt -from build_clock -to final_opto
clock_opt

# --- Check number of Cells inserted through CTS step  
sizeof_collection [get_cells "CTS_*"] 
sizeof_collection [get_cells "OPT_*"]


# ================================================ #
# ================== Connect_PG ================== #
# ================================================ # 
connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD" ]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS" ]

save_block -as ${design}_cts_f_optv1.design


# ----------------------------------------------------------------------------- # 

# ============================================================================= #
# ================== Fix max_cap and Max_wire_length Violations =============== #
# ============================================================================= # 
# --- to highlight and Debug any cell 
gui_change_highlight  -color red  -collection [get_cells "CTS_cts_buf_4246120611"]

change_selection [get_cells "u_NV_NVDLA_cdp_u_rdma_u_ig_base_addr_c_reg_7_"]
gui_zoom -window [gui_get_current_window -type Layout] -selection

change_selection [get_cells "u_NV_NVDLA_cdp_u_rdma_u_ig_U114"]
gui_zoom -window [gui_get_current_window -type Layout] -selection

change_selection [get_nets "ctsbuf_net_293124369"]
gui_zoom -window [gui_get_current_window -type Layout] -selection

# ----------------------------------------------------------------------------- # 
add_buffer_on_route -lib_cell saed32rvt_c/NBUFFX2_RVT     \
                    -cell_prefix "fix_wire_length_buf"    \
                    -location {746.943 1258.490}          \
                    -detect_layer						  \
                    [get_nets ctsbuf_net_293124369]
					
size_cell [get_cells fix_wire_length_buf*] saed32rvt_c/NBUFFX4_RVT					

check_routes -drc true
report_clock_qor -all -type drc_violators -nosplit

report_timing -delay_type max -trougth [get_pins      ] nvdla_core_clk							

# ================================================ #
# =================== Reports ==================== #
# ================================================ #
report_clock_tree_options                           > ../results/reports/clock_tree_options/clock_tree_options.rpt
report_routing_rules -verbose                       > ../results/reports/cts_routing_rules/cts_routing_rules.rpt
report_clock_routing_rules                          > ../results/reports/cts_clock_routing_rules/cts_clock_routing_rules.rpt
report_ports -verbose [get_ports *clk*]             > ../results/reports/cts_ports/cts_ports.rpt
report_clock_settings                               > ../results/reports/cts_clk_setting/cts_clk_setting.rpt
report_utilization -verbose                         > ../results/reports/utilization/utilization.rpt
report_constraints -all_violators                   > ../results/reports/all_violations/all_violations.rpt
check_pg_drc                                        > ../results/reports/pg_drc_final/pg_drc_final.rpt
check_routes -drc true                              > ../results/reports/DRC/DRC.rpt
report_design                                       > ../results/reports/design/design.rpt
report_cell                                         > ../results/reports/cells/cells.rpt
report_qor                                          > ../results/reports/qor/qor.rpt
report_timing -delay_type max -nosplit              > ../results/reports/setup_check_paths/setup_check_paths.rpt
report_timing -delay_type min -nosplit              > ../results/reports/hold_check_paths/hold_check_paths.rpt
report_timing -delay_type max -slack_lesser_than 0  > ../results/reports/setup_check_violation/setup_check_violation.rpt
report_timing -delay_type min -slack_lesser_than 0  > ../results/reports/hold_check_violation/hold_check_violation.rpt

#report_clock_timing -type interclock_skew -from_clock nvdla_core_clk -to_clock nvdla_falcon_clk 
#report_clock_timing -type summary
#report_clock_timing -type skew -nworst 3 -slack_lesser_than 0.0

#report_constraints -all_violators -max_capacitance
#report_constraints -all_violators -max_transition

									
# ================================================ #
# =================== End_Step =================== #
# ================================================ #
write_def  					         ../results/outputs/def/${design}.def
write_verilog -include {all}         ../results/outputs/netlist/${design}.v
write_sdc -output                    ../results/outputs/sdc/${design}.v

save_block -as ${design}_cts_optv1.design



