################################################################################
#
# Design name:  NV_NVDLA_partition_o_powerplan
#
# Created by icc2 write_sdc on Mon Jul  6 16:53:30 2026
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: func
# Corner: slow_cmax
# Scenario: func_slow_cmax

# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 15
create_clock -name nvdla_core_clk -period 12 -waveform {0 6} [get_ports \
    {nvdla_core_clk}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 16
create_clock -name nvdla_falcon_clk -period 4 -waveform {0 2} [get_ports \
    {nvdla_falcon_clk}]
set_disable_timing -from A1 -to Y [get_cells \
    {u_NV_NVDLA_mcif_u_read_u_cq_U1482}]  
set_disable_timing -from A2 -to Y [get_cells \
    {u_NV_NVDLA_mcif_u_read_u_cq_U1480}]  
set_disable_timing -from A3 -to Y [get_cells \
    {u_NV_NVDLA_mcif_u_read_u_cq_U1480}]  
set_disable_timing -from A4 -to Y [get_cells \
    {u_NV_NVDLA_mcif_u_read_u_cq_U1480}]  
set_disable_timing -from A1 -to Y [get_cells \
    {u_NV_NVDLA_mcif_u_read_u_cq_U1480}]  
set_disable_timing -from A2 -to Y [get_cells {U1413}]  
set_disable_timing -from A3 -to Y [get_cells {U1413}]  
set_disable_timing -from A1 -to Y [get_cells {U1413}]  
set_disable_timing -from A4 -to Y [get_cells {U1413}]  
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 136
set_false_path -from [get_ports {test_mode direct_reset_ global_clk_ovr_on \
    tmc2slcg_disable_clock_gating pwrbus_ram_pd[31] pwrbus_ram_pd[30] \
    pwrbus_ram_pd[29] pwrbus_ram_pd[28] pwrbus_ram_pd[27] pwrbus_ram_pd[26] \
    pwrbus_ram_pd[25] pwrbus_ram_pd[24] pwrbus_ram_pd[23] pwrbus_ram_pd[22] \
    pwrbus_ram_pd[21] pwrbus_ram_pd[20] pwrbus_ram_pd[19] pwrbus_ram_pd[18] \
    pwrbus_ram_pd[17] pwrbus_ram_pd[16] pwrbus_ram_pd[15] pwrbus_ram_pd[14] \
    pwrbus_ram_pd[13] pwrbus_ram_pd[12] pwrbus_ram_pd[11] pwrbus_ram_pd[10] \
    pwrbus_ram_pd[9] pwrbus_ram_pd[8] pwrbus_ram_pd[7] pwrbus_ram_pd[6] \
    pwrbus_ram_pd[5] pwrbus_ram_pd[4] pwrbus_ram_pd[3] pwrbus_ram_pd[2] \
    pwrbus_ram_pd[1] pwrbus_ram_pd[0] dla_reset_rstn}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 142
set_false_path -from [get_clocks {nvdla_core_clk}] -to [get_clocks \
    {nvdla_falcon_clk}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 143
set_false_path -from [get_clocks {nvdla_falcon_clk}] -to [get_clocks \
    {nvdla_core_clk}]
set_load -pin_load 0.05 [get_ports {cdma_dat2mcif_rd_req_ready}]
set_load -pin_load 0.05 [get_ports {cdma_wt2mcif_rd_req_ready}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pvld}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[62]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[61]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[60]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[59]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[58]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[57]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[56]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[55]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[54]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[53]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[52]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[51]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[50]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[49]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[48]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[47]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[46]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[45]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[44]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[43]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[42]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[41]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[40]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[39]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[38]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[37]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[36]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[35]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[34]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[33]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[32]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[31]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[30]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[29]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[28]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[27]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[26]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[25]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[24]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[23]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[22]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[21]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[20]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[19]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[18]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[17]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[16]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[15]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[14]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[13]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[12]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[11]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[10]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[9]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[8]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[7]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[6]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[5]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[4]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[3]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[2]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[1]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_a_req_pd[0]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pvld}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[62]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[61]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[60]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[59]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[58]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[57]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[56]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[55]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[54]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[53]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[52]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[51]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[50]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[49]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[48]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[47]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[46]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[45]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[44]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[43]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[42]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[41]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[40]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[39]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[38]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[37]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[36]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[35]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[34]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[33]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[32]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[31]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[30]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[29]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[28]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[27]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[26]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[25]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[24]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[23]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[22]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[21]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[20]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[19]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[18]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[17]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[16]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[15]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[14]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[13]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[12]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[11]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[10]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[9]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[8]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[7]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[6]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[5]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[4]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[3]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[2]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[1]}]
set_load -pin_load 0.05 [get_ports {csb2cmac_b_req_pd[0]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pvld}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[62]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[61]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[60]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[59]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[58]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[57]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[56]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[55]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[54]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[53]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[52]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[51]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[50]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[49]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[48]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[47]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[46]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[45]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[44]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[43]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[42]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[41]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[40]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[39]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[38]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[37]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[36]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[35]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[34]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[33]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[32]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[31]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[30]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[29]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[28]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[27]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[26]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[25]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[24]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[23]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[22]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[21]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[20]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[19]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[18]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[17]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[16]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[15]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[14]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[13]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[12]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[11]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[10]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[9]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[8]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[7]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[6]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[5]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[4]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[3]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[2]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[1]}]
set_load -pin_load 0.05 [get_ports {csb2cacc_req_pd[0]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pvld}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[62]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[61]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[60]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[59]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[58]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[57]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[56]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[55]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[54]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[53]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[52]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[51]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[50]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[49]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[48]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[47]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[46]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[45]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[44]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[43]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[42]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[41]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[40]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[39]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[38]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[37]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[36]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[35]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[34]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[33]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[32]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[31]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[30]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[29]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[28]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[27]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[26]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[25]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[24]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[23]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[22]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[21]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[20]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[19]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[18]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[17]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[16]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[15]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[14]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[13]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[12]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[11]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[10]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[9]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[8]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[7]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[6]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[5]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[4]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[3]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[2]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[1]}]
set_load -pin_load 0.05 [get_ports {csb2cdma_req_pd[0]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pvld}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[62]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[61]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[60]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[59]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[58]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[57]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[56]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[55]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[54]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[53]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[52]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[51]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[50]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[49]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[48]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[47]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[46]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[45]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[44]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[43]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[42]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[41]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[40]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[39]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[38]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[37]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[36]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[35]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[34]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[33]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[32]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[31]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[30]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[29]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[28]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[27]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[26]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[25]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[24]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[23]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[22]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[21]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[20]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[19]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[18]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[17]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[16]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[15]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[14]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[13]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[12]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[11]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[10]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[9]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[8]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[7]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[6]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[5]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[4]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[3]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[2]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[1]}]
set_load -pin_load 0.05 [get_ports {csb2csc_req_pd[0]}]
set_load -pin_load 0.05 [get_ports {csb2nvdla_ready}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pvld}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[62]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[61]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[60]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[59]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[58]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[57]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[56]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[55]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[54]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[53]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[52]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[51]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[50]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[49]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[48]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[47]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[46]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[45]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[44]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[43]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[42]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[41]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[40]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[39]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[38]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[37]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[36]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[35]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[34]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[33]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[32]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[31]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[30]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[29]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[28]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[27]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[26]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[25]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[24]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[23]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[22]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[21]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[20]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[19]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[18]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[17]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[16]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[15]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[14]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[13]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[12]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[11]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[10]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[9]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[8]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[7]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[6]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[5]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[4]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[3]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[2]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[1]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_rdma_req_pd[0]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pvld}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[62]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[61]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[60]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[59]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[58]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[57]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[56]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[55]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[54]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[53]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[52]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[51]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[50]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[49]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[48]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[47]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[46]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[45]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[44]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[43]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[42]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[41]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[40]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[39]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[38]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[37]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[36]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[35]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[34]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[33]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[32]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[31]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[30]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[29]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[28]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[27]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[26]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[25]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[24]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[23]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[22]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[21]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[20]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[19]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[18]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[17]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[16]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[15]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[14]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[13]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[12]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[11]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[10]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[9]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[8]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[7]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[6]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[5]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[4]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[3]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[2]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[1]}]
set_load -pin_load 0.05 [get_ports {csb2sdp_req_pd[0]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_valid}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[64]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[63]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[62]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[61]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[60]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[59]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[58]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[57]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[56]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[55]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[54]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[53]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[52]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[51]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[50]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[49]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[48]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[47]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[46]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[45]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[44]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[43]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[42]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[41]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[40]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[39]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[38]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[37]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[36]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[35]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[34]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[33]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[32]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[31]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[30]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[29]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[28]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[27]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[26]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[25]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[24]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[23]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[22]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[21]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[20]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[19]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[18]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[17]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[16]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[15]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[14]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[13]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[12]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[11]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[10]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[9]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[8]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[7]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[6]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[5]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[4]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[3]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[2]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[1]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_dat_rd_rsp_pd[0]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_valid}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[64]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[63]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[62]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[61]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[60]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[59]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[58]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[57]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[56]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[55]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[54]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[53]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[52]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[51]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[50]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[49]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[48]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[47]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[46]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[45]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[44]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[43]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[42]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[41]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[40]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[39]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[38]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[37]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[36]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[35]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[34]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[33]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[32]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[31]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[30]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[29]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[28]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[27]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[26]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[25]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[24]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[23]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[22]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[21]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[20]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[19]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[18]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[17]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[16]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[15]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[14]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[13]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[12]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[11]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[10]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[9]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[8]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[7]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[6]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[5]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[4]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[3]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[2]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[1]}]
set_load -pin_load 0.05 [get_ports {mcif2cdma_wt_rd_rsp_pd[0]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_arvalid}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_arid[7]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_arid[6]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_arid[5]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_arid[4]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_arid[3]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_arid[2]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_arid[1]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_arid[0]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_arlen[3]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_arlen[2]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_arlen[1]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_arlen[0]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[31]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[30]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[29]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[28]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[27]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[26]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[25]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[24]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[23]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[22]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[21]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[20]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[19]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[18]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[17]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[16]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[15]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[14]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[13]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[12]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[11]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[10]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[9]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[8]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[7]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[6]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[5]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[4]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[3]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[2]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[1]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_ar_araddr[0]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awvalid}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awid[7]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awid[6]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awid[5]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awid[4]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awid[3]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awid[2]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awid[1]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awid[0]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awlen[3]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awlen[2]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awlen[1]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awlen[0]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[31]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[30]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[29]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[28]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[27]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[26]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[25]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[24]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[23]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[22]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[21]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[20]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[19]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[18]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[17]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[16]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[15]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[14]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[13]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[12]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[11]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[10]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[9]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[8]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[7]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[6]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[5]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[4]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[3]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[2]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[1]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_aw_awaddr[0]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wvalid}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[63]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[62]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[61]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[60]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[59]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[58]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[57]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[56]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[55]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[54]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[53]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[52]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[51]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[50]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[49]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[48]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[47]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[46]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[45]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[44]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[43]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[42]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[41]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[40]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[39]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[38]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[37]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[36]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[35]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[34]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[33]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[32]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[31]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[30]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[29]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[28]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[27]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[26]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[25]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[24]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[23]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[22]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[21]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[20]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[19]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[18]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[17]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[16]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[15]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[14]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[13]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[12]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[11]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[10]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[9]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[8]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[7]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[6]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[5]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[4]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[3]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[2]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[1]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wdata[0]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wstrb[7]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wstrb[6]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wstrb[5]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wstrb[4]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wstrb[3]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wstrb[2]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wstrb[1]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wstrb[0]}]
set_load -pin_load 0.05 [get_ports {mcif2noc_axi_w_wlast}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_valid}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[64]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[63]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[62]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[61]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[60]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[59]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[58]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[57]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[56]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[55]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[54]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[53]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[52]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[51]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[50]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[49]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[48]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[47]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[46]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[45]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[44]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[43]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[42]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[41]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[40]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[39]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[38]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[37]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[36]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[35]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[34]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[33]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[32]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[31]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[30]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[29]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[28]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[27]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[26]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[25]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[24]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[23]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[22]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[21]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[20]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[19]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[18]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[17]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[16]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[15]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[14]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[13]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[12]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[11]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[10]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[9]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[8]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[7]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[6]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[5]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[4]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[3]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[2]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[1]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_b_rd_rsp_pd[0]}]
set_load -pin_load 0.05 [get_ports {sdp_b2mcif_rd_req_ready}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_valid}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[64]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[63]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[62]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[61]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[60]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[59]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[58]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[57]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[56]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[55]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[54]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[53]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[52]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[51]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[50]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[49]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[48]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[47]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[46]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[45]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[44]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[43]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[42]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[41]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[40]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[39]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[38]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[37]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[36]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[35]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[34]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[33]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[32]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[31]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[30]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[29]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[28]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[27]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[26]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[25]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[24]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[23]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[22]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[21]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[20]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[19]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[18]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[17]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[16]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[15]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[14]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[13]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[12]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[11]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[10]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[9]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[8]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[7]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[6]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[5]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[4]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[3]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[2]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[1]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_n_rd_rsp_pd[0]}]
set_load -pin_load 0.05 [get_ports {sdp_n2mcif_rd_req_ready}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_valid}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[64]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[63]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[62]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[61]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[60]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[59]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[58]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[57]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[56]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[55]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[54]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[53]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[52]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[51]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[50]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[49]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[48]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[47]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[46]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[45]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[44]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[43]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[42]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[41]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[40]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[39]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[38]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[37]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[36]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[35]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[34]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[33]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[32]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[31]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[30]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[29]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[28]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[27]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[26]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[25]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[24]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[23]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[22]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[21]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[20]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[19]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[18]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[17]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[16]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[15]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[14]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[13]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[12]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[11]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[10]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[9]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[8]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[7]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[6]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[5]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[4]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[3]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[2]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[1]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_rd_rsp_pd[0]}]
set_load -pin_load 0.05 [get_ports {mcif2sdp_wr_rsp_complete}]
set_load -pin_load 0.05 [get_ports {noc2mcif_axi_b_bready}]
set_load -pin_load 0.05 [get_ports {noc2mcif_axi_r_rready}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_valid}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[31]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[30]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[29]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[28]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[27]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[26]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[25]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[24]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[23]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[22]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[21]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[20]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[19]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[18]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[17]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[16]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[15]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[14]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[13]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[12]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[11]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[10]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[9]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[8]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[7]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[6]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[5]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[4]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[3]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[2]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[1]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_data[0]}]
set_load -pin_load 0.05 [get_ports {nvdla2csb_wr_complete}]
set_load -pin_load 0.05 [get_ports {core_intr}]
set_load -pin_load 0.05 [get_ports {sdp2mcif_rd_req_ready}]
set_load -pin_load 0.05 [get_ports {sdp2mcif_wr_req_ready}]
set_load -pin_load 0.05 [get_ports {sdp2pdp_ready}]
set_load -pin_load 0.05 [get_ports {nvdla_core_rstn}]
set_load -pin_load 0.05 [get_ports {nvdla_clk_ovr_on}]
set_ideal_network [get_ports {test_mode}]
set_ideal_network [get_ports {direct_reset_}]
set_ideal_network -no_propagate [get_pins \
    {u_sync_core_reset_sync_reset_synced_rstn_UI_test_mode_outmux_U2/Y}]
