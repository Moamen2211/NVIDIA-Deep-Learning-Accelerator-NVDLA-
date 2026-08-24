# ============================================
# -- Project Name         : nv_small(NV_NVDLA_partition_a) 
# -- Target Technology    : SAED_EDK32 (32nm)  
# -- Target Corner        : Worst  
# -- Step Name            : PowerPlan 
# -- Create By            : Moamen Ashraf
# -- Target Tool          : ICC2 (Synopsys) 
# -- Version              : 1.5
# ============================================

# ########################################## #
set_host_option -max_cores 12 -num_process 2

# ########################################## #
# ============= Variable Setup ============= #
# ########################################## #

set project_dir  "/home/ICer/EDA_projects/NVDLA"
set dlib_dir     "/home/ICer/EDA_projects/NVDLA/nv_small/PnR/2_design_library/results/library/NV_NVDLA_partition_o.dlib"
set design       "NV_NVDLA_partition_o"

# ########################################## #
# =============== dlib Setup =============== #
# ########################################## #
open_block  ${dlib_dir}:${design}_floorplan_optv1.design
start_gui
current_block ${design}_floorplan_optv1.design

copy_block -from_block ${design}.dlib:${design}_floorplan.design -to_block ${design}_powerplan
current_block ${design}_floorplan.design

# ########################################## #
# ============== Layers Setup ============== #
# ########################################## #
# -- Check Reserved Layers for Powerring and Straps 
report_ignored_layers
# -- acess resrved layers for conntection  
remove_ignored_layers -all -max_routing_layer -min_routing_layer
report_ignored_layers

# ########################################## #
# ============== Initalization ============= #
# ########################################## #
remove_pg_via_master_rules -all 
remove_pg_patterns         -all 
remove_pg_strategies       -all 
remove_pg_strategy         -all 

# ########################################## #
# ============== Ring VDD/VSS ============== #
# ########################################## #
# -- Create region,patterns , Define strategie,Compile stra  
# --- Variables 
set ring_offset   1 ;  
set ring_width    3.5 ; 
set ring_spacing  2 ; 
set hm_top        M9 ;      
set vm_top        M8 ;    
set name_stratege core_ring;

# ---- Create region to define region pg network			
create_pg_region power_ring_region -core -expand_by_edge  \
                 "{{side: 1} {offset: $ring_offset}}      \
                  {{side: 2} {offset: $ring_offset}}      \ 
                  {{side: 3} {offset: $ring_offset}}      \
                  {{side: 4} {offset: $ring_offset}} "
           
# --- create Power Ports {VDD , VSS}
create_port VDD -direction in
create_port VSS -direction in

# --- create Ring Nets {VDD , VSS}
create_net -power  VDD
create_net -ground VSS

# --- connect Power Ports with the Ring Nets 
connect_pg_net -net VDD [get_ports VDD]
connect_pg_net -net VSS [get_ports VSS]



# --- Create Pattern Rings Structure (name_pattern , Layers (V,H) , Width(V,H) , Spaceing(V,h))				 
create_pg_ring_pattern ring_pattern                                            \
                 -horizontal_layer   $hm_top       -vertical_layer $vm_top     \
                 -horizontal_width   $ring_width   -vertical_width $ring_width \
                 -horizontal_spacing $ring_spacing -vertical_spacing $ring_spacing


# --- stratgey for design Rings (name_startgey , name_ring_region , name_ring_pattern , Nets  )
set_pg_strategy $name_stratege                        \
                -pg_regions { power_ring_region }     \
                -pattern    {{ name: ring_pattern} { nets: "VSS VDD" }}

 
# ---- Compile ----
compile_pg -strategies $name_stratege



# --- if you need last compile 
#compile_pg -undo


# ########################################## #
# ============= Straps VDD/VSS ============= #
# ########################################## #
# --- Create Mesh/Straps pattern {Layer, Width, Offset, Pitch }
create_pg_mesh_pattern straps_vddvss -layers                                                             \
        {{{vertical_layer:  M8} {width: 1.5} {pitch: 13} {spacing: interleaving} {offset: 1} {trim:true}}  \
		{{horizontal_layer: M9} {width: 1.5} {pitch: 10} {spacing: interleaving} {offset: 1} {trim: true}}} 
		

