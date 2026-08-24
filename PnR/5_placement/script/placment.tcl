# ============================================
# -- Project Name         : nv_small(NV_NVDLA_partition_o) 
# -- Target Technology    : SAED_EDK32 (32nm)   
# -- Target Corner        : Worst 
# -- Step Name            : Placement  
# -- Create By            : Moamen Ashraf
# -- Target Tool          : ICC2 (Synopsys) 
# -- Version              : 1.7
# ============================================

# ########################################## #
# ============= Variable Setup ============= #
# ########################################## #

set_host_options -max_cores 12 -num_process 2

set project_dir  "/home/ICer/EDA_projects/NVDLA"
set dlib_dir     "/home/ICer/EDA_projects/NVDLA/nv_small/PnR/2_design_library/results/library/NV_NVDLA_partition_o.dlib"
set design       "NV_NVDLA_partition_o"

# ########################################## #
# =============== dlib Setup =============== #
# ########################################## #

open_block  ${dlib_dir}:${design}_powerplan_optv1.design
current_block ${design}_powerplan_optv1.design

start_gui
copy_block -from_block ${design}.dlib:${design}_powerplan_optv1.design -to_block ${design}_placement_optv1

# ########################################## #
# ================ Connect PG ============== #
# ########################################## #
connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD" ]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS" ]

# ########################################## #
# ============ Important Checks ============ #
# ########################################## #

# --- Ensure the PG network is good Execpt Std cells because not placed 
check_pg_connectivity -nets VDD -check_std_cell_pins none
check_pg_connectivity -nets VSS -check_std_cell_pins none

# ---  Catch PG shorts/spacing issues early before placement
check_pg_drc -ignore_std_cells

# --- Ensure all required stack-ups are present for PG.
check_pg_missing_vias

# --- Legality check before placement for Macros and IPs 
# check_legality -verbose 

# --- check for issues that could block placement.
check_design -checks pre_placement_stage


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

# ---- Prevent all the ideal networks to make HFNS exclude clocks --- #
remove_ideal_network  "direct_reset_ dla_reset_rstn test_mode u_sync_core_reset/sync_reset_synced_rstn/UI_test_mode_outmux/U2/Y u_sync_core_reset_sync_reset_synced_rstn_UI_test_mode_outmux_U2/Y"


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
						
						
						
# ########################################## #
# =============== BOUND Cell =============== #
# ########################################## #
# --- Don't found Boundary or Endcap cells 
# --- get_lib_cells */*END*
# --- get_lib_cells */*BOUND*
# --- We will insert DCap cells Repleced 

# ------------------- Checkerboard Blockages -----------------------------
create_tap_cells -lib_cell saed14rvt_ss0p72vm40c/SAEDRVT14_TAPDS \
                 -distance 30 \
                 -pattern checkerboard


					  
set Bound_cells [get_lib_cells */*DCAP_RVT*]
create_boundary_cells -prefix boundary_cell               \
                      -left_boundary_cell    $Bound_cells \
                      -right_boundary_cell   $Bound_cells \
                      -bottom_boundary_cells $Bound_cells \
                      -top_boundary_cells    $Bound_cells   

					  
# --- We will found this Warning after run --> " create_boundary_cells " ----                  				  
icc2_shell> create_boundary_cells -prefix boundary_cell -top_boundary_cells $Bound_cells
Warning: The create_boundary_cells command will be deprecated and replaced with the compile_boundary_cells. 


# --- remove all DCAP cells 
remove_cell boundary*

# ###############################################################################
# ------- DEFINING AND INSERTING BOUNDARY CELLS OR (DCAP CELLS) FOR SAED32 ---- #
# ###############################################################################

set Bound_cells [get_lib_cells */*DCAP_RVT*]
set_boundary_cell_rules -prefix boundary_cell               \
                        -left_boundary_cell    $Bound_cells \
                        -right_boundary_cell   $Bound_cells \
                        -bottom_boundary_cells $Bound_cells \
                        -top_boundary_cells    $Bound_cells
compile_boundary_cells

       
# ########################################## #
# === Placement options global settings ==== #
# ########################################## #
# --- Let placer control density and timing automatically < balance timing vs congestion> 
set_app_options -name place.coarse.auto_density_control  -value true
set_app_options -name place.coarse.auto_timing_control   -value true
set_app_options -list {place.coarse.max_density {0.32}}
set_app_options -list {place.coarse.congestion_driven_max_util {0.4}}
set_app_options -list {opt.common.max_net_length {140}}

# --- Enable advanced legalizer for better legalization quality and row alignment.
set_app_options -name place.legalize.enable_advanced_legalizer   -value true
set_app_options -name place.legalize.legalizer_search_and_repair -value true

# --- Improves legalization predictability during coarse placement
set_app_options -name place.coarse.legalizer_driven_placement    -value true

# --- Enable place opt take in Consider CCD "Concurrent clock Data"
set_app_options -list {place_opt.flow.enable_ccd {true}}

# --- Limit Fanout Tie cell 
set_app_options -list {opt.tie_cell.max_fanout 5}

# ---- Enhance Optimization Engine 
set_app_options -list {opt.timing.effort {high}}
set_app_options -list {place_opt.congestion.effort {high}}
set_app_options -list {place_opt.final_place.effort {high}}
set_app_options -list {opt.common.max_fanout {15}}
set_app_options -list {time.high_fanout_net_threshold {20}}

# --- Enable Check Asyn Reset  for removal and Recovery  
set_app_options -name time.disable_recovery_removal_checks -value false

# *************************** DFT DEF file ************************** #
# --- If you need continue without def file    
set_app_options -list {place.coarse.continue_on_missing_scandef {true}}
# ******************************************************************* #


                     # ============================= Prefix ============================= # 
# --- Prefix for Optimization 
set_app_options -name opt.common.user_instance_name_prefix -value "PLACE_"



# ---Constrains placer to preferred routing layers to avoid using top thick metals for local logic
set_ignored_layers -min_routing_layer M2 -max_routing_layer M7
set_app_options -name route.common.net_max_layer_mode -value hard
set_app_options -name route.common.net_min_layer_mode -value allow_pin_connection


# ########################################## #
# ============= Clock Network  ============= #
# ########################################## #
# ---- prevent placement Engine implement HFNS on Clock network 
# ---- Keep clocks ideal during placement (CTS will build them later)
remove_ideal_network -all
set_ideal_network [get_ports {nvdla_core_clk nvdla_falcon_clk}] 


# ------ Fixed macros in design before Placement ---------------------
set_fixed_objects [get_cells -filter "is_hard_macro==true"]

# ------ TO unfix macros ---------------------
set_fixed_objects [get_cells -filter "is_hard_macro==true"] -unfix



# ########################################## #
# ============== Spare Cells  ============== #
# ########################################## #
# --- Get library cells to insert as spare cells 
# --- get_lib_cell */*X1 --> becouse don't take more area in the floorplan
# --- add spare cells without legalized 

set INV  "saed32rvt_c/INVX1_RVT" 
set NAND "saed32rvt_c/NAND2X1_RVT"
set NOR  "saed32rvt_c/NOR2X1_RVT" 
set XNOR "saed32rvt_c/XNOR2X1_RVT"
set MUX  "saed32rvt_c/MUX21X1_RVT" 
set DFF  "saed32rvt_c/DFFARX1_RVT"


add_spare_cells -num_cells "${INV} 4 ${NAND} 4 ${NOR} 4 ${XNOR} 4 ${MUX} 4 ${DFF} 4"  \
                -cell_name SpareCell                                                  \
                -density_aware_ratio 0                                       		  \
                -input_pin_connect_type tie_low                         			            
 	            	

# -ignore_blockage_types {blockage_type_list}
# . The command allows spare cells to be added inside the blockage				
# -repetitive_window {30 30}
								   	
set spare_cells [get_cells *SpareCell*]

# ---Spread Cells 
#spread_spare_cells -cells $spare_cells 

