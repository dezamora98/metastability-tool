# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/mt_hard/mt_hard.cache/wt [current_project]
set_property parent.project_path D:/mt_hard/mt_hard.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:zybo-z7-20:part0:1.0 [current_project]
set_property ip_repo_paths d:/mt_hard/user_ip [current_project]
set_property ip_output_repo d:/mt_hard/mt_hard.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib D:/mt_hard/mt_hard.srcs/sources_1/bd/mt_hard_bd/hdl/mt_hard_bd_wrapper.vhd
add_files D:/mt_hard/mt_hard.srcs/sources_1/bd/mt_hard_bd/mt_hard_bd.bd
set_property used_in_implementation false [get_files -all d:/mt_hard/mt_hard.srcs/sources_1/bd/mt_hard_bd/ip/mt_hard_bd_xadc_wiz_0_0/mt_hard_bd_xadc_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/mt_hard/mt_hard.srcs/sources_1/bd/mt_hard_bd/ip/mt_hard_bd_xadc_wiz_0_0/mt_hard_bd_xadc_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/mt_hard/mt_hard.srcs/sources_1/bd/mt_hard_bd/ip/mt_hard_bd_processing_system7_0_0/mt_hard_bd_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/mt_hard/mt_hard.srcs/sources_1/bd/mt_hard_bd/ip/mt_hard_bd_clk_wiz_0_0/mt_hard_bd_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/mt_hard/mt_hard.srcs/sources_1/bd/mt_hard_bd/ip/mt_hard_bd_clk_wiz_0_0/mt_hard_bd_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/mt_hard/mt_hard.srcs/sources_1/bd/mt_hard_bd/ip/mt_hard_bd_clk_wiz_0_0/mt_hard_bd_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/mt_hard/mt_hard.srcs/sources_1/bd/mt_hard_bd/ip/mt_hard_bd_clk_wiz_0_1/mt_hard_bd_clk_wiz_0_1_board.xdc]
set_property used_in_implementation false [get_files -all d:/mt_hard/mt_hard.srcs/sources_1/bd/mt_hard_bd/ip/mt_hard_bd_clk_wiz_0_1/mt_hard_bd_clk_wiz_0_1.xdc]
set_property used_in_implementation false [get_files -all d:/mt_hard/mt_hard.srcs/sources_1/bd/mt_hard_bd/ip/mt_hard_bd_clk_wiz_0_1/mt_hard_bd_clk_wiz_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/mt_hard/mt_hard.srcs/sources_1/bd/mt_hard_bd/ip/mt_hard_bd_rst_ps7_0_50M_0/mt_hard_bd_rst_ps7_0_50M_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/mt_hard/mt_hard.srcs/sources_1/bd/mt_hard_bd/ip/mt_hard_bd_rst_ps7_0_50M_0/mt_hard_bd_rst_ps7_0_50M_0.xdc]
set_property used_in_implementation false [get_files -all d:/mt_hard/mt_hard.srcs/sources_1/bd/mt_hard_bd/ip/mt_hard_bd_rst_ps7_0_50M_0/mt_hard_bd_rst_ps7_0_50M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/mt_hard/mt_hard.srcs/sources_1/bd/mt_hard_bd/ip/mt_hard_bd_xbar_0/mt_hard_bd_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/mt_hard/mt_hard.srcs/sources_1/bd/mt_hard_bd/ip/mt_hard_bd_auto_pc_0/mt_hard_bd_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all D:/mt_hard/mt_hard.srcs/sources_1/bd/mt_hard_bd/mt_hard_bd_ooc.xdc]
set_property is_locked true [get_files D:/mt_hard/mt_hard.srcs/sources_1/bd/mt_hard_bd/mt_hard_bd.bd]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/mt_hard/Zybo-Z7-Master.xdc
set_property used_in_implementation false [get_files D:/mt_hard/Zybo-Z7-Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top mt_hard_bd_wrapper -part xc7z020clg400-1


write_checkpoint -force -noxdef mt_hard_bd_wrapper.dcp

catch { report_utilization -file mt_hard_bd_wrapper_utilization_synth.rpt -pb mt_hard_bd_wrapper_utilization_synth.pb }
