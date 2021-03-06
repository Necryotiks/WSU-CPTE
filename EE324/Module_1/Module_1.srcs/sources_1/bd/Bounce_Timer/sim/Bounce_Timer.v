//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Thu Aug 29 15:05:49 2019
//Host        : Necryotiks running 64-bit unknown
//Command     : generate_target Bounce_Timer.bd
//Design      : Bounce_Timer
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

/* This needs to be piped to a BUFGCE
 */
(* CORE_GENERATION_INFO = "Bounce_Timer,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Bounce_Timer,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,\"\"da_board_cnt\"\"=1,\"\"da_clkrst_cnt\"\"=1,da_board_cnt=3,da_clkrst_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "Bounce_Timer.hwdef" *) 
module Bounce_Timer
   (i_CLK,
    i_RST,
    i_Signal,
    o_Anodes_0,
    o_Cathodes_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, CLK_DOMAIN Bounce_Timer_i_CLK, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input i_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.I_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.I_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input i_RST;
  input i_Signal;
  output [3:0]o_Anodes_0;
  output [6:0]o_Cathodes_0;

  wire [15:0]BINARY_TO_BCD_0_o_BCD;
  wire Bounce_Counter_FSM_0_o_CEN;
  wire [13:0]Bounce_Counter_FSM_0_o_DATA;
  wire HZ_Counter_0_o_Out;
  wire clk_wiz_0_clk_out1;
  wire i_RST_1;
  wire i_Signal_0_1;
  wire [0:0]rst_i_CLK_100M_peripheral_reset;
  wire [6:0]ssd_dec_0_o_Cathodes;
  wire [3:0]ssd_mux_0_o_Anodes;
  wire [3:0]ssd_mux_0_o_Out;
  wire [3:0]xlslice_0_Dout;
  wire [3:0]xlslice_1_Dout;
  wire [3:0]xlslice_2_Dout;
  wire [3:0]xlslice_3_Dout;

  assign clk_wiz_0_clk_out1 = i_CLK;
  assign i_RST_1 = i_RST;
  assign i_Signal_0_1 = i_Signal;
  assign o_Anodes_0[3:0] = ssd_mux_0_o_Anodes;
  assign o_Cathodes_0[6:0] = ssd_dec_0_o_Cathodes;
  Bounce_Timer_BINARY_TO_BCD_0_0 BINARY_TO_BCD_0
       (.i_Binary(Bounce_Counter_FSM_0_o_DATA),
        .i_Clock(HZ_Counter_0_o_Out),
        .i_Start(Bounce_Counter_FSM_0_o_CEN),
        .o_BCD(BINARY_TO_BCD_0_o_BCD));
  Bounce_Timer_Bounce_Counter_FSM_0_0 Bounce_Counter_FSM_0
       (.i_100MHZCLK(clk_wiz_0_clk_out1),
        .i_RST(rst_i_CLK_100M_peripheral_reset),
        .i_Signal(i_Signal_0_1),
        .o_CEN(Bounce_Counter_FSM_0_o_CEN),
        .o_DATA(Bounce_Counter_FSM_0_o_DATA));
  Bounce_Timer_HZ_Counter_0_0 HZ_Counter_0
       (.i_CLK(clk_wiz_0_clk_out1),
        .i_RST(rst_i_CLK_100M_peripheral_reset),
        .o_CLK(HZ_Counter_0_o_Out));
  Bounce_Timer_rst_i_CLK_100M_0 rst_i_CLK_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(i_RST_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(rst_i_CLK_100M_peripheral_reset),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
  Bounce_Timer_ssd_dec_0_0 ssd_dec_0
       (.i_CLK(HZ_Counter_0_o_Out),
        .i_Num(ssd_mux_0_o_Out),
        .o_Cathodes(ssd_dec_0_o_Cathodes));
  Bounce_Timer_ssd_mux_0_0 ssd_mux_0
       (.i_CLK(HZ_Counter_0_o_Out),
        .i_Digit_1(xlslice_0_Dout),
        .i_Digit_2(xlslice_1_Dout),
        .i_Digit_3(xlslice_2_Dout),
        .i_Digit_4(xlslice_3_Dout),
        .o_Anodes(ssd_mux_0_o_Anodes),
        .o_Out(ssd_mux_0_o_Out));
  Bounce_Timer_xlslice_0_0 xlslice_0
       (.Din(BINARY_TO_BCD_0_o_BCD),
        .Dout(xlslice_0_Dout));
  Bounce_Timer_xlslice_1_0 xlslice_1
       (.Din(BINARY_TO_BCD_0_o_BCD),
        .Dout(xlslice_1_Dout));
  Bounce_Timer_xlslice_2_0 xlslice_2
       (.Din(BINARY_TO_BCD_0_o_BCD),
        .Dout(xlslice_2_Dout));
  Bounce_Timer_xlslice_3_0 xlslice_3
       (.Din(BINARY_TO_BCD_0_o_BCD),
        .Dout(xlslice_3_Dout));
endmodule