# --- legalized Sparecells 
place_eco_cells -cells $spare_cells -legalize_only

# --- remove spare_cells
# --- remove_cells $spare_cells

# ########################################## #
# ================ Connect PG ============== #
# ########################################## #
connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD" ]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS" ]


# ########################################## #
# =============== Tie Cells ================ #
# ########################################## #

set tie_cells_low    [get_lib_cells */*TIEL_RVT]

# ---- If Found attributes of TIE Cells  { dont_touch = true && dont_use = true } ---------- #
set_attribute $tie_cells_low  dont_touch false
set_attribute $tie_cells_low  dont_use   false

		  
add_tie_cells -objects $spare_cells               \
			  -tie_low_lib_cells  $tie_cells_low  \
			  -legalize  
			  
set_dont_touch    $spare_cells
set_fixed_objects $spare_cells


# --- change_selection [get_cells "*SpareCell_4_5"]
# --- gui_zoom -window [gui_get_current_window -type Layout] -selection


# ########################################## #
# ================ Connect PG ============== #
# ########################################## #
connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD" ]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS" ]




# ###################################################################################### #
# =  Add Isolation Buffers on all I/O ports and Macro pins to avoid max cap violations = #
# ###################################################################################### #


set my_buffer "saed32rvt_c/NBUFFX2_RVT"
set my_ports [get_ports * -filter "port_type == signal && direction != inout"]
set macro_cells [get_cells -hier -filter "is_hard_macro == true"]
set macro_pins [get_pins -of_objects $macro_cells -filter "port_type == signal"]
set target_objects [add_to_collection $my_ports $macro_pins]
 
foreach_in_collection obj $target_objects {
    set obj_name [get_object_name $obj]
    regsub -all {[/\[\]]} $obj_name "_" clean_name
    set new_cell_name "iso_buf_${clean_name}"
    set new_net_name  "iso_net_${clean_name}"
    set obj_type [get_attribute $obj object_class]
 
    if {$obj_type == "port"} {
        set target_net [get_nets -of_objects $obj]
        if {[sizeof_collection $target_net] > 0} {
            set loads [get_pins -of_objects $target_net -filter "direction == in || direction == inout"]
            set port_loads [get_ports -of_objects $target_net -filter "direction == out"]
            if {[sizeof_collection $loads] > 0 || [sizeof_collection $port_loads] > 0} {
                catch {add_buffer $target_net \
                                  -lib_cell $my_buffer \
                                  -new_cell_names $new_cell_name \
                                  -new_net_names $new_net_name}
            } else {
                echo "Skipping Port $obj_name: Net has no loads."
            }
        }
    } else {
        set target_net [get_nets -of_objects $obj]
        if {[sizeof_collection $target_net] > 0} {
            set net_pins [get_pins -of_objects $target_net]
            set net_ports [get_ports -of_objects $target_net]
            if {([sizeof_collection $net_pins] + [sizeof_collection $net_ports]) > 1} {
                catch {insert_buffer $obj $my_buffer \
                                     -new_cell_names $new_cell_name \
                                     -new_net_names $new_net_name}
            } else {
                echo "Skipping Macro Pin $obj_name: Pin is floating/unconnected."
            }
        } else {
            echo "Skipping Macro Pin $obj_name: No net attached."
        }
    }
}
 
magnet_placement [get_ports *] -multiple_long_port_mode auto
 
set iso_cells [get_cells "iso*"]
echo "Total Isolation Buffers Inserted: [sizeof_collection $iso_cells]"
 
if {[sizeof_collection $iso_cells] > 0} {
    legalize_placement -cells $iso_cells
    set_fixed_objects $iso_cells
 
 
}
# --- Magnet Placement for Macros 
magnet_placement [get_flat_cells -filter "is_hard_macro"]


# ------------------------------------------------------------------------------------------------------ #

# --- This Port have Very high Capacitance and high Transition --- #
insert_buffer [get_ports cmac_a2csb_resp_valid] saed32rvt_c/NBUFFX16_RVT



# ################################################## #
# =========== Create placement blockages =========== #
# ################################################## #
# Create placement blockages along the core boundary to prevent standard cells from being placed too close to the core boundary.
# By ---> GUI.
# this is the specific area, it's contain on the cell congestion  {336.889 224.016} {481.973 533.336}
# ########################################## #
# =========== Detailed Placement =========== #
# ########################################## #
# --- Detailed Placement divided to { Coarse placment , legalized placement  } 
# --- Performs coarse {approximate locations for cells, Cells overlap,No logic optimization }

create_placement -effort high                    \
                 -timing_driven                  \
                 -congestion                     \
                 -congestion_effort  high        \
                 -buffering_aware_timing_driven 

# --- Legalized placement each  illegal cell will be legal location 
legalize_placement  -incremental 

# --- Checks 
check_legality      -verbose
report_net_fanout   -threshold 25


# ########################################## #
# ============ Attrbuite Cell ============== #
# ########################################## #

# --- To be check and know all attrbuites about class cell 
list_attributes  -application -class lib_cell -nosplit > attrbuites_list.rpt
 
# --- To be report all attrbuites about specfic cell --> [ TIEH && TIEL ] 
report_attributes -application -nosplit [get_lib_cells */*TIEH_RVT] > TIEH_attr.rpt
report_attributes -application -nosplit [get_lib_cells */*TIEL_RVT] > TIEL_attr.rpt



# ################################ #
# ========= check_pg_drc ========= #
# ################################ #		  
check_pg_drc 

# -- After run check_pg_drc we will found..... 
# -- icc2_shell> check_pg_drc
# -- we will found --> Many shorts on M1 <--
   
                      =====================================
							# === The Solution is === #
					  =====================================
# -- After insertion { DCAP , BOUNDARY , FILLER } cells , Tool does't know --> pins of this cells related to {VDD VSS} nets 
# -- Must be connect_pg_nets {VDD VSS} of this cells with {VDD VSS} Rails
connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD" ]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS" ]

# ########################################## #
# ========= placement optimization ========= #
# ########################################## #

# ------------------------------------------------------------------------------------------#
# ----------------------- place_opt can do (5) main stages ---------------------------------#
# ------------------------------------------------------------------------------------------#

# 1_) initial_placement --> (coarse_placement)
	  place_opt -from initial_place  -to initial_place
# -------------------------------------------------------------------------------------------

# 2_) initial_drc --> (HFNS To => {RST & Test_mode & ......} , Execpt Clock)
	  place_opt -from initial_drc    -to initial_drc 
# -------------------------------------------------------------------------------------------

# 3_) initial_opt For Timing --> (Cells Upsizing for critical paths && Logical Restructing)
	  set_lib_cell_purpose -exclude optimization  [get_lib_cells */*] 
	  place_opt -from initial_opto   -to final_opto 
