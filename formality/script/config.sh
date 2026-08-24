
 # ==================================================================
 # -- File                 : config.sh
 # -- Target Technology    : SAED_EDK32 (32nm) 
 # -- Target Corner        : Worst | Best  
 # -- Target Tool          : ICC2 (Synopsys) 
 # -- Create By            : Moamen Ashraf
 # -- Version              : 1.20
 # ===================================================================
 
# ===========================
# DESIGN RELATED VARIABLES
# ===========================

# Define the top-level module(s) to be synthesized. 
# Other partitions are commented out to focus solely on Partition O.
#export TOP_NAMES="NV_NVDLA_partition_a NV_NVDLA_partition_c NV_NVDLA_partition_o NV_NVDLA_partition_m NV_NVDLA_partition_p"
export TOP_NAMES="NV_NVDLA_partition_o"

# Testbench hierarchical path for power/activity annotation (if used later)
export TB_PATH="top.nvdla_top"

# Define the instance names of the partitions as instantiated in the top level.
# Useful for hierarchical synthesis or linking constraints.
#TOP_INSTS_NV_NVDLA_partition_a="u_partition_a"
#TOP_INSTS_NV_NVDLA_partition_c="u_partition_c"
TOP_INSTS_NV_NVDLA_partition_o="u_partition_o"
#TOP_INSTS_NV_NVDLA_partition_m="u_partition_ma u_partition_mb"
#TOP_INSTS_NV_NVDLA_partition_p="u_partition_p"


# -------------------------------------------------------------------
# RTL Directory Setup
# -------------------------------------------------------------------
# Base directory for the NVDLA project
export NVDLA_ROOT="/home/ICer/EDA_projects/NVDLA/nv_small"

# Directories to search for RTL source files (Verilog/SystemVerilog).
# Uses 'ls -d' to dynamically include all subdirectories inside vmod/rtl.
export RTL_SEARCH_PATH=" \
    $(ls -d ${NVDLA_ROOT}/vmod/rtl/*) \
    ${NVDLA_ROOT}/vmod/rams/synth \
    ${NVDLA_ROOT}/vmod/vlibs \
"

# Explicitly include specific RTL files that might not follow standard naming 
# conventions (module name != file name) or contain shared libraries.
export EXTRA_RTL=" \
    ${NVDLA_ROOT}/vmod/rtl/nocif/NV_NVDLA_XXIF_libs.v \
"

# Directories to search for Verilog header/include files (`include "file.vh").
export RTL_INCLUDE_SEARCH_PATH=" \
    ${NVDLA_ROOT}/vmod/include \
"

# Accepted file extensions for RTL sources and headers
export RTL_EXTENSIONS=".v .sv .gv"
export RTL_INCLUDE_EXTENSIONS=".vh .svh"

# Directories/prefixes for Physical Design Exchange Format (DEF) 
# and Constraints (SDC) files
export DEF="def"
export CONS="cons"

# ===========================
# TOOL RELATED VARIABLES
# ===========================

# Paths to the Synopsys EDA tools binaries
# DC_PATH is used by the launch scripts to find 'dc_shell' or 'fm_shell'
export DC_PATH="/home/synopsys/syn/O-2018.06-SP1/bin"
# PT_PATH is for PrimeTime (Static Timing Analysis)
export PT_PATH="/home/synopsys/pts/O-2018.06-SP1/bin"


# ===========================
# LIBRARY RELATED VARIABLES
# ===========================

# TARGET_LIB: The standard cell library database used by Design Compiler 
# to map the RTL logic into actual gates during synthesis.
export TARGET_LIB="/home/ICer/Downloads/SAED32/STD/saed32rvt_ss0p95vn40c.db"

# LINK_LIB: Used to resolve references to all instances in the design.
# The asterisk (*) means "search in memory first".
# Includes both standard cells and SRAM memory macros databases.
export LINK_LIB=" * /home/ICer/Downloads/SAED32/STD/saed32rvt_ss0p95vn40c.db  \
                   /home/ICer/Downloads/SAED32/SRAM/saed32sram_ss0p95vn40c.db"

# TF_FILE: Technology File (Milkyway/NDM format). 
# Contains layer and routing rules required if doing Physical/Topographical Synthesis.
export TF_FILE="${RELEASE_DIR}/saed32nm_1p9m_mw.tf"


# ==========================
# MISCELLANEOUS VARIABLES 
# ==========================

# Multi-threading setting for Design Compiler to speed up synthesis runtime
export DC_NUM_CORES="8"

# TIGHTEN_CGE: Clock Gating Enable optimization.
# When set to 1, over-constrains the Clock Gating Enable paths during synthesis 
# to leave a timing margin (buffer) for the Clock Tree Synthesis (CTS) stage in PnR.
export TIGHTEN_CGE="1"

# AREA_RECOVERY: Enables an additional optimization pass to reduce gate area 
# without violating timing constraints (runs 'optimize_netlist -area').
export AREA_RECOVERY="1"

# Incremental Compile: Allows the tool to run extra passes to fix lingering 
# timing or DRC violations after the initial compile.
export INCREMENTAL_RECOMPILE_COUNT="2"

# File containing lookup tables (LUTs) for Clock Gating latencies,
# used to model realistic clock delays before actual CTS is done.
export CGLUT_FILE="$NVDLA_ROOT/templates/cg_latency_lut.tcl"