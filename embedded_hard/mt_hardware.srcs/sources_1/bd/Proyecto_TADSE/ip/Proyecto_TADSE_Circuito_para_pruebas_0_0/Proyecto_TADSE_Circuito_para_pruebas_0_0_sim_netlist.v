// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Thu Feb 22 23:55:47 2024
// Host        : 0K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/metastability-tool/embedded_hard/Proyecto_TADSE_IP_Custom/Proyecto_TADSE/Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_Circuito_para_pruebas_0_0/Proyecto_TADSE_Circuito_para_pruebas_0_0_sim_netlist.v
// Design      : Proyecto_TADSE_Circuito_para_pruebas_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Proyecto_TADSE_Circuito_para_pruebas_0_0,Circuito_para_pruebas_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "Circuito_para_pruebas_v1_0,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module Proyecto_TADSE_Circuito_para_pruebas_0_0
   (clk_generador_dato,
    clk_circuito_test,
    interrupcion,
    conteo,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  input clk_generador_dato;
  input clk_circuito_test;
  output interrupcion;
  output [31:0]conteo;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST, xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire clk_circuito_test;
  wire clk_generador_dato;
  wire [31:0]conteo;
  wire interrupcion;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_para_pruebas_v1_0 U0
       (.Q(conteo),
        .clk_circuito_test(clk_circuito_test),
        .clk_generador_dato(clk_generador_dato),
        .interrupcion(interrupcion),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "Circuito_para_pruebas" *) 
module Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_para_pruebas
   (desbordamiento_signal,
    Q,
    \conteo[31] ,
    \EP_reg[0] ,
    interrupcion,
    clk_circuito_test,
    clk_generador_dato,
    \slv_reg1_reg[31] ,
    \slv_reg0_reg[1] ,
    s00_axi_aclk,
    AS);
  output desbordamiento_signal;
  output [15:0]Q;
  output [31:0]\conteo[31] ;
  output [0:0]\EP_reg[0] ;
  output interrupcion;
  input clk_circuito_test;
  input clk_generador_dato;
  input [31:0]\slv_reg1_reg[31] ;
  input [1:0]\slv_reg0_reg[1] ;
  input s00_axi_aclk;
  input [0:0]AS;

  wire [0:0]AS;
  wire Detector_frente_positivo_circuito_test_n_0;
  wire Detector_frente_positivo_circuito_test_n_1;
  wire Detector_frente_positivo_circuito_test_n_2;
  wire Detector_frente_positivo_n_0;
  wire Detector_frente_positivo_n_1;
  wire Detector_frente_positivo_n_3;
  wire [0:0]\EP_reg[0] ;
  wire [15:0]Q;
  wire clk_circuito_test;
  wire clk_generador_dato;
  wire [31:0]\conteo[31] ;
  wire dato;
  wire dato_asincronico_i_1_n_0;
  wire desbordamiento_signal;
  wire desbordamiento_signal0;
  wire en_contador_tiempo;
  wire en_contador_tiempo0;
  wire interrupcion;
  wire pulso_inicio;
  wire q_dff4;
  wire rco_contador_eventos;
  wire reset_sinc_bus;
  wire reset_sinc_circuito_test;
  wire reset_sinc_generador_dato;
  wire s00_axi_aclk;
  wire [1:0]\slv_reg0_reg[1] ;
  wire [31:0]\slv_reg1_reg[31] ;

  Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_test Circuito_test_metaestabilidad
       (.D(Detector_frente_positivo_circuito_test_n_0),
        .E(Detector_frente_positivo_circuito_test_n_2),
        .Q(reset_sinc_circuito_test),
        .\Temp_reg[1] (Detector_frente_positivo_circuito_test_n_1),
        .\Temp_reg[1]_0 (\EP_reg[0] ),
        .\axi_rdata_reg[15] (Q),
        .clk_circuito_test(clk_circuito_test),
        .dato(dato),
        .q_dff4(q_dff4),
        .rco_contador_eventos(rco_contador_eventos));
  Proyecto_TADSE_Circuito_para_pruebas_0_0_Contador_32bits Contador_tiempo
       (.D(Detector_frente_positivo_n_0),
        .E(Detector_frente_positivo_n_1),
        .\EP_reg[0]_0 (Detector_frente_positivo_n_3),
        .\EP_reg[1]_0 (reset_sinc_bus),
        .Q(\conteo[31] ),
        .en_contador_tiempo(en_contador_tiempo),
        .en_contador_tiempo0(en_contador_tiempo0),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg1_reg[31] (\slv_reg1_reg[31] [31:1]));
  Proyecto_TADSE_Circuito_para_pruebas_0_0_DFP Detector_frente_positivo
       (.D(Detector_frente_positivo_n_0),
        .E(Detector_frente_positivo_n_1),
        .\EP_reg[0]_0 (\conteo[31] [0]),
        .\EP_reg[1]_0 (Detector_frente_positivo_n_3),
        .Q(reset_sinc_bus),
        .en_contador_tiempo(en_contador_tiempo),
        .pulso_inicio(pulso_inicio),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg0_reg[0] (\slv_reg0_reg[1] [0]),
        .\slv_reg1_reg[0] (\slv_reg1_reg[31] [0]));
  Proyecto_TADSE_Circuito_para_pruebas_0_0_DFP_0 Detector_frente_positivo_circuito_test
       (.D(Detector_frente_positivo_circuito_test_n_0),
        .E(Detector_frente_positivo_circuito_test_n_2),
        .\EP_reg[0]_0 (Q[0]),
        .\EP_reg[1]_0 (Detector_frente_positivo_circuito_test_n_1),
        .\EP_reg[1]_1 (reset_sinc_circuito_test),
        .Q(\EP_reg[0] ),
        .clk_circuito_test(clk_circuito_test),
        .desbordamiento_signal0(desbordamiento_signal0),
        .q_dff4(q_dff4));
  Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincroniza_RST Sincronizador_reset_circuito_test
       (.AS(AS),
        .Q(reset_sinc_circuito_test),
        .clk_circuito_test(clk_circuito_test));
  Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincroniza_RST_1 Sincronizador_reset_generador_dato
       (.AS(AS),
        .Q(reset_sinc_generador_dato),
        .clk_generador_dato(clk_generador_dato));
  Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincroniza_RST_2 Sincronizador_reset_reloj_bus
       (.AS(AS),
        .Q(reset_sinc_bus),
        .s00_axi_aclk(s00_axi_aclk));
  Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincronizador Sincronizador_senial_en_contador_tiempo
       (.AR(reset_sinc_circuito_test),
        .D(en_contador_tiempo),
        .Q(\EP_reg[0] ),
        .clk_circuito_test(clk_circuito_test),
        .desbordamiento_signal(desbordamiento_signal),
        .interrupcion(interrupcion),
        .\slv_reg0_reg[1] (\slv_reg0_reg[1] [1]));
  LUT1 #(
    .INIT(2'h1)) 
    dato_asincronico_i_1
       (.I0(dato),
        .O(dato_asincronico_i_1_n_0));
  FDCE dato_asincronico_reg
       (.C(clk_generador_dato),
        .CE(1'b1),
        .CLR(reset_sinc_generador_dato),
        .D(dato_asincronico_i_1_n_0),
        .Q(dato));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    desbordamiento_signal_reg
       (.D(1'b0),
        .G(desbordamiento_signal0),
        .GE(1'b1),
        .PRE(rco_contador_eventos),
        .Q(desbordamiento_signal));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b0)) 
    en_contador_tiempo_reg
       (.D(1'b0),
        .G(en_contador_tiempo0),
        .GE(1'b1),
        .PRE(pulso_inicio),
        .Q(en_contador_tiempo));
endmodule

(* ORIG_REF_NAME = "Circuito_para_pruebas_v1_0" *) 
module Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_para_pruebas_v1_0
   (s00_axi_wready,
    s00_axi_awready,
    s00_axi_arready,
    s00_axi_rvalid,
    Q,
    s00_axi_rdata,
    interrupcion,
    s00_axi_bvalid,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_arvalid,
    clk_circuito_test,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    clk_generador_dato,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output s00_axi_wready;
  output s00_axi_awready;
  output s00_axi_arready;
  output s00_axi_rvalid;
  output [31:0]Q;
  output [31:0]s00_axi_rdata;
  output interrupcion;
  output s00_axi_bvalid;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_arvalid;
  input clk_circuito_test;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input clk_generador_dato;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [31:0]Q;
  wire clk_circuito_test;
  wire clk_generador_dato;
  wire desbordamiento_signal;
  wire estado_signal;
  wire [15:0]eventos_metaestables_signal;
  wire habilitar_interrupcion_signal;
  wire inicio_signal;
  wire interrupcion;
  wire reset;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg1;

  Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_para_pruebas_v1_0_S00_AXI Circuito_para_pruebas_v1_0_S00_AXI_inst
       (.AS(reset),
        .\EP_reg[15] (eventos_metaestables_signal),
        .Q(Q),
        .\Temp_reg[1] (estado_signal),
        .\axi_rdata_reg[1]_0 ({habilitar_interrupcion_signal,inicio_signal}),
        .\axi_rdata_reg[31]_0 (slv_reg1),
        .desbordamiento_signal(desbordamiento_signal),
        .interrupcion(interrupcion),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
  Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_para_pruebas Logica_usuario
       (.AS(reset),
        .\EP_reg[0] (estado_signal),
        .Q(eventos_metaestables_signal),
        .clk_circuito_test(clk_circuito_test),
        .clk_generador_dato(clk_generador_dato),
        .\conteo[31] (Q),
        .desbordamiento_signal(desbordamiento_signal),
        .interrupcion(interrupcion),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg0_reg[1] ({habilitar_interrupcion_signal,inicio_signal}),
        .\slv_reg1_reg[31] (slv_reg1));
endmodule

(* ORIG_REF_NAME = "Circuito_para_pruebas_v1_0_S00_AXI" *) 
module Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_para_pruebas_v1_0_S00_AXI
   (s00_axi_awready,
    AS,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_bvalid,
    s00_axi_rvalid,
    \axi_rdata_reg[31]_0 ,
    \axi_rdata_reg[1]_0 ,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_arvalid,
    Q,
    interrupcion,
    \EP_reg[15] ,
    desbordamiento_signal,
    \Temp_reg[1] ,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output s00_axi_awready;
  output [0:0]AS;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [31:0]\axi_rdata_reg[31]_0 ;
  output [1:0]\axi_rdata_reg[1]_0 ;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_arvalid;
  input [31:0]Q;
  input interrupcion;
  input [15:0]\EP_reg[15] ;
  input desbordamiento_signal;
  input [0:0]\Temp_reg[1] ;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire [0:0]AS;
  wire [15:0]\EP_reg[15] ;
  wire [31:0]Q;
  wire [0:0]\Temp_reg[1] ;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready_i_1_n_0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready_i_2_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire [1:0]\axi_rdata_reg[1]_0 ;
  wire [31:0]\axi_rdata_reg[31]_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  wire desbordamiento_signal;
  wire interrupcion;
  wire [31:1]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire slv_reg_wren__0;

  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(AS));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(AS));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(s00_axi_arready),
        .R(AS));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awready),
        .I4(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awready),
        .I4(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(AS));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(AS));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(AS));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awready),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(s00_axi_awready),
        .R(AS));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awready),
        .I1(s00_axi_wready),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(AS));
  LUT6 #(
    .INIT(64'hEFEC2F2CE3E02320)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata_reg[31]_0 [0]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\axi_rdata_reg[1]_0 [0]),
        .I4(Q[0]),
        .I5(\EP_reg[15] [0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hEFEC2F2CE3E02320)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata_reg[31]_0 [10]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[10] ),
        .I4(Q[10]),
        .I5(\EP_reg[15] [10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hEFEC2F2CE3E02320)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata_reg[31]_0 [11]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[11] ),
        .I4(Q[11]),
        .I5(\EP_reg[15] [11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hEFEC2F2CE3E02320)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata_reg[31]_0 [12]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[12] ),
        .I4(Q[12]),
        .I5(\EP_reg[15] [12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hEFEC2F2CE3E02320)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata_reg[31]_0 [13]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[13] ),
        .I4(Q[13]),
        .I5(\EP_reg[15] [13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hEFEC2F2CE3E02320)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata_reg[31]_0 [14]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[14] ),
        .I4(Q[14]),
        .I5(\EP_reg[15] [14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hEFEC2F2CE3E02320)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata_reg[31]_0 [15]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[15] ),
        .I4(Q[15]),
        .I5(\EP_reg[15] [15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hFBCBF8C83B0B3808)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata_reg[31]_0 [16]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(desbordamiento_signal),
        .I4(\slv_reg0_reg_n_0_[16] ),
        .I5(Q[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hAAAACCCCFF00F0F0)) 
    \axi_rdata[17]_i_1 
       (.I0(Q[17]),
        .I1(interrupcion),
        .I2(\slv_reg0_reg_n_0_[17] ),
        .I3(\axi_rdata_reg[31]_0 [17]),
        .I4(axi_araddr[2]),
        .I5(axi_araddr[3]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hEFEC2F2CE3E02320)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata_reg[31]_0 [18]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[18] ),
        .I4(Q[18]),
        .I5(\Temp_reg[1] ),
        .O(reg_data_out[18]));
  LUT5 #(
    .INIT(32'hAA00F0CC)) 
    \axi_rdata[19]_i_1 
       (.I0(Q[19]),
        .I1(\slv_reg0_reg_n_0_[19] ),
        .I2(\axi_rdata_reg[31]_0 [19]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hEFEC2F2CE3E02320)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata_reg[31]_0 [1]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\axi_rdata_reg[1]_0 [1]),
        .I4(Q[1]),
        .I5(\EP_reg[15] [1]),
        .O(reg_data_out[1]));
  LUT5 #(
    .INIT(32'hAA00F0CC)) 
    \axi_rdata[20]_i_1 
       (.I0(Q[20]),
        .I1(\slv_reg0_reg_n_0_[20] ),
        .I2(\axi_rdata_reg[31]_0 [20]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'hAA00F0CC)) 
    \axi_rdata[21]_i_1 
       (.I0(Q[21]),
        .I1(\slv_reg0_reg_n_0_[21] ),
        .I2(\axi_rdata_reg[31]_0 [21]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'hAA00F0CC)) 
    \axi_rdata[22]_i_1 
       (.I0(Q[22]),
        .I1(\slv_reg0_reg_n_0_[22] ),
        .I2(\axi_rdata_reg[31]_0 [22]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'hAA00F0CC)) 
    \axi_rdata[23]_i_1 
       (.I0(Q[23]),
        .I1(\slv_reg0_reg_n_0_[23] ),
        .I2(\axi_rdata_reg[31]_0 [23]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'hAA00F0CC)) 
    \axi_rdata[24]_i_1 
       (.I0(Q[24]),
        .I1(\slv_reg0_reg_n_0_[24] ),
        .I2(\axi_rdata_reg[31]_0 [24]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'hAA00F0CC)) 
    \axi_rdata[25]_i_1 
       (.I0(Q[25]),
        .I1(\slv_reg0_reg_n_0_[25] ),
        .I2(\axi_rdata_reg[31]_0 [25]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'hAA00F0CC)) 
    \axi_rdata[26]_i_1 
       (.I0(Q[26]),
        .I1(\slv_reg0_reg_n_0_[26] ),
        .I2(\axi_rdata_reg[31]_0 [26]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'hAA00F0CC)) 
    \axi_rdata[27]_i_1 
       (.I0(Q[27]),
        .I1(\slv_reg0_reg_n_0_[27] ),
        .I2(\axi_rdata_reg[31]_0 [27]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'hAA00F0CC)) 
    \axi_rdata[28]_i_1 
       (.I0(Q[28]),
        .I1(\slv_reg0_reg_n_0_[28] ),
        .I2(\axi_rdata_reg[31]_0 [28]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'hAA00F0CC)) 
    \axi_rdata[29]_i_1 
       (.I0(Q[29]),
        .I1(\slv_reg0_reg_n_0_[29] ),
        .I2(\axi_rdata_reg[31]_0 [29]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hEFEC2F2CE3E02320)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata_reg[31]_0 [2]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[2] ),
        .I4(Q[2]),
        .I5(\EP_reg[15] [2]),
        .O(reg_data_out[2]));
  LUT5 #(
    .INIT(32'hAA00F0CC)) 
    \axi_rdata[30]_i_1 
       (.I0(Q[30]),
        .I1(\slv_reg0_reg_n_0_[30] ),
        .I2(\axi_rdata_reg[31]_0 [30]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(\axi_rdata[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA00F0CC)) 
    \axi_rdata[31]_i_2 
       (.I0(Q[31]),
        .I1(\slv_reg0_reg_n_0_[31] ),
        .I2(\axi_rdata_reg[31]_0 [31]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hEFEC2F2CE3E02320)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata_reg[31]_0 [3]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[3] ),
        .I4(Q[3]),
        .I5(\EP_reg[15] [3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hEFEC2F2CE3E02320)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata_reg[31]_0 [4]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[4] ),
        .I4(Q[4]),
        .I5(\EP_reg[15] [4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hEFEC2F2CE3E02320)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata_reg[31]_0 [5]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[5] ),
        .I4(Q[5]),
        .I5(\EP_reg[15] [5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hEFEC2F2CE3E02320)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata_reg[31]_0 [6]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[6] ),
        .I4(Q[6]),
        .I5(\EP_reg[15] [6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hEFEC2F2CE3E02320)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata_reg[31]_0 [7]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[7] ),
        .I4(Q[7]),
        .I5(\EP_reg[15] [7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hEFEC2F2CE3E02320)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata_reg[31]_0 [8]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[8] ),
        .I4(Q[8]),
        .I5(\EP_reg[15] [8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hEFEC2F2CE3E02320)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata_reg[31]_0 [9]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[9] ),
        .I4(Q[9]),
        .I5(\EP_reg[15] [9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(AS));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(AS));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(AS));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(AS));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(AS));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(AS));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(AS));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(AS));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(AS));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(AS));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(AS));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(AS));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(AS));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(AS));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(AS));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(AS));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(AS));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(AS));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(AS));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(AS));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(AS));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(AS));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(AS));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(AS));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(AS));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(AS));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(AS));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(AS));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(AS));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(AS));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(AS));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(AS));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(AS));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(AS));
  LUT4 #(
    .INIT(16'h1000)) 
    \slv_reg0[15]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(slv_reg_wren__0),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h1000)) 
    \slv_reg0[23]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(slv_reg_wren__0),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h1000)) 
    \slv_reg0[31]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(slv_reg_wren__0),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_awready),
        .I1(s00_axi_wready),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h1000)) 
    \slv_reg0[7]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(slv_reg_wren__0),
        .O(p_1_in[1]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[1]),
        .D(s00_axi_wdata[0]),
        .Q(\axi_rdata_reg[1]_0 [0]),
        .R(AS));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(AS));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(AS));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(AS));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(AS));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(AS));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(AS));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(AS));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(AS));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(AS));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(AS));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[1]),
        .D(s00_axi_wdata[1]),
        .Q(\axi_rdata_reg[1]_0 [1]),
        .R(AS));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(AS));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(AS));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(AS));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(AS));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(AS));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(AS));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(AS));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(AS));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(AS));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(AS));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[1]),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(AS));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(AS));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(AS));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[1]),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(AS));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[1]),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(AS));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[1]),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(AS));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[1]),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(AS));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[1]),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(AS));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(AS));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(AS));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg1[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(s00_axi_wstrb[1]),
        .I3(slv_reg_wren__0),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg1[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(s00_axi_wstrb[2]),
        .I3(slv_reg_wren__0),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg1[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(s00_axi_wstrb[3]),
        .I3(slv_reg_wren__0),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg1[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(s00_axi_wstrb[0]),
        .I3(slv_reg_wren__0),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_rdata_reg[31]_0 [0]),
        .R(AS));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_rdata_reg[31]_0 [10]),
        .R(AS));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_rdata_reg[31]_0 [11]),
        .R(AS));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_rdata_reg[31]_0 [12]),
        .R(AS));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_rdata_reg[31]_0 [13]),
        .R(AS));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_rdata_reg[31]_0 [14]),
        .R(AS));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_rdata_reg[31]_0 [15]),
        .R(AS));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\axi_rdata_reg[31]_0 [16]),
        .R(AS));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\axi_rdata_reg[31]_0 [17]),
        .R(AS));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\axi_rdata_reg[31]_0 [18]),
        .R(AS));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\axi_rdata_reg[31]_0 [19]),
        .R(AS));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_rdata_reg[31]_0 [1]),
        .R(AS));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\axi_rdata_reg[31]_0 [20]),
        .R(AS));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\axi_rdata_reg[31]_0 [21]),
        .R(AS));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\axi_rdata_reg[31]_0 [22]),
        .R(AS));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\axi_rdata_reg[31]_0 [23]),
        .R(AS));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\axi_rdata_reg[31]_0 [24]),
        .R(AS));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\axi_rdata_reg[31]_0 [25]),
        .R(AS));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\axi_rdata_reg[31]_0 [26]),
        .R(AS));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\axi_rdata_reg[31]_0 [27]),
        .R(AS));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\axi_rdata_reg[31]_0 [28]),
        .R(AS));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\axi_rdata_reg[31]_0 [29]),
        .R(AS));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_rdata_reg[31]_0 [2]),
        .R(AS));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\axi_rdata_reg[31]_0 [30]),
        .R(AS));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\axi_rdata_reg[31]_0 [31]),
        .R(AS));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_rdata_reg[31]_0 [3]),
        .R(AS));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_rdata_reg[31]_0 [4]),
        .R(AS));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_rdata_reg[31]_0 [5]),
        .R(AS));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_rdata_reg[31]_0 [6]),
        .R(AS));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_rdata_reg[31]_0 [7]),
        .R(AS));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_rdata_reg[31]_0 [8]),
        .R(AS));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_rdata_reg[31]_0 [9]),
        .R(AS));