# -------------------------------------------------------------------------------------------

# 4_) final_placement --> (legalize_placement)
	  place_opt -from final_place    -to final_place 
# -------------------------------------------------------------------------------------------

# 5_) final_opt --> (Make optimization for any thing {Timing & Power & Area})
	  place_opt -from final_opto     -to final_opto 
# -------------------------------------------------------------------------------------------

# --- place_opt --> can do all the (5) last stages --- #
place_opt


# ########################################## #
# ========= Insertion Tie Cells   ========== #
# ########################################## #

# --- Optionally set max fanout/cap for tie networks
set_attribute [get_lib_cells */*TIE*] max_fanout 5

set tie_cells_high   [get_lib_cells */*TIEH_RVT]
set tie_cells_low    [get_lib_cells */*TIEL_RVT]

# ---- If Found attributes of TIE Cells  { dont_touch = true && dont_use = true } ---------- #
set_attribute $tie_cells_high dont_touch false
set_attribute $tie_cells_high dont_use   false
set_attribute $tie_cells_low  dont_touch false
set_attribute $tie_cells_low  dont_use   false

add_tie_cells -tie_low_lib_cells  $tie_cells_low   \
              -tie_high_lib_cells $tie_cells_high 
	

legalize_placement -incremental

connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD" ]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS" ]

save_block -as ${design}_placement_f_optv1


# --- Get all cells inserted through placemnt step 
sizeof_collection [get_cells "PLACE_*"]



# ----- report_net_fanout -----#
report_net_fanout -threshold 25 > net_fanout_25.rpt
report_net_fanout -threshold 30 > net_fanout_30.rpt
report_net_fanout -threshold 35 > net_fanout_35.rpt
report_net_fanout -threshold 40 > net_fanout_40.rpt


# --- To solve (Setup || Hold) violations --- # 
refine_opt




# ########################################## #
# ================= Reports ================ #
# ########################################## #
report_ports [all_inputs]                                    > ../results/reports/input_port/input_port.rpt
report_ports [all_outputs]                                   > ../results/reports/output_port/output_port.rpt
report_cell                                                  > ../results/reports/cells/cells.rpt
report_nets                                                  > ../results/reports/nets/nets.rpt
report_qor                                                   > ../results/reports/qor/qor.rpt
report_timing                                                > ../results/reports/timing/timing.rpt 
report_utilization                                           > ../results/reports/utilization/utilization.rpt
get_placement_blockages                                      > ../results/reports/Blockage/Blockage.rpt
check_pg_drc                                                 > ../results/reports/pg_drc/pg_drc.rpt
check_pg_connectivity                                        > ../results/reports/pg_connectivity/pg_connectivity.rpt
check_pg_missing_vias                                        > ../results/reports/missing_via/missing_via.rpt
report_timing -delay max -max_paths 2                        > ../results/reports/two_critical_path_setup/two_critical_path_setup.rpt
report_timing -delay min -max_paths 2                        > ../results/reports/two_critical_path_hold/two_critical_path_hold.rpt
report_timing -delay max -max_paths 2 -slack_lesser_than 0   > ../results/reports/two_critical_path_setup_violations/two_critical_path_setup_violations.rpt
report_timing -delay min -max_paths 2 -slack_lesser_than 0   > ../results/reports/two_critical_path_hold_violations/two_critical_path_hold_violations.rpt
report_constraints  -all_violators                           > ../results/reports/all_violators.rpt



# ########################################## #
# ================ Save Block ============== #
# ########################################## #
write_def                     ../results/outputs/def/${design}.def
write_verilog -include {all}  ../results/outputs/netlist/${design}.v
write_sdc -output             ../results/outputs/sdc/${design}.sdc

save_block -as ${design}_placement_optv2



# ############################################################################################################# #
# ================= If you need to show the specific ports or cells {STD cells || Macro_cells} ================ #
# ############################################################################################################# #


change_selection [get_cells -hierarchical "u_NV_NVDLA_mcif_u_read_u_cq_ram_r_nv_ram_rws_256x7_ram_Inst_256X7_1"]
gui_zoom -window [gui_get_current_window -type Layout] -selection

change_selection [get_ports "nvdla_core_clk"]
gui_zoom -window [gui_get_current_window -type Layout] -selection

change_selection [get_ports "nvdla_falcon_clk"]
gui_zoom -window [gui_get_current_window -type Layout] -selection

change_selection [get_ports "test_mode"]
gui_zoom -window [gui_get_current_window -type Layout] -selection

change_selection [get_ports "direct_reset_"]
gui_zoom -window [gui_get_current_window -type Layout] -selection

change_selection [get_ports "dla_reset_rstn"]
gui_zoom -window [gui_get_current_window -type Layout] -selection


change_selection [get_pins "PLACE_HFSINV_16419_1992/Y"]
gui_zoom -window [gui_get_current_window -type Layout] -selection


# ------------------------------------------------------------------------
# ========= To remove specific cell ========= #
# 1- Select the cell from GUI
# 2- run this command in the terminal --> remove_cells [get_selection]
# ------------------------------------------------------------------------


# ############################################################################################################# #
# ##################################### -- Finish -- ########################################################## #
# ############################################################################################################# #
