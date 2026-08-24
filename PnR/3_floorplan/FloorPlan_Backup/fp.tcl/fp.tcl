################################################################################
#
# Created by icc2 write_floorplan on Wed Jul  1 23:45:21 2026
#
################################################################################


set _dirName__0 [file dirname [file normalize [info script]]]

################################################################################
# Rows
################################################################################

remove_site_arrays -all

remove_site_rows -all

################################################################################
# Pins
################################################################################

set __pins [get_terminals -quiet]
if {[sizeof_collection $__pins] > 0} {
set __termShapes [get_shapes -of_objects [get_terminals * -quiet] -quiet]
if {[sizeof_collection $__termShapes] > 0} {
remove_shapes $__termShapes
}
set __termVias [get_vias -of_objects [get_terminals * -quiet] -quiet]
if {[sizeof_collection $__termVias] > 0} {
remove_vias $__termVias
}
}

################################################################################
# Net shapes and vias
################################################################################

set __netshapes [get_shapes -quiet]
if {[sizeof_collection $__netshapes] > 0} {
remove_shapes $__netshapes
}

set __vias [get_vias -quiet]
if {[sizeof_collection $__vias] > 0} {
remove_vias $__vias
}

################################################################################
# Read DEF
################################################################################

read_def  ${_dirName__0}/floorplan.def

################################################################################
# Voltage areas
################################################################################

remove_voltage_areas -all



################################################################################
# User attributes of voltage areas
################################################################################

################################################################################
# Site arrays
################################################################################

create_site_array -name unit_row -site unit -default -boundary { {10.0000 \
    10.0000} {1464.0320 1462.9680} } -flip_first_row false -flip_alternate_row \
    true -transparent false -direction horizontal -x_margin 0.0000 -y_margin \
    0.0000 -core_offset { 10.0000 10.0000 } -aligned true

################################################################################
# User attributes of site arrays
################################################################################


################################################################################
# User attributes of site rows
################################################################################


################################################################################
# Keepouts
################################################################################

create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_mcif_u_read_u_cq_ram_r_nv_ram_rws_256x7_ram_Inst_256X7_1 }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_mcif_u_read_u_cq_ram_r_nv_ram_rws_256x7_ram_Inst_256X7_0 }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_mcif_u_read_u_cq_adr_ram_r_nv_ram_rwst_256x8_ram_Inst_256X8_1 }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_mcif_u_read_u_cq_adr_ram_r_nv_ram_rwst_256x8_ram_Inst_256X8_0 }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_mcif_u_write_u_cq_ram_r_nv_ram_rws_256x3_ram_Inst_256X4_1 }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_mcif_u_write_u_cq_ram_r_nv_ram_rws_256x3_ram_Inst_256X4_0 }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_mcif_u_write_u_cq_adr_ram_r_nv_ram_rwst_256x8_ram_Inst_256X8_1 }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_mcif_u_write_u_cq_adr_ram_r_nv_ram_rwst_256x8_ram_Inst_256X8_0 }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_cdp_u_rdma_u_eg_u_lat_fifo_ram_r_nv_ram_rwsp_61x65_ram_Inst_61X66_2 }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_cdp_u_rdma_u_eg_u_lat_fifo_ram_r_nv_ram_rwsp_61x65_ram_Inst_61X66_1 }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_cdp_u_rdma_u_eg_u_lat_fifo_ram_r_nv_ram_rwsp_61x65_ram_Inst_61X66_0 }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_cdp_u_dp_u_NV_NVDLA_CDP_DP_syncfifo_u_data_sync_fifo_ram_r_nv_ram_rwsthp_80x9_ram_Inst_80X9 \
    }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_cdp_u_dp_u_NV_NVDLA_CDP_DP_syncfifo_u_info_sync_fifo_ram_r_nv_ram_rwsthp_80x15_ram_Inst_80X15 \
    }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_cdp_u_dp_u_NV_NVDLA_CDP_DP_syncfifo_u_sumpd_sync_fifo_ram_r_nv_ram_rwsthp_60x21_ram_Inst_60X22 \
    }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_pdp_u_rdma_u_eg_u_lat_fifo_ram_r_nv_ram_rwsp_61x65_ram_Inst_61X66_2 }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_pdp_u_rdma_u_eg_u_lat_fifo_ram_r_nv_ram_rwsp_61x65_ram_Inst_61X66_1 }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_pdp_u_rdma_u_eg_u_lat_fifo_ram_r_nv_ram_rwsp_61x65_ram_Inst_61X66_0 }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_pdp_u_core_u_cal2d_bank0_uram_0_r_nv_ram_rws_128x18_ram_Inst_128X18 }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_pdp_u_core_u_cal2d_bank1_uram_0_r_nv_ram_rws_128x18_ram_Inst_128X18 }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_pdp_u_core_u_cal2d_bank2_uram_0_r_nv_ram_rws_128x18_ram_Inst_128X18 }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_pdp_u_core_u_cal2d_bank3_uram_0_r_nv_ram_rws_128x18_ram_Inst_128X18 }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_pdp_u_core_u_cal2d_bank4_uram_0_r_nv_ram_rws_128x18_ram_Inst_128X18 }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_pdp_u_core_u_cal2d_bank5_uram_0_r_nv_ram_rws_128x18_ram_Inst_128X18 }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_pdp_u_core_u_cal2d_bank6_uram_0_r_nv_ram_rws_128x18_ram_Inst_128X18 }