set_ideal_network [get_ports {nvdla_core_clk}]
set_ideal_network [get_ports {dla_reset_rstn}]
set_ideal_network [get_ports {nvdla_falcon_clk}]
set_clock_uncertainty 0.05 [get_clocks {nvdla_core_clk}]
set_clock_uncertainty 0.05 [get_clocks {nvdla_falcon_clk}]
set_clock_transition 0.05 [get_clocks {nvdla_core_clk}]
set_clock_transition 0.05 [get_clocks {nvdla_falcon_clk}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {test_mode}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {direct_reset_}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {global_clk_ovr_on}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {tmc2slcg_disable_clock_gating}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cdma2csb_resp_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2glb_done_intr_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2glb_done_intr_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_dat2mcif_rd_req_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2glb_done_intr_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2glb_done_intr_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cdma_wt2mcif_rd_req_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_a2csb_resp_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2cmac_a_req_prdy}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cmac_b2csb_resp_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2cmac_b_req_prdy}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {cacc2csb_resp_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cacc2glb_done_intr_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {cacc2glb_done_intr_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2cacc_req_prdy}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2cdma_req_prdy}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2csc_req_prdy}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_addr[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_addr[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_addr[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_addr[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_addr[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_addr[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_addr[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_addr[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_addr[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_addr[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_addr[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_addr[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_addr[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_addr[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_addr[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_addr[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_wdat[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_write}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2nvdla_nposted}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {csb2sdp_rdma_req_prdy}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csb2sdp_req_prdy}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {csc2csb_resp_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {mcif2cdma_dat_rd_rsp_ready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {mcif2cdma_wt_rd_rsp_ready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {mcif2noc_axi_ar_arready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {mcif2noc_axi_aw_awready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {mcif2noc_axi_w_wready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {mcif2sdp_b_rd_rsp_ready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_cdt_lat_fifo_pop}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_b2mcif_rd_req_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {mcif2sdp_n_rd_rsp_ready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_cdt_lat_fifo_pop}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_n2mcif_rd_req_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {mcif2sdp_rd_rsp_ready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_b_bvalid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_b_bid[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_b_bid[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_b_bid[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_b_bid[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_b_bid[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_b_bid[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_b_bid[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_b_bid[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rvalid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rid[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rid[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rid[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rid[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rid[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rid[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rid[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rid[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {noc2mcif_axi_r_rlast}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[63]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[62]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[61]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[60]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[59]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[58]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[57]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[56]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[55]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[54]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[53]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[52]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[51]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[50]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[49]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[48]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[47]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {noc2mcif_axi_r_rdata[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {pwrbus_ram_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2csb_resp_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2glb_done_intr_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2glb_done_intr_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_cdt_lat_fifo_pop}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_rd_req_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[65]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[64]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[63]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[62]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[61]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[60]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[59]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[58]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[57]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[56]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[55]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[54]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[53]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[52]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[51]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[50]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[49]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[48]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[47]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp2mcif_wr_req_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2pdp_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2pdp_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2pdp_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2pdp_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2pdp_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2pdp_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2pdp_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2pdp_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports {sdp2pdp_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 114
set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports \
    {sdp_rdma2csb_resp_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {test_mode}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {direct_reset_}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {global_clk_ovr_on}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {tmc2slcg_disable_clock_gating}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma2csb_resp_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2glb_done_intr_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2glb_done_intr_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_ready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_dat2mcif_rd_req_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2glb_done_intr_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2glb_done_intr_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_ready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cdma_wt2mcif_rd_req_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_a2csb_resp_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pvld}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_prdy}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[62]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[61]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[60]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[59]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[58]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[57]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[56]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[55]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[54]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[53]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[52]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[51]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[50]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[49]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[48]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[47]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_a_req_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cmac_b2csb_resp_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pvld}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_prdy}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[62]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[61]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[60]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[59]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[58]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[57]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[56]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[55]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[54]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[53]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[52]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[51]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[50]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[49]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[48]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[47]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cmac_b_req_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2csb_resp_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2glb_done_intr_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {cacc2glb_done_intr_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pvld}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_prdy}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[62]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[61]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[60]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[59]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[58]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[57]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[56]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[55]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[54]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[53]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[52]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[51]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[50]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[49]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[48]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[47]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cacc_req_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pvld}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_prdy}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[62]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[61]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[60]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[59]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[58]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[57]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[56]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[55]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[54]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[53]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[52]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[51]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[50]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[49]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[48]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[47]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2cdma_req_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pvld}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2csc_req_prdy}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[62]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[61]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[60]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[59]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[58]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[57]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[56]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[55]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[54]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[53]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[52]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[51]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[50]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[49]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[48]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[47]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2csc_req_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2nvdla_ready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_addr[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_addr[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_addr[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_addr[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_addr[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_addr[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_addr[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_addr[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_addr[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_addr[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_addr[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_addr[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_addr[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_addr[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_addr[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_addr[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_wdat[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_write}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2nvdla_nposted}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pvld}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_prdy}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[62]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[61]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[60]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[59]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[58]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[57]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[56]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[55]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[54]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[53]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[52]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[51]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[50]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[49]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[48]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[47]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_rdma_req_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pvld}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_prdy}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[62]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[61]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[60]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[59]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[58]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[57]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[56]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[55]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[54]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[53]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[52]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[51]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[50]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[49]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[48]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[47]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {csb2sdp_req_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {csc2csb_resp_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_ready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[64]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[63]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[62]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[61]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[60]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[59]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[58]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[57]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[56]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[55]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[54]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[53]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[52]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[51]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[50]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[49]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[48]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[47]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_dat_rd_rsp_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_ready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[64]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[63]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[62]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[61]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[60]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[59]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[58]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[57]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[56]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[55]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[54]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[53]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[52]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[51]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[50]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[49]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[48]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[47]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2cdma_wt_rd_rsp_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_arvalid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_arready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_arid[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_arid[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_arid[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_arid[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_arid[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_arid[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_arid[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_arid[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_arlen[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_arlen[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_arlen[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_arlen[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_ar_araddr[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awvalid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awid[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awid[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awid[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awid[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awid[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awid[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awid[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awid[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awlen[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awlen[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awlen[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awlen[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_aw_awaddr[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wvalid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[63]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[62]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[61]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[60]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[59]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[58]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[57]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[56]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[55]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[54]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[53]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[52]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[51]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[50]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[49]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[48]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[47]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wdata[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wstrb[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wstrb[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wstrb[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wstrb[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wstrb[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wstrb[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wstrb[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wstrb[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2noc_axi_w_wlast}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_ready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[64]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[63]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[62]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[61]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[60]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[59]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[58]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[57]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[56]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[55]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[54]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[53]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[52]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[51]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[50]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[49]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[48]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[47]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_b_rd_rsp_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_cdt_lat_fifo_pop}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_ready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_b2mcif_rd_req_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_ready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[64]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[63]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[62]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[61]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[60]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[59]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[58]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[57]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[56]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[55]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[54]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[53]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[52]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[51]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[50]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[49]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[48]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[47]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_n_rd_rsp_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_cdt_lat_fifo_pop}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_ready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_n2mcif_rd_req_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_ready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[64]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[63]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[62]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[61]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[60]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[59]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[58]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[57]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[56]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[55]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[54]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[53]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[52]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[51]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[50]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[49]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[48]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[47]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_rd_rsp_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {mcif2sdp_wr_rsp_complete}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_b_bvalid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_b_bready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_b_bid[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_b_bid[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_b_bid[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_b_bid[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_b_bid[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_b_bid[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_b_bid[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_b_bid[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rvalid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rid[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rid[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rid[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rid[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rid[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rid[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rid[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rid[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rlast}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[63]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[62]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[61]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[60]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[59]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[58]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[57]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[56]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[55]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[54]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[53]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[52]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[51]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[50]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[49]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[48]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[47]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {noc2mcif_axi_r_rdata[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_data[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla2csb_wr_complete}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {core_intr}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {pwrbus_ram_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2csb_resp_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2glb_done_intr_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2glb_done_intr_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_cdt_lat_fifo_pop}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_ready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_rd_req_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_ready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[65]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[64]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[63]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[62]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[61]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[60]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[59]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[58]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[57]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[56]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[55]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[54]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[53]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[52]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[51]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[50]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[49]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[48]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[47]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[46]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[45]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[44]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[43]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[42]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[41]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[40]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[39]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[38]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[37]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[36]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[35]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[34]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2mcif_wr_req_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2pdp_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {sdp2pdp_ready}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2pdp_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2pdp_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2pdp_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2pdp_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2pdp_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2pdp_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2pdp_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp2pdp_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_valid}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[33]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[32]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[31]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[30]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[29]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[28]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[27]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[26]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[25]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[24]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[23]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[22]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[21]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[20]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[19]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[18]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[17]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[16]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[15]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[14]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[13]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[12]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[11]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[10]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[9]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[8]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[7]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[6]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[5]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[4]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[3]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[2]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[1]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 103
set_input_delay -clock [get_clocks {nvdla_core_clk}] -max 0.1 [get_ports \
    {sdp_rdma2csb_resp_pd[0]}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla_core_rstn}]
# /home/ICer/EDA_projects/NVDLA/nv_small/syn/syn_partition_o_32nm/cons/NV_NVDLA_partition_o.sdc, \
#   line 106
set_output_delay -clock [get_clocks {nvdla_falcon_clk}] -max 0.1 [get_ports \
    {nvdla_clk_ovr_on}]