# --- Strategie for design mesh 
set_pg_strategy mesh_vddvss -core \
	-pattern {{pattern: straps_vddvss} {nets: "VDD VSS"}} \
	-extension {{stop: design_boundary_and_generate_pin}}


# --- Compile /Implement Mesh  
compile_pg -strategies mesh_vddvss



# --- if you need remove last compile     
#compile_pg -undo


# ------------------------------------------------------------------------------------------------------------------


# ######################################################################
# ================= Connect VDD_VSS_Macros  ========================== #
# ######################################################################

set macro_names [get_cells -filter "is_hard_macro == true"]

# -------------------------- Connect VDD_VSS_Macros With VDD_VSS_Global_Ring ----------------------------#
connect_pg_net -net VDD [get_pins -physical -of_objects [get_cells $macro_names] -filter "name =~ *VDD*"]
connect_pg_net -net VSS [get_pins -physical -of_objects [get_cells $macro_names] -filter "name =~ *VSS*"]


# -------------------------- Create Pattern of macros ----------------------------#					 
create_pg_macro_conn_pattern   macro_ring_pattern          \
                              -pin_conn_type scattered_pin \
							  -nets {VDD VSS}              \
                              -layers {M9 M8}              \
							  -pin_layers {M5}             
							                 


# -------------------------- Define Strategy of macros ----------------------------#								  
set_pg_strategy  connect_vdd_vss_macros                                    \
                 -macros [get_cells $macro_names ]                         \
                 -pattern {{pattern: macro_ring_pattern} {nets: "VDD VSS"}}


# ---------------------- Compile and The Tool Try To Fix DRCs --------------------#		
compile_pg -strategies connect_vdd_vss_macros 

#compile_pg -undo


# ----------------------------------------------------------------------------#
# --- Connectivity check for PG networks, PG Macros ---#
# ----------------------------------------------------------------------------#
check_pg_connectivity 
check_pg_missing_vias 



# ########################################## #
# ============= Rails VDD/VSS ============== #
# ########################################## #

# --- Connect pins of cells and submodules  to rails   
# hierarchical [include top module + sub modules]
connect_pg_net -net VDD [get_pins -hierarchical */VDD]
connect_pg_net -net VSS [get_pins -hierarchical */VSS]

# --- Variables 
set rail_pattern   std_cell_rail
set rail_startegie rails_M1  
set rail_layer     M1  
set rail_width     0.06

# ---- Create rails {Layer , Width}
create_pg_std_cell_conn_pattern $rail_pattern -layers $rail_layer -rail_width $rail_width

set_pg_strategy $rail_startegie -core -pattern {{name: std_cell_rail} {nets: "VDD VSS"}} 

       
# --- Compile / Implement Rail   
compile_pg -strategies $rail_startegie 

# --- if you need remove last compile     
#compile_pg -undo




# ########################################## #
# ============== VIAs VDD/VSS ============== #
# ########################################## #

# --- To Complete connections between VIAS 
create_pg_vias -nets {VDD VSS} -from_layers M8  -to_layers M1  -drc no_check

# --- PG DRCs after complete connection expected hugh number of DRCs  
check_pg_drc

# ----------------------------------------------------------------------------#
# --- Connectivity check for PG networks, standard cell PG pins, PG Macros ---#
# ----------------------------------------------------------------------------#
check_pg_connectivity 
check_pg_missing_vias 

# ----------------------------------------------------------------------------------------------------------------- 


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
check_pg_drc                            > ../results/reports/pg_drc/pg_drc.rpt
check_pg_connectivity                   > ../results/reports/pg_connectivity/pg_connectivity.rpt
check_pg_missing_vias                   > ../results/reports/missing_via/missing_via.rpt


# ########################################## #
# ================ Save Block ============== #
# ########################################## #
write_def                     ../results/outputs/def/${design}.def
write_verilog -include {all}  ../results/outputs/netlists/${design}.v
write_sdc -output             ../results/outputs/sdc/${design}.sdc

save_block -as ${design}_powerplan_optv1
