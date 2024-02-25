-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Thu Feb 22 23:55:47 2024
-- Host        : 0K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/metastability-tool/embedded_hard/Proyecto_TADSE_IP_Custom/Proyecto_TADSE/Proyecto_TADSE.srcs/sources_1/bd/Proyecto_TADSE/ip/Proyecto_TADSE_Circuito_para_pruebas_0_0/Proyecto_TADSE_Circuito_para_pruebas_0_0_sim_netlist.vhdl
-- Design      : Proyecto_TADSE_Circuito_para_pruebas_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_para_pruebas_v1_0_S00_AXI is
  port (
    s00_axi_awready : out STD_LOGIC;
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    \axi_rdata_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    interrupcion : in STD_LOGIC;
    \EP_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    desbordamiento_signal : in STD_LOGIC;
    \Temp_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_para_pruebas_v1_0_S00_AXI : entity is "Circuito_para_pruebas_v1_0_S00_AXI";
end Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_para_pruebas_v1_0_S00_AXI;

architecture STRUCTURE of Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_para_pruebas_v1_0_S00_AXI is
  signal \^as\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \^axi_rdata_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^axi_rdata_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair1";
begin
  AS(0) <= \^as\(0);
  \axi_rdata_reg[1]_0\(1 downto 0) <= \^axi_rdata_reg[1]_0\(1 downto 0);
  \axi_rdata_reg[31]_0\(31 downto 0) <= \^axi_rdata_reg[31]_0\(31 downto 0);
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => \^as\(0)
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => \^as\(0)
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s00_axi_arready\,
      R => \^as\(0)
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s00_axi_awready\,
      I4 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s00_axi_awready\,
      I4 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => \^as\(0)
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => \^as\(0)
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^as\(0)
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_awready\,
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^s00_axi_awready\,
      R => \^as\(0)
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => \^s00_axi_awready\,
      I1 => \^s00_axi_wready\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => \^as\(0)
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEC2F2CE3E02320"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_0\(0),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \^axi_rdata_reg[1]_0\(0),
      I4 => Q(0),
      I5 => \EP_reg[15]\(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEC2F2CE3E02320"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_0\(10),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[10]\,
      I4 => Q(10),
      I5 => \EP_reg[15]\(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEC2F2CE3E02320"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_0\(11),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[11]\,
      I4 => Q(11),
      I5 => \EP_reg[15]\(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEC2F2CE3E02320"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_0\(12),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[12]\,
      I4 => Q(12),
      I5 => \EP_reg[15]\(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEC2F2CE3E02320"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_0\(13),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[13]\,
      I4 => Q(13),
      I5 => \EP_reg[15]\(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEC2F2CE3E02320"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_0\(14),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[14]\,
      I4 => Q(14),
      I5 => \EP_reg[15]\(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEC2F2CE3E02320"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_0\(15),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[15]\,
      I4 => Q(15),
      I5 => \EP_reg[15]\(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCBF8C83B0B3808"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_0\(16),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => desbordamiento_signal,
      I4 => \slv_reg0_reg_n_0_[16]\,
      I5 => Q(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAACCCCFF00F0F0"
    )
        port map (
      I0 => Q(17),
      I1 => interrupcion,
      I2 => \slv_reg0_reg_n_0_[17]\,
      I3 => \^axi_rdata_reg[31]_0\(17),
      I4 => axi_araddr(2),
      I5 => axi_araddr(3),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEC2F2CE3E02320"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_0\(18),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[18]\,
      I4 => Q(18),
      I5 => \Temp_reg[1]\(0),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00F0CC"
    )
        port map (
      I0 => Q(19),
      I1 => \slv_reg0_reg_n_0_[19]\,
      I2 => \^axi_rdata_reg[31]_0\(19),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEC2F2CE3E02320"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_0\(1),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \^axi_rdata_reg[1]_0\(1),
      I4 => Q(1),
      I5 => \EP_reg[15]\(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00F0CC"
    )
        port map (
      I0 => Q(20),
      I1 => \slv_reg0_reg_n_0_[20]\,
      I2 => \^axi_rdata_reg[31]_0\(20),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00F0CC"
    )
        port map (
      I0 => Q(21),
      I1 => \slv_reg0_reg_n_0_[21]\,
      I2 => \^axi_rdata_reg[31]_0\(21),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00F0CC"
    )
        port map (
      I0 => Q(22),
      I1 => \slv_reg0_reg_n_0_[22]\,
      I2 => \^axi_rdata_reg[31]_0\(22),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00F0CC"
    )
        port map (
      I0 => Q(23),
      I1 => \slv_reg0_reg_n_0_[23]\,
      I2 => \^axi_rdata_reg[31]_0\(23),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00F0CC"
    )
        port map (
      I0 => Q(24),
      I1 => \slv_reg0_reg_n_0_[24]\,
      I2 => \^axi_rdata_reg[31]_0\(24),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00F0CC"
    )
        port map (
      I0 => Q(25),
      I1 => \slv_reg0_reg_n_0_[25]\,
      I2 => \^axi_rdata_reg[31]_0\(25),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00F0CC"
    )
        port map (
      I0 => Q(26),
      I1 => \slv_reg0_reg_n_0_[26]\,
      I2 => \^axi_rdata_reg[31]_0\(26),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00F0CC"
    )
        port map (
      I0 => Q(27),
      I1 => \slv_reg0_reg_n_0_[27]\,
      I2 => \^axi_rdata_reg[31]_0\(27),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00F0CC"
    )
        port map (
      I0 => Q(28),
      I1 => \slv_reg0_reg_n_0_[28]\,
      I2 => \^axi_rdata_reg[31]_0\(28),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00F0CC"
    )
        port map (
      I0 => Q(29),
      I1 => \slv_reg0_reg_n_0_[29]\,
      I2 => \^axi_rdata_reg[31]_0\(29),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEC2F2CE3E02320"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_0\(2),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[2]\,
      I4 => Q(2),
      I5 => \EP_reg[15]\(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00F0CC"
    )
        port map (
      I0 => Q(30),
      I1 => \slv_reg0_reg_n_0_[30]\,
      I2 => \^axi_rdata_reg[31]_0\(30),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00F0CC"
    )
        port map (
      I0 => Q(31),
      I1 => \slv_reg0_reg_n_0_[31]\,
      I2 => \^axi_rdata_reg[31]_0\(31),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEC2F2CE3E02320"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_0\(3),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[3]\,
      I4 => Q(3),
      I5 => \EP_reg[15]\(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEC2F2CE3E02320"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_0\(4),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[4]\,
      I4 => Q(4),
      I5 => \EP_reg[15]\(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEC2F2CE3E02320"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_0\(5),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[5]\,
      I4 => Q(5),
      I5 => \EP_reg[15]\(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEC2F2CE3E02320"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_0\(6),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[6]\,
      I4 => Q(6),
      I5 => \EP_reg[15]\(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEC2F2CE3E02320"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_0\(7),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[7]\,
      I4 => Q(7),
      I5 => \EP_reg[15]\(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEC2F2CE3E02320"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_0\(8),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[8]\,
      I4 => Q(8),
      I5 => \EP_reg[15]\(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEC2F2CE3E02320"
    )
        port map (
      I0 => \^axi_rdata_reg[31]_0\(9),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[9]\,
      I4 => Q(9),
      I5 => \EP_reg[15]\(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => \^as\(0)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => \^as\(0)
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => \^as\(0)
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => \^as\(0)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => \^as\(0)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => \^as\(0)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => \^as\(0)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => \^as\(0)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => \^as\(0)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => \^as\(0)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => \^as\(0)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => \^as\(0)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => \^as\(0)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => \^as\(0)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => \^as\(0)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => \^as\(0)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => \^as\(0)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => \^as\(0)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => \^as\(0)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => \^as\(0)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => \^as\(0)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => \^as\(0)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => \^as\(0)
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => \^as\(0)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => \^as\(0)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => \^as\(0)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => \^as\(0)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => \^as\(0)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => \^as\(0)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => \^as\(0)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => \^as\(0)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => \^as\(0)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => \^as\(0)
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s00_axi_wready\,
      R => \^as\(0)
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(1),
      I3 => \slv_reg_wren__0\,
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(2),
      I3 => \slv_reg_wren__0\,
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(3),
      I3 => \slv_reg_wren__0\,
      O => p_1_in(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s00_axi_awready\,
      I1 => \^s00_axi_wready\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(0),
      I3 => \slv_reg_wren__0\,
      O => p_1_in(1)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(1),
      D => s00_axi_wdata(0),
      Q => \^axi_rdata_reg[1]_0\(0),
      R => \^as\(0)
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => \^as\(0)
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => \^as\(0)
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => \^as\(0)
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => \^as\(0)
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => \^as\(0)
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => \^as\(0)
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => \^as\(0)
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => \^as\(0)
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => \^as\(0)
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => \^as\(0)
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(1),
      D => s00_axi_wdata(1),
      Q => \^axi_rdata_reg[1]_0\(1),
      R => \^as\(0)
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => \^as\(0)
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => \^as\(0)
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => \^as\(0)
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => \^as\(0)
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => \^as\(0)
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => \^as\(0)
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => \^as\(0)
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => \^as\(0)
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => \^as\(0)
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => \^as\(0)
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(1),
      D => s00_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => \^as\(0)
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => \^as\(0)
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => \^as\(0)
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(1),
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => \^as\(0)
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(1),
      D => s00_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => \^as\(0)
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(1),
      D => s00_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => \^as\(0)
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(1),
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => \^as\(0)
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(1),
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => \^as\(0)
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => \^as\(0)
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => \^as\(0)
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => s00_axi_wstrb(1),
      I3 => \slv_reg_wren__0\,
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => s00_axi_wstrb(2),
      I3 => \slv_reg_wren__0\,
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => s00_axi_wstrb(3),
      I3 => \slv_reg_wren__0\,
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => s00_axi_wstrb(0),
      I3 => \slv_reg_wren__0\,
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^axi_rdata_reg[31]_0\(0),
      R => \^as\(0)
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^axi_rdata_reg[31]_0\(10),
      R => \^as\(0)
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^axi_rdata_reg[31]_0\(11),
      R => \^as\(0)
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^axi_rdata_reg[31]_0\(12),
      R => \^as\(0)
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^axi_rdata_reg[31]_0\(13),
      R => \^as\(0)
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^axi_rdata_reg[31]_0\(14),
      R => \^as\(0)
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^axi_rdata_reg[31]_0\(15),
      R => \^as\(0)
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^axi_rdata_reg[31]_0\(16),
      R => \^as\(0)
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^axi_rdata_reg[31]_0\(17),
      R => \^as\(0)
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^axi_rdata_reg[31]_0\(18),
      R => \^as\(0)
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^axi_rdata_reg[31]_0\(19),
      R => \^as\(0)
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^axi_rdata_reg[31]_0\(1),
      R => \^as\(0)
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^axi_rdata_reg[31]_0\(20),
      R => \^as\(0)
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^axi_rdata_reg[31]_0\(21),
      R => \^as\(0)
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^axi_rdata_reg[31]_0\(22),
      R => \^as\(0)
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^axi_rdata_reg[31]_0\(23),
      R => \^as\(0)
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^axi_rdata_reg[31]_0\(24),
      R => \^as\(0)
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^axi_rdata_reg[31]_0\(25),
      R => \^as\(0)
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^axi_rdata_reg[31]_0\(26),
      R => \^as\(0)
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^axi_rdata_reg[31]_0\(27),
      R => \^as\(0)
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^axi_rdata_reg[31]_0\(28),
      R => \^as\(0)
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^axi_rdata_reg[31]_0\(29),
      R => \^as\(0)
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^axi_rdata_reg[31]_0\(2),
      R => \^as\(0)
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \^axi_rdata_reg[31]_0\(30),
      R => \^as\(0)
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^axi_rdata_reg[31]_0\(31),
      R => \^as\(0)
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^axi_rdata_reg[31]_0\(3),
      R => \^as\(0)
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^axi_rdata_reg[31]_0\(4),
      R => \^as\(0)
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^axi_rdata_reg[31]_0\(5),
      R => \^as\(0)
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^axi_rdata_reg[31]_0\(6),
      R => \^as\(0)
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^axi_rdata_reg[31]_0\(7),
      R => \^as\(0)
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^axi_rdata_reg[31]_0\(8),
      R => \^as\(0)
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^axi_rdata_reg[31]_0\(9),
      R => \^as\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Proyecto_TADSE_Circuito_para_pruebas_0_0_Contador_32bits is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    en_contador_tiempo0 : out STD_LOGIC;
    \slv_reg1_reg[31]\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    en_contador_tiempo : in STD_LOGIC;
    \EP_reg[0]_0\ : in STD_LOGIC;
    \EP_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Proyecto_TADSE_Circuito_para_pruebas_0_0_Contador_32bits : entity is "Contador_32bits";
end Proyecto_TADSE_Circuito_para_pruebas_0_0_Contador_32bits;

architecture STRUCTURE of Proyecto_TADSE_Circuito_para_pruebas_0_0_Contador_32bits is
  signal \EP[10]_i_1_n_0\ : STD_LOGIC;
  signal \EP[11]_i_1_n_0\ : STD_LOGIC;
  signal \EP[12]_i_1_n_0\ : STD_LOGIC;
  signal \EP[12]_i_3_n_0\ : STD_LOGIC;
  signal \EP[12]_i_4_n_0\ : STD_LOGIC;
  signal \EP[12]_i_5_n_0\ : STD_LOGIC;
  signal \EP[12]_i_6_n_0\ : STD_LOGIC;
  signal \EP[13]_i_1_n_0\ : STD_LOGIC;
  signal \EP[14]_i_1_n_0\ : STD_LOGIC;
  signal \EP[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \EP[16]_i_1_n_0\ : STD_LOGIC;
  signal \EP[16]_i_3_n_0\ : STD_LOGIC;
  signal \EP[16]_i_4_n_0\ : STD_LOGIC;
  signal \EP[16]_i_5_n_0\ : STD_LOGIC;
  signal \EP[16]_i_6_n_0\ : STD_LOGIC;
  signal \EP[17]_i_1_n_0\ : STD_LOGIC;
  signal \EP[18]_i_1_n_0\ : STD_LOGIC;
  signal \EP[19]_i_1_n_0\ : STD_LOGIC;
  signal \EP[1]_i_1_n_0\ : STD_LOGIC;
  signal \EP[20]_i_1_n_0\ : STD_LOGIC;
  signal \EP[20]_i_3_n_0\ : STD_LOGIC;
  signal \EP[20]_i_4_n_0\ : STD_LOGIC;
  signal \EP[20]_i_5_n_0\ : STD_LOGIC;
  signal \EP[20]_i_6_n_0\ : STD_LOGIC;
  signal \EP[21]_i_1_n_0\ : STD_LOGIC;
  signal \EP[22]_i_1_n_0\ : STD_LOGIC;
  signal \EP[23]_i_1_n_0\ : STD_LOGIC;
  signal \EP[24]_i_1_n_0\ : STD_LOGIC;
  signal \EP[24]_i_3_n_0\ : STD_LOGIC;
  signal \EP[24]_i_4_n_0\ : STD_LOGIC;
  signal \EP[24]_i_5_n_0\ : STD_LOGIC;
  signal \EP[24]_i_6_n_0\ : STD_LOGIC;
  signal \EP[25]_i_1_n_0\ : STD_LOGIC;
  signal \EP[26]_i_1_n_0\ : STD_LOGIC;
  signal \EP[27]_i_1_n_0\ : STD_LOGIC;
  signal \EP[28]_i_1_n_0\ : STD_LOGIC;
  signal \EP[28]_i_3_n_0\ : STD_LOGIC;
  signal \EP[28]_i_4_n_0\ : STD_LOGIC;
  signal \EP[28]_i_5_n_0\ : STD_LOGIC;
  signal \EP[28]_i_6_n_0\ : STD_LOGIC;
  signal \EP[29]_i_1_n_0\ : STD_LOGIC;
  signal \EP[2]_i_1_n_0\ : STD_LOGIC;
  signal \EP[30]_i_1_n_0\ : STD_LOGIC;
  signal \EP[31]_i_10_n_0\ : STD_LOGIC;
  signal \EP[31]_i_11_n_0\ : STD_LOGIC;
  signal \EP[31]_i_12_n_0\ : STD_LOGIC;
  signal \EP[31]_i_13_n_0\ : STD_LOGIC;
  signal \EP[31]_i_14_n_0\ : STD_LOGIC;
  signal \EP[31]_i_15_n_0\ : STD_LOGIC;
  signal \EP[31]_i_16_n_0\ : STD_LOGIC;
  signal \EP[31]_i_17_n_0\ : STD_LOGIC;
  signal \EP[31]_i_2_n_0\ : STD_LOGIC;
  signal \EP[31]_i_4_n_0\ : STD_LOGIC;
  signal \EP[31]_i_5_n_0\ : STD_LOGIC;
  signal \EP[31]_i_7_n_0\ : STD_LOGIC;
  signal \EP[31]_i_8_n_0\ : STD_LOGIC;
  signal \EP[31]_i_9_n_0\ : STD_LOGIC;
  signal \EP[3]_i_1_n_0\ : STD_LOGIC;
  signal \EP[4]_i_1_n_0\ : STD_LOGIC;
  signal \EP[4]_i_3_n_0\ : STD_LOGIC;
  signal \EP[4]_i_4_n_0\ : STD_LOGIC;
  signal \EP[4]_i_5_n_0\ : STD_LOGIC;
  signal \EP[4]_i_6_n_0\ : STD_LOGIC;
  signal \EP[5]_i_1_n_0\ : STD_LOGIC;
  signal \EP[6]_i_1_n_0\ : STD_LOGIC;
  signal \EP[7]_i_1_n_0\ : STD_LOGIC;
  signal \EP[8]_i_1_n_0\ : STD_LOGIC;
  signal \EP[8]_i_3_n_0\ : STD_LOGIC;
  signal \EP[8]_i_4_n_0\ : STD_LOGIC;
  signal \EP[8]_i_5_n_0\ : STD_LOGIC;
  signal \EP[8]_i_6_n_0\ : STD_LOGIC;
  signal \EP[9]_i_1_n_0\ : STD_LOGIC;
  signal \EP_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \EP_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \EP_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \EP_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \EP_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \EP_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \EP_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \EP_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \EP_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \EP_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \EP_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \EP_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \EP_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \EP_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \EP_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \EP_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \EP_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \EP_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \EP_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \EP_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \EP_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \EP_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \EP_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \EP_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \EP_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \EP_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \EP_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \EP_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \EP_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \EP_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal en_contador_tiempo_reg_i_3_n_0 : STD_LOGIC;
  signal en_contador_tiempo_reg_i_4_n_0 : STD_LOGIC;
  signal en_contador_tiempo_reg_i_5_n_0 : STD_LOGIC;
  signal en_contador_tiempo_reg_i_6_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_EP_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_EP_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \EP[31]_i_11\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \EP[31]_i_13\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \EP[31]_i_15\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \EP[31]_i_17\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of en_contador_tiempo_reg_i_3 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of en_contador_tiempo_reg_i_4 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of en_contador_tiempo_reg_i_5 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of en_contador_tiempo_reg_i_6 : label is "soft_lutpair5";
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
\EP[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(9),
      I1 => plusOp(10),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[10]_i_1_n_0\
    );
\EP[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(10),
      I1 => plusOp(11),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[11]_i_1_n_0\
    );
\EP[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(11),
      I1 => plusOp(12),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[12]_i_1_n_0\
    );
\EP[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(12),
      O => \EP[12]_i_3_n_0\
    );
\EP[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(11),
      O => \EP[12]_i_4_n_0\
    );
\EP[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(10),
      O => \EP[12]_i_5_n_0\
    );
\EP[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(9),
      O => \EP[12]_i_6_n_0\
    );
\EP[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(12),
      I1 => plusOp(13),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[13]_i_1_n_0\
    );
\EP[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(13),
      I1 => plusOp(14),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[14]_i_1_n_0\
    );
\EP[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(14),
      I1 => plusOp(15),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[15]_i_1__0_n_0\
    );
\EP[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(15),
      I1 => plusOp(16),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[16]_i_1_n_0\
    );
\EP[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(16),
      O => \EP[16]_i_3_n_0\
    );
\EP[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(15),
      O => \EP[16]_i_4_n_0\
    );
\EP[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(14),
      O => \EP[16]_i_5_n_0\
    );
\EP[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(13),
      O => \EP[16]_i_6_n_0\
    );
\EP[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(16),
      I1 => plusOp(17),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[17]_i_1_n_0\
    );
\EP[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(17),
      I1 => plusOp(18),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[18]_i_1_n_0\
    );
\EP[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(18),
      I1 => plusOp(19),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[19]_i_1_n_0\
    );
\EP[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(0),
      I1 => plusOp(1),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[1]_i_1_n_0\
    );
\EP[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(19),
      I1 => plusOp(20),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[20]_i_1_n_0\
    );
\EP[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(20),
      O => \EP[20]_i_3_n_0\
    );
\EP[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(19),
      O => \EP[20]_i_4_n_0\
    );
\EP[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(18),
      O => \EP[20]_i_5_n_0\
    );
\EP[20]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(17),
      O => \EP[20]_i_6_n_0\
    );
\EP[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(20),
      I1 => plusOp(21),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[21]_i_1_n_0\
    );
\EP[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(21),
      I1 => plusOp(22),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[22]_i_1_n_0\
    );
\EP[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(22),
      I1 => plusOp(23),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[23]_i_1_n_0\
    );
\EP[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(23),
      I1 => plusOp(24),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[24]_i_1_n_0\
    );
\EP[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(24),
      O => \EP[24]_i_3_n_0\
    );
\EP[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(23),
      O => \EP[24]_i_4_n_0\
    );
\EP[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(22),
      O => \EP[24]_i_5_n_0\
    );
\EP[24]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(21),
      O => \EP[24]_i_6_n_0\
    );
\EP[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(24),
      I1 => plusOp(25),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[25]_i_1_n_0\
    );
\EP[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(25),
      I1 => plusOp(26),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[26]_i_1_n_0\
    );
\EP[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(26),
      I1 => plusOp(27),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[27]_i_1_n_0\
    );
\EP[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(27),
      I1 => plusOp(28),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[28]_i_1_n_0\
    );
\EP[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(28),
      O => \EP[28]_i_3_n_0\
    );
\EP[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(27),
      O => \EP[28]_i_4_n_0\
    );
\EP[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(26),
      O => \EP[28]_i_5_n_0\
    );
\EP[28]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(25),
      O => \EP[28]_i_6_n_0\
    );
\EP[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(28),
      I1 => plusOp(29),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[29]_i_1_n_0\
    );
\EP[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(1),
      I1 => plusOp(2),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[2]_i_1_n_0\
    );
\EP[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(29),
      I1 => plusOp(30),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[30]_i_1_n_0\
    );
\EP[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(21),
      I1 => \^q\(20),
      I2 => \^q\(23),
      I3 => \^q\(22),
      O => \EP[31]_i_10_n_0\
    );
\EP[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(17),
      I1 => \^q\(16),
      I2 => \^q\(19),
      I3 => \^q\(18),
      O => \EP[31]_i_11_n_0\
    );
\EP[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(29),
      I1 => \^q\(28),
      I2 => \^q\(31),
      I3 => \^q\(30),
      O => \EP[31]_i_12_n_0\
    );
\EP[31]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(25),
      I1 => \^q\(24),
      I2 => \^q\(27),
      I3 => \^q\(26),
      O => \EP[31]_i_13_n_0\
    );
\EP[31]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(7),
      I3 => \^q\(6),
      O => \EP[31]_i_14_n_0\
    );
\EP[31]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => \EP[31]_i_15_n_0\
    );
\EP[31]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^q\(12),
      I2 => \^q\(15),
      I3 => \^q\(14),
      O => \EP[31]_i_16_n_0\
    );
\EP[31]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^q\(11),
      I3 => \^q\(10),
      O => \EP[31]_i_17_n_0\
    );
\EP[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(30),
      I1 => plusOp(31),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[31]_i_2_n_0\
    );
\EP[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \EP[31]_i_10_n_0\,
      I1 => \EP[31]_i_11_n_0\,
      I2 => \EP[31]_i_12_n_0\,
      I3 => \EP[31]_i_13_n_0\,
      O => \EP[31]_i_4_n_0\
    );
\EP[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \EP[31]_i_14_n_0\,
      I1 => \EP[31]_i_15_n_0\,
      I2 => \EP[31]_i_16_n_0\,
      I3 => \EP[31]_i_17_n_0\,
      O => \EP[31]_i_5_n_0\
    );
\EP[31]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(31),
      O => \EP[31]_i_7_n_0\
    );
\EP[31]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(30),
      O => \EP[31]_i_8_n_0\
    );
\EP[31]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(29),
      O => \EP[31]_i_9_n_0\
    );
\EP[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(2),
      I1 => plusOp(3),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[3]_i_1_n_0\
    );
\EP[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(3),
      I1 => plusOp(4),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[4]_i_1_n_0\
    );
\EP[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      O => \EP[4]_i_3_n_0\
    );
\EP[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      O => \EP[4]_i_4_n_0\
    );
\EP[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      O => \EP[4]_i_5_n_0\
    );
\EP[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      O => \EP[4]_i_6_n_0\
    );
\EP[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(4),
      I1 => plusOp(5),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[5]_i_1_n_0\
    );
\EP[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(5),
      I1 => plusOp(6),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[6]_i_1_n_0\
    );
\EP[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(6),
      I1 => plusOp(7),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[7]_i_1_n_0\
    );
\EP[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(7),
      I1 => plusOp(8),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[8]_i_1_n_0\
    );
\EP[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(8),
      O => \EP[8]_i_3_n_0\
    );
\EP[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(7),
      O => \EP[8]_i_4_n_0\
    );
\EP[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      O => \EP[8]_i_5_n_0\
    );
\EP[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      O => \EP[8]_i_6_n_0\
    );
\EP[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC00000AAAAAAAA"
    )
        port map (
      I0 => \slv_reg1_reg[31]\(8),
      I1 => plusOp(9),
      I2 => \EP[31]_i_4_n_0\,
      I3 => \EP[31]_i_5_n_0\,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[0]_0\,
      O => \EP[9]_i_1_n_0\
    );
\EP_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => D(0),
      Q => \^q\(0)
    );
\EP_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[10]_i_1_n_0\,
      Q => \^q\(10)
    );
\EP_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[11]_i_1_n_0\,
      Q => \^q\(11)
    );
\EP_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[12]_i_1_n_0\,
      Q => \^q\(12)
    );
\EP_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \EP_reg[8]_i_2_n_0\,
      CO(3) => \EP_reg[12]_i_2_n_0\,
      CO(2) => \EP_reg[12]_i_2_n_1\,
      CO(1) => \EP_reg[12]_i_2_n_2\,
      CO(0) => \EP_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3) => \EP[12]_i_3_n_0\,
      S(2) => \EP[12]_i_4_n_0\,
      S(1) => \EP[12]_i_5_n_0\,
      S(0) => \EP[12]_i_6_n_0\
    );
\EP_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[13]_i_1_n_0\,
      Q => \^q\(13)
    );
\EP_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[14]_i_1_n_0\,
      Q => \^q\(14)
    );
\EP_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[15]_i_1__0_n_0\,
      Q => \^q\(15)
    );
