# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
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
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/proj/Nexys-A7-100T-OOB.cache/wt [current_project]
set_property parent.project_path D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/proj/Nexys-A7-100T-OOB.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part_repo_paths D:/Github/vivado-boards/new/board_files [current_project]
set_property board_part digilentinc.com:nexys-a7-100t:part0:1.0 [current_project]
set_property ip_repo_paths d:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/repo [current_project]
set_property ip_output_repo d:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/repo/cache [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/other/Nexys4_all.coe
read_vhdl -library xil_defaultlib {
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/ADXL362Ctrl.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/AccelArithmetics.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/AccelDisplay.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/AccelerometerCtl.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/AudioDemo.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/Dbncr.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/FPGAMonitor.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/LedBar.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/LocalRst.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/LogoDisplay.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/SyncAsync.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/MicDisplay.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/MouseCtl.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/MouseDisplay.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/OverlayCtl.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/PdmDes.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/PdmSer.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/Ps2Interface.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/Pwm.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/Ram2Ddr.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/RamCntrl.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/RgbLed.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/RgbLedDisplay.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/SPI_If.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/TWICtl.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/TempDisplay.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/TempSensorCtl.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/Vga.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/sSegDemo.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/sSegDisplay.vhd
  D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/hdl/top.vhd
}
read_ip -quiet D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/ip/BRAM_1/BRAM_1.xci
set_property used_in_implementation false [get_files -all d:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/ip/BRAM_1/BRAM_1_ooc.xdc]

read_ip -quiet D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/ip/Square_Root/Square_Root.xci

read_ip -quiet D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/ip/ddr/ddr.xci
set_property used_in_implementation false [get_files -all d:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/ip/ddr/ddr/user_design/constraints/ddr.xdc]
set_property used_in_implementation false [get_files -all d:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/ip/ddr/ddr/user_design/constraints/ddr_ooc.xdc]

read_ip -quiet D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/ip/ClkGen/ClkGen.xci
set_property used_in_implementation false [get_files -all d:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/ip/ClkGen/ClkGen_board.xdc]
set_property used_in_implementation false [get_files -all d:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/ip/ClkGen/ClkGen.xdc]
set_property used_in_implementation false [get_files -all d:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/ip/ClkGen/ClkGen_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/constraints/Nexys-A7-100T-Master.xdc
set_property used_in_implementation false [get_files D:/Github/prerelease/Nexys-A7/Nexys-A7-100T-OOB/src/constraints/Nexys-A7-100T-Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top Nexys4DdrUserDemo -part xc7a100tcsg324-1 -flatten_hierarchy none -directive RuntimeOptimized -fsm_extraction off


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Nexys4DdrUserDemo.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Nexys4DdrUserDemo_utilization_synth.rpt -pb Nexys4DdrUserDemo_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
