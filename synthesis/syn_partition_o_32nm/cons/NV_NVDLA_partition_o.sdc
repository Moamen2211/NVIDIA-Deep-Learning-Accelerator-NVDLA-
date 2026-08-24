
 # ==================================================================
 # -- File                 : NV_NVDLA_partition_o.sdc
 # -- Target Technology    : SAED_EDK32 (32nm) 
 # -- Target Corner        : Worst | Best  
 # -- Target Tool          : ICC2 (Synopsys) 
 # -- Create By            : Moamen Ashraf
 # -- Version              : 1.20
 # ===================================================================
 
# ################################################
# #---- Budget Clock (Timing Definations) -------#
# ################################################

 create_clock -name nvdla_core_clk   [get_ports nvdla_core_clk  ]  -period 12  -waveform {0 6}
 create_clock -name nvdla_falcon_clk [get_ports nvdla_falcon_clk]  -period 4   -waveform {0 2}
 
# ------------------ clock_transition --------------------------------------------------------
 set_clock_transition -max -rise 0.05 [get_clocks {nvdla_core_clk nvdla_falcon_clk}]
 set_clock_transition -max -fall 0.05 [get_clocks {nvdla_core_clk nvdla_falcon_clk}]
 set_clock_transition -min -rise 0.05 [get_clocks {nvdla_core_clk nvdla_falcon_clk}]
 set_clock_transition -min -fall 0.05 [get_clocks {nvdla_core_clk nvdla_falcon_clk}]
 
# ------------------ uncertainty --------------------------------------------------------z
 set_clock_uncertainty -setup 0.05 [get_clocks {nvdla_core_clk nvdla_falcon_clk}] 
 set_clock_uncertainty -hold  0.05 [get_clocks {nvdla_core_clk nvdla_falcon_clk}] 
 
 
# ########################################
# #------ Modeling Time outside ---------#
# ########################################

# ---- Remove the Clock and Reset signals from the design to apply {driving_cell and input_delay} constraints ----- #
set input_ports {   test_mode                    	\		                            
                    direct_reset_                   \
                    global_clk_ovr_on               \
                    tmc2slcg_disable_clock_gating   \          
                    cdma2csb_resp_valid             \
                    cdma2csb_resp_pd                \
                    cdma_dat2glb_done_intr_pd       \      
                    cdma_wt2glb_done_intr_pd        \     
                    cmac_a2csb_resp_valid           \ 
                    cmac_a2csb_resp_pd              \
                    csb2cmac_a_req_prdy             \     
                    cmac_b2csb_resp_valid           \
                    cmac_b2csb_resp_pd	            \
                    csb2cmac_b_req_prdy             \
                    cacc2csb_resp_valid             \
                    cacc2csb_resp_pd                \
                    cacc2glb_done_intr_pd           \
                    csb2cacc_req_prdy               \
                    csb2csc_req_prdy                \
                    csb2cdma_req_prdy               \
                    csc2csb_resp_valid              \
                    csc2csb_resp_pd                 \
                    csb2nvdla_valid                 \
                    csb2nvdla_addr                  \
                    csb2nvdla_wdat                  \
                    csb2nvdla_write                 \ 
                    csb2nvdla_nposted               \
                    csb2sdp_rdma_req_prdy           \
                    csb2sdp_req_prdy                \
                    mcif2noc_axi_ar_arready         \
                    mcif2noc_axi_aw_awready         \
                    mcif2noc_axi_w_wready           \   
                    noc2mcif_axi_b_bvalid           \
                    noc2mcif_axi_b_bid              \
                    noc2mcif_axi_r_rvalid           \
                    noc2mcif_axi_r_rid              \
                    noc2mcif_axi_r_rlast            \
                    noc2mcif_axi_r_rdata            \
                    cdma_dat2mcif_rd_req_valid      \
                    cdma_dat2mcif_rd_req_pd         \
                    cdma_wt2mcif_rd_req_valid       \
                    cdma_wt2mcif_rd_req_pd          \
                    mcif2cdma_dat_rd_rsp_ready      \
                    mcif2cdma_wt_rd_rsp_ready       \
                    mcif2sdp_b_rd_rsp_ready         \
                    sdp_b2mcif_rd_cdt_lat_fifo_pop  \
                    sdp_b2mcif_rd_req_valid         \
                    sdp_b2mcif_rd_req_pd            \
                    mcif2sdp_n_rd_rsp_ready         \
                    sdp_n2mcif_rd_cdt_lat_fifo_pop  \
                    sdp_n2mcif_rd_req_valid         \
                    sdp_n2mcif_rd_req_pd            \
                    sdp2mcif_rd_cdt_lat_fifo_pop    \
                    sdp2mcif_rd_req_valid           \
                    sdp2mcif_rd_req_pd              \
                    mcif2sdp_rd_rsp_ready           \
                    sdp2mcif_wr_req_valid           \
                    sdp2mcif_wr_req_pd              \
                    pwrbus_ram_pd                   \
                    sdp2csb_resp_valid              \
                    sdp2csb_resp_pd                 \
                    sdp2glb_done_intr_pd            \
                    sdp2pdp_valid                   \
                    sdp2pdp_pd                      \
                    sdp_rdma2csb_resp_valid         \
                    sdp_rdma2csb_resp_pd            }
													
                 
				 
 set_input_delay  -max 0.1 -clock nvdla_core_clk [get_ports ${input_ports}]
 
 set_output_delay -max 0.1 -clock nvdla_core_clk   [all_outputs] 
 set_output_delay -max 0.1 -clock nvdla_falcon_clk [all_outputs]

 
 
# ########################################
# #-------- Modeling interface ----------#
# ########################################

 set_driving_cell -lib_cell IBUFFX2_RVT -pin Y [get_ports ${input_ports}]
											 
 
 set_load 0.05 [all_outputs] 
 

# ##################################
# #-------- Ideal Network ---------#
# ##################################
 
 set_ideal_network               [get_ports nvdla_core_clk  ]
 set_ideal_network               [get_ports nvdla_falcon_clk]
 set_ideal_network               [get_ports test_mode       ]
 set_ideal_network               [get_ports direct_reset_   ]
 set_ideal_network               [get_ports dla_reset_rstn  ]
 set_ideal_network -no_propagate [get_nets nvdla_core_rstn  ]


# ##################################
# #-------- False Paths -----------#
# ##################################

set_false_path   -from [get_ports direct_reset_]
set_false_path   -from [get_ports dla_reset_rstn]
set_false_path   -from [get_ports test_mode]
set_false_path   -from [get_ports pwrbus_ram_pd*]
set_false_path   -from [get_ports tmc2slcg_disable_clock_gating]
set_false_path   -from [get_ports global_clk_ovr_on]
set_false_path   -from [get_clocks nvdla_core_clk] -to [get_clocks nvdla_falcon_clk]
set_false_path   -from [get_clocks nvdla_falcon_clk] -to [get_clocks nvdla_core_clk]


# ##################################
# #-------- Optimization ----------#
# ##################################
set_max_fanout 20 [current_design]
set_max_area 0