\EP_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[16]_i_1_n_0\,
      Q => \^q\(16)
    );
\EP_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \EP_reg[12]_i_2_n_0\,
      CO(3) => \EP_reg[16]_i_2_n_0\,
      CO(2) => \EP_reg[16]_i_2_n_1\,
      CO(1) => \EP_reg[16]_i_2_n_2\,
      CO(0) => \EP_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(16 downto 13),
      S(3) => \EP[16]_i_3_n_0\,
      S(2) => \EP[16]_i_4_n_0\,
      S(1) => \EP[16]_i_5_n_0\,
      S(0) => \EP[16]_i_6_n_0\
    );
\EP_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[17]_i_1_n_0\,
      Q => \^q\(17)
    );
\EP_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[18]_i_1_n_0\,
      Q => \^q\(18)
    );
\EP_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[19]_i_1_n_0\,
      Q => \^q\(19)
    );
\EP_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[1]_i_1_n_0\,
      Q => \^q\(1)
    );
\EP_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[20]_i_1_n_0\,
      Q => \^q\(20)
    );
\EP_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \EP_reg[16]_i_2_n_0\,
      CO(3) => \EP_reg[20]_i_2_n_0\,
      CO(2) => \EP_reg[20]_i_2_n_1\,
      CO(1) => \EP_reg[20]_i_2_n_2\,
      CO(0) => \EP_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(20 downto 17),
      S(3) => \EP[20]_i_3_n_0\,
      S(2) => \EP[20]_i_4_n_0\,
      S(1) => \EP[20]_i_5_n_0\,
      S(0) => \EP[20]_i_6_n_0\
    );
\EP_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[21]_i_1_n_0\,
      Q => \^q\(21)
    );
\EP_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[22]_i_1_n_0\,
      Q => \^q\(22)
    );
\EP_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[23]_i_1_n_0\,
      Q => \^q\(23)
    );
\EP_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[24]_i_1_n_0\,
      Q => \^q\(24)
    );
\EP_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \EP_reg[20]_i_2_n_0\,
      CO(3) => \EP_reg[24]_i_2_n_0\,
      CO(2) => \EP_reg[24]_i_2_n_1\,
      CO(1) => \EP_reg[24]_i_2_n_2\,
      CO(0) => \EP_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(24 downto 21),
      S(3) => \EP[24]_i_3_n_0\,
      S(2) => \EP[24]_i_4_n_0\,
      S(1) => \EP[24]_i_5_n_0\,
      S(0) => \EP[24]_i_6_n_0\
    );
\EP_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[25]_i_1_n_0\,
      Q => \^q\(25)
    );
\EP_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[26]_i_1_n_0\,
      Q => \^q\(26)
    );
\EP_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[27]_i_1_n_0\,
      Q => \^q\(27)
    );
\EP_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[28]_i_1_n_0\,
      Q => \^q\(28)
    );
\EP_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \EP_reg[24]_i_2_n_0\,
      CO(3) => \EP_reg[28]_i_2_n_0\,
      CO(2) => \EP_reg[28]_i_2_n_1\,
      CO(1) => \EP_reg[28]_i_2_n_2\,
      CO(0) => \EP_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(28 downto 25),
      S(3) => \EP[28]_i_3_n_0\,
      S(2) => \EP[28]_i_4_n_0\,
      S(1) => \EP[28]_i_5_n_0\,
      S(0) => \EP[28]_i_6_n_0\
    );
