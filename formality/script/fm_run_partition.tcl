
 # ==================================================================
 # -- File                 : fm_run_partition.tcl
 # -- Target Technology    : SAED_EDK32 (32nm) 
 # -- Target Corner        : Worst | Best  
 # -- Target Tool          : ICC2 (Synopsys) 
 # -- Create By            : Moamen Ashraf
 # -- Version              : 1.20
 # ===================================================================
 
 
set synMsgInfo "Info:"
set synMsgErr  "Error:"
set synMsgWarn "Warning:"

# Proc to set variables from env or defaults
proc setVar {var {default ""}} {
    global $var
    if {[info exists ::env($var)]} {
        set $var $::env($var)
    } elseif {![info exists $var]} {
        set $var $default
    }
}

# 1. Environment Setup 
setVar MODULE "NV_NVDLA_partition_o"
setVar BUILD_NAME "syn_partition_o_32nm"
setVar RTL_DEPS ""

set STD_DB  "/home/ICer/Downloads/SAED32/STD/saed32rvt_ss0p95vn40c.db"
set SRAM_DB "/home/ICer/Downloads/SAED32/SRAM/saed32sram_ss0p95vn40c.db"

# ===================================================================
# Formality Engine & Verification Setup
# ===================================================================
set synopsys_auto_setup true   
set hdlin_check_no_latch_edge_variables true

# Undriven signals handling
set verification_set_undriven_signals 0
set verification_verify_directly_undriven_output true

# Synthesis Optimization & Dead-Code Isolation (Crucial Fixes)
set verification_verify_unread_compare_points false
set verification_ignore_unmatched_reference_registers true



set FM_LOG_DIR "${BUILD_NAME}/fv/${MODULE}"
file mkdir ${FM_LOG_DIR}
set_app_var search_path ". ${BUILD_NAME}/src"

# 2. Load SVF Guidance
set_svf ${FM_LOG_DIR}/${MODULE}.svf


# ===================================================================
# 3. Reference Container (r) Phase
# ===================================================================

current_container r

set sh_continue_on_error true
if {$RTL_DEPS == ""} {
    set RTL_DEPS "${BUILD_NAME}/scripts/${MODULE}.files.vc"
}
if {[file exists $RTL_DEPS]} {
    puts "${synMsgInfo} Reading RTL files from ${RTL_DEPS}"
    set fp [open ${RTL_DEPS} r]
    set vc_data [read $fp]
    close $fp
    foreach vcline [split $vc_data "\n"] {
        set vcline [string trim $vcline]
        if {$vcline == "" || [string match "-*" $vcline] || [string match "+*" $vcline]} continue
        catch {read_verilog -container r -libname WORK $vcline}
    }
}
foreach vfile [glob -nocomplain "${BUILD_NAME}/src/*.v"] {
    catch {read_verilog -container r -libname WORK $vfile}
}
set sh_continue_on_error false

read_db -container r $STD_DB 
read_db -container r $SRAM_DB

set_reference_design r:/WORK/${MODULE}
set_top r:/WORK/${MODULE}


# ===================================================================
# 4. Implementation Container (i) Phase
# ===================================================================

current_container i

read_verilog -container i -libname WORK -netlist ${BUILD_NAME}/net/${MODULE}.gv

read_db -container i $STD_DB
read_db -container i $SRAM_DB

set_implementation_design i:/WORK/${MODULE}
set_top i:/WORK/${MODULE}


# ===================================================================
# 5. Black Boxing & Constraints Phase
# ===================================================================

set_black_box [find_designs "NV_DW_*"] 
set_black_box [find_designs "nv_ram_*"] 


set_dont_verify_points [find_cells r:/*SRAM2RW*]
set_dont_verify_points [find_cells i:/*SRAM2RW*]

# ===================================================================
# 6. Matching Phase
# ===================================================================
match


# ===================================================================
# 7. Verification Phase
# ===================================================================
set verify_result [verify]

if {$verify_result == 1} {
    puts "**************************************************"
    puts "VERIFICATION SUCCEEDED"
    puts "**************************************************"
} else {
    puts "**************************************************"
    puts "VERIFICATION FAILED"
    puts "****************================================**"
}

# ===================================================================
# 8. Reporting
# ===================================================================

report_passing_points    > ${FM_LOG_DIR}/passing_points.rpt
report_failing_points    > ${FM_LOG_DIR}/failing_points.rpt
report_aborted_points    > ${FM_LOG_DIR}/aborted_points.rpt
report_unverified_points > ${FM_LOG_DIR}/unverified_points.rpt

report_unmatched_points      > ${FM_LOG_DIR}/unmatched_points.rpt
report_dont_match_points     > ${FM_LOG_DIR}/dont_match_points.rpt
report_not_compared_points   > ${FM_LOG_DIR}/not_compared_points.rpt
report_loops                 > ${FM_LOG_DIR}/loops.rpt
report_dont_verify_points    > ${FM_LOG_DIR}/dont_verify_points.rpt
report_undriven_nets         > ${FM_LOG_DIR}/undriven_nets.rpt
report_unread_endpoints -all > ${FM_LOG_DIR}/unread.rpt

# ===================================================================

