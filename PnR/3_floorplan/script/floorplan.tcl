
# ============================================
# -- Project Name         : nv_small(NV_NVDLA_partition_o) 
# -- Target Technology    : SAED_EDK32 (32nm) 
# -- Target Corner        : Worst   
# -- Step Name            : Floorplan 
# -- Create By            : Moamen Ashraf
# -- Target Tool          : ICC2 (Synopsys) 
# -- Version              : 1.6
# ============================================

# ########################################## #
# ============= Variable Setup ============= #
# ########################################## #
set_host_option -max_cores 12 -num_process 2

set project_dir  "/home/ICer/EDA_projects/NVDLA"
set dlib_dir     "/home/ICer/EDA_projects/NVDLA/nv_small/PnR/2_design_library/results/library/NV_NVDLA_partition_o.dlib"
set design       "NV_NVDLA_partition_o"


# ########################################## #
# =============== dlib Setup =============== #
# ########################################## #

open_block ${dlib_dir}:${design}_dlib.design
start_gui
copy_block -from_block ${design}.dlib:${design}_dlib.design -to_block ${design}_floorplan_optv1
current_block ${design}_floorplan_optv1.design

# -- Metal layers Directions 
set_attribute [get_layers {M1 M3 M5 M7 M9}] routing_direction  horizontal
set_attribute [get_layers {M2 M4 M6 M8}]    routing_direction  vertical
 
# -----------------------------------------------------------------------------
					  
set_ignored_layers -min_routing_layer M1 -max_routing_layer M9

					  
# -- For power Layers 
set_ignored_layers -max_routing_layer M8 
set_ignored_layers -max_routing_layer M9


# -- site def attribute 
set Name_unit [get_site_defs]
set_attribute [get_site_defs $Name_unit] is_default true
set_attribute [get_site_defs  $Name_unit] symmetry {Y}

# ########################################## #
# ========== Initialize Floorplan ========== #
# ########################################## #


# --- All parameters related to core and die					 
initialize_floorplan -core_utilization 0.5    \
					 -core_offset {10}        \
					 -side_ratio {1 1}		  \
					 -flip_first_row false


# ########################################## #
# ============= Placement Pins ============= #
# ########################################## #
# --- Manual Placement Pins
											  
set_block_pin_constraints -self      -allowed_layers {M2 M3} \
                          -sides {1 2 3 4} -pin_spacing 1       \
                          -corner_keepout_num_tracks 1

place_pins -ports [get_ports -filter {direction == in }] 



																	 
set_block_pin_constraints -self      -allowed_layers {M2 M3} \
                          -sides {1 2 3 4} -pin_spacing 1       \
                          -corner_keepout_num_tracks 1

place_pins -ports [get_ports -filter {direction == out }] 

# --------------------------------------------------------------------------------------------- #

# --- If you need to place certain pins on a specific side --#
set G1_macro_256x3 { mcif2sdp_wr_rsp_complete \
                     noc2mcif_axi_b_bvalid    \ 
                     noc2mcif_axi_b_bid[2]    \ 
                     noc2mcif_axi_b_bid[1]    \ 
                     noc2mcif_axi_b_bid[0]    \
					 mcif2noc_axi_aw_awready  \
					 mcif2noc_axi_w_wready	  } 

set_individual_pin_constraints -ports [get_ports $G1_macro_256x3] \
                               -allowed_layers {M2}               \
                               -sides {2}
							   
place_pins -ports [get_ports $G1_macro_256x3] 


# --- Prevent the tool from move any ports ---- #
set_attribute [get_ports $G1_macro_256x3] physical_status fixed

# --- Allowed the tool unfix any ports ---- #
set_fixed_objects [get_selection] -unfix

		
# ------------------------------------------------------------------------------------------------------- #
# --- Auto Placement Pins --- #
 place_pins -ports [get_ports *]



# ----------------------------  Place ---> macros Auto  ------------------------------------------------- #
																										  #
set file_id [open "macro_pos_test.tcl" w]                                                                 #
																										  #
