# ============================================
# -- Project Name         : nv_small(NV_NVDLA_partition_o)  
# -- Target Technology    : SAED_EDK32 (32nm) # -- Target Corner  : Worst   
# -- Step Name            : SRAM_NDM Creation 
# -- Target Tool          : Library manager (Synopsys) 
# -- Create By            : Moamen Ashraf
# -- Version              : 1.00
# ============================================

# ########################################## #
# =============== WorkSpace  =============== #
# ########################################## #
# -- Depend on  (technology file ) process of creating a reference library 
set tech_file "/home/ICer/Downloads/SAED32/saed32nm_1p9m_mw.tf"
create_workspace -flow exploration -technology $tech_file saed32nm_sram_ndm

				               
# ########################################## #
# =========== Activate Options  ============ #
# ########################################## #
# --- To save design and layout views in The NDM
  
# It ensures that physical-only cells—like decoupling capacitors, end-cap cells, 
# and filler cells \are not accidentally dropped during the NDM creation.  
set_app_options -list {lib.workspace.keep_all_physical_cells {true}   }

# Creates the view used for routing and placement.
set_app_options -list {lib.workspace.save_design_views       {true}   }

# Creates the view used for GDS export and DRC.
set_app_options -list {lib.workspace.save_layout_views       {true}   }

# Allows the tool to write/modify data in the workspace.
set_app_options -list {design.enable_lib_cell_editing        {mutable}}

# #######################################################
# ============ Logic Files{ SS, FF }(.db) ============= #
# #######################################################

read_db  "/home/ICer/Downloads/SAED32/SRAM/saed32sram_ss0p95vn40c.db"
read_db  "/home/ICer/Downloads/SAED32/SRAM/saed32sram_ff1p16v125c.db"

		 
# ########################################## #
# ========== Physical File(.lef) =========== #
# ########################################## #
		  
read_lef  "/home/ICer/Downloads/SAED32/SRAM/saed32sram.lef" 

# ########################################## #
# ============ Group Libraries ============= #
# ########################################## #
# --- Based on (logic,physical) source libraries in the exploration mode 
group_libs


# ########################################## #
# ====== Reference Library Creation  ======= #
# ########################################## #
# --- Checks and Commits workspaces in one step. 
process_workspaces  -directory /home/ICer/EDA_projects/NVDLA/nv_small/PnR/1_ndm/sram_ndm/ndm 










































