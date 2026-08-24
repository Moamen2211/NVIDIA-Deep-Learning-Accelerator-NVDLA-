
 # ==================================================================
 # -- File                 : fm_launch_partition.sh
 # -- Target Technology    : SAED_EDK32 (32nm) 
 # -- Target Corner        : Worst | Best  
 # -- Target Tool          : ICC2 (Synopsys) 
 # -- Create By            : Moamen Ashraf
 # -- Version              : 1.20
 # ===================================================================
 
 
FLOW_ROOT=`dirname $0`
config="./config.sh"  

if [ -d "syn_partition_o_32nm" ]; then
    default_build="syn_partition_o_32nm"
else
    default_build=$(ls -td syn_partition_o_* 2>/dev/null | head -1)
fi

build_dir=$default_build
module="NV_NVDLA_partition_o" 

usage ()
{
    echo "Usage: $0 [-module MODULE_NAME] [-build /path/to/build] [-config /path/to/config]"
    exit 1
}

while [ $# -gt 0 ]
do
  case $1 in
      -config) shift; config="$1" ;;
      -build)  shift; build_dir="$1" ;;
      -module) shift; module="$1" ;;
      *) echo "Error: unrecognized argument: $1"; usage ;;
    esac
  shift
done

if [ -z "$build_dir" ]; then
    echo "[ERROR]: No synthesis build directory found."
    exit 1
fi

echo "[INFO]: Using build directory: $build_dir"
echo "[INFO]: Sourcing configuration from $config ... "
source "$config"

export BUILD_NAME=$build_dir
export MODULE=$module
export RTL_DEPS="$BUILD_NAME/scripts/${MODULE}.files.vc"
export LINK_LIB="$LINK_LIB"
export TARGET_LIB="$TARGET_LIB"

mkdir -p $BUILD_NAME/fv/$MODULE

FM_SHELL_BIN=$(command -v fm_shell 2>/dev/null || true)
if [ -z "${FM_SHELL_BIN}" ]; then
    POTENTIAL_FM_BIN=$(echo $DC_PATH | sed 's/\/syn\/bin/\/fm\/bin/')/fm_shell
    if [ -f "$POTENTIAL_FM_BIN" ]; then
        FM_SHELL_BIN=$POTENTIAL_FM_BIN
        echo "[INFO]: Found fm_shell at $FM_SHELL_BIN"
    else
        echo "[ERROR]: fm_shell not found in PATH."
        exit 1
    fi
fi

echo "[INFO]: Starting Formality for $MODULE ..."
$FM_SHELL_BIN -f ./fm_run_partition.tcl | tee $BUILD_NAME/fv/$MODULE/formality.log