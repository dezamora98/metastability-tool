vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/processing_system7_bfm_v2_0_5
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_10
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_11
vlib riviera/fifo_generator_v13_1_3
vlib riviera/axi_data_fifo_v2_1_10
vlib riviera/axi_crossbar_v2_1_12
vlib riviera/axi_protocol_converter_v2_1_11

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap processing_system7_bfm_v2_0_5 riviera/processing_system7_bfm_v2_0_5
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_10 riviera/proc_sys_reset_v5_0_10
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_11 riviera/axi_register_slice_v2_1_11
vmap fifo_generator_v13_1_3 riviera/fifo_generator_v13_1_3
vmap axi_data_fifo_v2_1_10 riviera/axi_data_fifo_v2_1_10
vmap axi_crossbar_v2_1_12 riviera/axi_crossbar_v2_1_12
vmap axi_protocol_converter_v2_1_11 riviera/axi_protocol_converter_v2_1_11

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" \
"D:/ProgramFiles/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"D:/ProgramFiles/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/f5d5/src/Contador_NBits.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/f5d5/src/Sincroniza_RST.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/f5d5/src/Sincronizador.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/f5d5/src/DFP.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/f5d5/src/Contador_32bits.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/f5d5/src/Circuito_test.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/f5d5/src/Circuito_para_pruebas.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/f5d5/hdl/Circuito_para_pruebas_v1_0_S00_AXI.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/f5d5/hdl/Circuito_para_pruebas_v1_0.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_Circuito_para_pruebas_0_0/sim/Proyecto_TADSE_Circuito_para_pruebas_0_0.vhd" \

vlog -work processing_system7_bfm_v2_0_5  -v2k5 "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl/processing_system7_bfm_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_processing_system7_0_0/sim/Proyecto_TADSE_processing_system7_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/Proyecto_TADSE_xadc_wiz_0_0_conv_funs_pkg.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/Proyecto_TADSE_xadc_wiz_0_0_proc_common_pkg.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/Proyecto_TADSE_xadc_wiz_0_0_ipif_pkg.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/Proyecto_TADSE_xadc_wiz_0_0_family_support.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/Proyecto_TADSE_xadc_wiz_0_0_family.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/Proyecto_TADSE_xadc_wiz_0_0_soft_reset.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/Proyecto_TADSE_xadc_wiz_0_0_pselect_f.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/Proyecto_TADSE_xadc_wiz_0_0_address_decoder.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/Proyecto_TADSE_xadc_wiz_0_0_slave_attachment.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_xadc_wiz_0_0/interrupt_control_v2_01_a/hdl/src/vhdl/Proyecto_TADSE_xadc_wiz_0_0_interrupt_control.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/Proyecto_TADSE_xadc_wiz_0_0_axi_lite_ipif.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_xadc_wiz_0_0/Proyecto_TADSE_xadc_wiz_0_0_xadc_core_drp.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_xadc_wiz_0_0/Proyecto_TADSE_xadc_wiz_0_0_axi_xadc.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_xadc_wiz_0_0/Proyecto_TADSE_xadc_wiz_0_0.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/2e37/xlconcat.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_xlconcat_0_0/sim/Proyecto_TADSE_xlconcat_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_clk_wiz_0_0/Proyecto_TADSE_clk_wiz_0_0_mmcm_pll_drp.v" \

vcom -work xil_defaultlib -93 \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/Proyecto_TADSE_clk_wiz_0_0_conv_funs_pkg.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/Proyecto_TADSE_clk_wiz_0_0_proc_common_pkg.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/Proyecto_TADSE_clk_wiz_0_0_ipif_pkg.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/Proyecto_TADSE_clk_wiz_0_0_family_support.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/Proyecto_TADSE_clk_wiz_0_0_family.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/Proyecto_TADSE_clk_wiz_0_0_soft_reset.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/Proyecto_TADSE_clk_wiz_0_0_pselect_f.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_clk_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/Proyecto_TADSE_clk_wiz_0_0_address_decoder.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_clk_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/Proyecto_TADSE_clk_wiz_0_0_slave_attachment.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_clk_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/Proyecto_TADSE_clk_wiz_0_0_axi_lite_ipif.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_clk_wiz_0_0/Proyecto_TADSE_clk_wiz_0_0_clk_wiz_drp.vhd" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_clk_wiz_0_0/Proyecto_TADSE_clk_wiz_0_0_axi_clk_config.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_clk_wiz_0_0/Proyecto_TADSE_clk_wiz_0_0_clk_wiz.v" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_clk_wiz_0_0/Proyecto_TADSE_clk_wiz_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -93 \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_rst_ps7_0_50M_1/sim/Proyecto_TADSE_rst_ps7_0_50M_1.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_11  -v2k5 "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_3  -v2k5 "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_3 -93 \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_3  -v2k5 "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_10  -v2k5 "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_12  -v2k5 "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/896d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_xbar_1/sim/Proyecto_TADSE_xbar_1.v" \

vlog -work axi_protocol_converter_v2_1_11  -v2k5 "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7dd0/hdl" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/100a" "+incdir+../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ipshared/7e3a/hdl" \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_auto_pc_0/sim/Proyecto_TADSE_auto_pc_0.v" \

vcom -work xil_defaultlib -93 \
"../../../../Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/hdl/Proyecto_TADSE.vhd" \

vlog -work xil_defaultlib "glbl.v"