\EP_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[29]_i_1_n_0\,
      Q => \^q\(29)
    );
\EP_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[2]_i_1_n_0\,
      Q => \^q\(2)
    );
\EP_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[30]_i_1_n_0\,
      Q => \^q\(30)
    );
\EP_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[31]_i_2_n_0\,
      Q => \^q\(31)
    );
\EP_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \EP_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_EP_reg[31]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \EP_reg[31]_i_3_n_2\,
      CO(0) => \EP_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_EP_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp(31 downto 29),
      S(3) => '0',
      S(2) => \EP[31]_i_7_n_0\,
      S(1) => \EP[31]_i_8_n_0\,
      S(0) => \EP[31]_i_9_n_0\
    );
\EP_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[3]_i_1_n_0\,
      Q => \^q\(3)
    );
\EP_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[4]_i_1_n_0\,
      Q => \^q\(4)
    );
\EP_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \EP_reg[4]_i_2_n_0\,
      CO(2) => \EP_reg[4]_i_2_n_1\,
      CO(1) => \EP_reg[4]_i_2_n_2\,
      CO(0) => \EP_reg[4]_i_2_n_3\,
      CYINIT => \^q\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3) => \EP[4]_i_3_n_0\,
      S(2) => \EP[4]_i_4_n_0\,
      S(1) => \EP[4]_i_5_n_0\,
      S(0) => \EP[4]_i_6_n_0\
    );
\EP_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[5]_i_1_n_0\,
      Q => \^q\(5)
    );
\EP_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[6]_i_1_n_0\,
      Q => \^q\(6)
    );
\EP_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[7]_i_1_n_0\,
      Q => \^q\(7)
    );
\EP_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[8]_i_1_n_0\,
      Q => \^q\(8)
    );
\EP_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \EP_reg[4]_i_2_n_0\,
      CO(3) => \EP_reg[8]_i_2_n_0\,
      CO(2) => \EP_reg[8]_i_2_n_1\,
      CO(1) => \EP_reg[8]_i_2_n_2\,
      CO(0) => \EP_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3) => \EP[8]_i_3_n_0\,
      S(2) => \EP[8]_i_4_n_0\,
      S(1) => \EP[8]_i_5_n_0\,
      S(0) => \EP[8]_i_6_n_0\
    );
\EP_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \EP_reg[1]_0\(0),
      D => \EP[9]_i_1_n_0\,
      Q => \^q\(9)
    );
en_contador_tiempo_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => en_contador_tiempo_reg_i_3_n_0,
      I1 => en_contador_tiempo_reg_i_4_n_0,
      I2 => en_contador_tiempo_reg_i_5_n_0,
      I3 => en_contador_tiempo_reg_i_6_n_0,
      I4 => en_contador_tiempo,
      I5 => \EP_reg[1]_0\(0),
      O => en_contador_tiempo0
    );
en_contador_tiempo_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(11),
      I2 => \^q\(8),
      I3 => \^q\(9),
      I4 => \EP[31]_i_16_n_0\,
      O => en_contador_tiempo_reg_i_3_n_0
    );
en_contador_tiempo_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \EP[31]_i_14_n_0\,
      O => en_contador_tiempo_reg_i_4_n_0
    );
en_contador_tiempo_reg_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \^q\(26),
      I1 => \^q\(27),
      I2 => \^q\(24),
      I3 => \^q\(25),
      I4 => \EP[31]_i_12_n_0\,
      O => en_contador_tiempo_reg_i_5_n_0
    );
en_contador_tiempo_reg_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \^q\(18),
      I1 => \^q\(19),
      I2 => \^q\(16),
      I3 => \^q\(17),
      I4 => \EP[31]_i_10_n_0\,
      O => en_contador_tiempo_reg_i_6_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Proyecto_TADSE_Circuito_para_pruebas_0_0_Contador_NBits is
  port (
    \axi_rdata_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rco_contador_eventos : out STD_LOGIC;
    \Temp_reg[1]\ : in STD_LOGIC;
    \Temp_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    q_dff4 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_circuito_test : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Proyecto_TADSE_Circuito_para_pruebas_0_0_Contador_NBits : entity is "Contador_NBits";
end Proyecto_TADSE_Circuito_para_pruebas_0_0_Contador_NBits;

architecture STRUCTURE of Proyecto_TADSE_Circuito_para_pruebas_0_0_Contador_NBits is
  signal \EP[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \EP[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \EP[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \EP[13]_i_1__0_n_0\ : STD_LOGIC;
  signal \EP[14]_i_1__0_n_0\ : STD_LOGIC;
  signal \EP[15]_i_2_n_0\ : STD_LOGIC;
  signal \EP[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \EP[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \EP[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \EP[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \EP[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \EP[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \EP[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \EP[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \EP[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \^axi_rdata_reg[15]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal desbordamiento_signal_reg_i_3_n_0 : STD_LOGIC;
  signal desbordamiento_signal_reg_i_4_n_0 : STD_LOGIC;
  signal desbordamiento_signal_reg_i_5_n_0 : STD_LOGIC;
  signal desbordamiento_signal_reg_i_6_n_0 : STD_LOGIC;
  signal \plusOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_4\ : STD_LOGIC;
  signal \plusOp_carry__1_n_5\ : STD_LOGIC;
  signal \plusOp_carry__1_n_6\ : STD_LOGIC;
  signal \plusOp_carry__1_n_7\ : STD_LOGIC;
  signal \plusOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_5\ : STD_LOGIC;
  signal \plusOp_carry__2_n_6\ : STD_LOGIC;
  signal \plusOp_carry__2_n_7\ : STD_LOGIC;
  signal plusOp_carry_i_1_n_0 : STD_LOGIC;
  signal plusOp_carry_i_2_n_0 : STD_LOGIC;
  signal plusOp_carry_i_3_n_0 : STD_LOGIC;
  signal plusOp_carry_i_4_n_0 : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal plusOp_carry_n_4 : STD_LOGIC;
  signal plusOp_carry_n_5 : STD_LOGIC;
  signal plusOp_carry_n_6 : STD_LOGIC;
  signal plusOp_carry_n_7 : STD_LOGIC;
  signal \NLW_plusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  \axi_rdata_reg[15]\(15 downto 0) <= \^axi_rdata_reg[15]\(15 downto 0);
\EP[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => desbordamiento_signal_reg_i_6_n_0,
      I1 => desbordamiento_signal_reg_i_5_n_0,
      I2 => desbordamiento_signal_reg_i_4_n_0,
      I3 => desbordamiento_signal_reg_i_3_n_0,
      I4 => \Temp_reg[1]\,
      I5 => \plusOp_carry__1_n_6\,
      O => \EP[10]_i_1__0_n_0\
    );
\EP[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => desbordamiento_signal_reg_i_6_n_0,
      I1 => desbordamiento_signal_reg_i_5_n_0,
      I2 => desbordamiento_signal_reg_i_4_n_0,
      I3 => desbordamiento_signal_reg_i_3_n_0,
      I4 => \Temp_reg[1]\,
      I5 => \plusOp_carry__1_n_5\,
      O => \EP[11]_i_1__0_n_0\
    );
\EP[12]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => desbordamiento_signal_reg_i_6_n_0,
      I1 => desbordamiento_signal_reg_i_5_n_0,
      I2 => desbordamiento_signal_reg_i_4_n_0,
      I3 => desbordamiento_signal_reg_i_3_n_0,
      I4 => \Temp_reg[1]\,
      I5 => \plusOp_carry__1_n_4\,
      O => \EP[12]_i_1__0_n_0\
    );
\EP[13]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => desbordamiento_signal_reg_i_6_n_0,
      I1 => desbordamiento_signal_reg_i_5_n_0,
      I2 => desbordamiento_signal_reg_i_4_n_0,
      I3 => desbordamiento_signal_reg_i_3_n_0,
      I4 => \Temp_reg[1]\,
      I5 => \plusOp_carry__2_n_7\,
      O => \EP[13]_i_1__0_n_0\
    );
\EP[14]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => desbordamiento_signal_reg_i_6_n_0,
      I1 => desbordamiento_signal_reg_i_5_n_0,
      I2 => desbordamiento_signal_reg_i_4_n_0,
      I3 => desbordamiento_signal_reg_i_3_n_0,
      I4 => \Temp_reg[1]\,
      I5 => \plusOp_carry__2_n_6\,
      O => \EP[14]_i_1__0_n_0\
    );
\EP[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => desbordamiento_signal_reg_i_6_n_0,
      I1 => desbordamiento_signal_reg_i_5_n_0,
      I2 => desbordamiento_signal_reg_i_4_n_0,
      I3 => desbordamiento_signal_reg_i_3_n_0,
      I4 => \Temp_reg[1]\,
      I5 => \plusOp_carry__2_n_5\,
      O => \EP[15]_i_2_n_0\
    );
\EP[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => desbordamiento_signal_reg_i_6_n_0,
      I1 => desbordamiento_signal_reg_i_5_n_0,
      I2 => desbordamiento_signal_reg_i_4_n_0,
      I3 => desbordamiento_signal_reg_i_3_n_0,
      I4 => \Temp_reg[1]\,
      I5 => plusOp_carry_n_7,
      O => \EP[1]_i_1__2_n_0\
    );
\EP[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => desbordamiento_signal_reg_i_6_n_0,
      I1 => desbordamiento_signal_reg_i_5_n_0,
      I2 => desbordamiento_signal_reg_i_4_n_0,
      I3 => desbordamiento_signal_reg_i_3_n_0,
      I4 => \Temp_reg[1]\,
      I5 => plusOp_carry_n_6,
      O => \EP[2]_i_1__0_n_0\
    );
\EP[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => desbordamiento_signal_reg_i_6_n_0,
      I1 => desbordamiento_signal_reg_i_5_n_0,
      I2 => desbordamiento_signal_reg_i_4_n_0,
      I3 => desbordamiento_signal_reg_i_3_n_0,
      I4 => \Temp_reg[1]\,
      I5 => plusOp_carry_n_5,
      O => \EP[3]_i_1__0_n_0\
    );
\EP[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => desbordamiento_signal_reg_i_6_n_0,
      I1 => desbordamiento_signal_reg_i_5_n_0,
      I2 => desbordamiento_signal_reg_i_4_n_0,
      I3 => desbordamiento_signal_reg_i_3_n_0,
      I4 => \Temp_reg[1]\,
      I5 => plusOp_carry_n_4,
      O => \EP[4]_i_1__0_n_0\
    );
\EP[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => desbordamiento_signal_reg_i_6_n_0,
      I1 => desbordamiento_signal_reg_i_5_n_0,
      I2 => desbordamiento_signal_reg_i_4_n_0,
      I3 => desbordamiento_signal_reg_i_3_n_0,
      I4 => \Temp_reg[1]\,
      I5 => \plusOp_carry__0_n_7\,
      O => \EP[5]_i_1__0_n_0\
    );
\EP[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => desbordamiento_signal_reg_i_6_n_0,
      I1 => desbordamiento_signal_reg_i_5_n_0,
      I2 => desbordamiento_signal_reg_i_4_n_0,
      I3 => desbordamiento_signal_reg_i_3_n_0,
      I4 => \Temp_reg[1]\,
      I5 => \plusOp_carry__0_n_6\,
      O => \EP[6]_i_1__0_n_0\
    );
\EP[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => desbordamiento_signal_reg_i_6_n_0,
      I1 => desbordamiento_signal_reg_i_5_n_0,
      I2 => desbordamiento_signal_reg_i_4_n_0,
      I3 => desbordamiento_signal_reg_i_3_n_0,
      I4 => \Temp_reg[1]\,
      I5 => \plusOp_carry__0_n_5\,
      O => \EP[7]_i_1__0_n_0\
    );
\EP[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => desbordamiento_signal_reg_i_6_n_0,
      I1 => desbordamiento_signal_reg_i_5_n_0,
      I2 => desbordamiento_signal_reg_i_4_n_0,
      I3 => desbordamiento_signal_reg_i_3_n_0,
      I4 => \Temp_reg[1]\,
      I5 => \plusOp_carry__0_n_4\,
      O => \EP[8]_i_1__0_n_0\
    );
\EP[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => desbordamiento_signal_reg_i_6_n_0,
      I1 => desbordamiento_signal_reg_i_5_n_0,
      I2 => desbordamiento_signal_reg_i_4_n_0,
      I3 => desbordamiento_signal_reg_i_3_n_0,
      I4 => \Temp_reg[1]\,
      I5 => \plusOp_carry__1_n_7\,
      O => \EP[9]_i_1__0_n_0\
    );
\EP_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_circuito_test,
      CE => E(0),
      CLR => Q(0),
      D => D(0),
      Q => \^axi_rdata_reg[15]\(0)
    );
\EP_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_circuito_test,
      CE => E(0),
      CLR => Q(0),
      D => \EP[10]_i_1__0_n_0\,
      Q => \^axi_rdata_reg[15]\(10)
    );
\EP_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_circuito_test,
      CE => E(0),
      CLR => Q(0),
      D => \EP[11]_i_1__0_n_0\,
      Q => \^axi_rdata_reg[15]\(11)
    );
\EP_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_circuito_test,
      CE => E(0),
      CLR => Q(0),
      D => \EP[12]_i_1__0_n_0\,
      Q => \^axi_rdata_reg[15]\(12)
    );
\EP_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_circuito_test,
      CE => E(0),
      CLR => Q(0),
      D => \EP[13]_i_1__0_n_0\,
      Q => \^axi_rdata_reg[15]\(13)
    );
\EP_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_circuito_test,
      CE => E(0),
      CLR => Q(0),
      D => \EP[14]_i_1__0_n_0\,
      Q => \^axi_rdata_reg[15]\(14)
    );
\EP_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_circuito_test,
      CE => E(0),
      CLR => Q(0),
      D => \EP[15]_i_2_n_0\,
      Q => \^axi_rdata_reg[15]\(15)
    );
\EP_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_circuito_test,
      CE => E(0),
      CLR => Q(0),
      D => \EP[1]_i_1__2_n_0\,
      Q => \^axi_rdata_reg[15]\(1)
    );
\EP_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_circuito_test,
      CE => E(0),
      CLR => Q(0),
      D => \EP[2]_i_1__0_n_0\,
      Q => \^axi_rdata_reg[15]\(2)
    );
\EP_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_circuito_test,
      CE => E(0),
      CLR => Q(0),
      D => \EP[3]_i_1__0_n_0\,
      Q => \^axi_rdata_reg[15]\(3)
    );