create_keepout_margin -type routing_blockage -outer { 0.0800 0.0800 0.0800 \
    0.0800 } -layers { M1 } { \
    u_NV_NVDLA_pdp_u_core_u_cal2d_bank7_uram_0_r_nv_ram_rws_128x18_ram_Inst_128X18 }

################################################################################
# User attributes of cells
################################################################################


################################################################################
# Bounds and user attributes of bound shapes
################################################################################

remove_bounds -all


################################################################################
# User attributes of bounds
################################################################################


################################################################################
# Pin guides
################################################################################

remove_pin_guides -all


################################################################################
# Route guides and their user attributes
################################################################################

remove_routing_guides -all



################################################################################
# Blockages
################################################################################

remove_placement_blockages -all

create_placement_blockage -name \
    blockage_u_NV_NVDLA_mcif_u_read_u_cq_ram_r_nv_ram_rws_256x7_ram_Inst_256X7_1 \
    -type hard -boundary { {862.1970 1305.7890} {948.0990 1457.9730} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_mcif_u_read_u_cq_ram_r_nv_ram_rws_256x7_ram_Inst_256X7_0 \
    -type hard -boundary { {968.5970 1305.7890} {1054.4990 1457.9730} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_mcif_u_read_u_cq_adr_ram_r_nv_ram_rwst_256x8_ram_Inst_256X8_1 \
    -type hard -boundary { {1181.1350 1305.8530} {1267.0370 1458.0370} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_mcif_u_read_u_cq_adr_ram_r_nv_ram_rwst_256x8_ram_Inst_256X8_0 \
    -type hard -boundary { {1074.4600 1305.7890} {1160.3620 1457.9730} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_mcif_u_write_u_cq_ram_r_nv_ram_rws_256x3_ram_Inst_256X4_1 \
    -type hard -boundary { {756.3110 1305.8530} {842.2130 1458.0370} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_mcif_u_write_u_cq_ram_r_nv_ram_rws_256x3_ram_Inst_256X4_0 \
    -type hard -boundary { {650.0500 1304.1810} {735.9520 1456.3650} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_mcif_u_write_u_cq_adr_ram_r_nv_ram_rwst_256x8_ram_Inst_256X8_1 \
    -type hard -boundary { {438.5250 1304.1170} {524.4270 1456.3010} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_mcif_u_write_u_cq_adr_ram_r_nv_ram_rwst_256x8_ram_Inst_256X8_0 \
    -type hard -boundary { {544.9020 1304.1170} {630.8040 1456.3010} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_cdp_u_rdma_u_eg_u_lat_fifo_ram_r_nv_ram_rwsp_61x65_ram_Inst_61X66_2 \
    -type hard -boundary { {19.0300 868.2580} {119.2410 943.0240} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_cdp_u_rdma_u_eg_u_lat_fifo_ram_r_nv_ram_rwsp_61x65_ram_Inst_61X66_1 \
    -type hard -boundary { {19.3310 696.1540} {134.3990 847.7200} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_cdp_u_rdma_u_eg_u_lat_fifo_ram_r_nv_ram_rwsp_61x65_ram_Inst_61X66_0 \
    -type hard -boundary { {19.5820 963.6740} {134.6500 1115.2400} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_cdp_u_dp_u_NV_NVDLA_CDP_DP_syncfifo_u_data_sync_fifo_ram_r_nv_ram_rwsthp_80x9_ram_Inst_80X9 \
    -type hard -boundary { {310.7170 1300.5320} {418.5070 1456.3650} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_cdp_u_dp_u_NV_NVDLA_CDP_DP_syncfifo_u_info_sync_fifo_ram_r_nv_ram_rwsthp_80x15_ram_Inst_80X15 \
    -type hard -boundary { {183.1500 1300.5320} {290.9400 1456.3650} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_cdp_u_dp_u_NV_NVDLA_CDP_DP_syncfifo_u_sumpd_sync_fifo_ram_r_nv_ram_rwsthp_60x21_ram_Inst_60X22 \
    -type hard -boundary { {19.6610 1341.2970} {171.2270 1456.3650} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_pdp_u_rdma_u_eg_u_lat_fifo_ram_r_nv_ram_rwsp_61x65_ram_Inst_61X66_2 \
    -type hard -boundary { {18.9190 428.5220} {119.1300 503.2880} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_pdp_u_rdma_u_eg_u_lat_fifo_ram_r_nv_ram_rwsp_61x65_ram_Inst_61X66_1 \
    -type hard -boundary { {19.1530 523.9380} {134.2210 675.5040} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_pdp_u_rdma_u_eg_u_lat_fifo_ram_r_nv_ram_rwsp_61x65_ram_Inst_61X66_0 \
    -type hard -boundary { {18.8470 256.4180} {133.9150 407.9840} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_pdp_u_core_u_cal2d_bank0_uram_0_r_nv_ram_rws_128x18_ram_Inst_128X18 \
    -type hard -boundary { {1288.8970 620.2320} {1453.5960 771.7980} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_pdp_u_core_u_cal2d_bank1_uram_0_r_nv_ram_rws_128x18_ram_Inst_128X18 \
    -type hard -boundary { {1288.6280 105.9380} {1453.3270 257.5040} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_pdp_u_core_u_cal2d_bank2_uram_0_r_nv_ram_rws_128x18_ram_Inst_128X18 \
    -type hard -boundary { {1288.9740 1306.4710} {1453.6730 1458.0370} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_pdp_u_core_u_cal2d_bank3_uram_0_r_nv_ram_rws_128x18_ram_Inst_128X18 \
    -type hard -boundary { {1289.0090 1134.2180} {1453.7080 1285.7840} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_pdp_u_core_u_cal2d_bank4_uram_0_r_nv_ram_rws_128x18_ram_Inst_128X18 \
    -type hard -boundary { {1288.5940 963.6740} {1453.2930 1115.2400} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_pdp_u_core_u_cal2d_bank5_uram_0_r_nv_ram_rws_128x18_ram_Inst_128X18 \
    -type hard -boundary { {1288.7720 791.4580} {1453.4710 943.0240} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_pdp_u_core_u_cal2d_bank6_uram_0_r_nv_ram_rws_128x18_ram_Inst_128X18 \
    -type hard -boundary { {1289.3940 448.6980} {1454.0930 600.2640} }
create_placement_blockage -name \
    blockage_u_NV_NVDLA_pdp_u_core_u_cal2d_bank7_uram_0_r_nv_ram_rws_128x18_ram_Inst_128X18 \
    -type hard -boundary { {1288.6050 277.4720} {1453.3040 429.0380} }


remove_routing_blockages -all

set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {872.2770 1315.8690} {872.2770 1447.8930} \
    {938.0190 1447.8930} {938.0190 1315.8690} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {872.2770 1315.8690} {872.2770 1447.8930} \
    {938.0190 1447.8930} {938.0190 1315.8690} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {872.2770 1315.8690} {872.2770 1447.8930} \
    {938.0190 1447.8930} {938.0190 1315.8690} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {872.2770 1315.8690} {872.2770 1447.8930} \
    {938.0190 1447.8930} {938.0190 1315.8690} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {872.2770 1315.8690} {872.2770 1447.8930} \
    {938.0190 1447.8930} {938.0190 1315.8690} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {978.6770 1315.8690} {978.6770 1447.8930} \
    {1044.4190 1447.8930} {1044.4190 1315.8690} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {978.6770 1315.8690} {978.6770 1447.8930} \
    {1044.4190 1447.8930} {1044.4190 1315.8690} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {978.6770 1315.8690} {978.6770 1447.8930} \
    {1044.4190 1447.8930} {1044.4190 1315.8690} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {978.6770 1315.8690} {978.6770 1447.8930} \
    {1044.4190 1447.8930} {1044.4190 1315.8690} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {978.6770 1315.8690} {978.6770 1447.8930} \
    {1044.4190 1447.8930} {1044.4190 1315.8690} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {1191.2150 1315.9330} {1191.2150 1447.9570} \
    {1256.9570 1447.9570} {1256.9570 1315.9330} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {1191.2150 1315.9330} {1191.2150 1447.9570} \
    {1256.9570 1447.9570} {1256.9570 1315.9330} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {1191.2150 1315.9330} {1191.2150 1447.9570} \
    {1256.9570 1447.9570} {1256.9570 1315.9330} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {1191.2150 1315.9330} {1191.2150 1447.9570} \
    {1256.9570 1447.9570} {1256.9570 1315.9330} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {1191.2150 1315.9330} {1191.2150 1447.9570} \
    {1256.9570 1447.9570} {1256.9570 1315.9330} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {1084.5400 1315.8690} {1084.5400 1447.8930} \
    {1150.2820 1447.8930} {1150.2820 1315.8690} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {1084.5400 1315.8690} {1084.5400 1447.8930} \
    {1150.2820 1447.8930} {1150.2820 1315.8690} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {1084.5400 1315.8690} {1084.5400 1447.8930} \
    {1150.2820 1447.8930} {1150.2820 1315.8690} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {1084.5400 1315.8690} {1084.5400 1447.8930} \
    {1150.2820 1447.8930} {1150.2820 1315.8690} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {1084.5400 1315.8690} {1084.5400 1447.8930} \
    {1150.2820 1447.8930} {1150.2820 1315.8690} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {766.3910 1315.9330} {766.3910 1447.9570} \
    {832.1330 1447.9570} {832.1330 1315.9330} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {766.3910 1315.9330} {766.3910 1447.9570} \
    {832.1330 1447.9570} {832.1330 1315.9330} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {766.3910 1315.9330} {766.3910 1447.9570} \
    {832.1330 1447.9570} {832.1330 1315.9330} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {766.3910 1315.9330} {766.3910 1447.9570} \
    {832.1330 1447.9570} {832.1330 1315.9330} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {766.3910 1315.9330} {766.3910 1447.9570} \
    {832.1330 1447.9570} {832.1330 1315.9330} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {660.1300 1314.2610} {660.1300 1446.2850} \
    {725.8720 1446.2850} {725.8720 1314.2610} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {660.1300 1314.2610} {660.1300 1446.2850} \
    {725.8720 1446.2850} {725.8720 1314.2610} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {660.1300 1314.2610} {660.1300 1446.2850} \
    {725.8720 1446.2850} {725.8720 1314.2610} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {660.1300 1314.2610} {660.1300 1446.2850} \
    {725.8720 1446.2850} {725.8720 1314.2610} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {660.1300 1314.2610} {660.1300 1446.2850} \
    {725.8720 1446.2850} {725.8720 1314.2610} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {448.6050 1314.1970} {448.6050 1446.2210} \
    {514.3470 1446.2210} {514.3470 1314.1970} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {448.6050 1314.1970} {448.6050 1446.2210} \
    {514.3470 1446.2210} {514.3470 1314.1970} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {448.6050 1314.1970} {448.6050 1446.2210} \
    {514.3470 1446.2210} {514.3470 1314.1970} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {448.6050 1314.1970} {448.6050 1446.2210} \
    {514.3470 1446.2210} {514.3470 1314.1970} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {448.6050 1314.1970} {448.6050 1446.2210} \
    {514.3470 1446.2210} {514.3470 1314.1970} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {554.9820 1314.1970} {554.9820 1446.2210} \
    {620.7240 1446.2210} {620.7240 1314.1970} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {554.9820 1314.1970} {554.9820 1446.2210} \
    {620.7240 1446.2210} {620.7240 1314.1970} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {554.9820 1314.1970} {554.9820 1446.2210} \
    {620.7240 1446.2210} {620.7240 1314.1970} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {554.9820 1314.1970} {554.9820 1446.2210} \
    {620.7240 1446.2210} {620.7240 1314.1970} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {554.9820 1314.1970} {554.9820 1446.2210} \
    {620.7240 1446.2210} {620.7240 1314.1970} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {29.1100 878.3380} {29.1100 932.9440} {109.1610 \
    932.9440} {109.1610 878.3380} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {29.1100 878.3380} {29.1100 932.9440} {109.1610 \
    932.9440} {109.1610 878.3380} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {29.1100 878.3380} {29.1100 932.9440} {109.1610 \
    932.9440} {109.1610 878.3380} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {29.1100 878.3380} {29.1100 932.9440} {109.1610 \
    932.9440} {109.1610 878.3380} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {29.1100 878.3380} {29.1100 932.9440} {109.1610 \
    932.9440} {109.1610 878.3380} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {29.4110 706.2340} {29.4110 837.6400} {124.3190 \
    837.6400} {124.3190 706.2340} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {29.4110 706.2340} {29.4110 837.6400} {124.3190 \
    837.6400} {124.3190 706.2340} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {29.4110 706.2340} {29.4110 837.6400} {124.3190 \
    837.6400} {124.3190 706.2340} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {29.4110 706.2340} {29.4110 837.6400} {124.3190 \
    837.6400} {124.3190 706.2340} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {29.4110 706.2340} {29.4110 837.6400} {124.3190 \
    837.6400} {124.3190 706.2340} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {29.6620 973.7540} {29.6620 1105.1600} {124.5700 \
    1105.1600} {124.5700 973.7540} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {29.6620 973.7540} {29.6620 1105.1600} {124.5700 \
    1105.1600} {124.5700 973.7540} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {29.6620 973.7540} {29.6620 1105.1600} {124.5700 \
    1105.1600} {124.5700 973.7540} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {29.6620 973.7540} {29.6620 1105.1600} {124.5700 \
    1105.1600} {124.5700 973.7540} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {29.6620 973.7540} {29.6620 1105.1600} {124.5700 \
    1105.1600} {124.5700 973.7540} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {320.7970 1310.6120} {320.7970 1446.2850} \
    {408.4270 1446.2850} {408.4270 1310.6120} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {320.7970 1310.6120} {320.7970 1446.2850} \
    {408.4270 1446.2850} {408.4270 1310.6120} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {320.7970 1310.6120} {320.7970 1446.2850} \
    {408.4270 1446.2850} {408.4270 1310.6120} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {320.7970 1310.6120} {320.7970 1446.2850} \
    {408.4270 1446.2850} {408.4270 1310.6120} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {320.7970 1310.6120} {320.7970 1446.2850} \
    {408.4270 1446.2850} {408.4270 1310.6120} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {193.2300 1310.6120} {193.2300 1446.2850} \
    {280.8600 1446.2850} {280.8600 1310.6120} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {193.2300 1310.6120} {193.2300 1446.2850} \
    {280.8600 1446.2850} {280.8600 1310.6120} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {193.2300 1310.6120} {193.2300 1446.2850} \
    {280.8600 1446.2850} {280.8600 1310.6120} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {193.2300 1310.6120} {193.2300 1446.2850} \
    {280.8600 1446.2850} {280.8600 1310.6120} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {193.2300 1310.6120} {193.2300 1446.2850} \
    {280.8600 1446.2850} {280.8600 1310.6120} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {29.7410 1351.3770} {29.7410 1446.2850} \
    {161.1470 1446.2850} {161.1470 1351.3770} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {29.7410 1351.3770} {29.7410 1446.2850} \
    {161.1470 1446.2850} {161.1470 1351.3770} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {29.7410 1351.3770} {29.7410 1446.2850} \
    {161.1470 1446.2850} {161.1470 1351.3770} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {29.7410 1351.3770} {29.7410 1446.2850} \
    {161.1470 1446.2850} {161.1470 1351.3770} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {29.7410 1351.3770} {29.7410 1446.2850} \
    {161.1470 1446.2850} {161.1470 1351.3770} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {28.9990 438.6020} {28.9990 493.2080} {109.0500 \
    493.2080} {109.0500 438.6020} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {28.9990 438.6020} {28.9990 493.2080} {109.0500 \
    493.2080} {109.0500 438.6020} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {28.9990 438.6020} {28.9990 493.2080} {109.0500 \
    493.2080} {109.0500 438.6020} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {28.9990 438.6020} {28.9990 493.2080} {109.0500 \
    493.2080} {109.0500 438.6020} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {28.9990 438.6020} {28.9990 493.2080} {109.0500 \
    493.2080} {109.0500 438.6020} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {29.2330 534.0180} {29.2330 665.4240} {124.1410 \
    665.4240} {124.1410 534.0180} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {29.2330 534.0180} {29.2330 665.4240} {124.1410 \
    665.4240} {124.1410 534.0180} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {29.2330 534.0180} {29.2330 665.4240} {124.1410 \
    665.4240} {124.1410 534.0180} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {29.2330 534.0180} {29.2330 665.4240} {124.1410 \
    665.4240} {124.1410 534.0180} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {29.2330 534.0180} {29.2330 665.4240} {124.1410 \
    665.4240} {124.1410 534.0180} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {28.9270 266.4980} {28.9270 397.9040} {123.8350 \
    397.9040} {123.8350 266.4980} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {28.9270 266.4980} {28.9270 397.9040} {123.8350 \
    397.9040} {123.8350 266.4980} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {28.9270 266.4980} {28.9270 397.9040} {123.8350 \
    397.9040} {123.8350 266.4980} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {28.9270 266.4980} {28.9270 397.9040} {123.8350 \
    397.9040} {123.8350 266.4980} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {28.9270 266.4980} {28.9270 397.9040} {123.8350 \
    397.9040} {123.8350 266.4980} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {1298.9770 630.3120} {1298.9770 761.7180} \
    {1443.5160 761.7180} {1443.5160 630.3120} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {1298.9770 630.3120} {1298.9770 761.7180} \
    {1443.5160 761.7180} {1443.5160 630.3120} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {1298.9770 630.3120} {1298.9770 761.7180} \
    {1443.5160 761.7180} {1443.5160 630.3120} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {1298.9770 630.3120} {1298.9770 761.7180} \
    {1443.5160 761.7180} {1443.5160 630.3120} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {1298.9770 630.3120} {1298.9770 761.7180} \
    {1443.5160 761.7180} {1443.5160 630.3120} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {1298.7080 116.0180} {1298.7080 247.4240} \
    {1443.2470 247.4240} {1443.2470 116.0180} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {1298.7080 116.0180} {1298.7080 247.4240} \
    {1443.2470 247.4240} {1443.2470 116.0180} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {1298.7080 116.0180} {1298.7080 247.4240} \
    {1443.2470 247.4240} {1443.2470 116.0180} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {1298.7080 116.0180} {1298.7080 247.4240} \
    {1443.2470 247.4240} {1443.2470 116.0180} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {1298.7080 116.0180} {1298.7080 247.4240} \
    {1443.2470 247.4240} {1443.2470 116.0180} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {1299.0540 1316.5510} {1299.0540 1447.9570} \
    {1443.5930 1447.9570} {1443.5930 1316.5510} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {1299.0540 1316.5510} {1299.0540 1447.9570} \
    {1443.5930 1447.9570} {1443.5930 1316.5510} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {1299.0540 1316.5510} {1299.0540 1447.9570} \
    {1443.5930 1447.9570} {1443.5930 1316.5510} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {1299.0540 1316.5510} {1299.0540 1447.9570} \
    {1443.5930 1447.9570} {1443.5930 1316.5510} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {1299.0540 1316.5510} {1299.0540 1447.9570} \
    {1443.5930 1447.9570} {1443.5930 1316.5510} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {1299.0890 1144.2980} {1299.0890 1275.7040} \
    {1443.6280 1275.7040} {1443.6280 1144.2980} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {1299.0890 1144.2980} {1299.0890 1275.7040} \
    {1443.6280 1275.7040} {1443.6280 1144.2980} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {1299.0890 1144.2980} {1299.0890 1275.7040} \
    {1443.6280 1275.7040} {1443.6280 1144.2980} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {1299.0890 1144.2980} {1299.0890 1275.7040} \
    {1443.6280 1275.7040} {1443.6280 1144.2980} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {1299.0890 1144.2980} {1299.0890 1275.7040} \
    {1443.6280 1275.7040} {1443.6280 1144.2980} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {1298.6740 973.7540} {1298.6740 1105.1600} \
    {1443.2130 1105.1600} {1443.2130 973.7540} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {1298.6740 973.7540} {1298.6740 1105.1600} \
    {1443.2130 1105.1600} {1443.2130 973.7540} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {1298.6740 973.7540} {1298.6740 1105.1600} \
    {1443.2130 1105.1600} {1443.2130 973.7540} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {1298.6740 973.7540} {1298.6740 1105.1600} \
    {1443.2130 1105.1600} {1443.2130 973.7540} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {1298.6740 973.7540} {1298.6740 1105.1600} \
    {1443.2130 1105.1600} {1443.2130 973.7540} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {1298.8520 801.5380} {1298.8520 932.9440} \
    {1443.3910 932.9440} {1443.3910 801.5380} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {1298.8520 801.5380} {1298.8520 932.9440} \
    {1443.3910 932.9440} {1443.3910 801.5380} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {1298.8520 801.5380} {1298.8520 932.9440} \
    {1443.3910 932.9440} {1443.3910 801.5380} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {1298.8520 801.5380} {1298.8520 932.9440} \
    {1443.3910 932.9440} {1443.3910 801.5380} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {1298.8520 801.5380} {1298.8520 932.9440} \
    {1443.3910 932.9440} {1443.3910 801.5380} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {1299.4740 458.7780} {1299.4740 590.1840} \
    {1444.0130 590.1840} {1444.0130 458.7780} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {1299.4740 458.7780} {1299.4740 590.1840} \
    {1444.0130 590.1840} {1444.0130 458.7780} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {1299.4740 458.7780} {1299.4740 590.1840} \
    {1444.0130 590.1840} {1444.0130 458.7780} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {1299.4740 458.7780} {1299.4740 590.1840} \
    {1444.0130 590.1840} {1444.0130 458.7780} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {1299.4740 458.7780} {1299.4740 590.1840} \
    {1444.0130 590.1840} {1444.0130 458.7780} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M1 } -net_types { \
    signal clock } -boundary { {1298.6850 287.5520} {1298.6850 418.9580} \
    {1443.2240 418.9580} {1443.2240 287.5520} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M2 } -net_types { \
    signal clock } -boundary { {1298.6850 287.5520} {1298.6850 418.9580} \
    {1443.2240 418.9580} {1443.2240 287.5520} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M3 } -net_types { \
    signal clock } -boundary { {1298.6850 287.5520} {1298.6850 418.9580} \
    {1443.2240 418.9580} {1443.2240 287.5520} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M4 } -net_types { \
    signal clock } -boundary { {1298.6850 287.5520} {1298.6850 418.9580} \
    {1443.2240 418.9580} {1443.2240 287.5520} } -zero_spacing]
set routing_blockage [create_routing_blockage -layers { M5 } -net_types { \
    signal clock } -boundary { {1298.6850 287.5520} {1298.6850 418.9580} \
    {1443.2240 418.9580} {1443.2240 287.5520} } -zero_spacing]


remove_pin_blockages -all

remove_shaping_blockages -all

################################################################################
# User attributes of blockages
################################################################################



################################################################################
# Module Boundaries
################################################################################

set hbCells [get_cells -quiet -filter hierarchy_type==boundary -hierarchical]
if [sizeof_collection $hbCells] {
   set_cell_hierarchy_type -type normal $hbCells
}


################################################################################
# I/O guides
################################################################################

remove_io_guides -all


################################################################################
# User attributes of I/O guides
################################################################################


################################################################################
# Edit groups
################################################################################

remove_edit_groups -all


################################################################################
# User attributes of edit groups
################################################################################


################################################################################
# PG regions
################################################################################

remove_pg_regions -all


################################################################################
# User attributes of pg regions
################################################################################


################################################################################
# Routing corridors
################################################################################

remove_routing_corridors -all


################################################################################
# Routing directions
################################################################################

set_attribute -objects [get_layers M1] -name routing_direction -value horizontal
set_attribute -objects [get_layers M2] -name routing_direction -value vertical
set_attribute -objects [get_layers M3] -name routing_direction -value horizontal
set_attribute -objects [get_layers M4] -name routing_direction -value vertical
set_attribute -objects [get_layers M5] -name routing_direction -value horizontal
set_attribute -objects [get_layers M6] -name routing_direction -value vertical
set_attribute -objects [get_layers M7] -name routing_direction -value horizontal
set_attribute -objects [get_layers M8] -name routing_direction -value vertical
set_attribute -objects [get_layers M9] -name routing_direction -value horizontal

################################################################################
# Tracks and their user attributes
################################################################################

remove_tracks -all

set track [create_track -layer M1 -count 9690 -dir Y -space 0.1520 -coord \
    0.1200 -bbox {{0.0000 0.1200 } {1474.0320 1472.8480 }}]
set track [create_track -layer M1 -count 9697 -dir X -space 0.1520 -coord \
    0.1200 -bbox {{0.1200 0.0000 } {1473.9120 1472.9680 }}]
set track [create_track -layer M2 -count 9690 -dir Y -space 0.1520 -coord \
    0.1200 -bbox {{0.0000 0.1200 } {1474.0320 1472.8480 }}]
set track [create_track -layer M2 -count 9697 -dir X -space 0.1520 -coord \
    0.1200 -bbox {{0.1200 0.0000 } {1473.9120 1472.9680 }}]
set track [create_track -layer M3 -count 4845 -dir Y -space 0.3040 -coord \
    0.2720 -bbox {{0.0000 0.2720 } {1474.0320 1472.8480 }}]
set track [create_track -layer M3 -count 4848 -dir X -space 0.3040 -coord \
    0.2720 -bbox {{0.2720 0.0000 } {1473.7600 1472.9680 }}]
set track [create_track -layer M4 -count 4845 -dir Y -space 0.3040 -coord \
    0.2720 -bbox {{0.0000 0.2720 } {1474.0320 1472.8480 }}]
set track [create_track -layer M4 -count 4848 -dir X -space 0.3040 -coord \
    0.2720 -bbox {{0.2720 0.0000 } {1473.7600 1472.9680 }}]
set track [create_track -layer M5 -count 2423 -dir Y -space 0.6080 -coord \
    0.2720 -bbox {{0.0000 0.2720 } {1474.0320 1472.8480 }}]
set track [create_track -layer M5 -count 2424 -dir X -space 0.6080 -coord \
    0.2720 -bbox {{0.2720 0.0000 } {1473.4560 1472.9680 }}]
set track [create_track -layer M6 -count 2423 -dir Y -space 0.6080 -coord \
    0.2720 -bbox {{0.0000 0.2720 } {1474.0320 1472.8480 }}]
set track [create_track -layer M6 -count 2424 -dir X -space 0.6080 -coord \
    0.2720 -bbox {{0.2720 0.0000 } {1473.4560 1472.9680 }}]
set track [create_track -layer M7 -count 1212 -dir Y -space 1.2160 -coord \
    0.2720 -bbox {{0.0000 0.2720 } {1474.0320 1472.8480 }}]
set track [create_track -layer M7 -count 1212 -dir X -space 1.2160 -coord \
    0.2720 -bbox {{0.2720 0.0000 } {1472.8480 1472.9680 }}]
set track [create_track -layer M8 -count 1212 -dir Y -space 1.2160 -coord \
    0.2720 -bbox {{0.0000 0.2720 } {1474.0320 1472.8480 }}]
set track [create_track -layer M8 -count 1212 -dir X -space 1.2160 -coord \
    0.2720 -bbox {{0.2720 0.0000 } {1472.8480 1472.9680 }}]
set track [create_track -layer M9 -count 606 -dir Y -space 2.4320 -coord 0.2720 \
    -bbox {{0.0000 0.2720 } {1474.0320 1471.6320 }}]
set track [create_track -layer M9 -count 606 -dir X -space 2.4320 -coord 0.2720 \
    -bbox {{0.2720 0.0000 } {1471.6320 1472.9680 }}]
set track [create_track -layer MRDL -count 303 -dir Y -space 4.8640 -coord \
    0.2720 -bbox {{0.0000 0.2720 } {1474.0320 1469.2000 }}]
set track [create_track -layer MRDL -count 303 -dir X -space 4.8640 -coord \
    0.2720 -bbox {{0.2720 0.0000 } {1469.2000 1472.9680 }}]

################################################################################
# Terminals/shapes/vias of ports with user attributes
################################################################################

################################################################################
# User attributes of ports
################################################################################


################################################################################
# Shapes and vias of net and their user attributes
################################################################################


################################################################################
# User attributes of routing rules
################################################################################


################################################################################
# User attributes of pins
################################################################################


################################################################################
# User attributes of nets
################################################################################


################################################################################
# User attributes of current block
################################################################################


