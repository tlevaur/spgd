-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Jul 14 14:21:15 2022
-- Host        : turing running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top system_util_ds_buf_0_0 -prefix
--               system_util_ds_buf_0_0_ system_util_ds_buf_1_0_stub.vhdl
-- Design      : system_util_ds_buf_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_util_ds_buf_0_0 is
  Port ( 
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 5 downto 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 5 downto 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );

end system_util_ds_buf_0_0;

architecture stub of system_util_ds_buf_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "IBUF_DS_P[5:0],IBUF_DS_N[5:0],IBUF_OUT[5:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "util_ds_buf,Vivado 2020.1";
begin
end;
