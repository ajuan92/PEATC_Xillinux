# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.runs/synth_1/xillydemo.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
OPTRACE "synth_1" START { ROLLUP_AUTO }
set_msg_config  -id {BD 41-968}  -string {{xillybus_S_AXI}}  -new_severity {INFO} 
set_msg_config  -id {Netlist 29-160}  -string {{vivado_system_processing_system7}}  -new_severity {INFO} 
set_msg_config  -id {BD 41-968}  -string {{xillybus_M_AXI}}  -new_severity {INFO} 
set_msg_config  -id {BD 41-967}  -string {{xillybus_ip_0/xillybus_M_AXI}}  -new_severity {INFO} 
set_msg_config  -id {BD 41-967}  -string {{xillybus_ip_0/xillybus_S_AXI}}  -new_severity {INFO} 
set_msg_config  -id {BD 41-678}  -string {{xillybus_S_AXI/Reg}}  -new_severity {INFO} 
set_msg_config  -id {BD 41-1356}  -string {{xillybus_S_AXI/Reg}}  -new_severity {INFO} 
set_msg_config  -id {BD 41-759}  -string {{xlconcat_0/In}}  -new_severity {INFO} 
set_msg_config  -id {filemgmt 20-1440}  -string {{xillybus_lite.ngc}}  -new_severity {INFO} 
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.cache/wt [current_project]
set_property parent.project_path E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado-ip [current_project]
update_ip_catalog
set_property ip_output_repo e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
read_verilog -library xil_defaultlib {
  E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/src/xillydemo.v
  E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/src/smbus.v
  E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/src/i2s_audio.v
  E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/src/xillybus.v
  E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/src/xillybus_core.v
  E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/system.v
  E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.srcs/sources_1/new/Gs_StateMachin.v
  E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.srcs/sources_1/new/GS_RawSignal.v
  E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.srcs/sources_1/new/GS_SimSignal.v
  E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.srcs/sources_1/new/Rn_StateMachin.v
  E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.srcs/sources_1/new/RN_SimResult.v
}
add_files E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/vivado_system.bd
set_property used_in_implementation false [get_files -all e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/ip/vivado_system_processing_system7_0_0/vivado_system_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/ip/vivado_system_rst_processing_system7_0_100M_0/vivado_system_rst_processing_system7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/ip/vivado_system_rst_processing_system7_0_100M_0/vivado_system_rst_processing_system7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/ip/vivado_system_rst_processing_system7_0_100M_0/vivado_system_rst_processing_system7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/ip/vivado_system_auto_pc_0/vivado_system_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/vivado_system_ooc.xdc]

read_ip -quiet e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.srcs/sources_1/ip/fifo_GS_Host_FPGAn/fifo_GS_Host_FPGAn.xci
set_property used_in_implementation false [get_files -all e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.gen/sources_1/ip/fifo_GS_Host_FPGAn/fifo_GS_Host_FPGAn.xdc]

read_ip -quiet E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vga_fifo/vga_fifo.xci
set_property used_in_implementation false [get_files -all e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vga_fifo/vga_fifo.xdc]
set_property used_in_implementation false [get_files -all e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vga_fifo/vga_fifo_clocks.xdc]
set_property used_in_implementation false [get_files -all e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vga_fifo/vga_fifo_ooc.xdc]

read_ip -quiet E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/fifo_32x512/fifo_32x512.xci
set_property used_in_implementation false [get_files -all e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/fifo_32x512/fifo_32x512.xdc]
set_property used_in_implementation false [get_files -all e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/fifo_32x512/fifo_32x512_ooc.xdc]

read_ip -quiet E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.srcs/sources_1/ip/fifo_GS_FPGA_Host/fifo_GS_FPGA_Host.xci
set_property used_in_implementation false [get_files -all e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.gen/sources_1/ip/fifo_GS_FPGA_Host/fifo_GS_FPGA_Host.xdc]
set_property used_in_implementation false [get_files -all e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.gen/sources_1/ip/fifo_GS_FPGA_Host/fifo_GS_FPGA_Host_ooc.xdc]

read_ip -quiet E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.srcs/sources_1/ip/fifo_GS_Host_FPGA/fifo_GS_Host_FPGA.xci
set_property used_in_implementation false [get_files -all e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.gen/sources_1/ip/fifo_GS_Host_FPGA/fifo_GS_Host_FPGA.xdc]
set_property used_in_implementation false [get_files -all e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.gen/sources_1/ip/fifo_GS_Host_FPGA/fifo_GS_Host_FPGA_ooc.xdc]

read_ip -quiet E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/fifo_8x2048/fifo_8x2048.xci
set_property used_in_implementation false [get_files -all e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/fifo_8x2048/fifo_8x2048.xdc]
set_property used_in_implementation false [get_files -all e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/fifo_8x2048/fifo_8x2048_ooc.xdc]

read_ip -quiet E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.srcs/sources_1/ip/fifo_RN_Host_FPGA/fifo_RN_Host_FPGA.xci
set_property used_in_implementation false [get_files -all e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.gen/sources_1/ip/fifo_RN_Host_FPGA/fifo_RN_Host_FPGA.xdc]
set_property used_in_implementation false [get_files -all e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.gen/sources_1/ip/fifo_RN_Host_FPGA/fifo_RN_Host_FPGA_ooc.xdc]

read_ip -quiet E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.srcs/sources_1/ip/fifo_RN_FPGA_Host/fifo_RN_FPGA_Host.xci
set_property used_in_implementation false [get_files -all e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.gen/sources_1/ip/fifo_RN_FPGA_Host/fifo_RN_FPGA_Host.xdc]
set_property used_in_implementation false [get_files -all e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.gen/sources_1/ip/fifo_RN_FPGA_Host/fifo_RN_FPGA_Host_ooc.xdc]

set_property edif_extra_search_paths E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/cores [current_fileset]
OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/xillydemo.xdc
set_property used_in_implementation false [get_files E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/xillydemo.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top xillydemo -part xc7z020clg484-1
OPTRACE "synth_design" END { }
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef xillydemo.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
create_report "synth_1_synth_report_utilization_0" "report_utilization -file xillydemo_utilization_synth.rpt -pb xillydemo_utilization_synth.pb"
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }
