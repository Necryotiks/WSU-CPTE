//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sat Oct 27 12:51:46 2018
//Host        : DESKTOP-3VDLSPS running 64-bit major release  (build 9200)
//Command     : generate_target CMP.bd
//Design      : CMP
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "CMP,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=CMP,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=12,numReposBlks=12,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=8,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=4,synth_mode=Global}" *) (* HW_HANDOFF = "CMP.hwdef" *) 
module CMP
   (i_CLK,
    i_LDRG,
    i_LD_0,
    i_LD_1,
    i_SW,
    i_SWP,
    o_Anodes,
    o_Cathodes,
    o_EQ,
    o_GT,
    o_LT);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, CLK_DOMAIN MUL_i_CLK, FREQ_HZ 100000000, PHASE 0.000" *) input i_CLK;
  input i_LDRG;
  input i_LD_0;
  input i_LD_1;
  input [7:0]i_SW;
  input i_SWP;
  output [3:0]o_Anodes;
  output [6:0]o_Cathodes;
  output o_EQ;
  output o_GT;
  output o_LT;

  wire Comparator_0_o_EQ;
  wire Comparator_0_o_GT;
  wire Comparator_0_o_LT;
  wire [3:0]Digit_1_Dout;
  wire [3:0]Digit_2_Dout;
  wire [3:0]Digit_3_Dout;
  wire [3:0]Digit_4_Dout;
  wire [15:0]Multiplier_0_o_Result;
  wire [7:0]PIPO_0_o_Out;
  wire [7:0]PIPO_1_o_Out;
  wire [15:0]PIPO_2_o_Out;
  wire clk_100MHz_1;
  wire [7:0]i_A_0_1;
  wire i_BTN_0_1;
  wire i_BTN_1_1;
  wire i_LDRG_1;
  wire i_SWP_0_1;
  wire [6:0]ssd_dec_0_cathode;
  wire [3:0]ssd_mux_0_an;
  wire [3:0]ssd_mux_0_o_Out;
  wire [15:0]temp_reg_mux_0_o_OUT;

  assign clk_100MHz_1 = i_CLK;
  assign i_A_0_1 = i_SW[7:0];
  assign i_BTN_0_1 = i_LD_1;
  assign i_BTN_1_1 = i_LD_0;
  assign i_LDRG_1 = i_LDRG;
  assign i_SWP_0_1 = i_SWP;
  assign o_Anodes[3:0] = ssd_mux_0_an;
  assign o_Cathodes[6:0] = ssd_dec_0_cathode;
  assign o_EQ = Comparator_0_o_EQ;
  assign o_GT = Comparator_0_o_GT;
  assign o_LT = Comparator_0_o_LT;
  CMP_Comparator_0_0 Comparator_0
       (.i_A(PIPO_2_o_Out),
        .i_B(Multiplier_0_o_Result),
        .o_EQ(Comparator_0_o_EQ),
        .o_GT(Comparator_0_o_GT),
        .o_LT(Comparator_0_o_LT));
  CMP_Digit_1_0 Digit_1
       (.Din(temp_reg_mux_0_o_OUT),
        .Dout(Digit_1_Dout));
  CMP_Digit_2_0 Digit_2
       (.Din(temp_reg_mux_0_o_OUT),
        .Dout(Digit_2_Dout));
  CMP_Digit_3_0 Digit_3
       (.Din(temp_reg_mux_0_o_OUT),
        .Dout(Digit_3_Dout));
  CMP_Digit_4_0 Digit_4
       (.Din(temp_reg_mux_0_o_OUT),
        .Dout(Digit_4_Dout));
  CMP_Multiplier_0_1 Multiplier_0
       (.i_A(PIPO_1_o_Out),
        .i_B(PIPO_0_o_Out),
        .o_Result(Multiplier_0_o_Result));
  CMP_PIPO_0_1 PIPO_0
       (.i_BTN(i_BTN_1_1),
        .i_CLK(clk_100MHz_1),
        .i_SW(i_A_0_1),
        .o_Out(PIPO_0_o_Out));
  CMP_PIPO_1_0 PIPO_1
       (.i_BTN(i_BTN_0_1),
        .i_CLK(clk_100MHz_1),
        .i_SW(i_A_0_1),
        .o_Out(PIPO_1_o_Out));
  CMP_PIPO_1_1 PIPO_2
       (.i_BTN(i_LDRG_1),
        .i_CLK(clk_100MHz_1),
        .i_SW(Multiplier_0_o_Result),
        .o_Out(PIPO_2_o_Out));
  CMP_ssd_dec_0_0 ssd_dec_0
       (.cathode(ssd_dec_0_cathode),
        .i_CLK(clk_100MHz_1),
        .i_Num(ssd_mux_0_o_Out));
  CMP_ssd_mux_0_0 ssd_mux_0
       (.an(ssd_mux_0_an),
        .i_CLK(clk_100MHz_1),
        .i_Digit_1(Digit_1_Dout),
        .i_Digit_2(Digit_2_Dout),
        .i_Digit_3(Digit_3_Dout),
        .i_Digit_4(Digit_4_Dout),
        .o_Out(ssd_mux_0_o_Out));
  CMP_temp_reg_mux_0_0 temp_reg_mux_0
       (.i_MUL(Multiplier_0_o_Result),
        .i_REG(PIPO_2_o_Out),
        .i_SWP(i_SWP_0_1),
        .o_OUT(temp_reg_mux_0_o_OUT));
endmodule
