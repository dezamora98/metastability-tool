-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Tue Feb 27 22:07:29 2024
-- Host        : 0K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/mt_hard/mt_hard.srcs/sources_1/bd/mt_hard_bd/ip/mt_hard_bd_xlconcat_0_0/mt_hard_bd_xlconcat_0_0_sim_netlist.vhdl
-- Design      : mt_hard_bd_xlconcat_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mt_hard_bd_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mt_hard_bd_xlconcat_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mt_hard_bd_xlconcat_0_0 : entity is "mt_hard_bd_xlconcat_0_0,xlconcat,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mt_hard_bd_xlconcat_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mt_hard_bd_xlconcat_0_0 : entity is "xlconcat,Vivado 2016.4";
end mt_hard_bd_xlconcat_0_0;

architecture STRUCTURE of mt_hard_bd_xlconcat_0_0 is
  signal \^in0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in1\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^in0\(0) <= In0(0);
  \^in1\(0) <= In1(0);
  dout(1) <= \^in1\(0);
  dout(0) <= \^in0\(0);
end STRUCTURE;
