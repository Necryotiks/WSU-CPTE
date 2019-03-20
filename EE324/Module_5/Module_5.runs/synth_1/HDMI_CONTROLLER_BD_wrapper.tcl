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
set_param xicom.use_bs_reader 1
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xc7z007sclg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_5/Module_5.cache/wt [current_project]
set_property parent.project_path C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_5/Module_5.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths c:/Users/Sergaljerk/WSU-CPTE/IP_REPOS [current_project]
update_ip_catalog
set_property ip_output_repo c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_5/Module_5.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_5/Module_5.srcs/sources_1/imports/Parts/VGA_controller.v
  C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_5/Module_5.srcs/sources_1/imports/Parts/color_logic.v
  C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_5/Module_5.srcs/sources_1/bd/HDMI_CONTROLLER_BD/hdl/HDMI_CONTROLLER_BD_wrapper.v
}
add_files C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_5/Module_5.srcs/sources_1/bd/HDMI_CONTROLLER_BD/HDMI_CONTROLLER_BD.bd
set_property used_in_implementation false [get_files -all c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_5/Module_5.srcs/sources_1/bd/HDMI_CONTROLLER_BD/ip/HDMI_CONTROLLER_BD_clk_wiz_0_0/HDMI_CONTROLLER_BD_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_5/Module_5.srcs/sources_1/bd/HDMI_CONTROLLER_BD/ip/HDMI_CONTROLLER_BD_clk_wiz_0_0/HDMI_CONTROLLER_BD_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_5/Module_5.srcs/sources_1/bd/HDMI_CONTROLLER_BD/ip/HDMI_CONTROLLER_BD_clk_wiz_0_0/HDMI_CONTROLLER_BD_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_5/Module_5.srcs/sources_1/bd/HDMI_CONTROLLER_BD/HDMI_CONTROLLER_BD_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_5/Module_5.srcs/constrs_1/new/hdmi_cons.xdc
set_property used_in_implementation false [get_files C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_5/Module_5.srcs/constrs_1/new/hdmi_cons.xdc]

read_xdc C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_5/Module_5.srcs/constrs_1/imports/Repos/BlackboardRevB_MasterXDC.xdc
set_property used_in_implementation false [get_files C:/Users/Sergaljerk/WSU-CPTE/EE324/Module_5/Module_5.srcs/constrs_1/imports/Repos/BlackboardRevB_MasterXDC.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top HDMI_CONTROLLER_BD_wrapper -part xc7z007sclg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef HDMI_CONTROLLER_BD_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file HDMI_CONTROLLER_BD_wrapper_utilization_synth.rpt -pb HDMI_CONTROLLER_BD_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
