# ===================================================================
# File: syn/templates/config.sh
# NVDLA Open Source Project
# Template configuration file for reference synthesis methodology
#
# Copyright (c) 2016 – 2017 NVIDIA Corporation. Licensed under the
# NVDLA Open Hardware License; see the "LICENSE.txt" file that came
# with this distribution for more information.
# ===================================================================

# ===========================
# DESIGN RELATED VARIABLES
# ===========================

#export TOP_NAMES="NV_NVDLA_partition_a NV_NVDLA_partition_c NV_NVDLA_partition_o NV_NVDLA_partition_m NV_NVDLA_partition_p"
export TOP_NAMES="NV_NVDLA_partition_o"

export TB_PATH="top.nvdla_top"
#TOP_INSTS_NV_NVDLA_partition_a="u_partition_a"
#TOP_INSTS_NV_NVDLA_partition_c="u_partition_c"
TOP_INSTS_NV_NVDLA_partition_o="u_partition_o"
#TOP_INSTS_NV_NVDLA_partition_m="u_partition_ma u_partition_mb"
#TOP_INSTS_NV_NVDLA_partition_p="u_partition_p"




# RTL_SEARCH_PATH
export NVDLA_ROOT="/home/ICer/EDA_projects/NVDLA/nv_small"

# Where do I find the RTL source verilog/system verilog files?
export RTL_SEARCH_PATH=" \
    $(ls -d ${NVDLA_ROOT}/vmod/rtl/*) \
    ${NVDLA_ROOT}/vmod/rams/synth \
    ${NVDLA_ROOT}/vmod/vlibs \
"




# For verilog source files that do not match the module name. 
export EXTRA_RTL=" \
    ${NVDLA_ROOT}/vmod/rtl/nocif/NV_NVDLA_XXIF_libs.v \
"



# If there are verilog header files, where do I find them?
export RTL_INCLUDE_SEARCH_PATH=" \
    ${NVDLA_ROOT}/vmod/include \
"


# File extensions for source files...
export RTL_EXTENSIONS=".v .sv .gv"
export RTL_INCLUDE_EXTENSIONS=".vh .svh"

# FLoorplans and constraints
export DEF="def"
export CONS="cons"

# ===========================
# TOOL RELATED VARIABLES
# ===========================


# Design Compiler Installation - Where do I find the dc_shell executable
export DC_PATH="/home/synopsys/syn/O-2018.06-SP1/bin"
export PT_PATH="/home/synopsys/pts/O-2018.06-SP1/bin"


# ===========================
# LIBRARY RELATED VARIABLES
# ===========================

export TARGET_LIB="/home/ICer/Downloads/SAED32/STD/saed32rvt_ss0p95vn40c.db"

	 
export LINK_LIB=" * /home/ICer/Downloads/SAED32/STD/saed32rvt_ss0p95vn40c.db  \
	        	   /home/ICer/Downloads/SAED32/SRAM/saed32sram_ss0p95vn40c.db"



export TF_FILE="${RELEASE_DIR}/saed32nm_1p9m_mw.tf"



# ==========================
# MISCELLANEOUS VARIABLES 
#===========================
# Set host options in the DC session. 
export DC_NUM_CORES="8"

# Apply constraints to tighten CG enable paths to model post-CTS insertion delays
export TIGHTEN_CGE="1"

# Enable Area recovery (run optimize_netlist -area)
export AREA_RECOVERY="1"

# Number of incremental recompile loops
export INCREMENTAL_RECOMPILE_COUNT="2"

export CGLUT_FILE="$NVDLA_ROOT/templates/cg_latency_lut.tcl"