\EP_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_circuito_test,
      CE => E(0),
      CLR => Q(0),
      D => \EP[4]_i_1__0_n_0\,
      Q => \^axi_rdata_reg[15]\(4)
    );
\EP_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_circuito_test,
      CE => E(0),
      CLR => Q(0),
      D => \EP[5]_i_1__0_n_0\,
      Q => \^axi_rdata_reg[15]\(5)
    );
\EP_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_circuito_test,
      CE => E(0),
      CLR => Q(0),
      D => \EP[6]_i_1__0_n_0\,
      Q => \^axi_rdata_reg[15]\(6)
    );
\EP_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_circuito_test,
      CE => E(0),
      CLR => Q(0),
      D => \EP[7]_i_1__0_n_0\,
      Q => \^axi_rdata_reg[15]\(7)
    );
\EP_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_circuito_test,
      CE => E(0),
      CLR => Q(0),
      D => \EP[8]_i_1__0_n_0\,
      Q => \^axi_rdata_reg[15]\(8)
    );
\EP_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_circuito_test,
      CE => E(0),
      CLR => Q(0),
      D => \EP[9]_i_1__0_n_0\,
      Q => \^axi_rdata_reg[15]\(9)
    );
desbordamiento_signal_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => desbordamiento_signal_reg_i_3_n_0,
      I1 => desbordamiento_signal_reg_i_4_n_0,
      I2 => desbordamiento_signal_reg_i_5_n_0,
      I3 => desbordamiento_signal_reg_i_6_n_0,
      I4 => \Temp_reg[1]_0\(0),
      I5 => q_dff4,
      O => rco_contador_eventos
    );
desbordamiento_signal_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(5),
      I1 => \^axi_rdata_reg[15]\(4),
      I2 => \^axi_rdata_reg[15]\(7),
      I3 => \^axi_rdata_reg[15]\(6),
      O => desbordamiento_signal_reg_i_3_n_0
    );
desbordamiento_signal_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(1),
      I1 => \^axi_rdata_reg[15]\(0),
      I2 => \^axi_rdata_reg[15]\(3),
      I3 => \^axi_rdata_reg[15]\(2),
      O => desbordamiento_signal_reg_i_4_n_0
    );
desbordamiento_signal_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(13),
      I1 => \^axi_rdata_reg[15]\(12),
      I2 => \^axi_rdata_reg[15]\(15),
      I3 => \^axi_rdata_reg[15]\(14),
      O => desbordamiento_signal_reg_i_5_n_0
    );
desbordamiento_signal_reg_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(9),
      I1 => \^axi_rdata_reg[15]\(8),
      I2 => \^axi_rdata_reg[15]\(11),
      I3 => \^axi_rdata_reg[15]\(10),
      O => desbordamiento_signal_reg_i_6_n_0
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => \^axi_rdata_reg[15]\(0),
      DI(3 downto 0) => B"0000",
      O(3) => plusOp_carry_n_4,
      O(2) => plusOp_carry_n_5,
      O(1) => plusOp_carry_n_6,
      O(0) => plusOp_carry_n_7,
      S(3) => plusOp_carry_i_1_n_0,
      S(2) => plusOp_carry_i_2_n_0,
      S(1) => plusOp_carry_i_3_n_0,
      S(0) => plusOp_carry_i_4_n_0
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__0_n_4\,
      O(2) => \plusOp_carry__0_n_5\,
      O(1) => \plusOp_carry__0_n_6\,
      O(0) => \plusOp_carry__0_n_7\,
      S(3) => \plusOp_carry__0_i_1_n_0\,
      S(2) => \plusOp_carry__0_i_2_n_0\,
      S(1) => \plusOp_carry__0_i_3_n_0\,
      S(0) => \plusOp_carry__0_i_4_n_0\
    );
\plusOp_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(8),
      O => \plusOp_carry__0_i_1_n_0\
    );
\plusOp_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(7),
      O => \plusOp_carry__0_i_2_n_0\
    );
\plusOp_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(6),
      O => \plusOp_carry__0_i_3_n_0\
    );
\plusOp_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(5),
      O => \plusOp_carry__0_i_4_n_0\
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__1_n_4\,
      O(2) => \plusOp_carry__1_n_5\,
      O(1) => \plusOp_carry__1_n_6\,
      O(0) => \plusOp_carry__1_n_7\,
      S(3) => \plusOp_carry__1_i_1_n_0\,
      S(2) => \plusOp_carry__1_i_2_n_0\,
      S(1) => \plusOp_carry__1_i_3_n_0\,
      S(0) => \plusOp_carry__1_i_4_n_0\
    );
\plusOp_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(12),
      O => \plusOp_carry__1_i_1_n_0\
    );
\plusOp_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(11),
      O => \plusOp_carry__1_i_2_n_0\
    );
\plusOp_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(10),
      O => \plusOp_carry__1_i_3_n_0\
    );
\plusOp_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(9),
      O => \plusOp_carry__1_i_4_n_0\
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__2_O_UNCONNECTED\(3),
      O(2) => \plusOp_carry__2_n_5\,
      O(1) => \plusOp_carry__2_n_6\,
      O(0) => \plusOp_carry__2_n_7\,
      S(3) => '0',
      S(2) => \plusOp_carry__2_i_1_n_0\,
      S(1) => \plusOp_carry__2_i_2_n_0\,
      S(0) => \plusOp_carry__2_i_3_n_0\
    );
\plusOp_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(15),
      O => \plusOp_carry__2_i_1_n_0\
    );
\plusOp_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(14),
      O => \plusOp_carry__2_i_2_n_0\
    );
\plusOp_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(13),
      O => \plusOp_carry__2_i_3_n_0\
    );
plusOp_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(4),
      O => plusOp_carry_i_1_n_0
    );
plusOp_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(3),
      O => plusOp_carry_i_2_n_0
    );
plusOp_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(2),
      O => plusOp_carry_i_3_n_0
    );
plusOp_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^axi_rdata_reg[15]\(1),
      O => plusOp_carry_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Proyecto_TADSE_Circuito_para_pruebas_0_0_DFP is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    pulso_inicio : out STD_LOGIC;
    \EP_reg[1]_0\ : out STD_LOGIC;
    \slv_reg0_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg1_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \EP_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    en_contador_tiempo : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Proyecto_TADSE_Circuito_para_pruebas_0_0_DFP : entity is "DFP";
end Proyecto_TADSE_Circuito_para_pruebas_0_0_DFP;

architecture STRUCTURE of Proyecto_TADSE_Circuito_para_pruebas_0_0_DFP is
  signal EF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal EP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \EP[0]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \EP[0]_i_1__1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \EP[1]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \EP[31]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \EP[31]_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of en_contador_tiempo_reg_i_2 : label is "soft_lutpair9";
begin
\EP[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => EP(0),
      I1 => EP(1),
      I2 => \slv_reg0_reg[0]\(0),
      O => EF(0)
    );
\EP[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33A300A0"
    )
        port map (
      I0 => \slv_reg1_reg[0]\(0),
      I1 => \EP_reg[0]_0\(0),
      I2 => EP(1),
      I3 => EP(0),
      I4 => en_contador_tiempo,
      O => D(0)
    );
