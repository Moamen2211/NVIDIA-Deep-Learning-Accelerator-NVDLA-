# ============================================
# -- Project Name         : nv_small(NV_NVDLA_partition_o)  
# -- Target Technology    : SAED_EDK32 (32nm) # -- Target Corner  : Worst   
# -- Step Name            : Library Creation 
# -- Target Tool          : Library manager (Synopsys) 
# -- Create By            : Moamen Ashraf
# -- Version              : 1.00
# ============================================

# ########################################## #
# ============== Variable Setup ============ #
# ########################################## #
set project_dir "/home/ICer/EDA_projects/NVDLA/nv_small"

# --- Technology File
set TECH_FILE "/home/ICer/Downloads/SAED32/saed32nm_1p9m_mw.tf" 

set reference_library [glob /home/ICer/EDA_projects/NVDLA/nv_small/PnR/1_ndm/sram_ndm/ndm/*.ndm \
							/home/ICer/EDA_projects/NVDLA/nv_small/PnR/1_ndm/std_ndm/ndm/*ndm]


set design         "NV_NVDLA_partition_o"
set std_worst      "saed32rvt_ss0p95vn40c.db" 
set sram_worst     "/home/ICer/Downloads/SAED32/SRAM/saed32sram_ss0p95vn40c.db"
set target_library  $std_worst
set_app_var link_library  "* $target_library $sram_worst"


# ########################################## #
# ================= Handle Files =========== #
# ########################################## #
sh rm    -r ../results/report_MMMC

sh mkdir -p ../results/report_MMMC

# ########################################## #
# ============ Designlib Creation ========== #
# ########################################## #
# ----  Technology file &  Reference Library 
create_lib -technology $TECH_FILE -ref_libs $reference_library ../results/library/${design}.dlib

# ########################################## #
# ============== Read Netlist  ============= #
# ########################################## #
read_verilog -top ${design} ${project_dir}/syn/syn_partition_o_32nm/net/${design}.gv
link_block



# ########################################## #
# ============== Source MMMC  ============== #
# ########################################## #
source -e -v ../script/Scenarios.tcl




# ########################################## #
# ================= Reports ================ #
# ########################################## #
report_corners                                         > ../results/report_MMMC/report_corners.rpt
report_pvt                                             > ../results/report_MMMC/pvt.rpt
report_clocks                                          > ../results/report_MMMC/clocks.rpt
report_parasitic_parameters                            > ../results/report_MMMC/parasitic_parameters.rpt
report_timing  -scenarios [all_scenarios] -max_paths 5 > ../results/report_MMMC/timing.rpt
report_lib     -parasitic_tech [current_lib]           > ../results/report_MMMC/parasitic_tech.rpt

# ########################################## #
# ================ Save Block ============== #
# ########################################## #

save_block -as ${design}_dlib ${design}.dlib:${design}.design
#                 Lable_Name      Lib_Name  :  Block_Name.views   