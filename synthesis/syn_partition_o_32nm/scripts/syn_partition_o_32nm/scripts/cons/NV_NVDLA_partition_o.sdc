 # ===================================================================
 # File: syn/cons/NV_NVDLA_partition_o.sdc
 # NVDLA Open Source Project
 # ===================================================================
 
 # ------------------ nvdla_core_clk --------------------------------------------------------
 create_clock -name nvdla_core_clk [get_ports nvdla_core_clk]  -period 12  -waveform {0 6}
 set_clock_transition -max -rise 0.05 [get_clocks nvdla_core_clk]
 set_clock_transition -max -fall 0.05 [get_clocks nvdla_core_clk]
 set_clock_transition -min -rise 0.05 [get_clocks nvdla_core_clk]
 set_clock_transition -min -fall 0.05 [get_clocks nvdla_core_clk]
 
 # ------------------ uncertainty --------------------------------------------------------
 set_clock_uncertainty -setup 0.05 [get_clocks nvdla_core_clk] 
 set_clock_uncertainty -hold  0.05 [get_clocks nvdla_core_clk] 
 
 
 # ------------------ input_output_delay --------------------------------------------------------
 set_input_delay  -max 0.1 -clock nvdla_core_clk [remove_from_collection [all_inputs] \
                                                 [get_ports {nvdla_core_clk direct_reset_ dla_reset_rstn nvdla_core_rstn}]]
 set_output_delay -max 0.1 -clock nvdla_core_clk [all_outputs]
 
 
 # ------------------ driving_cell and load --------------------------------------------------------
 set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [remove_from_collection [all_inputs] [get_ports nvdla_core_clk]]
 set_load 0.05 [all_outputs] 
 
 # ---------------------  ideal_network  ---------------------------------------------------
 set_ideal_network [get_ports nvdla_core_clk]
 set_ideal_network [get_ports test_mode]
 set_ideal_network [get_ports direct_reset_]
 set_ideal_network [get_ports dla_reset_rstn]
 set_ideal_network -no_propagate [get_nets nvdla_core_rstn]


# --------------------------  nvdla_falcon_clk  -----------------------------------------------
# ------------------------------------------------------------------------------------
create_clock -name nvdla_falcon_clk [get_ports nvdla_falcon_clk]  -period 4  -waveform {0 2}
set_clock_transition -max -rise 0.05 [get_clocks nvdla_falcon_clk]
set_clock_transition -max -fall 0.05 [get_clocks nvdla_falcon_clk]
set_clock_transition -min -rise 0.05 [get_clocks nvdla_falcon_clk]
set_clock_transition -min -fall 0.05 [get_clocks nvdla_falcon_clk]

# ------------------ uncertainty --------------------------------------------------------
set_clock_uncertainty -setup 0.05  [get_clocks nvdla_falcon_clk] 
set_clock_uncertainty -hold  0.05  [get_clocks nvdla_falcon_clk] 

# ------------------ input_output_delay --------------------------------------------------------
set_input_delay  -max 0.1 -clock nvdla_core_clk [remove_from_collection [all_inputs]  \
											    [get_ports {nvdla_falcon_clk direct_reset_ dla_reset_rstn nvdla_core_rstn}]]
set_output_delay -max 0.1 [all_outputs]

# ------------------ driving_cell and load --------------------------------------------------------
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [remove_from_collection [all_inputs] [get_ports nvdla_falcon_clk]]
set_load 0.05 [all_outputs] 

# ---------------------  ideal_network  ---------------------------------------------------
set_ideal_network   [get_ports nvdla_falcon_clk]

# --------------------- false_path between 2 Clocks ----------------------------------------------------
set_false_path   -from [get_ports direct_reset_]
set_false_path   -from [get_ports dla_reset_rstn]
set_false_path   -from [get_ports test_mode]
set_false_path   -from [get_ports pwrbus_ram_pd*]
set_false_path   -from [get_ports tmc2slcg_disable_clock_gating]
set_false_path   -from [get_ports global_clk_ovr_on]
set_false_path   -from [get_clocks nvdla_core_clk] -to [get_clocks nvdla_falcon_clk]
set_false_path   -from [get_clocks nvdla_falcon_clk] -to [get_clocks nvdla_core_clk]


# --------- Set Max Fanout to 20 to prevent high fanout net delays and signal degradation
set_max_fanout 20 [current_design]

# --------------------- max_area-----------------------------------------------------------------
set_max_area 0