\EP[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => EP(1),
      I1 => EP(0),
      I2 => \slv_reg0_reg[0]\(0),
      O => EF(1)
    );
\EP[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => en_contador_tiempo,
      I1 => EP(1),
      I2 => EP(0),
      O => E(0)
    );
\EP[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => EP(0),
      I1 => EP(1),
      O => \EP_reg[1]_0\
    );
\EP_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => EF(0),
      Q => EP(0)
    );
\EP_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => EF(1),
      Q => EP(1)
    );
en_contador_tiempo_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EP(1),
      I1 => EP(0),
      O => pulso_inicio
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Proyecto_TADSE_Circuito_para_pruebas_0_0_DFP_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \EP_reg[1]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    desbordamiento_signal0 : out STD_LOGIC;
    q_dff4 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \EP_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \EP_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_circuito_test : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Proyecto_TADSE_Circuito_para_pruebas_0_0_DFP_0 : entity is "DFP";
end Proyecto_TADSE_Circuito_para_pruebas_0_0_DFP_0;

architecture STRUCTURE of Proyecto_TADSE_Circuito_para_pruebas_0_0_DFP_0 is
  signal EF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal EP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \EP[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \EP[0]_i_1__2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \EP[15]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \EP[15]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \EP[1]_i_1__1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of desbordamiento_signal_reg_i_1 : label is "soft_lutpair12";
begin
\EP[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B000"
    )
        port map (
      I0 => EP(0),
      I1 => EP(1),
      I2 => q_dff4,
      I3 => Q(0),
      I4 => \EP_reg[0]_0\(0),
      O => D(0)
    );
\EP[0]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"13"
    )
        port map (
      I0 => EP(0),
      I1 => Q(0),
      I2 => EP(1),
      O => EF(0)
    );
\EP[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => Q(0),
      I1 => q_dff4,
      I2 => EP(1),
      I3 => EP(0),
      O => E(0)
    );
\EP[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => Q(0),
      I1 => q_dff4,
      I2 => EP(1),
      I3 => EP(0),
      O => \EP_reg[1]_0\
    );
\EP[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => EP(1),
      I1 => Q(0),
      I2 => EP(0),
      O => EF(1)
    );
\EP_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_circuito_test,
      CE => '1',
      CLR => \EP_reg[1]_1\(0),
      D => EF(0),
      Q => EP(0)
    );
\EP_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_circuito_test,
      CE => '1',
      CLR => \EP_reg[1]_1\(0),
      D => EF(1),
      Q => EP(1)
    );
desbordamiento_signal_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => \EP_reg[1]_1\(0),
      I1 => EP(1),
      I2 => EP(0),
      O => desbordamiento_signal0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincroniza_RST is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_circuito_test : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincroniza_RST : entity is "Sincroniza_RST";
end Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincroniza_RST;

architecture STRUCTURE of Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincroniza_RST is
  signal p_0_in : STD_LOGIC_VECTOR ( 1 to 1 );
begin
\EP_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk_circuito_test,
      CE => '1',
      D => '0',
      PRE => AS(0),
      Q => p_0_in(1)
    );
\EP_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk_circuito_test,
      CE => '1',
      D => p_0_in(1),
      PRE => AS(0),
      Q => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincroniza_RST_1 is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_generador_dato : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincroniza_RST_1 : entity is "Sincroniza_RST";
end Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincroniza_RST_1;

architecture STRUCTURE of Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincroniza_RST_1 is
  signal p_0_in : STD_LOGIC_VECTOR ( 1 to 1 );
begin
\EP_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk_generador_dato,
      CE => '1',
      D => '0',
      PRE => AS(0),
      Q => p_0_in(1)
    );
\EP_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk_generador_dato,
      CE => '1',
      D => p_0_in(1),
      PRE => AS(0),
      Q => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincroniza_RST_2 is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincroniza_RST_2 : entity is "Sincroniza_RST";
end Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincroniza_RST_2;

architecture STRUCTURE of Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincroniza_RST_2 is
  signal p_0_in : STD_LOGIC_VECTOR ( 1 to 1 );
begin
\EP_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => '0',
      PRE => AS(0),
      Q => p_0_in(1)
    );
\EP_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(1),
      PRE => AS(0),
      Q => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincronizador is
  port (
    interrupcion : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg0_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    desbordamiento_signal : in STD_LOGIC;
    clk_circuito_test : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincronizador : entity is "Sincronizador";
end Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincronizador;

architecture STRUCTURE of Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincronizador is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \Temp_reg_n_0_[0]\ : STD_LOGIC;
begin
  Q(0) <= \^q\(0);
\Temp_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_circuito_test,
      CE => '1',
      CLR => AR(0),
      D => D(0),
      Q => \Temp_reg_n_0_[0]\
    );
\Temp_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_circuito_test,
      CE => '1',
      CLR => AR(0),
      D => \Temp_reg_n_0_[0]\,
      Q => \^q\(0)
    );
interrupcion_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg[1]\(0),
      I2 => desbordamiento_signal,
      O => interrupcion
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_test is
  port (
    q_dff4 : out STD_LOGIC;
    \axi_rdata_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rco_contador_eventos : out STD_LOGIC;
    clk_circuito_test : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    dato : in STD_LOGIC;
    \Temp_reg[1]\ : in STD_LOGIC;
    \Temp_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_test : entity is "Circuito_test";
end Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_test;

architecture STRUCTURE of Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_test is
  signal n_0_0 : STD_LOGIC;
  signal q_dff1 : STD_LOGIC;
  signal q_dff2 : STD_LOGIC;
  signal q_dff3 : STD_LOGIC;
  signal \^q_dff4\ : STD_LOGIC;
  signal q_dff4_i_1_n_0 : STD_LOGIC;
begin
  q_dff4 <= \^q_dff4\;
Contador_de_eventos: entity work.Proyecto_TADSE_Circuito_para_pruebas_0_0_Contador_NBits
     port map (
      D(0) => D(0),
      E(0) => E(0),
      Q(0) => Q(0),
      \Temp_reg[1]\ => \Temp_reg[1]\,
      \Temp_reg[1]_0\(0) => \Temp_reg[1]_0\(0),
      \axi_rdata_reg[15]\(15 downto 0) => \axi_rdata_reg[15]\(15 downto 0),
      clk_circuito_test => clk_circuito_test,
      q_dff4 => \^q_dff4\,
      rco_contador_eventos => rco_contador_eventos
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_circuito_test,
      O => n_0_0
    );
q_dff1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_circuito_test,
      CE => '1',
      CLR => Q(0),
      D => dato,
      Q => q_dff1
    );
q_dff2_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_circuito_test,
      CE => '1',
      CLR => Q(0),
      D => q_dff1,
      Q => q_dff2
    );
q_dff3_reg: unisim.vcomponents.FDCE
     port map (
      C => n_0_0,
      CE => '1',
      CLR => Q(0),
      D => q_dff1,
      Q => q_dff3
    );
q_dff4_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q_dff2,
      I1 => q_dff3,
      O => q_dff4_i_1_n_0
    );