foreach_in_collection macro [get_cells -filter "is_hard_macro == true"] {                                 #
    set m_name [get_object_name $macro]                                                                   #
    set orig    [get_attribute $macro origin]                                                             #
    set orient [get_attribute $macro orientation]                                                         #
																										  #
    puts $file_id "set_attribute -objects \[get_cells $m_name\] -name origin -value {$orig}"              #
    puts $file_id "set_attribute -objects \[get_cells $m_name\] -name orientation -value {$orient}"       #
}                                                                                                         #
																										  #
close $file_id                                                                                            #
puts "=== Success: Current macro positions exported to 'macro_final_pos.tcl' ==="                         #
																										  #
# ------------------------------------------------------------------------------------------------------- #
set_attribute [get_cells -filter "is_hard_macro == true"] physical_status unrestricted					  #
																										  #
source macro_final_pos.tcl                                                                                #
																										  #
set_dont_touch_placement [get_cells -filter "is_hard_macro == true"]                                      #
																										  #
# ------------------------------------------------------------------------------------------------------- #


# ########################################## #
# ======= Add Halo (routing_blockage) ====== #
# ########################################## #

set my_macros [get_cells -hierarchical -filter "is_hard_macro==true || design_type==macro"]
create_keepout_margin -type routing_blockage -outer {0.08 0.08 0.08 0.08} -layers {M1} $my_macros


# --- Remove all keepout_margins in the current design ---- #
#remove_keepout_margins [get_keepout_margins]


# ########################################## #
# ======= Add placement_blockage =========== #
# ########################################## #

set my_macros [get_cells -hierarchical -filter "is_hard_macro==true || design_type==macro"]

foreach_in_collection macro $my_macros {
    set macro_name [get_object_name $macro]
    
    set bbox [get_attribute $macro bbox]
    set llx [lindex $bbox 0 0]
    set lly [lindex $bbox 0 1]
    set urx [lindex $bbox 1 0]
    set ury [lindex $bbox 1 1]
    
    set new_llx [expr $llx - 8.6]
    set new_lly [expr $lly - 8.6]
    set new_urx [expr $urx + 8.6]
    set new_ury [expr $ury + 8.6]
    
    create_placement_blockage -boundary "{{$new_llx $new_lly} {$new_urx $new_ury}}" -type hard -name "blockage_${macro_name}"
}

#remove_placement_blockage -all

	
# ########################################## #
# =========== Routing Blockage ============= #
# ########################################## #

set my_macros [get_cells -hierarchical -filter "is_hard_macro==true || design_type==macro"]

foreach_in_collection macro  $my_macros {
    
set m_name [get_object_name $macro]
set m_boundary [get_attribute $macro boundary]
    
create_routing_blockage -layers {M1 M2 M3 M4 M5}         \
                        -boundary $m_boundary            \
						-zero_spacing					 \
                        -net_types {signal clock}        \
                        -name_prefix "R_block_${m_name}" }


# --- Remove all {routing_blockages and placement_blockages and keepout_margins} in the current design ---- #
remove_routing_blockages -all
remove_placement_blockage -all
remove_keepout_margins [get_keepout_margins]

	
# ########################################## #
# ================= Reports ================ #
# ########################################## #

report_ports [all_inputs]               > ../results/reports/input_port/input_port.rpt
report_ports [all_outputs]              > ../results/reports/output_port/output_port.rpt
report_cell                             > ../results/reports/cells/cells.rpt
report_nets                             > ../results/reports/nets/nets.rpt
report_qor                              > ../results/reports/qor/qor.rpt
report_timing                           > ../results/reports/timing/timing.rpt 
report_timing -delay max -max_paths 2   > ../results/reports/two_critical_path_setup/two_critical_path_setup.rpt
report_utilization                      > ../results/reports/utilization/utilization.rpt
get_placement_blockages                 > ../results/reports/Blockage/Blockage.rpt


# ########################################## #
# ================ Save Block ============== #
# ########################################## #
write_def /home/ICer/EDA_projects/NVDLA/nv_small/PnR/3_floorplan/results/outputs/def/${design}.def

write_def                     ../results/outputs/def/${design}.def
write_verilog -include {all}  ../results/outputs/netlist/${design}.v
write_sdc -output             ../results/outputs/sdc/${design}.sdc


# FloorPlan_Backup
write_floorplan -output  /home/ICer/EDA_projects/NVDLA/nv_small/PnR/3_floorplan/FloorPlan_Backup/fp.tcl

save_block  -as ${design}_floorplan_optv1