endmodule

(* ORIG_REF_NAME = "Circuito_test" *) 
module Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_test
   (q_dff4,
    \axi_rdata_reg[15] ,
    rco_contador_eventos,
    clk_circuito_test,
    Q,
    dato,
    \Temp_reg[1] ,
    \Temp_reg[1]_0 ,
    E,
    D);
  output q_dff4;
  output [15:0]\axi_rdata_reg[15] ;
  output rco_contador_eventos;
  input clk_circuito_test;
  input [0:0]Q;
  input dato;
  input \Temp_reg[1] ;
  input [0:0]\Temp_reg[1]_0 ;
  input [0:0]E;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire \Temp_reg[1] ;
  wire [0:0]\Temp_reg[1]_0 ;
  wire [15:0]\axi_rdata_reg[15] ;
  wire clk_circuito_test;
  wire dato;
  wire n_0_0;
  wire q_dff1;
  wire q_dff2;
  wire q_dff3;
  wire q_dff4;
  wire q_dff4_i_1_n_0;
  wire rco_contador_eventos;

  Proyecto_TADSE_Circuito_para_pruebas_0_0_Contador_NBits Contador_de_eventos
       (.D(D),
        .E(E),
        .Q(Q),
        .\Temp_reg[1] (\Temp_reg[1] ),
        .\Temp_reg[1]_0 (\Temp_reg[1]_0 ),
        .\axi_rdata_reg[15] (\axi_rdata_reg[15] ),
        .clk_circuito_test(clk_circuito_test),
        .q_dff4(q_dff4),
        .rco_contador_eventos(rco_contador_eventos));
  LUT1 #(
    .INIT(2'h1)) 
    i_0
       (.I0(clk_circuito_test),
        .O(n_0_0));
  FDCE q_dff1_reg
       (.C(clk_circuito_test),
        .CE(1'b1),
        .CLR(Q),
        .D(dato),
        .Q(q_dff1));
  FDCE q_dff2_reg
       (.C(clk_circuito_test),
        .CE(1'b1),
        .CLR(Q),
        .D(q_dff1),
        .Q(q_dff2));
  FDCE q_dff3_reg
       (.C(n_0_0),
        .CE(1'b1),
        .CLR(Q),
        .D(q_dff1),
        .Q(q_dff3));
  LUT2 #(
    .INIT(4'h6)) 
    q_dff4_i_1
       (.I0(q_dff2),
        .I1(q_dff3),
        .O(q_dff4_i_1_n_0));
  FDCE q_dff4_reg
       (.C(n_0_0),
        .CE(1'b1),
        .CLR(Q),
        .D(q_dff4_i_1_n_0),
        .Q(q_dff4));
endmodule

(* ORIG_REF_NAME = "Contador_32bits" *) 
module Proyecto_TADSE_Circuito_para_pruebas_0_0_Contador_32bits
   (Q,
    en_contador_tiempo0,
    \slv_reg1_reg[31] ,
    en_contador_tiempo,
    \EP_reg[0]_0 ,
    \EP_reg[1]_0 ,
    E,
    s00_axi_aclk,
    D);
  output [31:0]Q;
  output en_contador_tiempo0;
  input [30:0]\slv_reg1_reg[31] ;
  input en_contador_tiempo;
  input \EP_reg[0]_0 ;
  input [0:0]\EP_reg[1]_0 ;
  input [0:0]E;
  input s00_axi_aclk;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]E;
  wire \EP[10]_i_1_n_0 ;
  wire \EP[11]_i_1_n_0 ;
  wire \EP[12]_i_1_n_0 ;
  wire \EP[12]_i_3_n_0 ;
  wire \EP[12]_i_4_n_0 ;
  wire \EP[12]_i_5_n_0 ;
  wire \EP[12]_i_6_n_0 ;
  wire \EP[13]_i_1_n_0 ;
  wire \EP[14]_i_1_n_0 ;
  wire \EP[15]_i_1__0_n_0 ;
  wire \EP[16]_i_1_n_0 ;
  wire \EP[16]_i_3_n_0 ;
  wire \EP[16]_i_4_n_0 ;
  wire \EP[16]_i_5_n_0 ;
  wire \EP[16]_i_6_n_0 ;
  wire \EP[17]_i_1_n_0 ;
  wire \EP[18]_i_1_n_0 ;
  wire \EP[19]_i_1_n_0 ;
  wire \EP[1]_i_1_n_0 ;
  wire \EP[20]_i_1_n_0 ;
  wire \EP[20]_i_3_n_0 ;
  wire \EP[20]_i_4_n_0 ;
  wire \EP[20]_i_5_n_0 ;
  wire \EP[20]_i_6_n_0 ;
  wire \EP[21]_i_1_n_0 ;
  wire \EP[22]_i_1_n_0 ;
  wire \EP[23]_i_1_n_0 ;
  wire \EP[24]_i_1_n_0 ;
  wire \EP[24]_i_3_n_0 ;
  wire \EP[24]_i_4_n_0 ;
  wire \EP[24]_i_5_n_0 ;
  wire \EP[24]_i_6_n_0 ;
  wire \EP[25]_i_1_n_0 ;
  wire \EP[26]_i_1_n_0 ;
  wire \EP[27]_i_1_n_0 ;
  wire \EP[28]_i_1_n_0 ;
  wire \EP[28]_i_3_n_0 ;
  wire \EP[28]_i_4_n_0 ;
  wire \EP[28]_i_5_n_0 ;
  wire \EP[28]_i_6_n_0 ;
  wire \EP[29]_i_1_n_0 ;
  wire \EP[2]_i_1_n_0 ;
  wire \EP[30]_i_1_n_0 ;
  wire \EP[31]_i_10_n_0 ;
  wire \EP[31]_i_11_n_0 ;
  wire \EP[31]_i_12_n_0 ;
  wire \EP[31]_i_13_n_0 ;
  wire \EP[31]_i_14_n_0 ;
  wire \EP[31]_i_15_n_0 ;
  wire \EP[31]_i_16_n_0 ;
  wire \EP[31]_i_17_n_0 ;
  wire \EP[31]_i_2_n_0 ;
  wire \EP[31]_i_4_n_0 ;
  wire \EP[31]_i_5_n_0 ;
  wire \EP[31]_i_7_n_0 ;
  wire \EP[31]_i_8_n_0 ;
  wire \EP[31]_i_9_n_0 ;
  wire \EP[3]_i_1_n_0 ;
  wire \EP[4]_i_1_n_0 ;
  wire \EP[4]_i_3_n_0 ;
  wire \EP[4]_i_4_n_0 ;
  wire \EP[4]_i_5_n_0 ;
  wire \EP[4]_i_6_n_0 ;
  wire \EP[5]_i_1_n_0 ;
  wire \EP[6]_i_1_n_0 ;
  wire \EP[7]_i_1_n_0 ;
  wire \EP[8]_i_1_n_0 ;
  wire \EP[8]_i_3_n_0 ;
  wire \EP[8]_i_4_n_0 ;
  wire \EP[8]_i_5_n_0 ;
  wire \EP[8]_i_6_n_0 ;
  wire \EP[9]_i_1_n_0 ;
  wire \EP_reg[0]_0 ;
  wire \EP_reg[12]_i_2_n_0 ;
  wire \EP_reg[12]_i_2_n_1 ;
  wire \EP_reg[12]_i_2_n_2 ;
  wire \EP_reg[12]_i_2_n_3 ;
  wire \EP_reg[16]_i_2_n_0 ;
  wire \EP_reg[16]_i_2_n_1 ;
  wire \EP_reg[16]_i_2_n_2 ;
  wire \EP_reg[16]_i_2_n_3 ;
  wire [0:0]\EP_reg[1]_0 ;
  wire \EP_reg[20]_i_2_n_0 ;
  wire \EP_reg[20]_i_2_n_1 ;
  wire \EP_reg[20]_i_2_n_2 ;
  wire \EP_reg[20]_i_2_n_3 ;
  wire \EP_reg[24]_i_2_n_0 ;
  wire \EP_reg[24]_i_2_n_1 ;
  wire \EP_reg[24]_i_2_n_2 ;
  wire \EP_reg[24]_i_2_n_3 ;
  wire \EP_reg[28]_i_2_n_0 ;
  wire \EP_reg[28]_i_2_n_1 ;
  wire \EP_reg[28]_i_2_n_2 ;
  wire \EP_reg[28]_i_2_n_3 ;
  wire \EP_reg[31]_i_3_n_2 ;
  wire \EP_reg[31]_i_3_n_3 ;
  wire \EP_reg[4]_i_2_n_0 ;
  wire \EP_reg[4]_i_2_n_1 ;
  wire \EP_reg[4]_i_2_n_2 ;
  wire \EP_reg[4]_i_2_n_3 ;
  wire \EP_reg[8]_i_2_n_0 ;
  wire \EP_reg[8]_i_2_n_1 ;
  wire \EP_reg[8]_i_2_n_2 ;
  wire \EP_reg[8]_i_2_n_3 ;
  wire [31:0]Q;
  wire en_contador_tiempo;
  wire en_contador_tiempo0;
  wire en_contador_tiempo_reg_i_3_n_0;
  wire en_contador_tiempo_reg_i_4_n_0;
  wire en_contador_tiempo_reg_i_5_n_0;
  wire en_contador_tiempo_reg_i_6_n_0;
  wire [31:1]plusOp;
  wire s00_axi_aclk;
  wire [30:0]\slv_reg1_reg[31] ;
  wire [3:2]\NLW_EP_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_EP_reg[31]_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[10]_i_1 
       (.I0(\slv_reg1_reg[31] [9]),
        .I1(plusOp[10]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[11]_i_1 
       (.I0(\slv_reg1_reg[31] [10]),
        .I1(plusOp[11]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[12]_i_1 
       (.I0(\slv_reg1_reg[31] [11]),
        .I1(plusOp[12]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[12]_i_3 
       (.I0(Q[12]),
        .O(\EP[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[12]_i_4 
       (.I0(Q[11]),
        .O(\EP[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[12]_i_5 
       (.I0(Q[10]),
        .O(\EP[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[12]_i_6 
       (.I0(Q[9]),
        .O(\EP[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[13]_i_1 
       (.I0(\slv_reg1_reg[31] [12]),
        .I1(plusOp[13]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[14]_i_1 
       (.I0(\slv_reg1_reg[31] [13]),
        .I1(plusOp[14]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[15]_i_1__0 
       (.I0(\slv_reg1_reg[31] [14]),
        .I1(plusOp[15]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[15]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[16]_i_1 
       (.I0(\slv_reg1_reg[31] [15]),
        .I1(plusOp[16]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[16]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[16]_i_3 
       (.I0(Q[16]),
        .O(\EP[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[16]_i_4 
       (.I0(Q[15]),
        .O(\EP[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[16]_i_5 
       (.I0(Q[14]),
        .O(\EP[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[16]_i_6 
       (.I0(Q[13]),
        .O(\EP[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[17]_i_1 
       (.I0(\slv_reg1_reg[31] [16]),
        .I1(plusOp[17]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[18]_i_1 
       (.I0(\slv_reg1_reg[31] [17]),
        .I1(plusOp[18]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[19]_i_1 
       (.I0(\slv_reg1_reg[31] [18]),
        .I1(plusOp[19]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[1]_i_1 
       (.I0(\slv_reg1_reg[31] [0]),
        .I1(plusOp[1]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[20]_i_1 
       (.I0(\slv_reg1_reg[31] [19]),
        .I1(plusOp[20]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[20]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[20]_i_3 
       (.I0(Q[20]),
        .O(\EP[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[20]_i_4 
       (.I0(Q[19]),
        .O(\EP[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[20]_i_5 
       (.I0(Q[18]),
        .O(\EP[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[20]_i_6 
       (.I0(Q[17]),
        .O(\EP[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[21]_i_1 
       (.I0(\slv_reg1_reg[31] [20]),
        .I1(plusOp[21]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[22]_i_1 
       (.I0(\slv_reg1_reg[31] [21]),
        .I1(plusOp[22]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[23]_i_1 
       (.I0(\slv_reg1_reg[31] [22]),
        .I1(plusOp[23]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[24]_i_1 
       (.I0(\slv_reg1_reg[31] [23]),
        .I1(plusOp[24]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[24]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[24]_i_3 
       (.I0(Q[24]),
        .O(\EP[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[24]_i_4 
       (.I0(Q[23]),
        .O(\EP[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[24]_i_5 
       (.I0(Q[22]),
        .O(\EP[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[24]_i_6 
       (.I0(Q[21]),
        .O(\EP[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[25]_i_1 
       (.I0(\slv_reg1_reg[31] [24]),
        .I1(plusOp[25]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[26]_i_1 
       (.I0(\slv_reg1_reg[31] [25]),
        .I1(plusOp[26]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[27]_i_1 
       (.I0(\slv_reg1_reg[31] [26]),
        .I1(plusOp[27]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[28]_i_1 
       (.I0(\slv_reg1_reg[31] [27]),
        .I1(plusOp[28]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[28]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[28]_i_3 
       (.I0(Q[28]),
        .O(\EP[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[28]_i_4 
       (.I0(Q[27]),
        .O(\EP[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[28]_i_5 
       (.I0(Q[26]),
        .O(\EP[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[28]_i_6 
       (.I0(Q[25]),
        .O(\EP[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[29]_i_1 
       (.I0(\slv_reg1_reg[31] [28]),
        .I1(plusOp[29]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[2]_i_1 
       (.I0(\slv_reg1_reg[31] [1]),
        .I1(plusOp[2]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[30]_i_1 
       (.I0(\slv_reg1_reg[31] [29]),
        .I1(plusOp[30]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \EP[31]_i_10 
       (.I0(Q[21]),
        .I1(Q[20]),
        .I2(Q[23]),
        .I3(Q[22]),
        .O(\EP[31]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \EP[31]_i_11 
       (.I0(Q[17]),
        .I1(Q[16]),
        .I2(Q[19]),
        .I3(Q[18]),
        .O(\EP[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \EP[31]_i_12 
       (.I0(Q[29]),
        .I1(Q[28]),
        .I2(Q[31]),
        .I3(Q[30]),
        .O(\EP[31]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \EP[31]_i_13 
       (.I0(Q[25]),
        .I1(Q[24]),
        .I2(Q[27]),
        .I3(Q[26]),
        .O(\EP[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \EP[31]_i_14 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[7]),
        .I3(Q[6]),
        .O(\EP[31]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \EP[31]_i_15 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\EP[31]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \EP[31]_i_16 
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[15]),
        .I3(Q[14]),
        .O(\EP[31]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \EP[31]_i_17 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[11]),
        .I3(Q[10]),
        .O(\EP[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[31]_i_2 
       (.I0(\slv_reg1_reg[31] [30]),
        .I1(plusOp[31]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \EP[31]_i_4 
       (.I0(\EP[31]_i_10_n_0 ),
        .I1(\EP[31]_i_11_n_0 ),
        .I2(\EP[31]_i_12_n_0 ),
        .I3(\EP[31]_i_13_n_0 ),
        .O(\EP[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \EP[31]_i_5 
       (.I0(\EP[31]_i_14_n_0 ),
        .I1(\EP[31]_i_15_n_0 ),
        .I2(\EP[31]_i_16_n_0 ),
        .I3(\EP[31]_i_17_n_0 ),
        .O(\EP[31]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[31]_i_7 
       (.I0(Q[31]),
        .O(\EP[31]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[31]_i_8 
       (.I0(Q[30]),
        .O(\EP[31]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[31]_i_9 
       (.I0(Q[29]),
        .O(\EP[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[3]_i_1 
       (.I0(\slv_reg1_reg[31] [2]),
        .I1(plusOp[3]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[4]_i_1 
       (.I0(\slv_reg1_reg[31] [3]),
        .I1(plusOp[4]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[4]_i_3 
       (.I0(Q[4]),
        .O(\EP[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[4]_i_4 
       (.I0(Q[3]),
        .O(\EP[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[4]_i_5 
       (.I0(Q[2]),
        .O(\EP[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[4]_i_6 
       (.I0(Q[1]),
        .O(\EP[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[5]_i_1 
       (.I0(\slv_reg1_reg[31] [4]),
        .I1(plusOp[5]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[6]_i_1 
       (.I0(\slv_reg1_reg[31] [5]),
        .I1(plusOp[6]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[7]_i_1 
       (.I0(\slv_reg1_reg[31] [6]),
        .I1(plusOp[7]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[8]_i_1 
       (.I0(\slv_reg1_reg[31] [7]),
        .I1(plusOp[8]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[8]_i_3 
       (.I0(Q[8]),
        .O(\EP[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[8]_i_4 
       (.I0(Q[7]),
        .O(\EP[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[8]_i_5 
       (.I0(Q[6]),
        .O(\EP[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \EP[8]_i_6 
       (.I0(Q[5]),
        .O(\EP[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCC00000AAAAAAAA)) 
    \EP[9]_i_1 
       (.I0(\slv_reg1_reg[31] [8]),
        .I1(plusOp[9]),
        .I2(\EP[31]_i_4_n_0 ),
        .I3(\EP[31]_i_5_n_0 ),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[0]_0 ),
        .O(\EP[9]_i_1_n_0 ));
  FDCE \EP_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(D),
        .Q(Q[0]));
  FDCE \EP_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[10]_i_1_n_0 ),
        .Q(Q[10]));
  FDCE \EP_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[11]_i_1_n_0 ),
        .Q(Q[11]));
  FDCE \EP_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[12]_i_1_n_0 ),
        .Q(Q[12]));
  CARRY4 \EP_reg[12]_i_2 
       (.CI(\EP_reg[8]_i_2_n_0 ),
        .CO({\EP_reg[12]_i_2_n_0 ,\EP_reg[12]_i_2_n_1 ,\EP_reg[12]_i_2_n_2 ,\EP_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S({\EP[12]_i_3_n_0 ,\EP[12]_i_4_n_0 ,\EP[12]_i_5_n_0 ,\EP[12]_i_6_n_0 }));
  FDCE \EP_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[13]_i_1_n_0 ),
        .Q(Q[13]));
  FDCE \EP_reg[14] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[14]_i_1_n_0 ),
        .Q(Q[14]));
  FDCE \EP_reg[15] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[15]_i_1__0_n_0 ),
        .Q(Q[15]));
  FDCE \EP_reg[16] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[16]_i_1_n_0 ),
        .Q(Q[16]));
  CARRY4 \EP_reg[16]_i_2 
       (.CI(\EP_reg[12]_i_2_n_0 ),
        .CO({\EP_reg[16]_i_2_n_0 ,\EP_reg[16]_i_2_n_1 ,\EP_reg[16]_i_2_n_2 ,\EP_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[16:13]),
        .S({\EP[16]_i_3_n_0 ,\EP[16]_i_4_n_0 ,\EP[16]_i_5_n_0 ,\EP[16]_i_6_n_0 }));
  FDCE \EP_reg[17] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[17]_i_1_n_0 ),
        .Q(Q[17]));
  FDCE \EP_reg[18] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[18]_i_1_n_0 ),
        .Q(Q[18]));
  FDCE \EP_reg[19] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[19]_i_1_n_0 ),
        .Q(Q[19]));
  FDCE \EP_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE \EP_reg[20] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[20]_i_1_n_0 ),
        .Q(Q[20]));
  CARRY4 \EP_reg[20]_i_2 
       (.CI(\EP_reg[16]_i_2_n_0 ),
        .CO({\EP_reg[20]_i_2_n_0 ,\EP_reg[20]_i_2_n_1 ,\EP_reg[20]_i_2_n_2 ,\EP_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[20:17]),
        .S({\EP[20]_i_3_n_0 ,\EP[20]_i_4_n_0 ,\EP[20]_i_5_n_0 ,\EP[20]_i_6_n_0 }));
  FDCE \EP_reg[21] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[21]_i_1_n_0 ),
        .Q(Q[21]));
  FDCE \EP_reg[22] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[22]_i_1_n_0 ),
        .Q(Q[22]));
  FDCE \EP_reg[23] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[23]_i_1_n_0 ),
        .Q(Q[23]));
  FDCE \EP_reg[24] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[24]_i_1_n_0 ),
        .Q(Q[24]));
  CARRY4 \EP_reg[24]_i_2 
       (.CI(\EP_reg[20]_i_2_n_0 ),
        .CO({\EP_reg[24]_i_2_n_0 ,\EP_reg[24]_i_2_n_1 ,\EP_reg[24]_i_2_n_2 ,\EP_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[24:21]),
        .S({\EP[24]_i_3_n_0 ,\EP[24]_i_4_n_0 ,\EP[24]_i_5_n_0 ,\EP[24]_i_6_n_0 }));
  FDCE \EP_reg[25] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[25]_i_1_n_0 ),
        .Q(Q[25]));
  FDCE \EP_reg[26] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[26]_i_1_n_0 ),
        .Q(Q[26]));
  FDCE \EP_reg[27] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[27]_i_1_n_0 ),
        .Q(Q[27]));
  FDCE \EP_reg[28] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[28]_i_1_n_0 ),
        .Q(Q[28]));
  CARRY4 \EP_reg[28]_i_2 
       (.CI(\EP_reg[24]_i_2_n_0 ),
        .CO({\EP_reg[28]_i_2_n_0 ,\EP_reg[28]_i_2_n_1 ,\EP_reg[28]_i_2_n_2 ,\EP_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[28:25]),
        .S({\EP[28]_i_3_n_0 ,\EP[28]_i_4_n_0 ,\EP[28]_i_5_n_0 ,\EP[28]_i_6_n_0 }));
  FDCE \EP_reg[29] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[29]_i_1_n_0 ),
        .Q(Q[29]));
  FDCE \EP_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \EP_reg[30] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[30]_i_1_n_0 ),
        .Q(Q[30]));
  FDCE \EP_reg[31] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[31]_i_2_n_0 ),
        .Q(Q[31]));
  CARRY4 \EP_reg[31]_i_3 
       (.CI(\EP_reg[28]_i_2_n_0 ),
        .CO({\NLW_EP_reg[31]_i_3_CO_UNCONNECTED [3:2],\EP_reg[31]_i_3_n_2 ,\EP_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_EP_reg[31]_i_3_O_UNCONNECTED [3],plusOp[31:29]}),
        .S({1'b0,\EP[31]_i_7_n_0 ,\EP[31]_i_8_n_0 ,\EP[31]_i_9_n_0 }));
  FDCE \EP_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE \EP_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[4]_i_1_n_0 ),
        .Q(Q[4]));
  CARRY4 \EP_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\EP_reg[4]_i_2_n_0 ,\EP_reg[4]_i_2_n_1 ,\EP_reg[4]_i_2_n_2 ,\EP_reg[4]_i_2_n_3 }),
        .CYINIT(Q[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S({\EP[4]_i_3_n_0 ,\EP[4]_i_4_n_0 ,\EP[4]_i_5_n_0 ,\EP[4]_i_6_n_0 }));
  FDCE \EP_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE \EP_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[6]_i_1_n_0 ),
        .Q(Q[6]));
  FDCE \EP_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[7]_i_1_n_0 ),
        .Q(Q[7]));
  FDCE \EP_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[8]_i_1_n_0 ),
        .Q(Q[8]));
  CARRY4 \EP_reg[8]_i_2 
       (.CI(\EP_reg[4]_i_2_n_0 ),
        .CO({\EP_reg[8]_i_2_n_0 ,\EP_reg[8]_i_2_n_1 ,\EP_reg[8]_i_2_n_2 ,\EP_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S({\EP[8]_i_3_n_0 ,\EP[8]_i_4_n_0 ,\EP[8]_i_5_n_0 ,\EP[8]_i_6_n_0 }));
  FDCE \EP_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\EP_reg[1]_0 ),
        .D(\EP[9]_i_1_n_0 ),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    en_contador_tiempo_reg_i_1
       (.I0(en_contador_tiempo_reg_i_3_n_0),
        .I1(en_contador_tiempo_reg_i_4_n_0),
        .I2(en_contador_tiempo_reg_i_5_n_0),
        .I3(en_contador_tiempo_reg_i_6_n_0),
        .I4(en_contador_tiempo),
        .I5(\EP_reg[1]_0 ),
        .O(en_contador_tiempo0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    en_contador_tiempo_reg_i_3
       (.I0(Q[10]),
        .I1(Q[11]),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(\EP[31]_i_16_n_0 ),
        .O(en_contador_tiempo_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    en_contador_tiempo_reg_i_4
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\EP[31]_i_14_n_0 ),
        .O(en_contador_tiempo_reg_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    en_contador_tiempo_reg_i_5
       (.I0(Q[26]),
        .I1(Q[27]),
        .I2(Q[24]),
        .I3(Q[25]),
        .I4(\EP[31]_i_12_n_0 ),
        .O(en_contador_tiempo_reg_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    en_contador_tiempo_reg_i_6
       (.I0(Q[18]),
        .I1(Q[19]),
        .I2(Q[16]),
        .I3(Q[17]),
        .I4(\EP[31]_i_10_n_0 ),
        .O(en_contador_tiempo_reg_i_6_n_0));
endmodule

(* ORIG_REF_NAME = "Contador_NBits" *) 
module Proyecto_TADSE_Circuito_para_pruebas_0_0_Contador_NBits
   (\axi_rdata_reg[15] ,
    rco_contador_eventos,
    \Temp_reg[1] ,
    \Temp_reg[1]_0 ,
    q_dff4,
    E,
    clk_circuito_test,
    Q,
    D);
  output [15:0]\axi_rdata_reg[15] ;
  output rco_contador_eventos;
  input \Temp_reg[1] ;
  input [0:0]\Temp_reg[1]_0 ;
  input q_dff4;
  input [0:0]E;
  input clk_circuito_test;
  input [0:0]Q;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]E;
  wire \EP[10]_i_1__0_n_0 ;
  wire \EP[11]_i_1__0_n_0 ;
  wire \EP[12]_i_1__0_n_0 ;
  wire \EP[13]_i_1__0_n_0 ;
  wire \EP[14]_i_1__0_n_0 ;
  wire \EP[15]_i_2_n_0 ;
  wire \EP[1]_i_1__2_n_0 ;
  wire \EP[2]_i_1__0_n_0 ;
  wire \EP[3]_i_1__0_n_0 ;
  wire \EP[4]_i_1__0_n_0 ;
  wire \EP[5]_i_1__0_n_0 ;
  wire \EP[6]_i_1__0_n_0 ;
  wire \EP[7]_i_1__0_n_0 ;
  wire \EP[8]_i_1__0_n_0 ;
  wire \EP[9]_i_1__0_n_0 ;
  wire [0:0]Q;
  wire \Temp_reg[1] ;
  wire [0:0]\Temp_reg[1]_0 ;
  wire [15:0]\axi_rdata_reg[15] ;
  wire clk_circuito_test;
  wire desbordamiento_signal_reg_i_3_n_0;
  wire desbordamiento_signal_reg_i_4_n_0;
  wire desbordamiento_signal_reg_i_5_n_0;
  wire desbordamiento_signal_reg_i_6_n_0;
  wire plusOp_carry__0_i_1_n_0;
  wire plusOp_carry__0_i_2_n_0;
  wire plusOp_carry__0_i_3_n_0;
  wire plusOp_carry__0_i_4_n_0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry__1_i_1_n_0;
  wire plusOp_carry__1_i_2_n_0;
  wire plusOp_carry__1_i_3_n_0;
  wire plusOp_carry__1_i_4_n_0;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__1_n_4;
  wire plusOp_carry__1_n_5;
  wire plusOp_carry__1_n_6;
  wire plusOp_carry__1_n_7;
  wire plusOp_carry__2_i_1_n_0;
  wire plusOp_carry__2_i_2_n_0;
  wire plusOp_carry__2_i_3_n_0;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__2_n_5;
  wire plusOp_carry__2_n_6;
  wire plusOp_carry__2_n_7;
  wire plusOp_carry_i_1_n_0;
  wire plusOp_carry_i_2_n_0;
  wire plusOp_carry_i_3_n_0;
  wire plusOp_carry_i_4_n_0;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire q_dff4;
  wire rco_contador_eventos;
  wire [3:2]NLW_plusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \EP[10]_i_1__0 
       (.I0(desbordamiento_signal_reg_i_6_n_0),
        .I1(desbordamiento_signal_reg_i_5_n_0),
        .I2(desbordamiento_signal_reg_i_4_n_0),
        .I3(desbordamiento_signal_reg_i_3_n_0),
        .I4(\Temp_reg[1] ),
        .I5(plusOp_carry__1_n_6),
        .O(\EP[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \EP[11]_i_1__0 
       (.I0(desbordamiento_signal_reg_i_6_n_0),
        .I1(desbordamiento_signal_reg_i_5_n_0),
        .I2(desbordamiento_signal_reg_i_4_n_0),
        .I3(desbordamiento_signal_reg_i_3_n_0),
        .I4(\Temp_reg[1] ),
        .I5(plusOp_carry__1_n_5),
        .O(\EP[11]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \EP[12]_i_1__0 
       (.I0(desbordamiento_signal_reg_i_6_n_0),
        .I1(desbordamiento_signal_reg_i_5_n_0),
        .I2(desbordamiento_signal_reg_i_4_n_0),
        .I3(desbordamiento_signal_reg_i_3_n_0),
        .I4(\Temp_reg[1] ),
        .I5(plusOp_carry__1_n_4),
        .O(\EP[12]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \EP[13]_i_1__0 
       (.I0(desbordamiento_signal_reg_i_6_n_0),
        .I1(desbordamiento_signal_reg_i_5_n_0),
        .I2(desbordamiento_signal_reg_i_4_n_0),
        .I3(desbordamiento_signal_reg_i_3_n_0),
        .I4(\Temp_reg[1] ),
        .I5(plusOp_carry__2_n_7),
        .O(\EP[13]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \EP[14]_i_1__0 
       (.I0(desbordamiento_signal_reg_i_6_n_0),
        .I1(desbordamiento_signal_reg_i_5_n_0),
        .I2(desbordamiento_signal_reg_i_4_n_0),
        .I3(desbordamiento_signal_reg_i_3_n_0),
        .I4(\Temp_reg[1] ),
        .I5(plusOp_carry__2_n_6),
        .O(\EP[14]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \EP[15]_i_2 
       (.I0(desbordamiento_signal_reg_i_6_n_0),
        .I1(desbordamiento_signal_reg_i_5_n_0),
        .I2(desbordamiento_signal_reg_i_4_n_0),
        .I3(desbordamiento_signal_reg_i_3_n_0),
        .I4(\Temp_reg[1] ),
        .I5(plusOp_carry__2_n_5),
        .O(\EP[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \EP[1]_i_1__2 
       (.I0(desbordamiento_signal_reg_i_6_n_0),
        .I1(desbordamiento_signal_reg_i_5_n_0),
        .I2(desbordamiento_signal_reg_i_4_n_0),
        .I3(desbordamiento_signal_reg_i_3_n_0),
        .I4(\Temp_reg[1] ),
        .I5(plusOp_carry_n_7),
        .O(\EP[1]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \EP[2]_i_1__0 
       (.I0(desbordamiento_signal_reg_i_6_n_0),
        .I1(desbordamiento_signal_reg_i_5_n_0),
        .I2(desbordamiento_signal_reg_i_4_n_0),
        .I3(desbordamiento_signal_reg_i_3_n_0),
        .I4(\Temp_reg[1] ),
        .I5(plusOp_carry_n_6),
        .O(\EP[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \EP[3]_i_1__0 
       (.I0(desbordamiento_signal_reg_i_6_n_0),
        .I1(desbordamiento_signal_reg_i_5_n_0),
        .I2(desbordamiento_signal_reg_i_4_n_0),
        .I3(desbordamiento_signal_reg_i_3_n_0),
        .I4(\Temp_reg[1] ),
        .I5(plusOp_carry_n_5),
        .O(\EP[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \EP[4]_i_1__0 
       (.I0(desbordamiento_signal_reg_i_6_n_0),
        .I1(desbordamiento_signal_reg_i_5_n_0),
        .I2(desbordamiento_signal_reg_i_4_n_0),
        .I3(desbordamiento_signal_reg_i_3_n_0),
        .I4(\Temp_reg[1] ),
        .I5(plusOp_carry_n_4),
        .O(\EP[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \EP[5]_i_1__0 
       (.I0(desbordamiento_signal_reg_i_6_n_0),
        .I1(desbordamiento_signal_reg_i_5_n_0),
        .I2(desbordamiento_signal_reg_i_4_n_0),
        .I3(desbordamiento_signal_reg_i_3_n_0),
        .I4(\Temp_reg[1] ),
        .I5(plusOp_carry__0_n_7),
        .O(\EP[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \EP[6]_i_1__0 
       (.I0(desbordamiento_signal_reg_i_6_n_0),
        .I1(desbordamiento_signal_reg_i_5_n_0),
        .I2(desbordamiento_signal_reg_i_4_n_0),
        .I3(desbordamiento_signal_reg_i_3_n_0),
        .I4(\Temp_reg[1] ),
        .I5(plusOp_carry__0_n_6),
        .O(\EP[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \EP[7]_i_1__0 
       (.I0(desbordamiento_signal_reg_i_6_n_0),
        .I1(desbordamiento_signal_reg_i_5_n_0),
        .I2(desbordamiento_signal_reg_i_4_n_0),
        .I3(desbordamiento_signal_reg_i_3_n_0),
        .I4(\Temp_reg[1] ),
        .I5(plusOp_carry__0_n_5),
        .O(\EP[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \EP[8]_i_1__0 
       (.I0(desbordamiento_signal_reg_i_6_n_0),
        .I1(desbordamiento_signal_reg_i_5_n_0),
        .I2(desbordamiento_signal_reg_i_4_n_0),
        .I3(desbordamiento_signal_reg_i_3_n_0),
        .I4(\Temp_reg[1] ),
        .I5(plusOp_carry__0_n_4),
        .O(\EP[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \EP[9]_i_1__0 
       (.I0(desbordamiento_signal_reg_i_6_n_0),
        .I1(desbordamiento_signal_reg_i_5_n_0),
        .I2(desbordamiento_signal_reg_i_4_n_0),
        .I3(desbordamiento_signal_reg_i_3_n_0),
        .I4(\Temp_reg[1] ),
        .I5(plusOp_carry__1_n_7),
        .O(\EP[9]_i_1__0_n_0 ));
  FDCE \EP_reg[0] 
       (.C(clk_circuito_test),
        .CE(E),
        .CLR(Q),
        .D(D),
        .Q(\axi_rdata_reg[15] [0]));
  FDCE \EP_reg[10] 
       (.C(clk_circuito_test),
        .CE(E),
        .CLR(Q),
        .D(\EP[10]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[15] [10]));
  FDCE \EP_reg[11] 
       (.C(clk_circuito_test),
        .CE(E),
        .CLR(Q),
        .D(\EP[11]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[15] [11]));
  FDCE \EP_reg[12] 
       (.C(clk_circuito_test),
        .CE(E),
        .CLR(Q),
        .D(\EP[12]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[15] [12]));
  FDCE \EP_reg[13] 
       (.C(clk_circuito_test),
        .CE(E),
        .CLR(Q),
        .D(\EP[13]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[15] [13]));
  FDCE \EP_reg[14] 
       (.C(clk_circuito_test),
        .CE(E),
        .CLR(Q),
        .D(\EP[14]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[15] [14]));
  FDCE \EP_reg[15] 
       (.C(clk_circuito_test),
        .CE(E),
        .CLR(Q),
        .D(\EP[15]_i_2_n_0 ),
        .Q(\axi_rdata_reg[15] [15]));
  FDCE \EP_reg[1] 
       (.C(clk_circuito_test),
        .CE(E),
        .CLR(Q),
        .D(\EP[1]_i_1__2_n_0 ),
        .Q(\axi_rdata_reg[15] [1]));
  FDCE \EP_reg[2] 
       (.C(clk_circuito_test),
        .CE(E),
        .CLR(Q),
        .D(\EP[2]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[15] [2]));
  FDCE \EP_reg[3] 
       (.C(clk_circuito_test),
        .CE(E),
        .CLR(Q),
        .D(\EP[3]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[15] [3]));
  FDCE \EP_reg[4] 
       (.C(clk_circuito_test),
        .CE(E),
        .CLR(Q),
        .D(\EP[4]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[15] [4]));
  FDCE \EP_reg[5] 
       (.C(clk_circuito_test),
        .CE(E),
        .CLR(Q),
        .D(\EP[5]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[15] [5]));
  FDCE \EP_reg[6] 
       (.C(clk_circuito_test),
        .CE(E),
        .CLR(Q),
        .D(\EP[6]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[15] [6]));
  FDCE \EP_reg[7] 
       (.C(clk_circuito_test),
        .CE(E),
        .CLR(Q),
        .D(\EP[7]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[15] [7]));
  FDCE \EP_reg[8] 
       (.C(clk_circuito_test),
        .CE(E),
        .CLR(Q),
        .D(\EP[8]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[15] [8]));
  FDCE \EP_reg[9] 
       (.C(clk_circuito_test),
        .CE(E),
        .CLR(Q),
        .D(\EP[9]_i_1__0_n_0 ),
        .Q(\axi_rdata_reg[15] [9]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    desbordamiento_signal_reg_i_2
       (.I0(desbordamiento_signal_reg_i_3_n_0),
        .I1(desbordamiento_signal_reg_i_4_n_0),
        .I2(desbordamiento_signal_reg_i_5_n_0),
        .I3(desbordamiento_signal_reg_i_6_n_0),
        .I4(\Temp_reg[1]_0 ),
        .I5(q_dff4),
        .O(rco_contador_eventos));
  LUT4 #(
    .INIT(16'h7FFF)) 
    desbordamiento_signal_reg_i_3
       (.I0(\axi_rdata_reg[15] [5]),
        .I1(\axi_rdata_reg[15] [4]),
        .I2(\axi_rdata_reg[15] [7]),
        .I3(\axi_rdata_reg[15] [6]),
        .O(desbordamiento_signal_reg_i_3_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    desbordamiento_signal_reg_i_4
       (.I0(\axi_rdata_reg[15] [1]),
        .I1(\axi_rdata_reg[15] [0]),
        .I2(\axi_rdata_reg[15] [3]),
        .I3(\axi_rdata_reg[15] [2]),
        .O(desbordamiento_signal_reg_i_4_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    desbordamiento_signal_reg_i_5
       (.I0(\axi_rdata_reg[15] [13]),
        .I1(\axi_rdata_reg[15] [12]),
        .I2(\axi_rdata_reg[15] [15]),
        .I3(\axi_rdata_reg[15] [14]),
        .O(desbordamiento_signal_reg_i_5_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    desbordamiento_signal_reg_i_6
       (.I0(\axi_rdata_reg[15] [9]),
        .I1(\axi_rdata_reg[15] [8]),
        .I2(\axi_rdata_reg[15] [11]),
        .I3(\axi_rdata_reg[15] [10]),
        .O(desbordamiento_signal_reg_i_6_n_0));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(\axi_rdata_reg[15] [0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .S({plusOp_carry_i_1_n_0,plusOp_carry_i_2_n_0,plusOp_carry_i_3_n_0,plusOp_carry_i_4_n_0}));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .S({plusOp_carry__0_i_1_n_0,plusOp_carry__0_i_2_n_0,plusOp_carry__0_i_3_n_0,plusOp_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__0_i_1
       (.I0(\axi_rdata_reg[15] [8]),
        .O(plusOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__0_i_2
       (.I0(\axi_rdata_reg[15] [7]),
        .O(plusOp_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__0_i_3
       (.I0(\axi_rdata_reg[15] [6]),
        .O(plusOp_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__0_i_4
       (.I0(\axi_rdata_reg[15] [5]),
        .O(plusOp_carry__0_i_4_n_0));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__1_n_4,plusOp_carry__1_n_5,plusOp_carry__1_n_6,plusOp_carry__1_n_7}),
        .S({plusOp_carry__1_i_1_n_0,plusOp_carry__1_i_2_n_0,plusOp_carry__1_i_3_n_0,plusOp_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__1_i_1
       (.I0(\axi_rdata_reg[15] [12]),
        .O(plusOp_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__1_i_2
       (.I0(\axi_rdata_reg[15] [11]),
        .O(plusOp_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__1_i_3
       (.I0(\axi_rdata_reg[15] [10]),
        .O(plusOp_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__1_i_4
       (.I0(\axi_rdata_reg[15] [9]),
        .O(plusOp_carry__1_i_4_n_0));
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({NLW_plusOp_carry__2_CO_UNCONNECTED[3:2],plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__2_O_UNCONNECTED[3],plusOp_carry__2_n_5,plusOp_carry__2_n_6,plusOp_carry__2_n_7}),
        .S({1'b0,plusOp_carry__2_i_1_n_0,plusOp_carry__2_i_2_n_0,plusOp_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__2_i_1
       (.I0(\axi_rdata_reg[15] [15]),
        .O(plusOp_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__2_i_2
       (.I0(\axi_rdata_reg[15] [14]),
        .O(plusOp_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__2_i_3
       (.I0(\axi_rdata_reg[15] [13]),
        .O(plusOp_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_1
       (.I0(\axi_rdata_reg[15] [4]),
        .O(plusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_2
       (.I0(\axi_rdata_reg[15] [3]),
        .O(plusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_3
       (.I0(\axi_rdata_reg[15] [2]),
        .O(plusOp_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_4
       (.I0(\axi_rdata_reg[15] [1]),
        .O(plusOp_carry_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "DFP" *) 
module Proyecto_TADSE_Circuito_para_pruebas_0_0_DFP
   (D,
    E,
    pulso_inicio,
    \EP_reg[1]_0 ,
    \slv_reg0_reg[0] ,
    \slv_reg1_reg[0] ,
    \EP_reg[0]_0 ,
    en_contador_tiempo,
    s00_axi_aclk,
    Q);
  output [0:0]D;
  output [0:0]E;
  output pulso_inicio;
  output \EP_reg[1]_0 ;
  input [0:0]\slv_reg0_reg[0] ;
  input [0:0]\slv_reg1_reg[0] ;
  input [0:0]\EP_reg[0]_0 ;
  input en_contador_tiempo;
  input s00_axi_aclk;
  input [0:0]Q;

  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]EF;
  wire [1:0]EP;
  wire [0:0]\EP_reg[0]_0 ;
  wire \EP_reg[1]_0 ;
  wire [0:0]Q;
  wire en_contador_tiempo;
  wire pulso_inicio;
  wire s00_axi_aclk;
  wire [0:0]\slv_reg0_reg[0] ;
  wire [0:0]\slv_reg1_reg[0] ;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \EP[0]_i_1__0 
       (.I0(EP[0]),
        .I1(EP[1]),
        .I2(\slv_reg0_reg[0] ),
        .O(EF[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h33A300A0)) 
    \EP[0]_i_1__1 
       (.I0(\slv_reg1_reg[0] ),
        .I1(\EP_reg[0]_0 ),
        .I2(EP[1]),
        .I3(EP[0]),
        .I4(en_contador_tiempo),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \EP[1]_i_1__0 
       (.I0(EP[1]),
        .I1(EP[0]),
        .I2(\slv_reg0_reg[0] ),
        .O(EF[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \EP[31]_i_1 
       (.I0(en_contador_tiempo),
        .I1(EP[1]),
        .I2(EP[0]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \EP[31]_i_6 
       (.I0(EP[0]),
        .I1(EP[1]),
        .O(\EP_reg[1]_0 ));
  FDCE \EP_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(Q),
        .D(EF[0]),
        .Q(EP[0]));
  FDCE \EP_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(Q),
        .D(EF[1]),
        .Q(EP[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    en_contador_tiempo_reg_i_2
       (.I0(EP[1]),
        .I1(EP[0]),
        .O(pulso_inicio));
endmodule

(* ORIG_REF_NAME = "DFP" *) 
module Proyecto_TADSE_Circuito_para_pruebas_0_0_DFP_0
   (D,
    \EP_reg[1]_0 ,
    E,
    desbordamiento_signal0,
    q_dff4,
    Q,
    \EP_reg[0]_0 ,
    \EP_reg[1]_1 ,
    clk_circuito_test);
  output [0:0]D;
  output \EP_reg[1]_0 ;
  output [0:0]E;
  output desbordamiento_signal0;
  input q_dff4;
  input [0:0]Q;
  input [0:0]\EP_reg[0]_0 ;
  input [0:0]\EP_reg[1]_1 ;
  input clk_circuito_test;

  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]EF;
  wire [1:0]EP;
  wire [0:0]\EP_reg[0]_0 ;
  wire \EP_reg[1]_0 ;
  wire [0:0]\EP_reg[1]_1 ;
  wire [0:0]Q;
  wire clk_circuito_test;
  wire desbordamiento_signal0;
  wire q_dff4;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h0000B000)) 
    \EP[0]_i_1 
       (.I0(EP[0]),
        .I1(EP[1]),
        .I2(q_dff4),
        .I3(Q),
        .I4(\EP_reg[0]_0 ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h13)) 
    \EP[0]_i_1__2 
       (.I0(EP[0]),
        .I1(Q),
        .I2(EP[1]),
        .O(EF[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h88F8)) 
    \EP[15]_i_1 
       (.I0(Q),
        .I1(q_dff4),
        .I2(EP[1]),
        .I3(EP[0]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \EP[15]_i_3 
       (.I0(Q),
        .I1(q_dff4),
        .I2(EP[1]),
        .I3(EP[0]),
        .O(\EP_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \EP[1]_i_1__1 
       (.I0(EP[1]),
        .I1(Q),
        .I2(EP[0]),
        .O(EF[1]));
  FDCE \EP_reg[0] 
       (.C(clk_circuito_test),
        .CE(1'b1),
        .CLR(\EP_reg[1]_1 ),
        .D(EF[0]),
        .Q(EP[0]));
  FDCE \EP_reg[1] 
       (.C(clk_circuito_test),
        .CE(1'b1),
        .CLR(\EP_reg[1]_1 ),
        .D(EF[1]),
        .Q(EP[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    desbordamiento_signal_reg_i_1
       (.I0(\EP_reg[1]_1 ),
        .I1(EP[1]),
        .I2(EP[0]),
        .O(desbordamiento_signal0));
endmodule

(* ORIG_REF_NAME = "Sincroniza_RST" *) 
module Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincroniza_RST
   (Q,
    clk_circuito_test,
    AS);
  output [0:0]Q;
  input clk_circuito_test;
  input [0:0]AS;

  wire [0:0]AS;
  wire [0:0]Q;
  wire clk_circuito_test;
  wire [1:1]p_0_in;

  FDPE \EP_reg[0] 
       (.C(clk_circuito_test),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(p_0_in));
  FDPE \EP_reg[1] 
       (.C(clk_circuito_test),
        .CE(1'b1),
        .D(p_0_in),
        .PRE(AS),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "Sincroniza_RST" *) 
module Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincroniza_RST_1
   (Q,
    clk_generador_dato,
    AS);
  output [0:0]Q;
  input clk_generador_dato;
  input [0:0]AS;

  wire [0:0]AS;
  wire [0:0]Q;
  wire clk_generador_dato;
  wire [1:1]p_0_in;

  FDPE \EP_reg[0] 
       (.C(clk_generador_dato),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(p_0_in));
  FDPE \EP_reg[1] 
       (.C(clk_generador_dato),
        .CE(1'b1),
        .D(p_0_in),
        .PRE(AS),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "Sincroniza_RST" *) 
module Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincroniza_RST_2
   (Q,
    s00_axi_aclk,
    AS);
  output [0:0]Q;
  input s00_axi_aclk;
  input [0:0]AS;

  wire [0:0]AS;
  wire [0:0]Q;
  wire [1:1]p_0_in;
  wire s00_axi_aclk;

  FDPE \EP_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(p_0_in));
  FDPE \EP_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in),
        .PRE(AS),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "Sincronizador" *) 
module Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincronizador
   (interrupcion,
    Q,
    \slv_reg0_reg[1] ,
    desbordamiento_signal,
    clk_circuito_test,
    AR,
    D);
  output interrupcion;
  output [0:0]Q;
  input [0:0]\slv_reg0_reg[1] ;
  input desbordamiento_signal;
  input clk_circuito_test;
  input [0:0]AR;
  input [0:0]D;

  wire [0:0]AR;
  wire [0:0]D;
  wire [0:0]Q;
  wire \Temp_reg_n_0_[0] ;
  wire clk_circuito_test;
  wire desbordamiento_signal;
  wire interrupcion;
  wire [0:0]\slv_reg0_reg[1] ;

  FDCE \Temp_reg[0] 
       (.C(clk_circuito_test),
        .CE(1'b1),
        .CLR(AR),
        .D(D),
        .Q(\Temp_reg_n_0_[0] ));
  FDCE \Temp_reg[1] 
       (.C(clk_circuito_test),
        .CE(1'b1),
        .CLR(AR),
        .D(\Temp_reg_n_0_[0] ),
        .Q(Q));
  LUT3 #(
    .INIT(8'h08)) 
    interrupcion_INST_0
       (.I0(Q),
        .I1(\slv_reg0_reg[1] ),
        .I2(desbordamiento_signal),
        .O(interrupcion));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