q_dff4_reg: unisim.vcomponents.FDCE
     port map (
      C => n_0_0,
      CE => '1',
      CLR => Q(0),
      D => q_dff4_i_1_n_0,
      Q => \^q_dff4\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_para_pruebas is
  port (
    desbordamiento_signal : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \conteo[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \EP_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    interrupcion : out STD_LOGIC;
    clk_circuito_test : in STD_LOGIC;
    clk_generador_dato : in STD_LOGIC;
    \slv_reg1_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \slv_reg0_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_para_pruebas : entity is "Circuito_para_pruebas";
end Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_para_pruebas;

architecture STRUCTURE of Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_para_pruebas is
  signal Detector_frente_positivo_circuito_test_n_0 : STD_LOGIC;
  signal Detector_frente_positivo_circuito_test_n_1 : STD_LOGIC;
  signal Detector_frente_positivo_circuito_test_n_2 : STD_LOGIC;
  signal Detector_frente_positivo_n_0 : STD_LOGIC;
  signal Detector_frente_positivo_n_1 : STD_LOGIC;
  signal Detector_frente_positivo_n_3 : STD_LOGIC;
  signal \^ep_reg[0]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^conteo[31]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dato : STD_LOGIC;
  signal dato_asincronico_i_1_n_0 : STD_LOGIC;
  signal \^desbordamiento_signal\ : STD_LOGIC;
  signal desbordamiento_signal0 : STD_LOGIC;
  signal en_contador_tiempo : STD_LOGIC;
  signal en_contador_tiempo0 : STD_LOGIC;
  signal pulso_inicio : STD_LOGIC;
  signal q_dff4 : STD_LOGIC;
  signal rco_contador_eventos : STD_LOGIC;
  signal reset_sinc_bus : STD_LOGIC;
  signal reset_sinc_circuito_test : STD_LOGIC;
  signal reset_sinc_generador_dato : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of desbordamiento_signal_reg : label is "LDP";
  attribute XILINX_LEGACY_PRIM of en_contador_tiempo_reg : label is "LDP";
begin
  \EP_reg[0]\(0) <= \^ep_reg[0]\(0);
  Q(15 downto 0) <= \^q\(15 downto 0);
  \conteo[31]\(31 downto 0) <= \^conteo[31]\(31 downto 0);
  desbordamiento_signal <= \^desbordamiento_signal\;
Circuito_test_metaestabilidad: entity work.Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_test
     port map (
      D(0) => Detector_frente_positivo_circuito_test_n_0,
      E(0) => Detector_frente_positivo_circuito_test_n_2,
      Q(0) => reset_sinc_circuito_test,
      \Temp_reg[1]\ => Detector_frente_positivo_circuito_test_n_1,
      \Temp_reg[1]_0\(0) => \^ep_reg[0]\(0),
      \axi_rdata_reg[15]\(15 downto 0) => \^q\(15 downto 0),
      clk_circuito_test => clk_circuito_test,
      dato => dato,
      q_dff4 => q_dff4,
      rco_contador_eventos => rco_contador_eventos
    );
Contador_tiempo: entity work.Proyecto_TADSE_Circuito_para_pruebas_0_0_Contador_32bits
     port map (
      D(0) => Detector_frente_positivo_n_0,
      E(0) => Detector_frente_positivo_n_1,
      \EP_reg[0]_0\ => Detector_frente_positivo_n_3,
      \EP_reg[1]_0\(0) => reset_sinc_bus,
      Q(31 downto 0) => \^conteo[31]\(31 downto 0),
      en_contador_tiempo => en_contador_tiempo,
      en_contador_tiempo0 => en_contador_tiempo0,
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg1_reg[31]\(30 downto 0) => \slv_reg1_reg[31]\(31 downto 1)
    );
Detector_frente_positivo: entity work.Proyecto_TADSE_Circuito_para_pruebas_0_0_DFP
     port map (
      D(0) => Detector_frente_positivo_n_0,
      E(0) => Detector_frente_positivo_n_1,
      \EP_reg[0]_0\(0) => \^conteo[31]\(0),
      \EP_reg[1]_0\ => Detector_frente_positivo_n_3,
      Q(0) => reset_sinc_bus,
      en_contador_tiempo => en_contador_tiempo,
      pulso_inicio => pulso_inicio,
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg0_reg[0]\(0) => \slv_reg0_reg[1]\(0),
      \slv_reg1_reg[0]\(0) => \slv_reg1_reg[31]\(0)
    );
Detector_frente_positivo_circuito_test: entity work.Proyecto_TADSE_Circuito_para_pruebas_0_0_DFP_0
     port map (
      D(0) => Detector_frente_positivo_circuito_test_n_0,
      E(0) => Detector_frente_positivo_circuito_test_n_2,
      \EP_reg[0]_0\(0) => \^q\(0),
      \EP_reg[1]_0\ => Detector_frente_positivo_circuito_test_n_1,
      \EP_reg[1]_1\(0) => reset_sinc_circuito_test,
      Q(0) => \^ep_reg[0]\(0),
      clk_circuito_test => clk_circuito_test,
      desbordamiento_signal0 => desbordamiento_signal0,
      q_dff4 => q_dff4
    );
Sincronizador_reset_circuito_test: entity work.Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincroniza_RST
     port map (
      AS(0) => AS(0),
      Q(0) => reset_sinc_circuito_test,
      clk_circuito_test => clk_circuito_test
    );
Sincronizador_reset_generador_dato: entity work.Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincroniza_RST_1
     port map (
      AS(0) => AS(0),
      Q(0) => reset_sinc_generador_dato,
      clk_generador_dato => clk_generador_dato
    );
Sincronizador_reset_reloj_bus: entity work.Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincroniza_RST_2
     port map (
      AS(0) => AS(0),
      Q(0) => reset_sinc_bus,
      s00_axi_aclk => s00_axi_aclk
    );
Sincronizador_senial_en_contador_tiempo: entity work.Proyecto_TADSE_Circuito_para_pruebas_0_0_Sincronizador
     port map (
      AR(0) => reset_sinc_circuito_test,
      D(0) => en_contador_tiempo,
      Q(0) => \^ep_reg[0]\(0),
      clk_circuito_test => clk_circuito_test,
      desbordamiento_signal => \^desbordamiento_signal\,
      interrupcion => interrupcion,
      \slv_reg0_reg[1]\(0) => \slv_reg0_reg[1]\(1)
    );
dato_asincronico_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dato,
      O => dato_asincronico_i_1_n_0
    );
dato_asincronico_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_generador_dato,
      CE => '1',
      CLR => reset_sinc_generador_dato,
      D => dato_asincronico_i_1_n_0,
      Q => dato
    );
desbordamiento_signal_reg: unisim.vcomponents.LDPE
    generic map(
      INIT => '1'
    )
        port map (
      D => '0',
      G => desbordamiento_signal0,
      GE => '1',
      PRE => rco_contador_eventos,
      Q => \^desbordamiento_signal\
    );
en_contador_tiempo_reg: unisim.vcomponents.LDPE
    generic map(
      INIT => '0'
    )
        port map (
      D => '0',
      G => en_contador_tiempo0,
      GE => '1',
      PRE => pulso_inicio,
      Q => en_contador_tiempo
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_para_pruebas_v1_0 is
  port (
    s00_axi_wready : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    interrupcion : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    clk_circuito_test : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_generador_dato : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_para_pruebas_v1_0 : entity is "Circuito_para_pruebas_v1_0";
end Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_para_pruebas_v1_0;

architecture STRUCTURE of Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_para_pruebas_v1_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal desbordamiento_signal : STD_LOGIC;
  signal estado_signal : STD_LOGIC;
  signal eventos_metaestables_signal : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal habilitar_interrupcion_signal : STD_LOGIC;
  signal inicio_signal : STD_LOGIC;
  signal \^interrupcion\ : STD_LOGIC;
  signal reset : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
  interrupcion <= \^interrupcion\;
Circuito_para_pruebas_v1_0_S00_AXI_inst: entity work.Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_para_pruebas_v1_0_S00_AXI
     port map (
      AS(0) => reset,
      \EP_reg[15]\(15 downto 0) => eventos_metaestables_signal(15 downto 0),
      Q(31 downto 0) => \^q\(31 downto 0),
      \Temp_reg[1]\(0) => estado_signal,
      \axi_rdata_reg[1]_0\(1) => habilitar_interrupcion_signal,
      \axi_rdata_reg[1]_0\(0) => inicio_signal,
      \axi_rdata_reg[31]_0\(31 downto 0) => slv_reg1(31 downto 0),
      desbordamiento_signal => desbordamiento_signal,
      interrupcion => \^interrupcion\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
Logica_usuario: entity work.Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_para_pruebas
     port map (
      AS(0) => reset,
      \EP_reg[0]\(0) => estado_signal,
      Q(15 downto 0) => eventos_metaestables_signal(15 downto 0),
      clk_circuito_test => clk_circuito_test,
      clk_generador_dato => clk_generador_dato,
      \conteo[31]\(31 downto 0) => \^q\(31 downto 0),
      desbordamiento_signal => desbordamiento_signal,
      interrupcion => \^interrupcion\,
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg0_reg[1]\(1) => habilitar_interrupcion_signal,
      \slv_reg0_reg[1]\(0) => inicio_signal,
      \slv_reg1_reg[31]\(31 downto 0) => slv_reg1(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Proyecto_TADSE_Circuito_para_pruebas_0_0 is
  port (
    clk_generador_dato : in STD_LOGIC;
    clk_circuito_test : in STD_LOGIC;
    interrupcion : out STD_LOGIC;
    conteo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Proyecto_TADSE_Circuito_para_pruebas_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Proyecto_TADSE_Circuito_para_pruebas_0_0 : entity is "Proyecto_TADSE_Circuito_para_pruebas_0_0,Circuito_para_pruebas_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Proyecto_TADSE_Circuito_para_pruebas_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Proyecto_TADSE_Circuito_para_pruebas_0_0 : entity is "Circuito_para_pruebas_v1_0,Vivado 2016.4";
end Proyecto_TADSE_Circuito_para_pruebas_0_0;

architecture STRUCTURE of Proyecto_TADSE_Circuito_para_pruebas_0_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.Proyecto_TADSE_Circuito_para_pruebas_0_0_Circuito_para_pruebas_v1_0
     port map (
      Q(31 downto 0) => conteo(31 downto 0),
      clk_circuito_test => clk_circuito_test,
      clk_generador_dato => clk_generador_dato,
      interrupcion => interrupcion,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
