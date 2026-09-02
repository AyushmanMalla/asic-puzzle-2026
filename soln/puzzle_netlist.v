module puzzle (I, O, clk, enable, rst_n, success);

  input I;
  output [7:0] O;
  input clk;
  input enable;
  input rst_n;
  output success;

  // Power pins (tied to 1/0 implicitly or explicitly)
  wire VPWR = 1'b1;
  wire VGND = 1'b0;

  wire sky130_fd_sc_hd__a211o_2_0_X;
  wire sky130_fd_sc_hd__a211o_2_1_X;
  wire sky130_fd_sc_hd__a211o_2_2_X;
  wire sky130_fd_sc_hd__a211o_2_3_X;
  wire sky130_fd_sc_hd__a21o_2_0_X;
  wire sky130_fd_sc_hd__a21o_2_10_X;
  wire sky130_fd_sc_hd__a21o_2_13_X;
  wire sky130_fd_sc_hd__a21o_2_14_X;
  wire sky130_fd_sc_hd__a21o_2_15_X;
  wire sky130_fd_sc_hd__a21o_2_16_X;
  wire sky130_fd_sc_hd__a21o_2_17_X;
  wire sky130_fd_sc_hd__a21o_2_18_X;
  wire sky130_fd_sc_hd__a21o_2_1_X;
  wire sky130_fd_sc_hd__a21o_2_2_X;
  wire sky130_fd_sc_hd__a21o_2_3_A2;
  wire sky130_fd_sc_hd__a21o_2_3_X;
  wire sky130_fd_sc_hd__a21o_2_6_A2;
  wire sky130_fd_sc_hd__a21o_2_6_X;
  wire sky130_fd_sc_hd__a21o_2_7_VPB;
  wire sky130_fd_sc_hd__a21o_2_8_A2;
  wire sky130_fd_sc_hd__a21o_2_9_X;
  wire sky130_fd_sc_hd__a21oi_2_13_Y;
  wire sky130_fd_sc_hd__a21oi_2_2_Y;
  wire sky130_fd_sc_hd__a21oi_2_5_Y;
  wire sky130_fd_sc_hd__a21oi_2_6_Y;
  wire sky130_fd_sc_hd__a221o_2_0_X;
  wire sky130_fd_sc_hd__a221o_2_1_X;
  wire sky130_fd_sc_hd__a221o_2_2_X;
  wire sky130_fd_sc_hd__a221o_2_4_X;
  wire sky130_fd_sc_hd__a22o_2_0_X;
  wire sky130_fd_sc_hd__a22o_2_13_A1;
  wire sky130_fd_sc_hd__a22o_2_13_X;
  wire sky130_fd_sc_hd__a22o_2_17_X;
  wire sky130_fd_sc_hd__a22o_2_1_X;
  wire sky130_fd_sc_hd__a22o_2_21_B2;
  wire sky130_fd_sc_hd__a22o_2_22_X;
  wire sky130_fd_sc_hd__a22o_2_2_A2;
  wire sky130_fd_sc_hd__a22o_2_2_B2;
  wire sky130_fd_sc_hd__a22o_2_2_X;
  wire sky130_fd_sc_hd__a22o_2_3_X;
  wire sky130_fd_sc_hd__a22o_2_4_B2;
  wire sky130_fd_sc_hd__a22o_2_4_X;
  wire sky130_fd_sc_hd__a22o_2_5_X;
  wire sky130_fd_sc_hd__a22o_2_6_X;
  wire sky130_fd_sc_hd__a22o_2_7_A1;
  wire sky130_fd_sc_hd__a22o_2_7_X;
  wire sky130_fd_sc_hd__a22o_2_8_X;
  wire sky130_fd_sc_hd__a22o_2_9_A1;
  wire sky130_fd_sc_hd__a22o_2_9_X;
  wire sky130_fd_sc_hd__a22oi_2_0_Y;
  wire sky130_fd_sc_hd__a31o_2_0_X;
  wire sky130_fd_sc_hd__a31o_2_11_X;
  wire sky130_fd_sc_hd__a31o_2_12_X;
  wire sky130_fd_sc_hd__a31o_2_13_X;
  wire sky130_fd_sc_hd__a31o_2_14_X;
  wire sky130_fd_sc_hd__a31o_2_15_X;
  wire sky130_fd_sc_hd__a31o_2_16_X;
  wire sky130_fd_sc_hd__a31o_2_17_X;
  wire sky130_fd_sc_hd__a31o_2_18_X;
  wire sky130_fd_sc_hd__a31o_2_19_X;
  wire sky130_fd_sc_hd__a31o_2_1_X;
  wire sky130_fd_sc_hd__a31o_2_20_VPB;
  wire sky130_fd_sc_hd__a31o_2_20_X;
  wire sky130_fd_sc_hd__a31o_2_21_X;
  wire sky130_fd_sc_hd__a31o_2_22_X;
  wire sky130_fd_sc_hd__a31o_2_23_X;
  wire sky130_fd_sc_hd__a31o_2_24_X;
  wire sky130_fd_sc_hd__a31o_2_25_X;
  wire sky130_fd_sc_hd__a31o_2_2_X;
  wire sky130_fd_sc_hd__a31o_2_3_X;
  wire sky130_fd_sc_hd__a31o_2_4_X;
  wire sky130_fd_sc_hd__a31o_2_5_A2;
  wire sky130_fd_sc_hd__a31o_2_5_A3;
  wire sky130_fd_sc_hd__a31o_2_5_X;
  wire sky130_fd_sc_hd__a31o_2_7_X;
  wire sky130_fd_sc_hd__a31o_2_8_X;
  wire sky130_fd_sc_hd__a31o_2_9_X;
  wire sky130_fd_sc_hd__a32o_2_1_B2;
  wire sky130_fd_sc_hd__a32o_2_1_X;
  wire sky130_fd_sc_hd__a32o_2_2_X;
  wire sky130_fd_sc_hd__a32o_2_3_B1;
  wire sky130_fd_sc_hd__a32o_2_3_X;
  wire sky130_fd_sc_hd__a32o_2_4_B2;
  wire sky130_fd_sc_hd__a32o_2_4_X;
  wire sky130_fd_sc_hd__a41oi_2_0_Y;
  wire sky130_fd_sc_hd__and2_2_15_X;
  wire sky130_fd_sc_hd__and2_2_16_VPB;
  wire sky130_fd_sc_hd__and2_2_2_A;
  wire sky130_fd_sc_hd__and2_2_2_X;
  wire sky130_fd_sc_hd__and2_2_7_B;
  wire sky130_fd_sc_hd__and2_2_7_X;
  wire sky130_fd_sc_hd__and2_2_8_A;
  wire sky130_fd_sc_hd__and2_2_8_B;
  wire sky130_fd_sc_hd__and2_2_8_X;
  wire sky130_fd_sc_hd__and2b_2_16_X;
  wire sky130_fd_sc_hd__and2b_2_19_X;
  wire sky130_fd_sc_hd__and2b_2_3_B;
  wire sky130_fd_sc_hd__and2b_2_6_X;
  wire sky130_fd_sc_hd__and2b_2_9_B;
  wire sky130_fd_sc_hd__and2b_2_9_X;
  wire sky130_fd_sc_hd__and3_2_0_C;
  wire sky130_fd_sc_hd__and3_2_0_X;
  wire sky130_fd_sc_hd__and3_2_10_A;
  wire sky130_fd_sc_hd__and3_2_10_B;
  wire sky130_fd_sc_hd__and3_2_11_X;
  wire sky130_fd_sc_hd__and3_2_12_A;
  wire sky130_fd_sc_hd__and3_2_12_B;
  wire sky130_fd_sc_hd__and3_2_12_C;
  wire sky130_fd_sc_hd__and3_2_13_C;
  wire sky130_fd_sc_hd__and3_2_16_X;
  wire sky130_fd_sc_hd__and3_2_17_C;
  wire sky130_fd_sc_hd__and3_2_17_X;
  wire sky130_fd_sc_hd__and3_2_1_C;
  wire sky130_fd_sc_hd__and3_2_1_X;
  wire sky130_fd_sc_hd__and3_2_22_VPB;
  wire sky130_fd_sc_hd__and3_2_25_C;
  wire sky130_fd_sc_hd__and3_2_2_A;
  wire sky130_fd_sc_hd__and3_2_2_B;
  wire sky130_fd_sc_hd__and3_2_2_C;
  wire sky130_fd_sc_hd__and3_2_3_B;
  wire sky130_fd_sc_hd__and3_2_3_C;
  wire sky130_fd_sc_hd__and3_2_3_VPB;
  wire sky130_fd_sc_hd__and3_2_3_X;
  wire sky130_fd_sc_hd__and3_2_4_A;
  wire sky130_fd_sc_hd__and3_2_4_B;
  wire sky130_fd_sc_hd__and3_2_4_X;
  wire sky130_fd_sc_hd__and3_2_5_A;
  wire sky130_fd_sc_hd__and3_2_5_B;
  wire sky130_fd_sc_hd__and3_2_5_C;
  wire sky130_fd_sc_hd__and3_2_6_C;
  wire sky130_fd_sc_hd__and3_2_6_X;
  wire sky130_fd_sc_hd__and3_2_7_C;
  wire sky130_fd_sc_hd__and3_2_7_X;
  wire sky130_fd_sc_hd__and3_2_9_VPB;
  wire sky130_fd_sc_hd__and3b_2_0_C;
  wire sky130_fd_sc_hd__and3b_2_1_X;
  wire sky130_fd_sc_hd__and3b_2_2_X;
  wire sky130_fd_sc_hd__and4_2_0_A;
  wire sky130_fd_sc_hd__and4_2_0_B;
  wire sky130_fd_sc_hd__and4_2_0_C;
  wire sky130_fd_sc_hd__and4_2_0_D;
  wire sky130_fd_sc_hd__and4_2_0_VPB;
  wire sky130_fd_sc_hd__and4_2_0_X;
  wire sky130_fd_sc_hd__and4_2_1_A;
  wire sky130_fd_sc_hd__and4_2_1_B;
  wire sky130_fd_sc_hd__and4_2_1_C;
  wire sky130_fd_sc_hd__and4_2_1_D;
  wire sky130_fd_sc_hd__and4_2_1_VPB;
  wire sky130_fd_sc_hd__and4_2_1_X;
  wire sky130_fd_sc_hd__and4_2_3_A;
  wire sky130_fd_sc_hd__and4_2_3_B;
  wire sky130_fd_sc_hd__and4_2_3_C;
  wire sky130_fd_sc_hd__and4_2_3_X;
  wire sky130_fd_sc_hd__and4_2_4_B;
  wire sky130_fd_sc_hd__and4_2_4_D;
  wire sky130_fd_sc_hd__and4_2_4_X;
  wire sky130_fd_sc_hd__and4_2_5_A;
  wire sky130_fd_sc_hd__and4_2_5_B;
  wire sky130_fd_sc_hd__and4_2_5_C;
  wire sky130_fd_sc_hd__and4_2_5_D;
  wire sky130_fd_sc_hd__and4_2_5_X;
  wire sky130_fd_sc_hd__and4_2_6_A;
  wire sky130_fd_sc_hd__and4_2_6_B;
  wire sky130_fd_sc_hd__and4_2_6_C;
  wire sky130_fd_sc_hd__and4_2_6_D;
  wire sky130_fd_sc_hd__and4_2_6_X;
  wire sky130_fd_sc_hd__and4_2_7_X;
  wire sky130_fd_sc_hd__and4b_2_2_X;
  wire sky130_fd_sc_hd__and4b_2_3_D;
  wire sky130_fd_sc_hd__and4b_2_3_X;
  wire sky130_fd_sc_hd__and4bb_2_0_X;
  wire sky130_fd_sc_hd__buf_2_0_X;
  wire sky130_fd_sc_hd__clkbuf_4_0_X;
  wire sky130_fd_sc_hd__clkbuf_4_10_X;
  wire sky130_fd_sc_hd__clkbuf_4_11_X;
  wire sky130_fd_sc_hd__clkbuf_4_12_X;
  wire sky130_fd_sc_hd__clkbuf_4_13_X;
  wire sky130_fd_sc_hd__clkbuf_4_14_X;
  wire sky130_fd_sc_hd__clkbuf_4_1_X;
  wire sky130_fd_sc_hd__clkbuf_4_2_X;
  wire sky130_fd_sc_hd__clkbuf_4_3_X;
  wire sky130_fd_sc_hd__clkbuf_4_4_X;
  wire sky130_fd_sc_hd__clkbuf_4_5_X;
  wire sky130_fd_sc_hd__clkbuf_4_6_X;
  wire sky130_fd_sc_hd__clkbuf_4_7_X;
  wire sky130_fd_sc_hd__clkbuf_4_8_X;
  wire sky130_fd_sc_hd__clkbuf_4_9_A;
  wire sky130_fd_sc_hd__clkbuf_4_9_VPB;
  wire sky130_fd_sc_hd__clkbuf_4_9_X;
  wire sky130_fd_sc_hd__clkbuf_8_0_X;
  wire sky130_fd_sc_hd__clkbuf_8_10_X;
  wire sky130_fd_sc_hd__clkbuf_8_11_X;
  wire sky130_fd_sc_hd__clkbuf_8_12_VPB;
  wire sky130_fd_sc_hd__clkbuf_8_14_VPB;
  wire sky130_fd_sc_hd__clkbuf_8_1_X;
  wire sky130_fd_sc_hd__clkbuf_8_2_X;
  wire sky130_fd_sc_hd__clkbuf_8_3_X;
  wire sky130_fd_sc_hd__clkbuf_8_4_X;
  wire sky130_fd_sc_hd__clkbuf_8_5_X;
  wire sky130_fd_sc_hd__clkbuf_8_6_X;
  wire sky130_fd_sc_hd__clkbuf_8_7_X;
  wire sky130_fd_sc_hd__clkbuf_8_8_X;
  wire sky130_fd_sc_hd__clkbuf_8_9_A;
  wire sky130_fd_sc_hd__clkbuf_8_9_X;
  wire sky130_fd_sc_hd__conb_1_0_HI;
  wire sky130_fd_sc_hd__conb_1_0_LO;
  wire sky130_fd_sc_hd__conb_1_1_HI;
  wire sky130_fd_sc_hd__conb_1_1_VPB;
  wire sky130_fd_sc_hd__conb_1_2_HI;
  wire sky130_fd_sc_hd__conb_1_2_LO;
  wire sky130_fd_sc_hd__conb_1_3_HI;
  wire sky130_fd_sc_hd__conb_1_3_LO;
  wire sky130_fd_sc_hd__conb_1_4_HI;
  wire sky130_fd_sc_hd__conb_1_4_LO;
  wire sky130_fd_sc_hd__conb_1_5_HI;
  wire sky130_fd_sc_hd__conb_1_5_LO;
  wire sky130_fd_sc_hd__decap_3_102_VPB;
  wire sky130_fd_sc_hd__decap_3_107_VPB;
  wire sky130_fd_sc_hd__decap_3_111_VPB;
  wire sky130_fd_sc_hd__decap_3_114_VPB;
  wire sky130_fd_sc_hd__decap_3_116_VPB;
  wire sky130_fd_sc_hd__decap_3_118_VPB;
  wire sky130_fd_sc_hd__decap_3_119_VPB;
  wire sky130_fd_sc_hd__decap_3_121_VPB;
  wire sky130_fd_sc_hd__decap_3_122_VPB;
  wire sky130_fd_sc_hd__decap_3_125_VPB;
  wire sky130_fd_sc_hd__decap_3_129_VPB;
  wire sky130_fd_sc_hd__decap_3_12_VPB;
  wire sky130_fd_sc_hd__decap_3_131_VPB;
  wire sky130_fd_sc_hd__decap_3_132_VPB;
  wire sky130_fd_sc_hd__decap_3_135_VPB;
  wire sky130_fd_sc_hd__decap_3_136_VPB;
  wire sky130_fd_sc_hd__decap_3_137_VPB;
  wire sky130_fd_sc_hd__decap_3_138_VPB;
  wire sky130_fd_sc_hd__decap_3_139_VPB;
  wire sky130_fd_sc_hd__decap_3_144_VPB;
  wire sky130_fd_sc_hd__decap_3_145_VPB;
  wire sky130_fd_sc_hd__decap_3_146_VPB;
  wire sky130_fd_sc_hd__decap_3_149_VPB;
  wire sky130_fd_sc_hd__decap_3_14_VPB;
  wire sky130_fd_sc_hd__decap_3_150_VPB;
  wire sky130_fd_sc_hd__decap_3_152_VPB;
  wire sky130_fd_sc_hd__decap_3_153_VPB;
  wire sky130_fd_sc_hd__decap_3_157_VPB;
  wire sky130_fd_sc_hd__decap_3_158_VPB;
  wire sky130_fd_sc_hd__decap_3_159_VPB;
  wire sky130_fd_sc_hd__decap_3_164_VPB;
  wire sky130_fd_sc_hd__decap_3_166_VPB;
  wire sky130_fd_sc_hd__decap_3_169_VPB;
  wire sky130_fd_sc_hd__decap_3_16_VPB;
  wire sky130_fd_sc_hd__decap_3_173_VPB;
  wire sky130_fd_sc_hd__decap_3_175_VPB;
  wire sky130_fd_sc_hd__decap_3_176_VPB;
  wire sky130_fd_sc_hd__decap_3_180_VPB;
  wire sky130_fd_sc_hd__decap_3_181_VPB;
  wire sky130_fd_sc_hd__decap_3_182_VPB;
  wire sky130_fd_sc_hd__decap_3_184_VPB;
  wire sky130_fd_sc_hd__decap_3_187_VPB;
  wire sky130_fd_sc_hd__decap_3_190_VPB;
  wire sky130_fd_sc_hd__decap_3_191_VPB;
  wire sky130_fd_sc_hd__decap_3_195_VPB;
  wire sky130_fd_sc_hd__decap_3_197_VPB;
  wire sky130_fd_sc_hd__decap_3_198_VPB;
  wire sky130_fd_sc_hd__decap_3_199_VPB;
  wire sky130_fd_sc_hd__decap_3_19_VPB;
  wire sky130_fd_sc_hd__decap_3_200_VPB;
  wire sky130_fd_sc_hd__decap_3_201_VPB;
  wire sky130_fd_sc_hd__decap_3_20_VPB;
  wire sky130_fd_sc_hd__decap_3_24_VPB;
  wire sky130_fd_sc_hd__decap_3_25_VPB;
  wire sky130_fd_sc_hd__decap_3_27_VPB;
  wire sky130_fd_sc_hd__decap_3_29_VPB;
  wire sky130_fd_sc_hd__decap_3_2_VPB;
  wire sky130_fd_sc_hd__decap_3_30_VPB;
  wire sky130_fd_sc_hd__decap_3_33_VPB;
  wire sky130_fd_sc_hd__decap_3_34_VPB;
  wire sky130_fd_sc_hd__decap_3_35_VPB;
  wire sky130_fd_sc_hd__decap_3_36_VPB;
  wire sky130_fd_sc_hd__decap_3_43_VPB;
  wire sky130_fd_sc_hd__decap_3_44_VPB;
  wire sky130_fd_sc_hd__decap_3_45_VPB;
  wire sky130_fd_sc_hd__decap_3_51_VPB;
  wire sky130_fd_sc_hd__decap_3_53_VPB;
  wire sky130_fd_sc_hd__decap_3_54_VPB;
  wire sky130_fd_sc_hd__decap_3_56_VPB;
  wire sky130_fd_sc_hd__decap_3_57_VPB;
  wire sky130_fd_sc_hd__decap_3_58_VPB;
  wire sky130_fd_sc_hd__decap_3_5_VPB;
  wire sky130_fd_sc_hd__decap_3_61_VPB;
  wire sky130_fd_sc_hd__decap_3_65_VPB;
  wire sky130_fd_sc_hd__decap_3_66_VPB;
  wire sky130_fd_sc_hd__decap_3_67_VPB;
  wire sky130_fd_sc_hd__decap_3_69_VPB;
  wire sky130_fd_sc_hd__decap_3_71_VPB;
  wire sky130_fd_sc_hd__decap_3_73_VPB;
  wire sky130_fd_sc_hd__decap_3_74_VPB;
  wire sky130_fd_sc_hd__decap_3_75_VPB;
  wire sky130_fd_sc_hd__decap_3_76_VPB;
  wire sky130_fd_sc_hd__decap_3_77_VPB;
  wire sky130_fd_sc_hd__decap_3_84_VPB;
  wire sky130_fd_sc_hd__decap_3_85_VPB;
  wire sky130_fd_sc_hd__decap_3_86_VPB;
  wire sky130_fd_sc_hd__decap_3_87_VPB;
  wire sky130_fd_sc_hd__decap_3_88_VPB;
  wire sky130_fd_sc_hd__decap_3_90_VPB;
  wire sky130_fd_sc_hd__decap_3_91_VPB;
  wire sky130_fd_sc_hd__decap_3_92_VPB;
  wire sky130_fd_sc_hd__decap_3_93_VPB;
  wire sky130_fd_sc_hd__decap_3_96_VPB;
  wire sky130_fd_sc_hd__decap_3_97_VPB;
  wire sky130_fd_sc_hd__decap_3_98_VPB;
  wire sky130_fd_sc_hd__decap_3_99_VPB;
  wire sky130_fd_sc_hd__dfrtp_2_25_D;
  wire sky130_fd_sc_hd__dfrtp_2_29_D;
  wire sky130_fd_sc_hd__dfrtp_2_39_VPB;
  wire sky130_fd_sc_hd__dfrtp_2_43_D;
  wire sky130_fd_sc_hd__dfrtp_2_45_D;
  wire sky130_fd_sc_hd__dfrtp_2_4_D;
  wire sky130_fd_sc_hd__dfrtp_2_57_D;
  wire sky130_fd_sc_hd__dfrtp_2_57_VPB;
  wire sky130_fd_sc_hd__dfrtp_2_58_D;
  wire sky130_fd_sc_hd__dfrtp_2_59_D;
  wire sky130_fd_sc_hd__dfrtp_2_5_VPB;
  wire sky130_fd_sc_hd__dfrtp_2_63_D;
  wire sky130_fd_sc_hd__dfrtp_2_64_D;
  wire sky130_fd_sc_hd__dfrtp_2_66_D;
  wire sky130_fd_sc_hd__dfrtp_2_67_D;
  wire sky130_fd_sc_hd__dfrtp_2_68_D;
  wire sky130_fd_sc_hd__dfrtp_2_70_D;
  wire sky130_fd_sc_hd__dfrtp_2_8_CLK;
  wire sky130_fd_sc_hd__dfstp_2_0_D;
  wire sky130_fd_sc_hd__dfstp_2_2_D;
  wire sky130_fd_sc_hd__dfxtp_2_0_D;
  wire sky130_fd_sc_hd__dfxtp_2_1_D;
  wire sky130_fd_sc_hd__dfxtp_2_2_CLK;
  wire sky130_fd_sc_hd__dfxtp_2_2_D;
  wire sky130_fd_sc_hd__dfxtp_2_3_CLK;
  wire sky130_fd_sc_hd__dfxtp_2_3_D;
  wire sky130_fd_sc_hd__diode_2_1_VPB;
  wire sky130_fd_sc_hd__diode_2_2_VPB;
  wire sky130_fd_sc_hd__diode_2_3_VPB;
  wire sky130_fd_sc_hd__diode_2_4_VPB;
  wire sky130_fd_sc_hd__diode_2_9_VPB;
  wire sky130_fd_sc_hd__inv_2_0_Y;
  wire sky130_fd_sc_hd__inv_2_10_A;
  wire sky130_fd_sc_hd__inv_2_10_Y;
  wire sky130_fd_sc_hd__inv_2_11_A;
  wire sky130_fd_sc_hd__inv_2_12_A;
  wire sky130_fd_sc_hd__inv_2_12_Y;
  wire sky130_fd_sc_hd__inv_2_13_Y;
  wire sky130_fd_sc_hd__inv_2_14_Y;
  wire sky130_fd_sc_hd__inv_2_15_VPB;
  wire sky130_fd_sc_hd__inv_2_15_Y;
  wire sky130_fd_sc_hd__inv_2_16_A;
  wire sky130_fd_sc_hd__inv_2_17_A;
  wire sky130_fd_sc_hd__inv_2_18_A;
  wire sky130_fd_sc_hd__inv_2_19_A;
  wire sky130_fd_sc_hd__inv_2_1_A;
  wire sky130_fd_sc_hd__inv_2_20_A;
  wire sky130_fd_sc_hd__inv_2_21_Y;
  wire sky130_fd_sc_hd__inv_2_22_Y;
  wire sky130_fd_sc_hd__inv_2_23_A;
  wire sky130_fd_sc_hd__inv_2_23_Y;
  wire sky130_fd_sc_hd__inv_2_2_A;
  wire sky130_fd_sc_hd__inv_2_3_A;
  wire sky130_fd_sc_hd__inv_2_4_A;
  wire sky130_fd_sc_hd__inv_2_4_Y;
  wire sky130_fd_sc_hd__inv_2_5_A;
  wire sky130_fd_sc_hd__inv_2_5_Y;
  wire sky130_fd_sc_hd__inv_2_6_A;
  wire sky130_fd_sc_hd__inv_2_6_Y;
  wire sky130_fd_sc_hd__inv_2_7_A;
  wire sky130_fd_sc_hd__inv_2_7_Y;
  wire sky130_fd_sc_hd__inv_2_8_A;
  wire sky130_fd_sc_hd__inv_2_8_Y;
  wire sky130_fd_sc_hd__inv_2_9_A;
  wire sky130_fd_sc_hd__inv_2_9_Y;
  wire sky130_fd_sc_hd__mux2_1_0_X;
  wire sky130_fd_sc_hd__mux2_1_10_X;
  wire sky130_fd_sc_hd__mux2_1_11_X;
  wire sky130_fd_sc_hd__mux2_1_12_A0;
  wire sky130_fd_sc_hd__mux2_1_12_A1;
  wire sky130_fd_sc_hd__mux2_1_12_X;
  wire sky130_fd_sc_hd__mux2_1_13_X;
  wire sky130_fd_sc_hd__mux2_1_14_X;
  wire sky130_fd_sc_hd__mux2_1_15_A0;
  wire sky130_fd_sc_hd__mux2_1_15_X;
  wire sky130_fd_sc_hd__mux2_1_16_A0;
  wire sky130_fd_sc_hd__mux2_1_16_X;
  wire sky130_fd_sc_hd__mux2_1_17_X;
  wire sky130_fd_sc_hd__mux2_1_18_X;
  wire sky130_fd_sc_hd__mux2_1_19_A0;
  wire sky130_fd_sc_hd__mux2_1_19_A1;
  wire sky130_fd_sc_hd__mux2_1_19_X;
  wire sky130_fd_sc_hd__mux2_1_1_X;
  wire sky130_fd_sc_hd__mux2_1_20_X;
  wire sky130_fd_sc_hd__mux2_1_2_X;
  wire sky130_fd_sc_hd__mux2_1_3_X;
  wire sky130_fd_sc_hd__mux2_1_4_S;
  wire sky130_fd_sc_hd__mux2_1_4_X;
  wire sky130_fd_sc_hd__mux2_1_5_A1;
  wire sky130_fd_sc_hd__mux2_1_5_X;
  wire sky130_fd_sc_hd__mux2_1_6_X;
  wire sky130_fd_sc_hd__mux2_1_7_A0;
  wire sky130_fd_sc_hd__mux2_1_7_X;
  wire sky130_fd_sc_hd__mux2_1_8_A0;
  wire sky130_fd_sc_hd__mux2_1_8_A1;
  wire sky130_fd_sc_hd__mux2_1_8_X;
  wire sky130_fd_sc_hd__mux2_1_9_A0;
  wire sky130_fd_sc_hd__mux2_1_9_A1;
  wire sky130_fd_sc_hd__mux2_1_9_X;
  wire sky130_fd_sc_hd__nand2_2_25_VPB;
  wire sky130_fd_sc_hd__nand2_2_29_Y;
  wire sky130_fd_sc_hd__nand2_2_2_Y;
  wire sky130_fd_sc_hd__nand2_2_31_A;
  wire sky130_fd_sc_hd__nand2_2_38_Y;
  wire sky130_fd_sc_hd__nand2_2_3_Y;
  wire sky130_fd_sc_hd__nand2_2_5_Y;
  wire sky130_fd_sc_hd__nand2_2_9_Y;
  wire sky130_fd_sc_hd__nand2b_2_1_Y;
  wire sky130_fd_sc_hd__nand2b_2_2_Y;
  wire sky130_fd_sc_hd__nand2b_2_3_Y;
  wire sky130_fd_sc_hd__nand2b_2_4_Y;
  wire sky130_fd_sc_hd__nand2b_2_8_Y;
  wire sky130_fd_sc_hd__nand3_2_0_Y;
  wire sky130_fd_sc_hd__nand3_2_1_Y;
  wire sky130_fd_sc_hd__nand4_2_0_C;
  wire sky130_fd_sc_hd__nand4_2_0_VPB;
  wire sky130_fd_sc_hd__nand4_2_10_C;
  wire sky130_fd_sc_hd__nand4_2_10_D;
  wire sky130_fd_sc_hd__nand4_2_11_C;
  wire sky130_fd_sc_hd__nand4_2_12_C;
  wire sky130_fd_sc_hd__nand4_2_12_D;
  wire sky130_fd_sc_hd__nand4_2_13_C;
  wire sky130_fd_sc_hd__nand4_2_13_D;
  wire sky130_fd_sc_hd__nand4_2_1_C;
  wire sky130_fd_sc_hd__nand4_2_1_D;
  wire sky130_fd_sc_hd__nand4_2_1_Y;
  wire sky130_fd_sc_hd__nand4_2_2_C;
  wire sky130_fd_sc_hd__nand4_2_2_D;
  wire sky130_fd_sc_hd__nand4_2_3_C;
  wire sky130_fd_sc_hd__nand4_2_3_D;
  wire sky130_fd_sc_hd__nand4_2_4_C;
  wire sky130_fd_sc_hd__nand4_2_4_D;
  wire sky130_fd_sc_hd__nand4_2_4_Y;
  wire sky130_fd_sc_hd__nand4_2_5_C;
  wire sky130_fd_sc_hd__nand4_2_5_D;
  wire sky130_fd_sc_hd__nand4_2_5_VPB;
  wire sky130_fd_sc_hd__nand4_2_5_Y;
  wire sky130_fd_sc_hd__nand4_2_6_C;
  wire sky130_fd_sc_hd__nand4_2_6_D;
  wire sky130_fd_sc_hd__nand4_2_6_Y;
  wire sky130_fd_sc_hd__nand4_2_7_C;
  wire sky130_fd_sc_hd__nand4_2_7_Y;
  wire sky130_fd_sc_hd__nand4_2_8_C;
  wire sky130_fd_sc_hd__nand4_2_8_D;
  wire sky130_fd_sc_hd__nand4_2_8_Y;
  wire sky130_fd_sc_hd__nand4_2_9_C;
  wire sky130_fd_sc_hd__nand4_2_9_D;
  wire sky130_fd_sc_hd__nand4_2_9_Y;
  wire sky130_fd_sc_hd__nor2_2_0_B;
  wire sky130_fd_sc_hd__nor2_2_19_Y;
  wire sky130_fd_sc_hd__nor2_2_20_A;
  wire sky130_fd_sc_hd__nor2_2_20_Y;
  wire sky130_fd_sc_hd__nor2_2_21_A;
  wire sky130_fd_sc_hd__nor2_2_23_Y;
  wire sky130_fd_sc_hd__nor2_2_24_Y;
  wire sky130_fd_sc_hd__nor2_2_26_Y;
  wire sky130_fd_sc_hd__nor2_2_29_Y;
  wire sky130_fd_sc_hd__nor2_2_30_B;
  wire sky130_fd_sc_hd__nor2_2_30_Y;
  wire sky130_fd_sc_hd__nor2_2_31_B;
  wire sky130_fd_sc_hd__nor2_2_31_Y;
  wire sky130_fd_sc_hd__nor2_2_32_B;
  wire sky130_fd_sc_hd__nor2_2_32_Y;
  wire sky130_fd_sc_hd__nor2_2_33_Y;
  wire sky130_fd_sc_hd__nor2_2_34_VPB;
  wire sky130_fd_sc_hd__nor2_2_34_Y;
  wire sky130_fd_sc_hd__nor2_2_39_Y;
  wire sky130_fd_sc_hd__nor2_2_3_B;
  wire sky130_fd_sc_hd__nor2_2_3_Y;
  wire sky130_fd_sc_hd__nor2_2_40_A;
  wire sky130_fd_sc_hd__nor2_2_40_Y;
  wire sky130_fd_sc_hd__nor2_2_41_Y;
  wire sky130_fd_sc_hd__nor2_2_42_Y;
  wire sky130_fd_sc_hd__nor2_2_43_Y;
  wire sky130_fd_sc_hd__nor2_2_44_Y;
  wire sky130_fd_sc_hd__nor2_2_45_Y;
  wire sky130_fd_sc_hd__nor2_2_46_A;
  wire sky130_fd_sc_hd__nor2_2_46_B;
  wire sky130_fd_sc_hd__nor2_2_46_Y;
  wire sky130_fd_sc_hd__nor2_2_4_Y;
  wire sky130_fd_sc_hd__nor2_2_5_A;
  wire sky130_fd_sc_hd__nor2_2_5_Y;
  wire sky130_fd_sc_hd__nor2_2_6_Y;
  wire sky130_fd_sc_hd__nor2_2_8_A;
  wire sky130_fd_sc_hd__nor2_2_9_B;
  wire sky130_fd_sc_hd__nor3_2_0_Y;
  wire sky130_fd_sc_hd__nor3_2_1_B;
  wire sky130_fd_sc_hd__nor3_2_1_C;
  wire sky130_fd_sc_hd__nor3_2_1_Y;
  wire sky130_fd_sc_hd__nor3_2_2_A;
  wire sky130_fd_sc_hd__nor3_2_2_B;
  wire sky130_fd_sc_hd__nor3_2_2_Y;
  wire sky130_fd_sc_hd__nor3_2_3_A;
  wire sky130_fd_sc_hd__nor3_2_3_B;
  wire sky130_fd_sc_hd__nor3_2_3_C;
  wire sky130_fd_sc_hd__nor3_2_3_Y;
  wire sky130_fd_sc_hd__nor3b_2_0_B;
  wire sky130_fd_sc_hd__nor3b_2_2_Y;
  wire sky130_fd_sc_hd__nor3b_2_3_Y;
  wire sky130_fd_sc_hd__nor4_2_0_VPB;
  wire sky130_fd_sc_hd__nor4_2_0_Y;
  wire sky130_fd_sc_hd__nor4_2_1_VPB;
  wire sky130_fd_sc_hd__nor4_2_1_Y;
  wire sky130_fd_sc_hd__o211a_2_0_X;
  wire sky130_fd_sc_hd__o211a_2_10_X;
  wire sky130_fd_sc_hd__o211a_2_7_X;
  wire sky130_fd_sc_hd__o211a_2_8_X;
  wire sky130_fd_sc_hd__o211a_2_9_X;
  wire sky130_fd_sc_hd__o211ai_2_0_Y;
  wire sky130_fd_sc_hd__o21a_2_10_X;
  wire sky130_fd_sc_hd__o21a_2_11_X;
  wire sky130_fd_sc_hd__o21a_2_12_A1;
  wire sky130_fd_sc_hd__o21a_2_12_X;
  wire sky130_fd_sc_hd__o21a_2_13_X;
  wire sky130_fd_sc_hd__o21a_2_14_B1;
  wire sky130_fd_sc_hd__o21a_2_14_X;
  wire sky130_fd_sc_hd__o21a_2_15_A2;
  wire sky130_fd_sc_hd__o21a_2_15_X;
  wire sky130_fd_sc_hd__o21a_2_16_A1;
  wire sky130_fd_sc_hd__o21a_2_16_X;
  wire sky130_fd_sc_hd__o21a_2_17_X;
  wire sky130_fd_sc_hd__o21a_2_18_A1;
  wire sky130_fd_sc_hd__o21a_2_18_X;
  wire sky130_fd_sc_hd__o21a_2_19_A1;
  wire sky130_fd_sc_hd__o21a_2_19_X;
  wire sky130_fd_sc_hd__o21a_2_1_X;
  wire sky130_fd_sc_hd__o21a_2_20_X;
  wire sky130_fd_sc_hd__o21a_2_21_A1;
  wire sky130_fd_sc_hd__o21a_2_21_X;
  wire sky130_fd_sc_hd__o21a_2_22_X;
  wire sky130_fd_sc_hd__o21a_2_23_A1;
  wire sky130_fd_sc_hd__o21a_2_23_X;
  wire sky130_fd_sc_hd__o21a_2_24_A1;
  wire sky130_fd_sc_hd__o21a_2_24_A2;
  wire sky130_fd_sc_hd__o21a_2_24_X;
  wire sky130_fd_sc_hd__o21a_2_25_A1;
  wire sky130_fd_sc_hd__o21a_2_25_A2;
  wire sky130_fd_sc_hd__o21a_2_25_X;
  wire sky130_fd_sc_hd__o21a_2_26_X;
  wire sky130_fd_sc_hd__o21a_2_27_A1;
  wire sky130_fd_sc_hd__o21a_2_27_A2;
  wire sky130_fd_sc_hd__o21a_2_27_X;
  wire sky130_fd_sc_hd__o21a_2_28_A1;
  wire sky130_fd_sc_hd__o21a_2_28_A2;
  wire sky130_fd_sc_hd__o21a_2_28_X;
  wire sky130_fd_sc_hd__o21a_2_29_X;
  wire sky130_fd_sc_hd__o21a_2_30_A1;
  wire sky130_fd_sc_hd__o21a_2_30_X;
  wire sky130_fd_sc_hd__o21a_2_3_A2;
  wire sky130_fd_sc_hd__o21a_2_3_X;
  wire sky130_fd_sc_hd__o21a_2_4_A1;
  wire sky130_fd_sc_hd__o21a_2_4_A2;
  wire sky130_fd_sc_hd__o21a_2_4_X;
  wire sky130_fd_sc_hd__o21a_2_5_A1;
  wire sky130_fd_sc_hd__o21a_2_5_A2;
  wire sky130_fd_sc_hd__o21a_2_5_X;
  wire sky130_fd_sc_hd__o21a_2_6_A2;
  wire sky130_fd_sc_hd__o21a_2_6_X;
  wire sky130_fd_sc_hd__o21a_2_7_A2;
  wire sky130_fd_sc_hd__o21a_2_7_X;
  wire sky130_fd_sc_hd__o21a_2_8_A1;
  wire sky130_fd_sc_hd__o21a_2_8_A2;
  wire sky130_fd_sc_hd__o21a_2_8_X;
  wire sky130_fd_sc_hd__o21a_2_9_A2;
  wire sky130_fd_sc_hd__o21a_2_9_X;
  wire sky130_fd_sc_hd__o21ai_2_1_Y;
  wire sky130_fd_sc_hd__o21ai_2_2_Y;
  wire sky130_fd_sc_hd__o21ai_2_3_B1;
  wire sky130_fd_sc_hd__o21ai_2_3_Y;
  wire sky130_fd_sc_hd__o21ai_2_4_Y;
  wire sky130_fd_sc_hd__o21ai_2_5_Y;
  wire sky130_fd_sc_hd__o21ba_2_0_X;
  wire sky130_fd_sc_hd__o21ba_2_1_X;
  wire sky130_fd_sc_hd__o21bai_2_0_Y;
  wire sky130_fd_sc_hd__o221a_2_0_X;
  wire sky130_fd_sc_hd__o221a_2_1_X;
  wire sky130_fd_sc_hd__o221a_2_2_B2;
  wire sky130_fd_sc_hd__o221a_2_2_C1;
  wire sky130_fd_sc_hd__o221a_2_2_X;
  wire sky130_fd_sc_hd__o22a_2_0_X;
  wire sky130_fd_sc_hd__o22a_2_2_VPB;
  wire sky130_fd_sc_hd__o22a_2_2_X;
  wire sky130_fd_sc_hd__o22a_2_3_B1;
  wire sky130_fd_sc_hd__o22a_2_3_B2;
  wire sky130_fd_sc_hd__o22a_2_3_X;
  wire sky130_fd_sc_hd__o22ai_2_0_Y;
  wire sky130_fd_sc_hd__o22ai_2_1_Y;
  wire sky130_fd_sc_hd__o311a_2_0_C1;
  wire sky130_fd_sc_hd__o311a_2_0_X;
  wire sky130_fd_sc_hd__o311a_2_1_X;
  wire sky130_fd_sc_hd__o31a_2_0_A1;
  wire sky130_fd_sc_hd__o31a_2_0_A2;
  wire sky130_fd_sc_hd__o31a_2_0_B1;
  wire sky130_fd_sc_hd__o31a_2_0_VPB;
  wire sky130_fd_sc_hd__o31a_2_0_X;
  wire sky130_fd_sc_hd__o31a_2_10_X;
  wire sky130_fd_sc_hd__o31a_2_1_A3;
  wire sky130_fd_sc_hd__o31a_2_1_B1;
  wire sky130_fd_sc_hd__o31a_2_1_X;
  wire sky130_fd_sc_hd__o31a_2_2_A1;
  wire sky130_fd_sc_hd__o31a_2_2_A2;
  wire sky130_fd_sc_hd__o31a_2_2_A3;
  wire sky130_fd_sc_hd__o31a_2_2_VPB;
  wire sky130_fd_sc_hd__o31a_2_2_X;
  wire sky130_fd_sc_hd__o31a_2_3_A3;
  wire sky130_fd_sc_hd__o31a_2_3_X;
  wire sky130_fd_sc_hd__o31a_2_4_X;
  wire sky130_fd_sc_hd__o31a_2_5_A2;
  wire sky130_fd_sc_hd__o31a_2_5_X;
  wire sky130_fd_sc_hd__o31a_2_6_A2;
  wire sky130_fd_sc_hd__o31a_2_6_A3;
  wire sky130_fd_sc_hd__o31a_2_6_X;
  wire sky130_fd_sc_hd__o31a_2_7_A2;
  wire sky130_fd_sc_hd__o31a_2_7_A3;
  wire sky130_fd_sc_hd__o31a_2_7_X;
  wire sky130_fd_sc_hd__o31a_2_8_A2;
  wire sky130_fd_sc_hd__o31a_2_8_A3;
  wire sky130_fd_sc_hd__o31a_2_8_X;
  wire sky130_fd_sc_hd__o31a_2_9_A1;
  wire sky130_fd_sc_hd__o31a_2_9_A2;
  wire sky130_fd_sc_hd__o31a_2_9_A3;
  wire sky130_fd_sc_hd__o31a_2_9_X;
  wire sky130_fd_sc_hd__o31ai_2_1_Y;
  wire sky130_fd_sc_hd__o32a_2_0_A3;
  wire sky130_fd_sc_hd__o32a_2_0_X;
  wire sky130_fd_sc_hd__o32a_2_1_A3;
  wire sky130_fd_sc_hd__o32a_2_1_B1;
  wire sky130_fd_sc_hd__o32a_2_1_B2;
  wire sky130_fd_sc_hd__o32a_2_1_X;
  wire sky130_fd_sc_hd__o32a_2_2_A2;
  wire sky130_fd_sc_hd__o32a_2_2_A3;
  wire sky130_fd_sc_hd__o32a_2_2_B1;
  wire sky130_fd_sc_hd__o32a_2_2_B2;
  wire sky130_fd_sc_hd__o32a_2_2_X;
  wire sky130_fd_sc_hd__o32a_2_3_A1;
  wire sky130_fd_sc_hd__o32a_2_3_A2;
  wire sky130_fd_sc_hd__o32a_2_3_A3;
  wire sky130_fd_sc_hd__o32a_2_3_X;
  wire sky130_fd_sc_hd__o32ai_2_0_B1;
  wire sky130_fd_sc_hd__o32ai_2_0_Y;
  wire sky130_fd_sc_hd__or2_2_0_B;
  wire sky130_fd_sc_hd__or2_2_10_A;
  wire sky130_fd_sc_hd__or2_2_10_X;
  wire sky130_fd_sc_hd__or2_2_11_A;
  wire sky130_fd_sc_hd__or2_2_11_B;
  wire sky130_fd_sc_hd__or2_2_11_X;
  wire sky130_fd_sc_hd__or2_2_12_A;
  wire sky130_fd_sc_hd__or2_2_12_B;
  wire sky130_fd_sc_hd__or2_2_12_X;
  wire sky130_fd_sc_hd__or2_2_1_A;
  wire sky130_fd_sc_hd__or2_2_1_B;
  wire sky130_fd_sc_hd__or2_2_1_X;
  wire sky130_fd_sc_hd__or2_2_2_A;
  wire sky130_fd_sc_hd__or2_2_3_X;
  wire sky130_fd_sc_hd__or2_2_4_A;
  wire sky130_fd_sc_hd__or2_2_4_B;
  wire sky130_fd_sc_hd__or2_2_4_X;
  wire sky130_fd_sc_hd__or2_2_5_A;
  wire sky130_fd_sc_hd__or2_2_5_X;
  wire sky130_fd_sc_hd__or2_2_6_B;
  wire sky130_fd_sc_hd__or2_2_6_X;
  wire sky130_fd_sc_hd__or2_2_7_A;
  wire sky130_fd_sc_hd__or2_2_7_X;
  wire sky130_fd_sc_hd__or2_2_8_B;
  wire sky130_fd_sc_hd__or2_2_8_VPB;
  wire sky130_fd_sc_hd__or2_2_8_X;
  wire sky130_fd_sc_hd__or2_2_9_A;
  wire sky130_fd_sc_hd__or2_2_9_B;
  wire sky130_fd_sc_hd__or2_2_9_X;
  wire sky130_fd_sc_hd__or3_2_0_B;
  wire sky130_fd_sc_hd__or3_2_0_X;
  wire sky130_fd_sc_hd__or3_2_10_A;
  wire sky130_fd_sc_hd__or3_2_10_X;
  wire sky130_fd_sc_hd__or3_2_11_A;
  wire sky130_fd_sc_hd__or3_2_11_X;
  wire sky130_fd_sc_hd__or3_2_12_X;
  wire sky130_fd_sc_hd__or3_2_13_A;
  wire sky130_fd_sc_hd__or3_2_13_X;
  wire sky130_fd_sc_hd__or3_2_14_A;
  wire sky130_fd_sc_hd__or3_2_14_X;
  wire sky130_fd_sc_hd__or3_2_15_A;
  wire sky130_fd_sc_hd__or3_2_15_X;
  wire sky130_fd_sc_hd__or3_2_16_A;
  wire sky130_fd_sc_hd__or3_2_16_X;
  wire sky130_fd_sc_hd__or3_2_17_A;
  wire sky130_fd_sc_hd__or3_2_17_B;
  wire sky130_fd_sc_hd__or3_2_17_C;
  wire sky130_fd_sc_hd__or3_2_17_X;
  wire sky130_fd_sc_hd__or3_2_1_B;
  wire sky130_fd_sc_hd__or3_2_1_C;
  wire sky130_fd_sc_hd__or3_2_1_X;
  wire sky130_fd_sc_hd__or3_2_2_B;
  wire sky130_fd_sc_hd__or3_2_2_C;
  wire sky130_fd_sc_hd__or3_2_3_A;
  wire sky130_fd_sc_hd__or3_2_3_B;
  wire sky130_fd_sc_hd__or3_2_3_C;
  wire sky130_fd_sc_hd__or3_2_3_X;
  wire sky130_fd_sc_hd__or3_2_4_B;
  wire sky130_fd_sc_hd__or3_2_4_C;
  wire sky130_fd_sc_hd__or3_2_4_X;
  wire sky130_fd_sc_hd__or3_2_5_A;
  wire sky130_fd_sc_hd__or3_2_5_B;
  wire sky130_fd_sc_hd__or3_2_5_C;
  wire sky130_fd_sc_hd__or3_2_5_X;
  wire sky130_fd_sc_hd__or3_2_6_A;
  wire sky130_fd_sc_hd__or3_2_6_B;
  wire sky130_fd_sc_hd__or3_2_6_C;
  wire sky130_fd_sc_hd__or3_2_6_X;
  wire sky130_fd_sc_hd__or3_2_7_A;
  wire sky130_fd_sc_hd__or3_2_7_B;
  wire sky130_fd_sc_hd__or3_2_7_C;
  wire sky130_fd_sc_hd__or3_2_7_X;
  wire sky130_fd_sc_hd__or3_2_8_A;
  wire sky130_fd_sc_hd__or3_2_8_B;
  wire sky130_fd_sc_hd__or3_2_8_C;
  wire sky130_fd_sc_hd__or3_2_8_X;
  wire sky130_fd_sc_hd__or3_2_9_A;
  wire sky130_fd_sc_hd__or3_2_9_B;
  wire sky130_fd_sc_hd__or3_2_9_C;
  wire sky130_fd_sc_hd__or3_2_9_X;
  wire sky130_fd_sc_hd__or3b_2_0_A;
  wire sky130_fd_sc_hd__or3b_2_0_X;
  wire sky130_fd_sc_hd__or4_2_0_A;
  wire sky130_fd_sc_hd__or4_2_0_B;
  wire sky130_fd_sc_hd__or4_2_0_C;
  wire sky130_fd_sc_hd__or4_2_0_D;
  wire sky130_fd_sc_hd__or4_2_0_X;
  wire sky130_fd_sc_hd__or4_2_1_A;
  wire sky130_fd_sc_hd__or4_2_1_B;
  wire sky130_fd_sc_hd__or4_2_1_C;
  wire sky130_fd_sc_hd__or4_2_1_D;
  wire sky130_fd_sc_hd__or4_2_1_X;
  wire sky130_fd_sc_hd__or4_2_2_A;
  wire sky130_fd_sc_hd__or4_2_2_B;
  wire sky130_fd_sc_hd__or4_2_2_C;
  wire sky130_fd_sc_hd__or4_2_2_D;
  wire sky130_fd_sc_hd__or4_2_2_X;
  wire sky130_fd_sc_hd__or4_2_3_A;
  wire sky130_fd_sc_hd__or4_2_3_B;
  wire sky130_fd_sc_hd__or4_2_3_C;
  wire sky130_fd_sc_hd__or4_2_3_D;
  wire sky130_fd_sc_hd__or4_2_3_X;
  wire sky130_fd_sc_hd__or4_2_4_A;
  wire sky130_fd_sc_hd__or4_2_4_B;
  wire sky130_fd_sc_hd__or4_2_4_C;
  wire sky130_fd_sc_hd__or4_2_4_D;
  wire sky130_fd_sc_hd__or4_2_4_X;
  wire sky130_fd_sc_hd__or4_2_5_A;
  wire sky130_fd_sc_hd__or4_2_5_B;
  wire sky130_fd_sc_hd__or4_2_5_C;
  wire sky130_fd_sc_hd__or4_2_5_D;
  wire sky130_fd_sc_hd__or4_2_5_X;
  wire sky130_fd_sc_hd__or4_2_6_A;
  wire sky130_fd_sc_hd__or4_2_6_B;
  wire sky130_fd_sc_hd__or4_2_6_C;
  wire sky130_fd_sc_hd__or4_2_6_D;
  wire sky130_fd_sc_hd__or4_2_6_X;
  wire sky130_fd_sc_hd__or4_2_7_A;
  wire sky130_fd_sc_hd__or4_2_7_B;
  wire sky130_fd_sc_hd__or4_2_7_C;
  wire sky130_fd_sc_hd__or4_2_7_D;
  wire sky130_fd_sc_hd__or4_2_7_X;
  wire sky130_fd_sc_hd__or4_2_8_A;
  wire sky130_fd_sc_hd__or4_2_8_B;
  wire sky130_fd_sc_hd__or4_2_8_C;
  wire sky130_fd_sc_hd__or4_2_8_D;
  wire sky130_fd_sc_hd__or4_2_8_X;
  wire sky130_fd_sc_hd__or4_2_9_A;
  wire sky130_fd_sc_hd__or4_2_9_B;
  wire sky130_fd_sc_hd__or4_2_9_C;
  wire sky130_fd_sc_hd__or4_2_9_D;
  wire sky130_fd_sc_hd__or4_2_9_X;
  wire sky130_fd_sc_hd__or4b_2_2_C;
  wire sky130_fd_sc_hd__or4b_2_3_A;
  wire sky130_fd_sc_hd__or4b_2_3_B;
  wire sky130_fd_sc_hd__or4b_2_3_C;
  wire sky130_fd_sc_hd__or4b_2_8_A;
  wire sky130_fd_sc_hd__or4b_2_8_C;
  wire sky130_fd_sc_hd__or4b_2_8_X;
  wire sky130_fd_sc_hd__or4bb_2_0_X;
  wire sky130_fd_sc_hd__xnor2_2_0_A;
  wire sky130_fd_sc_hd__xnor2_2_11_B;
  wire sky130_fd_sc_hd__xnor2_2_11_Y;
  wire sky130_fd_sc_hd__xnor2_2_13_Y;
  wire sky130_fd_sc_hd__xnor2_2_14_B;
  wire sky130_fd_sc_hd__xnor2_2_14_Y;
  wire sky130_fd_sc_hd__xnor2_2_18_Y;
  wire sky130_fd_sc_hd__xnor2_2_19_Y;
  wire sky130_fd_sc_hd__xnor2_2_21_B;
  wire sky130_fd_sc_hd__xnor2_2_21_Y;
  wire sky130_fd_sc_hd__xnor2_2_22_Y;
  wire sky130_fd_sc_hd__xnor2_2_26_A;
  wire sky130_fd_sc_hd__xnor2_2_26_B;
  wire sky130_fd_sc_hd__xnor2_2_28_Y;
  wire sky130_fd_sc_hd__xnor2_2_4_A;
  wire sky130_fd_sc_hd__xnor2_2_5_B;
  wire sky130_fd_sc_hd__xnor2_2_6_A;
  wire sky130_fd_sc_hd__xnor2_2_6_Y;
  wire sky130_fd_sc_hd__xnor2_2_8_A;
  wire sky130_fd_sc_hd__xnor2_2_8_B;
  wire sky130_fd_sc_hd__xor2_2_0_B;
  wire sky130_fd_sc_hd__xor2_2_0_X;
  wire sky130_fd_sc_hd__xor2_2_10_X;
  wire sky130_fd_sc_hd__xor2_2_11_B;
  wire sky130_fd_sc_hd__xor2_2_11_X;
  wire sky130_fd_sc_hd__xor2_2_12_X;
  wire sky130_fd_sc_hd__xor2_2_13_X;
  wire sky130_fd_sc_hd__xor2_2_14_B;
  wire sky130_fd_sc_hd__xor2_2_14_X;
  wire sky130_fd_sc_hd__xor2_2_15_X;
  wire sky130_fd_sc_hd__xor2_2_16_A;
  wire sky130_fd_sc_hd__xor2_2_16_X;
  wire sky130_fd_sc_hd__xor2_2_17_B;
  wire sky130_fd_sc_hd__xor2_2_17_X;
  wire sky130_fd_sc_hd__xor2_2_18_X;
  wire sky130_fd_sc_hd__xor2_2_19_A;
  wire sky130_fd_sc_hd__xor2_2_19_B;
  wire sky130_fd_sc_hd__xor2_2_19_X;
  wire sky130_fd_sc_hd__xor2_2_1_B;
  wire sky130_fd_sc_hd__xor2_2_1_X;
  wire sky130_fd_sc_hd__xor2_2_20_A;
  wire sky130_fd_sc_hd__xor2_2_20_B;
  wire sky130_fd_sc_hd__xor2_2_20_X;
  wire sky130_fd_sc_hd__xor2_2_2_A;
  wire sky130_fd_sc_hd__xor2_2_2_B;
  wire sky130_fd_sc_hd__xor2_2_3_A;
  wire sky130_fd_sc_hd__xor2_2_3_B;
  wire sky130_fd_sc_hd__xor2_2_4_A;
  wire sky130_fd_sc_hd__xor2_2_4_X;
  wire sky130_fd_sc_hd__xor2_2_5_A;
  wire sky130_fd_sc_hd__xor2_2_5_B;
  wire sky130_fd_sc_hd__xor2_2_5_X;
  wire sky130_fd_sc_hd__xor2_2_6_A;
  wire sky130_fd_sc_hd__xor2_2_6_B;
  wire sky130_fd_sc_hd__xor2_2_7_A;
  wire sky130_fd_sc_hd__xor2_2_7_X;
  wire sky130_fd_sc_hd__xor2_2_8_A;
  wire sky130_fd_sc_hd__xor2_2_8_B;
  wire sky130_fd_sc_hd__xor2_2_9_A;
  wire sky130_fd_sc_hd__xor2_2_9_X;

  // Instances
  sky130_fd_sc_hd__nor4_2 Xsky130_fd_sc_hd__nor4_2_0 (
    .C(sky130_fd_sc_hd__or4b_2_2_C),
    .D(sky130_fd_sc_hd__or4b_2_3_C),
    .Y(sky130_fd_sc_hd__nor4_2_0_Y),
    .A(sky130_fd_sc_hd__or4b_2_3_A),
    .B(sky130_fd_sc_hd__or4b_2_3_B)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_8 (
    .B(sky130_fd_sc_hd__or2_2_8_B),
    .X(sky130_fd_sc_hd__or2_2_8_X),
    .A(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_3 (
    .X(sky130_fd_sc_hd__and4_2_1_A),
    .B(sky130_fd_sc_hd__and2b_2_3_B),
    .A_N(sky130_fd_sc_hd__nand4_2_1_C)
  );

  sky130_fd_sc_hd__o31ai_2 Xsky130_fd_sc_hd__o31ai_2_1 (
    .A1(sky130_fd_sc_hd__or3_2_3_A),
    .Y(sky130_fd_sc_hd__o31ai_2_1_Y),
    .B1(sky130_fd_sc_hd__nor2_2_5_A),
    .A3(sky130_fd_sc_hd__or2_2_2_A),
    .A2(sky130_fd_sc_hd__or3_2_3_B)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_14 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_36 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_25 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_47 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_58 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_69 (
    
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_17 (
    .X(sky130_fd_sc_hd__a31o_2_17_X),
    .B1(sky130_fd_sc_hd__nand4_2_4_C),
    .A3(sky130_fd_sc_hd__nand4_2_4_D),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_20 (
    .B(sky130_fd_sc_hd__o31a_2_10_X),
    .X(O[3]),
    .A(sky130_fd_sc_hd__or2_2_11_B),
    .C(sky130_fd_sc_hd__and3_2_25_C)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_12 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__o21a_2_27_A2),
    .D(sky130_fd_sc_hd__nand4_2_12_D),
    .C(sky130_fd_sc_hd__nand4_2_12_C)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_17 (
    .A(sky130_fd_sc_hd__or3_2_17_A),
    .B(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__or3_2_17_X),
    .C(sky130_fd_sc_hd__or3_2_17_C)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_9 (
    .X(sky130_fd_sc_hd__a31o_2_9_X),
    .B1(sky130_fd_sc_hd__nor3_2_2_A),
    .A3(sky130_fd_sc_hd__and4_2_4_D),
    .A1(sky130_fd_sc_hd__and4_2_3_C),
    .A2(sky130_fd_sc_hd__inv_2_10_A)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_24 (
    .Y(sky130_fd_sc_hd__nor3b_2_0_B),
    .A(sky130_fd_sc_hd__xor2_2_16_A),
    .B(sky130_fd_sc_hd__xor2_2_19_X)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_7 (
    .A_N(sky130_fd_sc_hd__or4b_2_3_A),
    .C(sky130_fd_sc_hd__or4b_2_2_C),
    .B_N(sky130_fd_sc_hd__or4b_2_3_C),
    .X(sky130_fd_sc_hd__nand4_2_4_D),
    .D(sky130_fd_sc_hd__or4b_2_3_B)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_13 (
    .Y(sky130_fd_sc_hd__xnor2_2_13_Y),
    .A(sky130_fd_sc_hd__xor2_2_17_B),
    .B(sky130_fd_sc_hd__a31o_2_15_X)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_15 (
    .X(sky130_fd_sc_hd__dfrtp_2_8_CLK),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__nor3b_2 Xsky130_fd_sc_hd__nor3b_2_2 (
    .C_N(sky130_fd_sc_hd__nor3_2_3_B),
    .Y(sky130_fd_sc_hd__nor3b_2_2_Y),
    .A(sky130_fd_sc_hd__nor3_2_3_A),
    .B(sky130_fd_sc_hd__nor3_2_3_C)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_1 (
    .X(sky130_fd_sc_hd__clkbuf_8_1_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_4 (
    .S(sky130_fd_sc_hd__mux2_1_4_S),
    .A1(sky130_fd_sc_hd__or2_2_4_A),
    .A0(sky130_fd_sc_hd__or3_2_4_B),
    .X(sky130_fd_sc_hd__mux2_1_4_X)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_8 (
    .X(sky130_fd_sc_hd__xor2_2_8_A),
    .B1(sky130_fd_sc_hd__nor2_2_19_Y),
    .A1(sky130_fd_sc_hd__xor2_2_2_A),
    .A2(sky130_fd_sc_hd__a21o_2_8_A2)
  );

  sky130_fd_sc_hd__a211oi_2 Xsky130_fd_sc_hd__a211oi_2_0 (
    .A2(sky130_fd_sc_hd__inv_2_9_A),
    .C1(sky130_fd_sc_hd__xor2_2_11_B),
    .B1(sky130_fd_sc_hd__a21oi_2_13_Y),
    .Y(sky130_fd_sc_hd__dfrtp_2_43_D),
    .A1(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nor4_2 Xsky130_fd_sc_hd__nor4_2_1 (
    .C(sky130_fd_sc_hd__or4_2_4_D),
    .D(sky130_fd_sc_hd__or4_2_4_C),
    .Y(sky130_fd_sc_hd__nor4_2_1_Y),
    .A(sky130_fd_sc_hd__or4_2_4_B),
    .B(sky130_fd_sc_hd__or4_2_4_A)
  );

  sky130_fd_sc_hd__a22oi_2 Xsky130_fd_sc_hd__a22oi_2_0 (
    .A1(sky130_fd_sc_hd__or3b_2_0_A),
    .A2(sky130_fd_sc_hd__inv_2_13_Y),
    .B1(sky130_fd_sc_hd__or2_2_9_X),
    .B2(sky130_fd_sc_hd__nand2_2_29_Y),
    .Y(sky130_fd_sc_hd__a22oi_2_0_Y)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_9 (
    .B(sky130_fd_sc_hd__or2_2_9_B),
    .X(sky130_fd_sc_hd__or2_2_9_X),
    .A(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__o221a_2 Xsky130_fd_sc_hd__o221a_2_0 (
    .B2(sky130_fd_sc_hd__or4_2_0_A),
    .A2(sky130_fd_sc_hd__o21ai_2_2_Y),
    .X(sky130_fd_sc_hd__o221a_2_0_X),
    .B1(sky130_fd_sc_hd__o21a_2_1_X),
    .C1(sky130_fd_sc_hd__or4_2_0_B),
    .A1(sky130_fd_sc_hd__or3_2_2_C)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_4 (
    .X(sky130_fd_sc_hd__and4_2_1_D),
    .B(sky130_fd_sc_hd__o21a_2_8_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_2_C)
  );

  sky130_fd_sc_hd__and4_2 Xsky130_fd_sc_hd__and4_2_0 (
    .X(sky130_fd_sc_hd__and4_2_0_X),
    .C(sky130_fd_sc_hd__and4_2_0_C),
    .A(sky130_fd_sc_hd__and4_2_0_A),
    .B(sky130_fd_sc_hd__and4_2_0_B),
    .D(sky130_fd_sc_hd__and4_2_0_D)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_15 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_26 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_48 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_37 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_59 (
    
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_18 (
    .X(sky130_fd_sc_hd__a31o_2_18_X),
    .B1(sky130_fd_sc_hd__nand4_2_7_C),
    .A3(sky130_fd_sc_hd__nor4_2_1_Y),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_10 (
    .B(sky130_fd_sc_hd__and3_2_10_B),
    .X(sky130_fd_sc_hd__or4b_2_8_C),
    .A(sky130_fd_sc_hd__and3_2_10_A),
    .C(sky130_fd_sc_hd__and4_2_4_B)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_21 (
    .B(sky130_fd_sc_hd__o31a_2_5_X),
    .X(O[4]),
    .A(sky130_fd_sc_hd__or2_2_11_B),
    .C(sky130_fd_sc_hd__and3_2_25_C)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_13 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__o21a_2_25_A2),
    .D(sky130_fd_sc_hd__nand4_2_13_D),
    .C(sky130_fd_sc_hd__nand4_2_13_C)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_25 (
    .Y(sky130_fd_sc_hd__nor2_2_46_B),
    .A(sky130_fd_sc_hd__a22o_2_4_B2),
    .B(sky130_fd_sc_hd__xor2_2_17_X)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_8 (
    .A_N(sky130_fd_sc_hd__or4b_2_3_B),
    .C(sky130_fd_sc_hd__or4b_2_2_C),
    .B_N(sky130_fd_sc_hd__or4b_2_3_C),
    .X(sky130_fd_sc_hd__nand4_2_6_D),
    .D(sky130_fd_sc_hd__or4b_2_3_A)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_14 (
    .Y(sky130_fd_sc_hd__xnor2_2_14_Y),
    .A(sky130_fd_sc_hd__xor2_2_16_A),
    .B(sky130_fd_sc_hd__xnor2_2_14_B)
  );

  sky130_fd_sc_hd__nor3b_2 Xsky130_fd_sc_hd__nor3b_2_3 (
    .C_N(sky130_fd_sc_hd__nor3_2_3_C),
    .Y(sky130_fd_sc_hd__nor3b_2_3_Y),
    .A(sky130_fd_sc_hd__nor3_2_3_A),
    .B(sky130_fd_sc_hd__nor3_2_3_B)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_2 (
    .X(sky130_fd_sc_hd__clkbuf_8_2_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_5 (
    .S(sky130_fd_sc_hd__xor2_2_7_A),
    .A1(sky130_fd_sc_hd__mux2_1_5_A1),
    .A0(sky130_fd_sc_hd__and3_2_7_X),
    .X(sky130_fd_sc_hd__mux2_1_5_X)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_9 (
    .X(sky130_fd_sc_hd__a21o_2_9_X),
    .B1(sky130_fd_sc_hd__xor2_2_4_A),
    .A1(sky130_fd_sc_hd__xor2_2_9_A),
    .A2(sky130_fd_sc_hd__inv_2_5_A)
  );

  sky130_fd_sc_hd__a211oi_2 Xsky130_fd_sc_hd__a211oi_2_1 (
    .A2(sky130_fd_sc_hd__a32o_2_3_B1),
    .C1(sky130_fd_sc_hd__or4b_2_8_A),
    .B1(sky130_fd_sc_hd__or4b_2_8_C),
    .Y(sky130_fd_sc_hd__nor3_2_3_A),
    .A1(sky130_fd_sc_hd__inv_2_22_Y)
  );

  sky130_fd_sc_hd__o221a_2 Xsky130_fd_sc_hd__o221a_2_1 (
    .B2(sky130_fd_sc_hd__xnor2_2_21_Y),
    .A2(sky130_fd_sc_hd__or2_2_10_X),
    .X(sky130_fd_sc_hd__o221a_2_1_X),
    .B1(sky130_fd_sc_hd__nor2_2_46_A),
    .C1(sky130_fd_sc_hd__o21ai_2_3_Y),
    .A1(sky130_fd_sc_hd__xor2_2_16_A)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_5 (
    .X(sky130_fd_sc_hd__xor2_2_6_B),
    .B(sky130_fd_sc_hd__o22ai_2_0_Y),
    .A_N(sky130_fd_sc_hd__and4bb_2_0_X)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_0 (
    .B1(sky130_fd_sc_hd__or4_2_0_A),
    .A2(sky130_fd_sc_hd__nor2_2_3_B),
    .A1(sky130_fd_sc_hd__or3_2_3_B),
    .Y(sky130_fd_sc_hd__a32o_2_1_B2)
  );

  sky130_fd_sc_hd__and4_2 Xsky130_fd_sc_hd__and4_2_1 (
    .X(sky130_fd_sc_hd__and4_2_1_X),
    .C(sky130_fd_sc_hd__and4_2_1_C),
    .A(sky130_fd_sc_hd__and4_2_1_A),
    .B(sky130_fd_sc_hd__and4_2_1_B),
    .D(sky130_fd_sc_hd__and4_2_1_D)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_16 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_27 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_38 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_49 (
    
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_19 (
    .X(sky130_fd_sc_hd__a31o_2_19_X),
    .B1(sky130_fd_sc_hd__nand4_2_8_C),
    .A3(sky130_fd_sc_hd__nand4_2_8_D),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_0 (
    .C1(sky130_fd_sc_hd__xor2_2_4_A),
    .B1(sky130_fd_sc_hd__xor2_2_9_A),
    .A2(sky130_fd_sc_hd__xor2_2_0_B),
    .A1(sky130_fd_sc_hd__xor2_2_7_A),
    .X(sky130_fd_sc_hd__o211a_2_0_X)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_22 (
    .B(sky130_fd_sc_hd__o31a_2_8_X),
    .X(O[5]),
    .A(sky130_fd_sc_hd__or2_2_11_B),
    .C(sky130_fd_sc_hd__and3_2_25_C)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_11 (
    .B(sky130_fd_sc_hd__and4_2_3_B),
    .X(sky130_fd_sc_hd__and3_2_11_X),
    .A(sky130_fd_sc_hd__and4_2_3_A),
    .C(sky130_fd_sc_hd__inv_2_10_A)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_14 (
    .B(sky130_fd_sc_hd__or2_2_9_B),
    .A(sky130_fd_sc_hd__or2_2_8_B),
    .Y(sky130_fd_sc_hd__and3_2_25_C),
    .D(sky130_fd_sc_hd__or3b_2_0_A),
    .C(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_9 (
    .A_N(sky130_fd_sc_hd__or4_2_4_B),
    .C(sky130_fd_sc_hd__or4_2_4_C),
    .B_N(sky130_fd_sc_hd__or4_2_4_D),
    .X(sky130_fd_sc_hd__nand4_2_9_D),
    .D(sky130_fd_sc_hd__or4_2_4_A)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_15 (
    .Y(sky130_fd_sc_hd__a22o_2_9_A1),
    .A(sky130_fd_sc_hd__a22o_2_4_B2),
    .B(sky130_fd_sc_hd__a22o_2_22_X)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_26 (
    .Y(sky130_fd_sc_hd__nor2_2_40_A),
    .A(sky130_fd_sc_hd__xnor2_2_26_A),
    .B(sky130_fd_sc_hd__xnor2_2_26_B)
  );

  sky130_fd_sc_hd__nor3b_2 Xsky130_fd_sc_hd__nor3b_2_4 (
    .C_N(sky130_fd_sc_hd__nor3_2_3_A),
    .Y(sky130_fd_sc_hd__or3_2_17_B),
    .A(sky130_fd_sc_hd__nor3_2_3_B),
    .B(sky130_fd_sc_hd__nor3_2_3_C)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_3 (
    .X(sky130_fd_sc_hd__clkbuf_8_3_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_6 (
    .S(sky130_fd_sc_hd__inv_2_7_Y),
    .A1(sky130_fd_sc_hd__inv_2_8_Y),
    .A0(sky130_fd_sc_hd__inv_2_9_A),
    .X(sky130_fd_sc_hd__mux2_1_6_X)
  );

  sky130_fd_sc_hd__a211oi_2 Xsky130_fd_sc_hd__a211oi_2_2 (
    .A2(sky130_fd_sc_hd__or2_2_9_A),
    .C1(sky130_fd_sc_hd__or2_2_8_B),
    .B1(sky130_fd_sc_hd__or2_2_9_B),
    .Y(sky130_fd_sc_hd__or3_2_17_A),
    .A1(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__o221a_2 Xsky130_fd_sc_hd__o221a_2_2 (
    .B2(sky130_fd_sc_hd__o221a_2_2_B2),
    .A2(sky130_fd_sc_hd__nor2_2_32_B),
    .X(sky130_fd_sc_hd__o221a_2_2_X),
    .B1(sky130_fd_sc_hd__nor2_2_32_Y),
    .C1(sky130_fd_sc_hd__o221a_2_2_C1),
    .A1(sky130_fd_sc_hd__or2_2_8_X)
  );

  sky130_fd_sc_hd__or4b_2 Xsky130_fd_sc_hd__or4b_2_0 (
    .C(sky130_fd_sc_hd__or4b_2_3_C),
    .A(sky130_fd_sc_hd__or4b_2_3_A),
    .X(sky130_fd_sc_hd__or4_2_1_C),
    .B(sky130_fd_sc_hd__or4b_2_2_C),
    .D_N(sky130_fd_sc_hd__or4b_2_3_B)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_6 (
    .X(sky130_fd_sc_hd__and2b_2_6_X),
    .B(sky130_fd_sc_hd__or3b_2_0_A),
    .A_N(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_1 (
    .B1(sky130_fd_sc_hd__or3_2_0_X),
    .A2(sky130_fd_sc_hd__and3_2_0_C),
    .A1(sky130_fd_sc_hd__or2_2_4_A),
    .Y(sky130_fd_sc_hd__o32a_2_0_A3)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_17 (
    
  );

  sky130_fd_sc_hd__and4_2 Xsky130_fd_sc_hd__and4_2_2 (
    .X(sky130_fd_sc_hd__inv_2_5_A),
    .C(sky130_fd_sc_hd__xor2_2_0_B),
    .A(sky130_fd_sc_hd__inv_2_9_A),
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .D(sky130_fd_sc_hd__xor2_2_7_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_39 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_28 (
    
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_1 (
    .C1(sky130_fd_sc_hd__nor2_2_5_A),
    .B1(sky130_fd_sc_hd__or2_2_4_A),
    .A2(sky130_fd_sc_hd__or2_2_2_A),
    .A1(sky130_fd_sc_hd__or3_2_3_A),
    .X(sky130_fd_sc_hd__or3_2_4_C)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_23 (
    .B(sky130_fd_sc_hd__o31a_2_3_X),
    .X(O[7]),
    .A(sky130_fd_sc_hd__or2_2_11_B),
    .C(sky130_fd_sc_hd__and3_2_25_C)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_12 (
    .B(sky130_fd_sc_hd__and3_2_12_B),
    .X(sky130_fd_sc_hd__and3_2_13_C),
    .A(sky130_fd_sc_hd__and3_2_12_A),
    .C(sky130_fd_sc_hd__and3_2_12_C)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_16 (
    .Y(sky130_fd_sc_hd__xnor2_2_26_B),
    .A(sky130_fd_sc_hd__xor2_2_20_A),
    .B(sky130_fd_sc_hd__xor2_2_17_B)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_27 (
    .Y(sky130_fd_sc_hd__o32a_2_2_A2),
    .A(sky130_fd_sc_hd__or2_2_8_B),
    .B(sky130_fd_sc_hd__and3_2_16_X)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_4 (
    .X(sky130_fd_sc_hd__clkbuf_8_4_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_80 (
    .Q(sky130_fd_sc_hd__nand4_2_9_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_21_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_9_X)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_7 (
    .S(sky130_fd_sc_hd__inv_2_8_A),
    .A1(sky130_fd_sc_hd__or2_2_7_X),
    .A0(sky130_fd_sc_hd__mux2_1_7_A0),
    .X(sky130_fd_sc_hd__mux2_1_7_X)
  );

  sky130_fd_sc_hd__o2bb2a_2 Xsky130_fd_sc_hd__o2bb2a_2_0 (
    .A1_N(sky130_fd_sc_hd__or4_2_4_C),
    .X(sky130_fd_sc_hd__xnor2_2_8_B),
    .A2_N(sky130_fd_sc_hd__xor2_2_1_B),
    .B2(sky130_fd_sc_hd__xor2_2_9_A),
    .B1(sky130_fd_sc_hd__nand2_2_2_Y)
  );

  sky130_fd_sc_hd__or4b_2 Xsky130_fd_sc_hd__or4b_2_1 (
    .C(sky130_fd_sc_hd__or4b_2_3_C),
    .A(sky130_fd_sc_hd__or4b_2_3_B),
    .X(sky130_fd_sc_hd__or4_2_3_C),
    .B(sky130_fd_sc_hd__or4b_2_2_C),
    .D_N(sky130_fd_sc_hd__or4b_2_3_A)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_20 (
    .X(sky130_fd_sc_hd__xor2_2_20_X),
    .B(sky130_fd_sc_hd__xor2_2_20_B),
    .A(sky130_fd_sc_hd__xor2_2_20_A)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_7 (
    .X(sky130_fd_sc_hd__o31a_2_0_A1),
    .B(sky130_fd_sc_hd__or2_2_9_B),
    .A_N(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_2 (
    .B1(sky130_fd_sc_hd__or4_2_0_A),
    .A2(sky130_fd_sc_hd__o21ba_2_0_X),
    .A1(sky130_fd_sc_hd__or2_2_5_A),
    .Y(sky130_fd_sc_hd__a21oi_2_2_Y)
  );

  sky130_fd_sc_hd__and4_2 Xsky130_fd_sc_hd__and4_2_3 (
    .X(sky130_fd_sc_hd__and4_2_3_X),
    .C(sky130_fd_sc_hd__and4_2_3_C),
    .A(sky130_fd_sc_hd__and4_2_3_A),
    .B(sky130_fd_sc_hd__and4_2_3_B),
    .D(sky130_fd_sc_hd__nor3_2_2_Y)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_18 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_29 (
    
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_2 (
    .C1(sky130_fd_sc_hd__or3_2_7_X),
    .B1(sky130_fd_sc_hd__nor2_2_20_Y),
    .A2(sky130_fd_sc_hd__a31o_2_5_X),
    .A1(sky130_fd_sc_hd__o311a_2_0_X),
    .X(sky130_fd_sc_hd__or4b_2_3_B)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_24 (
    .B(sky130_fd_sc_hd__o31a_2_7_X),
    .X(O[2]),
    .A(sky130_fd_sc_hd__or2_2_11_B),
    .C(sky130_fd_sc_hd__and3_2_25_C)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_13 (
    .B(sky130_fd_sc_hd__and4_2_6_X),
    .X(sky130_fd_sc_hd__and4b_2_3_D),
    .A(sky130_fd_sc_hd__and4_2_5_X),
    .C(sky130_fd_sc_hd__and3_2_13_C)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_10 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .X(sky130_fd_sc_hd__or2_2_10_X),
    .A(sky130_fd_sc_hd__or2_2_10_A)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_28 (
    .Y(sky130_fd_sc_hd__xnor2_2_28_Y),
    .A(sky130_fd_sc_hd__or2_2_9_A),
    .B(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_17 (
    .Y(sky130_fd_sc_hd__xnor2_2_26_A),
    .A(sky130_fd_sc_hd__xor2_2_14_B),
    .B(sky130_fd_sc_hd__xor2_2_19_A)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_5 (
    .X(sky130_fd_sc_hd__clkbuf_8_5_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_70 (
    .Q(sky130_fd_sc_hd__o21a_2_27_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_70_D),
    .CLK(sky130_fd_sc_hd__clkbuf_8_11_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_81 (
    .Q(success),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a32o_2_4_X),
    .CLK(sky130_fd_sc_hd__dfxtp_2_2_CLK)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_8 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__mux2_1_8_A1),
    .A0(sky130_fd_sc_hd__mux2_1_8_A0),
    .X(sky130_fd_sc_hd__mux2_1_8_X)
  );

  sky130_fd_sc_hd__or4b_2 Xsky130_fd_sc_hd__or4b_2_2 (
    .C(sky130_fd_sc_hd__or4b_2_2_C),
    .A(sky130_fd_sc_hd__or4b_2_3_A),
    .X(sky130_fd_sc_hd__or4_2_2_C),
    .B(sky130_fd_sc_hd__or4b_2_3_B),
    .D_N(sky130_fd_sc_hd__or4b_2_3_C)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_10 (
    .X(sky130_fd_sc_hd__xor2_2_10_X),
    .B(sky130_fd_sc_hd__and4_2_4_X),
    .A(sky130_fd_sc_hd__or3_2_8_C)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_8 (
    .X(sky130_fd_sc_hd__and3_2_10_B),
    .B(sky130_fd_sc_hd__or3_2_8_A),
    .A_N(sky130_fd_sc_hd__and4_2_3_A)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_3 (
    .B1(sky130_fd_sc_hd__or4_2_0_B),
    .A2(sky130_fd_sc_hd__or3_2_4_X),
    .A1(sky130_fd_sc_hd__nand2_2_3_Y),
    .Y(sky130_fd_sc_hd__or3_2_7_C)
  );

  sky130_fd_sc_hd__and4_2 Xsky130_fd_sc_hd__and4_2_4 (
    .X(sky130_fd_sc_hd__and4_2_4_X),
    .C(sky130_fd_sc_hd__inv_2_10_A),
    .A(sky130_fd_sc_hd__nor3_2_2_B),
    .B(sky130_fd_sc_hd__and4_2_4_B),
    .D(sky130_fd_sc_hd__and4_2_4_D)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_19 (
    
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_0 (
    .B(sky130_fd_sc_hd__or2_2_4_B),
    .Y(sky130_fd_sc_hd__mux2_1_4_S),
    .A_N(sky130_fd_sc_hd__and3_2_0_C)
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_3 (
    .C1(sky130_fd_sc_hd__nor2_2_20_Y),
    .B1(sky130_fd_sc_hd__o211ai_2_0_Y),
    .A2(sky130_fd_sc_hd__a21o_2_3_X),
    .A1(sky130_fd_sc_hd__xor2_2_5_X),
    .X(sky130_fd_sc_hd__or4b_2_3_A)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_25 (
    .B(sky130_fd_sc_hd__o31a_2_9_X),
    .X(O[0]),
    .A(sky130_fd_sc_hd__or2_2_11_B),
    .C(sky130_fd_sc_hd__and3_2_25_C)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_14 (
    .B(sky130_fd_sc_hd__or4_2_4_A),
    .X(sky130_fd_sc_hd__xor2_2_11_B),
    .A(sky130_fd_sc_hd__or4_2_4_B),
    .C(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__o211ai_2 Xsky130_fd_sc_hd__o211ai_2_0 (
    .A1(sky130_fd_sc_hd__or2_2_5_A),
    .A2(sky130_fd_sc_hd__mux2_1_2_X),
    .B1(sky130_fd_sc_hd__a211o_2_1_X),
    .Y(sky130_fd_sc_hd__o211ai_2_0_Y),
    .C1(sky130_fd_sc_hd__xor2_2_5_X)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_11 (
    .B(sky130_fd_sc_hd__or2_2_11_B),
    .X(sky130_fd_sc_hd__or2_2_11_X),
    .A(sky130_fd_sc_hd__or2_2_11_A)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_18 (
    .Y(sky130_fd_sc_hd__xnor2_2_18_Y),
    .A(sky130_fd_sc_hd__or3_2_9_X),
    .B(sky130_fd_sc_hd__xor2_2_15_X)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_6 (
    .X(sky130_fd_sc_hd__clkbuf_8_6_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_60 (
    .Q(sky130_fd_sc_hd__nand4_2_7_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_19_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_8_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_82 (
    .Q(sky130_fd_sc_hd__a32o_2_3_B1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a32o_2_3_X),
    .CLK(sky130_fd_sc_hd__dfxtp_2_2_CLK)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_71 (
    .Q(sky130_fd_sc_hd__nand4_2_8_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_23_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_9_X)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_9 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__mux2_1_9_A1),
    .A0(sky130_fd_sc_hd__mux2_1_9_A0),
    .X(sky130_fd_sc_hd__mux2_1_9_X)
  );

  sky130_fd_sc_hd__or4_2 Xsky130_fd_sc_hd__or4_2_0 (
    .C(sky130_fd_sc_hd__or4_2_0_C),
    .A(sky130_fd_sc_hd__or4_2_0_A),
    .X(sky130_fd_sc_hd__or4_2_0_X),
    .B(sky130_fd_sc_hd__or4_2_0_B),
    .D(sky130_fd_sc_hd__or4_2_0_D)
  );

  sky130_fd_sc_hd__or4b_2 Xsky130_fd_sc_hd__or4b_2_3 (
    .C(sky130_fd_sc_hd__or4b_2_3_C),
    .A(sky130_fd_sc_hd__or4b_2_3_A),
    .X(sky130_fd_sc_hd__or4_2_5_C),
    .B(sky130_fd_sc_hd__or4b_2_3_B),
    .D_N(sky130_fd_sc_hd__or4b_2_2_C)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_11 (
    .X(sky130_fd_sc_hd__xor2_2_11_X),
    .B(sky130_fd_sc_hd__xor2_2_11_B),
    .A(sky130_fd_sc_hd__or4_2_4_C)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_9 (
    .X(sky130_fd_sc_hd__and2b_2_9_X),
    .B(sky130_fd_sc_hd__and2b_2_9_B),
    .A_N(sky130_fd_sc_hd__and4_2_4_X)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_0 (
    .X(sky130_fd_sc_hd__clkbuf_4_0_X),
    .A(sky130_fd_sc_hd__clkbuf_8_1_X)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_4 (
    .B1(sky130_fd_sc_hd__or3_2_5_X),
    .A2(sky130_fd_sc_hd__and3_2_4_B),
    .A1(sky130_fd_sc_hd__and3_2_4_A),
    .Y(sky130_fd_sc_hd__nor2_2_21_A)
  );

  sky130_fd_sc_hd__and4_2 Xsky130_fd_sc_hd__and4_2_5 (
    .X(sky130_fd_sc_hd__and4_2_5_X),
    .C(sky130_fd_sc_hd__and4_2_5_C),
    .A(sky130_fd_sc_hd__and4_2_5_A),
    .B(sky130_fd_sc_hd__and4_2_5_B),
    .D(sky130_fd_sc_hd__and4_2_5_D)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_1 (
    .B(sky130_fd_sc_hd__o21a_2_4_A2),
    .Y(sky130_fd_sc_hd__nand2b_2_1_Y),
    .A_N(sky130_fd_sc_hd__o21a_2_4_A1)
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_4 (
    .C1(sky130_fd_sc_hd__nor2_2_20_Y),
    .B1(sky130_fd_sc_hd__a221o_2_0_X),
    .A2(sky130_fd_sc_hd__o21ai_2_1_Y),
    .A1(sky130_fd_sc_hd__xor2_2_5_X),
    .X(sky130_fd_sc_hd__or4b_2_3_C)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_15 (
    .B(sky130_fd_sc_hd__or2_2_9_A),
    .X(sky130_fd_sc_hd__o31a_2_2_A1),
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .C(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_12 (
    .B(sky130_fd_sc_hd__or2_2_12_B),
    .X(sky130_fd_sc_hd__or2_2_12_X),
    .A(sky130_fd_sc_hd__or2_2_12_A)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_19 (
    .Y(sky130_fd_sc_hd__xnor2_2_19_Y),
    .A(sky130_fd_sc_hd__xnor2_2_21_B),
    .B(sky130_fd_sc_hd__xor2_2_19_X)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_7 (
    .X(sky130_fd_sc_hd__clkbuf_8_7_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_61 (
    .Q(sky130_fd_sc_hd__or4_2_9_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a21o_2_18_X),
    .CLK(sky130_fd_sc_hd__dfxtp_2_3_CLK)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_50 (
    .Q(sky130_fd_sc_hd__xor2_2_19_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o22a_2_3_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_7_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_83 (
    .Q(sky130_fd_sc_hd__or2_2_11_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__or2_2_11_X),
    .CLK(sky130_fd_sc_hd__dfxtp_2_2_CLK)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_72 (
    .Q(sky130_fd_sc_hd__inv_2_20_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_26_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_11_X)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_20 (
    .A(sky130_fd_sc_hd__inv_2_20_A),
    .Y(sky130_fd_sc_hd__or4_2_6_B)
  );

  sky130_fd_sc_hd__or4_2 Xsky130_fd_sc_hd__or4_2_1 (
    .C(sky130_fd_sc_hd__or4_2_1_C),
    .A(sky130_fd_sc_hd__or4_2_1_A),
    .X(sky130_fd_sc_hd__or4_2_1_X),
    .B(sky130_fd_sc_hd__or4_2_1_B),
    .D(sky130_fd_sc_hd__or4_2_1_D)
  );

  sky130_fd_sc_hd__or4b_2 Xsky130_fd_sc_hd__or4b_2_4 (
    .C(sky130_fd_sc_hd__or4_2_4_C),
    .A(sky130_fd_sc_hd__or4_2_4_B),
    .X(sky130_fd_sc_hd__or4_2_9_C),
    .B(sky130_fd_sc_hd__or4_2_4_D),
    .D_N(sky130_fd_sc_hd__or4_2_4_A)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_12 (
    .X(sky130_fd_sc_hd__xor2_2_12_X),
    .B(sky130_fd_sc_hd__o31a_2_1_X),
    .A(sky130_fd_sc_hd__xor2_2_14_B)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_200 (
    
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_1 (
    .X(sky130_fd_sc_hd__clkbuf_4_1_X),
    .A(sky130_fd_sc_hd__clkbuf_8_0_X)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_5 (
    .B1(sky130_fd_sc_hd__xor2_2_9_A),
    .A2(sky130_fd_sc_hd__xor2_2_4_A),
    .A1(sky130_fd_sc_hd__xor2_2_0_B),
    .Y(sky130_fd_sc_hd__a21oi_2_5_Y)
  );

  sky130_fd_sc_hd__and4_2 Xsky130_fd_sc_hd__and4_2_6 (
    .X(sky130_fd_sc_hd__and4_2_6_X),
    .C(sky130_fd_sc_hd__and4_2_6_C),
    .A(sky130_fd_sc_hd__and4_2_6_A),
    .B(sky130_fd_sc_hd__and4_2_6_B),
    .D(sky130_fd_sc_hd__and4_2_6_D)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_2 (
    .B(sky130_fd_sc_hd__nand4_2_1_Y),
    .Y(sky130_fd_sc_hd__nand2b_2_2_Y),
    .A_N(sky130_fd_sc_hd__and2b_2_3_B)
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_5 (
    .C1(sky130_fd_sc_hd__nor2_2_20_Y),
    .B1(sky130_fd_sc_hd__a211o_2_0_X),
    .A2(sky130_fd_sc_hd__mux2_1_3_X),
    .A1(sky130_fd_sc_hd__xor2_2_5_X),
    .X(sky130_fd_sc_hd__or4b_2_2_C)
  );

  sky130_fd_sc_hd__a221oi_2 Xsky130_fd_sc_hd__a221oi_2_0 (
    .B2(sky130_fd_sc_hd__or4_2_4_D),
    .C1(sky130_fd_sc_hd__a41oi_2_0_Y),
    .A2(sky130_fd_sc_hd__inv_2_9_A),
    .A1(sky130_fd_sc_hd__inv_2_7_A),
    .B1(sky130_fd_sc_hd__and4_2_7_X),
    .Y(sky130_fd_sc_hd__dfrtp_2_45_D)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_16 (
    .B(sky130_fd_sc_hd__or2_2_9_A),
    .X(sky130_fd_sc_hd__and3_2_16_X),
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .C(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_8 (
    .X(sky130_fd_sc_hd__clkbuf_8_8_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_51 (
    .Q(sky130_fd_sc_hd__xor2_2_19_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a221o_2_2_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_7_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_40 (
    .Q(sky130_fd_sc_hd__mux2_1_9_A0),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_9_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_5_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_73 (
    .Q(sky130_fd_sc_hd__nand4_2_13_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_25_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_11_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_62 (
    .Q(sky130_fd_sc_hd__inv_2_18_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_20_X),
    .CLK(sky130_fd_sc_hd__dfxtp_2_3_CLK)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_21 (
    .A(sky130_fd_sc_hd__or2_2_8_B),
    .Y(sky130_fd_sc_hd__inv_2_21_Y)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_10 (
    .A(sky130_fd_sc_hd__inv_2_10_A),
    .Y(sky130_fd_sc_hd__inv_2_10_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_0 (
    .Y(sky130_fd_sc_hd__and3_2_1_C),
    .A(sky130_fd_sc_hd__or2_2_1_X),
    .B(sky130_fd_sc_hd__or3_2_0_B)
  );

  sky130_fd_sc_hd__or4_2 Xsky130_fd_sc_hd__or4_2_2 (
    .C(sky130_fd_sc_hd__or4_2_2_C),
    .A(sky130_fd_sc_hd__or4_2_2_A),
    .X(sky130_fd_sc_hd__or4_2_2_X),
    .B(sky130_fd_sc_hd__or4_2_2_B),
    .D(sky130_fd_sc_hd__or4_2_2_D)
  );

  sky130_fd_sc_hd__or4b_2 Xsky130_fd_sc_hd__or4b_2_5 (
    .C(sky130_fd_sc_hd__or4_2_4_D),
    .A(sky130_fd_sc_hd__or4_2_4_B),
    .X(sky130_fd_sc_hd__or4_2_8_C),
    .B(sky130_fd_sc_hd__or4_2_4_A),
    .D_N(sky130_fd_sc_hd__or4_2_4_C)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_13 (
    .X(sky130_fd_sc_hd__xor2_2_13_X),
    .B(sky130_fd_sc_hd__xor2_2_19_B),
    .A(sky130_fd_sc_hd__or2_2_12_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_201 (
    
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_10 (
    .A_N(sky130_fd_sc_hd__or4_2_4_D),
    .C(sky130_fd_sc_hd__or4_2_4_A),
    .B_N(sky130_fd_sc_hd__or4_2_4_C),
    .X(sky130_fd_sc_hd__nand4_2_8_D),
    .D(sky130_fd_sc_hd__or4_2_4_B)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_2 (
    .X(sky130_fd_sc_hd__clkbuf_4_2_X),
    .A(sky130_fd_sc_hd__clkbuf_8_4_X)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_6 (
    .B1(sky130_fd_sc_hd__or3_2_5_B),
    .A2(sky130_fd_sc_hd__xnor2_2_4_A),
    .A1(sky130_fd_sc_hd__xor2_2_4_A),
    .Y(sky130_fd_sc_hd__a21oi_2_6_Y)
  );

  sky130_fd_sc_hd__and4_2 Xsky130_fd_sc_hd__and4_2_7 (
    .X(sky130_fd_sc_hd__and4_2_7_X),
    .C(sky130_fd_sc_hd__or4_2_4_C),
    .A(sky130_fd_sc_hd__or4_2_4_B),
    .B(sky130_fd_sc_hd__or4_2_4_A),
    .D(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_3 (
    .B(sky130_fd_sc_hd__o21a_2_8_A2),
    .Y(sky130_fd_sc_hd__nand2b_2_3_Y),
    .A_N(sky130_fd_sc_hd__o21a_2_8_A1)
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_6 (
    .C1(sky130_fd_sc_hd__or3_2_1_X),
    .B1(sky130_fd_sc_hd__or4_2_0_B),
    .A2(sky130_fd_sc_hd__or3_2_4_B),
    .A1(sky130_fd_sc_hd__nand2_2_3_Y),
    .X(sky130_fd_sc_hd__or3_2_7_B)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_17 (
    .B(sky130_fd_sc_hd__inv_2_14_Y),
    .X(sky130_fd_sc_hd__and3_2_17_X),
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .C(sky130_fd_sc_hd__and3_2_17_C)
  );

  sky130_fd_sc_hd__a21bo_2 Xsky130_fd_sc_hd__a21bo_2_0 (
    .B1_N(sky130_fd_sc_hd__a32o_2_1_B2),
    .A2(sky130_fd_sc_hd__or2_2_3_X),
    .X(sky130_fd_sc_hd__a31o_2_5_A2),
    .A1(sky130_fd_sc_hd__or3_2_0_B)
  );

  sky130_fd_sc_hd__a31oi_2 Xsky130_fd_sc_hd__a31oi_2_0 (
    .A3(sky130_fd_sc_hd__nand2b_2_8_Y),
    .B1(sky130_fd_sc_hd__and3b_2_0_C),
    .Y(sky130_fd_sc_hd__o31a_2_0_A2),
    .A1(sky130_fd_sc_hd__nor3_2_1_C),
    .A2(sky130_fd_sc_hd__o32ai_2_0_B1)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_0 (
    
  );

  sky130_fd_sc_hd__o311a_2 Xsky130_fd_sc_hd__o311a_2_0 (
    .X(sky130_fd_sc_hd__o311a_2_0_X),
    .A2(sky130_fd_sc_hd__or4_2_0_A),
    .A3(sky130_fd_sc_hd__and3_2_0_X),
    .A1(sky130_fd_sc_hd__nor2_2_26_Y),
    .B1(sky130_fd_sc_hd__or4_2_0_B),
    .C1(sky130_fd_sc_hd__o311a_2_0_C1)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_10 (
    .B1(sky130_fd_sc_hd__nor2_2_6_Y),
    .A2(sky130_fd_sc_hd__xor2_2_7_X),
    .A1(sky130_fd_sc_hd__xor2_2_0_B),
    .Y(sky130_fd_sc_hd__xor2_2_1_B)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_9 (
    .X(sky130_fd_sc_hd__clkbuf_8_9_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_52 (
    .Q(sky130_fd_sc_hd__or4_2_5_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a21o_2_13_X),
    .CLK(sky130_fd_sc_hd__clkbuf_4_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_30 (
    .Q(sky130_fd_sc_hd__mux2_1_8_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_14_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_2_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_41 (
    .Q(sky130_fd_sc_hd__a22o_2_2_A2),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_13_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_8_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_74 (
    .Q(sky130_fd_sc_hd__nand4_2_12_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_27_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_11_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_63 (
    .Q(sky130_fd_sc_hd__o21a_2_23_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_63_D),
    .CLK(sky130_fd_sc_hd__clkbuf_8_9_X)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_11 (
    .A(sky130_fd_sc_hd__inv_2_11_A),
    .Y(sky130_fd_sc_hd__inv_2_23_A)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_22 (
    .A(success),
    .Y(sky130_fd_sc_hd__inv_2_22_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_1 (
    .Y(sky130_fd_sc_hd__and2_2_2_A),
    .A(sky130_fd_sc_hd__xor2_2_3_A),
    .B(sky130_fd_sc_hd__or2_2_0_B)
  );

  sky130_fd_sc_hd__or4_2 Xsky130_fd_sc_hd__or4_2_3 (
    .C(sky130_fd_sc_hd__or4_2_3_C),
    .A(sky130_fd_sc_hd__or4_2_3_A),
    .X(sky130_fd_sc_hd__or4_2_3_X),
    .B(sky130_fd_sc_hd__or4_2_3_B),
    .D(sky130_fd_sc_hd__or4_2_3_D)
  );

  sky130_fd_sc_hd__o32a_2 Xsky130_fd_sc_hd__o32a_2_0 (
    .B1(sky130_fd_sc_hd__o32a_2_1_B2),
    .B2(sky130_fd_sc_hd__nor2_2_3_Y),
    .A3(sky130_fd_sc_hd__o32a_2_0_A3),
    .A2(sky130_fd_sc_hd__and3_2_0_X),
    .A1(sky130_fd_sc_hd__or4_2_0_A),
    .X(sky130_fd_sc_hd__o32a_2_0_X)
  );

  sky130_fd_sc_hd__or4b_2 Xsky130_fd_sc_hd__or4b_2_6 (
    .C(sky130_fd_sc_hd__or4_2_4_C),
    .A(sky130_fd_sc_hd__or4_2_4_A),
    .X(sky130_fd_sc_hd__or4_2_7_C),
    .B(sky130_fd_sc_hd__or4_2_4_D),
    .D_N(sky130_fd_sc_hd__or4_2_4_B)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_14 (
    .X(sky130_fd_sc_hd__xor2_2_14_X),
    .B(sky130_fd_sc_hd__xor2_2_14_B),
    .A(sky130_fd_sc_hd__xor2_2_16_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_202 (
    
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_11 (
    .A_N(sky130_fd_sc_hd__or4_2_4_B),
    .C(sky130_fd_sc_hd__or4_2_4_D),
    .B_N(sky130_fd_sc_hd__or4_2_4_C),
    .X(sky130_fd_sc_hd__nand4_2_12_D),
    .D(sky130_fd_sc_hd__or4_2_4_A)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_3 (
    .X(sky130_fd_sc_hd__clkbuf_4_3_X),
    .A(sky130_fd_sc_hd__clkbuf_8_3_X)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_7 (
    .B1(sky130_fd_sc_hd__and4bb_2_0_X),
    .A2(sky130_fd_sc_hd__o22ai_2_0_Y),
    .A1(sky130_fd_sc_hd__xor2_2_6_A),
    .Y(sky130_fd_sc_hd__xor2_2_5_A)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_4 (
    .B(sky130_fd_sc_hd__nand4_2_5_Y),
    .Y(sky130_fd_sc_hd__nand2b_2_4_Y),
    .A_N(sky130_fd_sc_hd__o21a_2_30_A1)
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_7 (
    .C1(sky130_fd_sc_hd__inv_2_5_Y),
    .B1(sky130_fd_sc_hd__a31o_2_8_X),
    .A2(sky130_fd_sc_hd__mux2_1_5_A1),
    .A1(sky130_fd_sc_hd__and3_2_7_C),
    .X(sky130_fd_sc_hd__o211a_2_7_X)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_18 (
    .B(sky130_fd_sc_hd__o31a_2_6_X),
    .X(O[1]),
    .A(sky130_fd_sc_hd__or2_2_11_B),
    .C(sky130_fd_sc_hd__and3_2_25_C)
  );

  sky130_fd_sc_hd__a21bo_2 Xsky130_fd_sc_hd__a21bo_2_1 (
    .B1_N(sky130_fd_sc_hd__a211o_2_2_X),
    .A2(sky130_fd_sc_hd__nor2_2_5_Y),
    .X(sky130_fd_sc_hd__a21o_2_3_A2),
    .A1(sky130_fd_sc_hd__or4_2_0_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_1 (
    
  );

  sky130_fd_sc_hd__o311a_2 Xsky130_fd_sc_hd__o311a_2_1 (
    .X(sky130_fd_sc_hd__o311a_2_1_X),
    .A2(sky130_fd_sc_hd__and3_2_7_C),
    .A3(sky130_fd_sc_hd__mux2_1_5_A1),
    .A1(sky130_fd_sc_hd__xor2_2_7_A),
    .B1(sky130_fd_sc_hd__nand3_2_0_Y),
    .C1(sky130_fd_sc_hd__a21o_2_9_X)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_11 (
    .B1(sky130_fd_sc_hd__or3_2_8_A),
    .A2(sky130_fd_sc_hd__inv_2_7_A),
    .A1(I),
    .Y(sky130_fd_sc_hd__nor2_2_30_B)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_20 (
    .Q(sky130_fd_sc_hd__and4_2_3_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__xnor2_2_11_Y),
    .CLK(sky130_fd_sc_hd__clkbuf_8_3_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_42 (
    .Q(sky130_fd_sc_hd__mux2_1_15_A0),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_15_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_6_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_31 (
    .Q(sky130_fd_sc_hd__mux2_1_19_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_18_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_5_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_75 (
    .Q(sky130_fd_sc_hd__nand4_2_11_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_24_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_10_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_64 (
    .Q(sky130_fd_sc_hd__o21a_2_28_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_64_D),
    .CLK(sky130_fd_sc_hd__clkbuf_8_11_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_53 (
    .Q(sky130_fd_sc_hd__nand4_2_5_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_30_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_2_X)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_12 (
    .A(sky130_fd_sc_hd__inv_2_12_A),
    .Y(sky130_fd_sc_hd__inv_2_12_Y)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_23 (
    .A(sky130_fd_sc_hd__inv_2_23_A),
    .Y(sky130_fd_sc_hd__inv_2_23_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_2 (
    .Y(sky130_fd_sc_hd__nand2_2_2_Y),
    .A(sky130_fd_sc_hd__xor2_2_7_A),
    .B(sky130_fd_sc_hd__xor2_2_0_B)
  );

  sky130_fd_sc_hd__or4_2 Xsky130_fd_sc_hd__or4_2_4 (
    .C(sky130_fd_sc_hd__or4_2_4_C),
    .A(sky130_fd_sc_hd__or4_2_4_A),
    .X(sky130_fd_sc_hd__or4_2_4_X),
    .B(sky130_fd_sc_hd__or4_2_4_B),
    .D(sky130_fd_sc_hd__or4_2_4_D)
  );

  sky130_fd_sc_hd__o32a_2 Xsky130_fd_sc_hd__o32a_2_1 (
    .B1(sky130_fd_sc_hd__o32a_2_1_B1),
    .B2(sky130_fd_sc_hd__o32a_2_1_B2),
    .A3(sky130_fd_sc_hd__o32a_2_1_A3),
    .A2(sky130_fd_sc_hd__and3_2_0_X),
    .A1(sky130_fd_sc_hd__or4_2_0_A),
    .X(sky130_fd_sc_hd__o32a_2_1_X)
  );

  sky130_fd_sc_hd__or4b_2 Xsky130_fd_sc_hd__or4b_2_7 (
    .C(sky130_fd_sc_hd__or4_2_4_C),
    .A(sky130_fd_sc_hd__or4_2_4_B),
    .X(sky130_fd_sc_hd__or4_2_6_C),
    .B(sky130_fd_sc_hd__or4_2_4_A),
    .D_N(sky130_fd_sc_hd__or4_2_4_D)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_15 (
    .X(sky130_fd_sc_hd__xor2_2_15_X),
    .B(sky130_fd_sc_hd__or2_2_9_X),
    .A(sky130_fd_sc_hd__xor2_2_19_B)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_203 (
    
  );

  sky130_fd_sc_hd__a21boi_2 Xsky130_fd_sc_hd__a21boi_2_0 (
    .B1_N(sky130_fd_sc_hd__inv_2_7_A),
    .A2(sky130_fd_sc_hd__nor2_2_40_A),
    .A1(I),
    .Y(sky130_fd_sc_hd__o21ai_2_3_B1)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_12 (
    .A_N(sky130_fd_sc_hd__or4_2_4_A),
    .C(sky130_fd_sc_hd__or4_2_4_D),
    .B_N(sky130_fd_sc_hd__or4_2_4_C),
    .X(sky130_fd_sc_hd__nand4_2_13_D),
    .D(sky130_fd_sc_hd__or4_2_4_B)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_4 (
    .X(sky130_fd_sc_hd__clkbuf_4_4_X),
    .A(sky130_fd_sc_hd__clkbuf_8_2_X)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_8 (
    .B1(sky130_fd_sc_hd__or2_2_8_B),
    .A2(sky130_fd_sc_hd__or2_2_9_A),
    .A1(sky130_fd_sc_hd__or3b_2_0_A),
    .Y(sky130_fd_sc_hd__and3b_2_0_C)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_5 (
    .B(sky130_fd_sc_hd__o21a_2_5_A2),
    .Y(sky130_fd_sc_hd__dfrtp_2_4_D),
    .A_N(sky130_fd_sc_hd__o21a_2_5_A1)
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_8 (
    .C1(sky130_fd_sc_hd__inv_2_7_A),
    .B1(sky130_fd_sc_hd__or2_2_7_X),
    .A2(sky130_fd_sc_hd__mux2_1_7_A0),
    .A1(sky130_fd_sc_hd__inv_2_8_A),
    .X(sky130_fd_sc_hd__o211a_2_8_X)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_19 (
    .B(sky130_fd_sc_hd__o31a_2_4_X),
    .X(O[6]),
    .A(sky130_fd_sc_hd__or2_2_11_B),
    .C(sky130_fd_sc_hd__and3_2_25_C)
  );

  sky130_fd_sc_hd__o22a_2 Xsky130_fd_sc_hd__o22a_2_0 (
    .A2(sky130_fd_sc_hd__mux2_1_4_S),
    .X(sky130_fd_sc_hd__o22a_2_0_X),
    .B1(sky130_fd_sc_hd__or2_2_4_X),
    .A1(sky130_fd_sc_hd__or3_2_3_B),
    .B2(sky130_fd_sc_hd__nor2_2_4_Y)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_20 (
    .X(sky130_fd_sc_hd__and4_2_1_C),
    .B(sky130_fd_sc_hd__o21a_2_30_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_5_C)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_2 (
    
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_12 (
    .B1(sky130_fd_sc_hd__mux2_1_6_X),
    .A2(sky130_fd_sc_hd__mux2_1_7_A0),
    .A1(sky130_fd_sc_hd__inv_2_8_Y),
    .Y(sky130_fd_sc_hd__dfrtp_2_29_D)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_10 (
    .Q(sky130_fd_sc_hd__o21a_2_30_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__nand2b_2_4_Y),
    .CLK(sky130_fd_sc_hd__clkbuf_8_2_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_21 (
    .Q(sky130_fd_sc_hd__nor3_2_2_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_12_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_3_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_43 (
    .Q(sky130_fd_sc_hd__or4_2_4_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_43_D),
    .CLK(sky130_fd_sc_hd__clkbuf_8_5_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_32 (
    .Q(sky130_fd_sc_hd__mux2_1_9_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_17_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_6_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_65 (
    .Q(sky130_fd_sc_hd__inv_2_19_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_22_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_9_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_76 (
    .Q(sky130_fd_sc_hd__inv_2_17_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_29_X),
    .CLK(sky130_fd_sc_hd__dfxtp_2_3_CLK)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_54 (
    .Q(sky130_fd_sc_hd__inv_2_16_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_17_X),
    .CLK(sky130_fd_sc_hd__clkbuf_4_9_A)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_24 (
    .A(sky130_fd_sc_hd__or4b_2_8_X),
    .Y(sky130_fd_sc_hd__nor3_2_3_C)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_13 (
    .A(sky130_fd_sc_hd__or2_2_8_B),
    .Y(sky130_fd_sc_hd__inv_2_13_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_3 (
    .Y(sky130_fd_sc_hd__nand2_2_3_Y),
    .A(sky130_fd_sc_hd__or4_2_0_A),
    .B(sky130_fd_sc_hd__o21a_2_3_A2)
  );

  sky130_fd_sc_hd__or4_2 Xsky130_fd_sc_hd__or4_2_5 (
    .C(sky130_fd_sc_hd__or4_2_5_C),
    .A(sky130_fd_sc_hd__or4_2_5_A),
    .X(sky130_fd_sc_hd__or4_2_5_X),
    .B(sky130_fd_sc_hd__or4_2_5_B),
    .D(sky130_fd_sc_hd__or4_2_5_D)
  );

  sky130_fd_sc_hd__and4b_2 Xsky130_fd_sc_hd__and4b_2_0 (
    .X(sky130_fd_sc_hd__or3_2_6_B),
    .A_N(sky130_fd_sc_hd__or2_2_8_B),
    .D(sky130_fd_sc_hd__or3b_2_0_A),
    .C(sky130_fd_sc_hd__or2_2_9_A),
    .B(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__nor3_2 Xsky130_fd_sc_hd__nor3_2_0 (
    .C(sky130_fd_sc_hd__or2_2_9_B),
    .Y(sky130_fd_sc_hd__nor3_2_0_Y),
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .B(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__o32a_2 Xsky130_fd_sc_hd__o32a_2_2 (
    .B1(sky130_fd_sc_hd__o32a_2_2_B1),
    .B2(sky130_fd_sc_hd__o32a_2_2_B2),
    .A3(sky130_fd_sc_hd__o32a_2_2_A3),
    .A2(sky130_fd_sc_hd__o32a_2_2_A2),
    .A1(sky130_fd_sc_hd__inv_2_12_Y),
    .X(sky130_fd_sc_hd__o32a_2_2_X)
  );

  sky130_fd_sc_hd__or4b_2 Xsky130_fd_sc_hd__or4b_2_8 (
    .C(sky130_fd_sc_hd__or4b_2_8_C),
    .A(sky130_fd_sc_hd__or4b_2_8_A),
    .X(sky130_fd_sc_hd__or4b_2_8_X),
    .B(success),
    .D_N(sky130_fd_sc_hd__a32o_2_3_B1)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_16 (
    .X(sky130_fd_sc_hd__xor2_2_16_X),
    .B(sky130_fd_sc_hd__or2_2_12_B),
    .A(sky130_fd_sc_hd__xor2_2_16_A)
  );

  sky130_fd_sc_hd__a21boi_2 Xsky130_fd_sc_hd__a21boi_2_1 (
    .B1_N(sky130_fd_sc_hd__or2_2_11_B),
    .A2(sky130_fd_sc_hd__xnor2_2_28_Y),
    .A1(sky130_fd_sc_hd__and3_2_25_C),
    .Y(sky130_fd_sc_hd__dfxtp_2_1_D)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_13 (
    .A_N(sky130_fd_sc_hd__or4_2_4_A),
    .C(sky130_fd_sc_hd__or4_2_4_C),
    .B_N(sky130_fd_sc_hd__or4_2_4_D),
    .X(sky130_fd_sc_hd__nand4_2_10_D),
    .D(sky130_fd_sc_hd__or4_2_4_B)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_5 (
    .X(sky130_fd_sc_hd__clkbuf_4_5_X),
    .A(sky130_fd_sc_hd__clkbuf_8_5_X)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_9 (
    .B1(sky130_fd_sc_hd__or2_2_8_B),
    .A2(sky130_fd_sc_hd__or2_2_9_A),
    .A1(sky130_fd_sc_hd__or3b_2_0_A),
    .Y(sky130_fd_sc_hd__or3_2_6_A)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_6 (
    .B(sky130_fd_sc_hd__xor2_2_4_X),
    .Y(sky130_fd_sc_hd__and3_2_4_A),
    .A_N(sky130_fd_sc_hd__xnor2_2_4_A)
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_9 (
    .C1(sky130_fd_sc_hd__o21ai_2_5_Y),
    .B1(sky130_fd_sc_hd__o21a_2_15_A2),
    .A2(sky130_fd_sc_hd__or2_2_8_X),
    .A1(sky130_fd_sc_hd__or2_2_9_A),
    .X(sky130_fd_sc_hd__o211a_2_9_X)
  );

  sky130_fd_sc_hd__a221o_2 Xsky130_fd_sc_hd__a221o_2_0 (
    .X(sky130_fd_sc_hd__a221o_2_0_X),
    .B1(sky130_fd_sc_hd__or2_2_5_X),
    .A1(sky130_fd_sc_hd__or4_2_0_A),
    .B2(sky130_fd_sc_hd__a21oi_2_2_Y),
    .A2(sky130_fd_sc_hd__o22ai_2_1_Y),
    .C1(sky130_fd_sc_hd__or3_2_7_A)
  );

  sky130_fd_sc_hd__o22a_2 Xsky130_fd_sc_hd__o22a_2_1 (
    .A2(sky130_fd_sc_hd__or2_2_9_B),
    .X(sky130_fd_sc_hd__or3_2_16_A),
    .B1(sky130_fd_sc_hd__or3_2_6_A),
    .A1(sky130_fd_sc_hd__or2_2_9_A),
    .B2(sky130_fd_sc_hd__or3_2_6_B)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_30 (
    .A1(sky130_fd_sc_hd__o21a_2_30_A1),
    .B1(sky130_fd_sc_hd__a31o_2_25_X),
    .A2(sky130_fd_sc_hd__nand4_2_5_Y),
    .X(sky130_fd_sc_hd__o21a_2_30_X)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_10 (
    .X(sky130_fd_sc_hd__dfrtp_2_25_D),
    .B(sky130_fd_sc_hd__a21o_2_10_X),
    .A_N(sky130_fd_sc_hd__and3_2_11_X)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_21 (
    .X(sky130_fd_sc_hd__and3_2_5_C),
    .B(sky130_fd_sc_hd__o21a_2_18_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_6_C)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_3 (
    
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_13 (
    .B1(sky130_fd_sc_hd__or4_2_4_B),
    .A2(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__or4_2_4_A),
    .Y(sky130_fd_sc_hd__a21oi_2_13_Y)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_22 (
    .Q(sky130_fd_sc_hd__or3_2_8_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__xor2_2_10_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_8_CLK)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_11 (
    .Q(sky130_fd_sc_hd__and2b_2_3_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__nand2b_2_2_Y),
    .CLK(sky130_fd_sc_hd__clkbuf_8_1_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_33 (
    .Q(sky130_fd_sc_hd__mux2_1_12_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_10_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_2_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_66 (
    .Q(sky130_fd_sc_hd__o21a_2_21_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_66_D),
    .CLK(sky130_fd_sc_hd__clkbuf_8_10_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_77 (
    .Q(sky130_fd_sc_hd__or4_2_7_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a21o_2_14_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_9_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_55 (
    .Q(sky130_fd_sc_hd__nand4_2_6_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_18_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_8_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_44 (
    .Q(sky130_fd_sc_hd__or4_2_4_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__nor2_2_31_Y),
    .CLK(sky130_fd_sc_hd__clkbuf_8_5_X)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_14 (
    .A(sky130_fd_sc_hd__or2_2_8_B),
    .Y(sky130_fd_sc_hd__inv_2_14_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_4 (
    .Y(sky130_fd_sc_hd__nor2_2_0_B),
    .A(sky130_fd_sc_hd__or4_2_4_A),
    .B(sky130_fd_sc_hd__xor2_2_7_A)
  );

  sky130_fd_sc_hd__or4_2 Xsky130_fd_sc_hd__or4_2_6 (
    .C(sky130_fd_sc_hd__or4_2_6_C),
    .A(sky130_fd_sc_hd__or4_2_6_A),
    .X(sky130_fd_sc_hd__or4_2_6_X),
    .B(sky130_fd_sc_hd__or4_2_6_B),
    .D(sky130_fd_sc_hd__or4_2_6_D)
  );

  sky130_fd_sc_hd__and4b_2 Xsky130_fd_sc_hd__and4b_2_1 (
    .X(sky130_fd_sc_hd__nand4_2_5_D),
    .A_N(sky130_fd_sc_hd__or4b_2_2_C),
    .D(sky130_fd_sc_hd__or4b_2_3_A),
    .C(sky130_fd_sc_hd__or4b_2_3_B),
    .B(sky130_fd_sc_hd__or4b_2_3_C)
  );

  sky130_fd_sc_hd__nor3_2 Xsky130_fd_sc_hd__nor3_2_1 (
    .C(sky130_fd_sc_hd__nor3_2_1_C),
    .Y(sky130_fd_sc_hd__nor3_2_1_Y),
    .A(sky130_fd_sc_hd__or2_2_9_B),
    .B(sky130_fd_sc_hd__nor3_2_1_B)
  );

  sky130_fd_sc_hd__o32a_2 Xsky130_fd_sc_hd__o32a_2_3 (
    .B1(sky130_fd_sc_hd__or2_2_10_X),
    .B2(sky130_fd_sc_hd__or2_2_12_A),
    .A3(sky130_fd_sc_hd__o32a_2_3_A3),
    .A2(sky130_fd_sc_hd__o32a_2_3_A2),
    .A1(sky130_fd_sc_hd__o32a_2_3_A1),
    .X(sky130_fd_sc_hd__o32a_2_3_X)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_17 (
    .X(sky130_fd_sc_hd__xor2_2_17_X),
    .B(sky130_fd_sc_hd__xor2_2_17_B),
    .A(sky130_fd_sc_hd__xor2_2_19_A)
  );

  sky130_fd_sc_hd__a21boi_2 Xsky130_fd_sc_hd__a21boi_2_2 (
    .B1_N(sky130_fd_sc_hd__or2_2_11_B),
    .A2(sky130_fd_sc_hd__nand3_2_1_Y),
    .A1(sky130_fd_sc_hd__inv_2_21_Y),
    .Y(sky130_fd_sc_hd__dfxtp_2_0_D)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_6 (
    .X(sky130_fd_sc_hd__clkbuf_4_6_X),
    .A(sky130_fd_sc_hd__clkbuf_8_6_X)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_0 (
    .B(sky130_fd_sc_hd__or3_2_0_B),
    .X(sky130_fd_sc_hd__and3_2_0_X),
    .A(sky130_fd_sc_hd__or2_2_4_A),
    .C(sky130_fd_sc_hd__and3_2_0_C)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_7 (
    .B(sky130_fd_sc_hd__or3b_2_0_A),
    .Y(sky130_fd_sc_hd__a21o_2_6_A2),
    .A_N(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__o22a_2 Xsky130_fd_sc_hd__o22a_2_2 (
    .A2(sky130_fd_sc_hd__and2_2_8_A),
    .X(sky130_fd_sc_hd__o22a_2_2_X),
    .B1(sky130_fd_sc_hd__and2_2_8_B),
    .A1(sky130_fd_sc_hd__or2_2_8_B),
    .B2(sky130_fd_sc_hd__nor3_2_1_B)
  );

  sky130_fd_sc_hd__a221o_2 Xsky130_fd_sc_hd__a221o_2_1 (
    .X(sky130_fd_sc_hd__a221o_2_1_X),
    .B1(sky130_fd_sc_hd__conb_1_2_HI),
    .A1(sky130_fd_sc_hd__or4bb_2_0_X),
    .B2(sky130_fd_sc_hd__mux2_1_12_A0),
    .A2(sky130_fd_sc_hd__mux2_1_12_A1),
    .C1(sky130_fd_sc_hd__a22o_2_2_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_20 (
    .A1(sky130_fd_sc_hd__inv_2_18_A),
    .B1(sky130_fd_sc_hd__or4_2_7_X),
    .A2(sky130_fd_sc_hd__nor2_2_43_Y),
    .X(sky130_fd_sc_hd__o21a_2_20_X)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_10 (
    .A(sky130_fd_sc_hd__or4_2_5_A),
    .X(sky130_fd_sc_hd__and3_2_5_B),
    .B(sky130_fd_sc_hd__or4_2_5_B)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_11 (
    .X(sky130_fd_sc_hd__inv_2_7_A),
    .B(enable),
    .A_N(sky130_fd_sc_hd__or2_2_11_A)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_22 (
    .X(sky130_fd_sc_hd__and3_2_5_A),
    .B(sky130_fd_sc_hd__o21a_2_16_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_4_C)
  );

  sky130_fd_sc_hd__a211o_2 Xsky130_fd_sc_hd__a211o_2_0 (
    .X(sky130_fd_sc_hd__a211o_2_0_X),
    .A2(sky130_fd_sc_hd__a32o_2_1_X),
    .A1(sky130_fd_sc_hd__or2_2_5_A),
    .B1(sky130_fd_sc_hd__o221a_2_0_X),
    .C1(sky130_fd_sc_hd__or3_2_7_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_4 (
    
  );

  sky130_fd_sc_hd__dfxtp_2 Xsky130_fd_sc_hd__dfxtp_2_0 (
    .Q(sky130_fd_sc_hd__or2_2_8_B),
    .CLK(sky130_fd_sc_hd__dfxtp_2_3_CLK),
    .D(sky130_fd_sc_hd__dfxtp_2_0_D)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_14 (
    .B1(sky130_fd_sc_hd__or2_2_9_B),
    .A2(sky130_fd_sc_hd__or2_2_8_B),
    .A1(sky130_fd_sc_hd__or3b_2_0_A),
    .Y(sky130_fd_sc_hd__o221a_2_2_B2)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_23 (
    .Q(sky130_fd_sc_hd__or3_2_8_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__nor2_2_30_Y),
    .CLK(sky130_fd_sc_hd__dfrtp_2_8_CLK)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_12 (
    .Q(sky130_fd_sc_hd__o21a_2_8_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__nand2b_2_3_Y),
    .CLK(sky130_fd_sc_hd__clkbuf_8_1_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_34 (
    .Q(sky130_fd_sc_hd__mux2_1_8_A0),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_8_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_2_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_67 (
    .Q(sky130_fd_sc_hd__o21a_2_24_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_67_D),
    .CLK(sky130_fd_sc_hd__clkbuf_8_11_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_56 (
    .Q(sky130_fd_sc_hd__nand4_2_4_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_16_X),
    .CLK(sky130_fd_sc_hd__clkbuf_4_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_45 (
    .Q(sky130_fd_sc_hd__or4_2_4_D),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_45_D),
    .CLK(sky130_fd_sc_hd__clkbuf_8_5_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_78 (
    .Q(sky130_fd_sc_hd__nand4_2_10_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_28_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_10_X)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_15 (
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .Y(sky130_fd_sc_hd__inv_2_15_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_5 (
    .Y(sky130_fd_sc_hd__nand2_2_5_Y),
    .A(sky130_fd_sc_hd__or3_2_0_B),
    .B(sky130_fd_sc_hd__or3_2_2_B)
  );

  sky130_fd_sc_hd__or4_2 Xsky130_fd_sc_hd__or4_2_7 (
    .C(sky130_fd_sc_hd__or4_2_7_C),
    .A(sky130_fd_sc_hd__or4_2_7_A),
    .X(sky130_fd_sc_hd__or4_2_7_X),
    .B(sky130_fd_sc_hd__or4_2_7_B),
    .D(sky130_fd_sc_hd__or4_2_7_D)
  );

  sky130_fd_sc_hd__and4b_2 Xsky130_fd_sc_hd__and4b_2_2 (
    .X(sky130_fd_sc_hd__and4b_2_2_X),
    .A_N(sky130_fd_sc_hd__or4_2_4_D),
    .D(sky130_fd_sc_hd__or4_2_4_B),
    .C(sky130_fd_sc_hd__or4_2_4_A),
    .B(sky130_fd_sc_hd__or4_2_4_C)
  );

  sky130_fd_sc_hd__buf_2 Xsky130_fd_sc_hd__buf_2_0 (
    .X(sky130_fd_sc_hd__buf_2_0_X),
    .A(sky130_fd_sc_hd__or4_2_4_X)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_0 (
    .A(sky130_fd_sc_hd__or3_2_3_C),
    .Y(sky130_fd_sc_hd__inv_2_0_Y)
  );

  sky130_fd_sc_hd__nor3_2 Xsky130_fd_sc_hd__nor3_2_2 (
    .C(sky130_fd_sc_hd__or3_2_8_X),
    .Y(sky130_fd_sc_hd__nor3_2_2_Y),
    .A(sky130_fd_sc_hd__nor3_2_2_A),
    .B(sky130_fd_sc_hd__nor3_2_2_B)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_18 (
    .X(sky130_fd_sc_hd__xor2_2_18_X),
    .B(sky130_fd_sc_hd__o32a_2_2_X),
    .A(sky130_fd_sc_hd__xor2_2_19_A)
  );

  sky130_fd_sc_hd__a21boi_2 Xsky130_fd_sc_hd__a21boi_2_3 (
    .B1_N(sky130_fd_sc_hd__or2_2_11_B),
    .A2(sky130_fd_sc_hd__and3_2_25_C),
    .A1(sky130_fd_sc_hd__or3b_2_0_A),
    .Y(sky130_fd_sc_hd__dfxtp_2_2_D)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_7 (
    .X(sky130_fd_sc_hd__clkbuf_4_7_X),
    .A(sky130_fd_sc_hd__clkbuf_8_7_X)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_1 (
    .B(sky130_fd_sc_hd__inv_2_4_Y),
    .X(sky130_fd_sc_hd__and3_2_1_X),
    .A(sky130_fd_sc_hd__or2_2_4_A),
    .C(sky130_fd_sc_hd__and3_2_1_C)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_8 (
    .B(sky130_fd_sc_hd__or2_2_9_B),
    .Y(sky130_fd_sc_hd__nand2b_2_8_Y),
    .A_N(sky130_fd_sc_hd__or2_2_8_B)
  );

  sky130_fd_sc_hd__o22a_2 Xsky130_fd_sc_hd__o22a_2_3 (
    .A2(sky130_fd_sc_hd__or2_2_10_X),
    .X(sky130_fd_sc_hd__o22a_2_3_X),
    .B1(sky130_fd_sc_hd__o22a_2_3_B1),
    .A1(sky130_fd_sc_hd__xor2_2_19_A),
    .B2(sky130_fd_sc_hd__o22a_2_3_B2)
  );

  sky130_fd_sc_hd__a221o_2 Xsky130_fd_sc_hd__a221o_2_2 (
    .X(sky130_fd_sc_hd__a221o_2_2_X),
    .B1(sky130_fd_sc_hd__xor2_2_19_B),
    .A1(sky130_fd_sc_hd__inv_2_7_A),
    .B2(sky130_fd_sc_hd__nor2_2_39_Y),
    .A2(sky130_fd_sc_hd__xor2_2_16_A),
    .C1(sky130_fd_sc_hd__nor2_2_46_Y)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_21 (
    .A1(sky130_fd_sc_hd__o21a_2_21_A1),
    .B1(sky130_fd_sc_hd__a31o_2_24_X),
    .A2(sky130_fd_sc_hd__nand4_2_9_Y),
    .X(sky130_fd_sc_hd__o21a_2_21_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_10 (
    .A1(sky130_fd_sc_hd__and2b_2_3_B),
    .B1(sky130_fd_sc_hd__a31o_2_3_X),
    .A2(sky130_fd_sc_hd__nand4_2_1_Y),
    .X(sky130_fd_sc_hd__o21a_2_10_X)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_11 (
    .A(sky130_fd_sc_hd__or4_2_9_A),
    .X(sky130_fd_sc_hd__and4_2_6_A),
    .B(sky130_fd_sc_hd__or4_2_9_B)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_23 (
    .X(sky130_fd_sc_hd__and4_2_6_B),
    .B(sky130_fd_sc_hd__o21a_2_19_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_7_C)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_12 (
    .X(sky130_fd_sc_hd__and3_2_17_C),
    .B(sky130_fd_sc_hd__or2_2_9_A),
    .A_N(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__a211o_2 Xsky130_fd_sc_hd__a211o_2_1 (
    .X(sky130_fd_sc_hd__a211o_2_1_X),
    .A2(sky130_fd_sc_hd__or2_2_4_B),
    .A1(sky130_fd_sc_hd__or4_2_0_A),
    .B1(sky130_fd_sc_hd__mux2_1_4_X),
    .C1(sky130_fd_sc_hd__or4_2_0_B)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_5 (
    
  );

  sky130_fd_sc_hd__dfxtp_2 Xsky130_fd_sc_hd__dfxtp_2_1 (
    .Q(sky130_fd_sc_hd__or2_2_9_A),
    .CLK(sky130_fd_sc_hd__dfxtp_2_2_CLK),
    .D(sky130_fd_sc_hd__dfxtp_2_1_D)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_15 (
    .B1(sky130_fd_sc_hd__mux2_1_20_X),
    .A2(sky130_fd_sc_hd__nor2_2_32_B),
    .A1(sky130_fd_sc_hd__or2_2_8_X),
    .Y(sky130_fd_sc_hd__a22o_2_21_B2)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_24 (
    .Q(sky130_fd_sc_hd__and4_2_3_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a32o_2_2_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_8_CLK)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_13 (
    .Q(sky130_fd_sc_hd__or4_2_2_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a21o_2_1_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_0_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_68 (
    .Q(sky130_fd_sc_hd__o21a_2_25_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_68_D),
    .CLK(sky130_fd_sc_hd__clkbuf_8_10_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_57 (
    .Q(sky130_fd_sc_hd__o21a_2_19_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_57_D),
    .CLK(sky130_fd_sc_hd__clkbuf_8_8_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_35 (
    .Q(sky130_fd_sc_hd__mux2_1_16_A0),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_16_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_2_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_46 (
    .Q(sky130_fd_sc_hd__or4_2_4_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__xor2_2_11_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_5_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_79 (
    .Q(sky130_fd_sc_hd__or4_2_8_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a21o_2_15_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_9_X)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_16 (
    .A(sky130_fd_sc_hd__inv_2_16_A),
    .Y(sky130_fd_sc_hd__or4_2_5_B)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_6 (
    .Y(sky130_fd_sc_hd__nor2_2_5_A),
    .A(sky130_fd_sc_hd__xor2_2_3_A),
    .B(sky130_fd_sc_hd__or3_2_3_A)
  );

  sky130_fd_sc_hd__or4_2 Xsky130_fd_sc_hd__or4_2_8 (
    .C(sky130_fd_sc_hd__or4_2_8_C),
    .A(sky130_fd_sc_hd__or4_2_8_A),
    .X(sky130_fd_sc_hd__or4_2_8_X),
    .B(sky130_fd_sc_hd__or4_2_8_B),
    .D(sky130_fd_sc_hd__or4_2_8_D)
  );

  sky130_fd_sc_hd__and4b_2 Xsky130_fd_sc_hd__and4b_2_3 (
    .X(sky130_fd_sc_hd__and4b_2_3_X),
    .A_N(sky130_fd_sc_hd__or2_2_11_B),
    .D(sky130_fd_sc_hd__and4b_2_3_D),
    .C(sky130_fd_sc_hd__and3_2_6_X),
    .B(sky130_fd_sc_hd__or2_2_11_A)
  );

  sky130_fd_sc_hd__nor3_2 Xsky130_fd_sc_hd__nor3_2_3 (
    .C(sky130_fd_sc_hd__nor3_2_3_C),
    .Y(sky130_fd_sc_hd__nor3_2_3_Y),
    .A(sky130_fd_sc_hd__nor3_2_3_A),
    .B(sky130_fd_sc_hd__nor3_2_3_B)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_1 (
    .A(sky130_fd_sc_hd__inv_2_1_A),
    .Y(sky130_fd_sc_hd__or4_2_1_B)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_19 (
    .X(sky130_fd_sc_hd__xor2_2_19_X),
    .B(sky130_fd_sc_hd__xor2_2_19_B),
    .A(sky130_fd_sc_hd__xor2_2_19_A)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_8 (
    .X(sky130_fd_sc_hd__clkbuf_4_8_X),
    .A(sky130_fd_sc_hd__clkbuf_8_8_X)
  );

  sky130_fd_sc_hd__or3b_2 Xsky130_fd_sc_hd__or3b_2_0 (
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .B(sky130_fd_sc_hd__or2_2_9_B),
    .C_N(sky130_fd_sc_hd__or2_2_9_A),
    .X(sky130_fd_sc_hd__or3b_2_0_X)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_0 (
    .X(sky130_fd_sc_hd__xor2_2_0_X),
    .B(sky130_fd_sc_hd__xor2_2_0_B),
    .A(sky130_fd_sc_hd__xor2_2_7_A)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_2 (
    .B(sky130_fd_sc_hd__and3_2_2_B),
    .X(sky130_fd_sc_hd__or3_2_5_C),
    .A(sky130_fd_sc_hd__and3_2_2_A),
    .C(sky130_fd_sc_hd__and3_2_2_C)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_9 (
    .B(sky130_fd_sc_hd__or2_2_8_B),
    .Y(sky130_fd_sc_hd__o32ai_2_0_B1),
    .A_N(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__a221o_2 Xsky130_fd_sc_hd__a221o_2_3 (
    .X(sky130_fd_sc_hd__o22a_2_3_B2),
    .B1(sky130_fd_sc_hd__nor2_2_34_Y),
    .A1(sky130_fd_sc_hd__inv_2_7_A),
    .B2(sky130_fd_sc_hd__nor3b_2_0_B),
    .A2(sky130_fd_sc_hd__or2_2_12_A),
    .C1(sky130_fd_sc_hd__nor2_2_39_Y)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_22 (
    .A1(sky130_fd_sc_hd__inv_2_19_A),
    .B1(sky130_fd_sc_hd__or4_2_8_X),
    .A2(sky130_fd_sc_hd__nor2_2_44_Y),
    .X(sky130_fd_sc_hd__o21a_2_22_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_11 (
    .A1(sky130_fd_sc_hd__or3_2_8_B),
    .B1(sky130_fd_sc_hd__xnor2_2_11_B),
    .A2(sky130_fd_sc_hd__and3_2_11_X),
    .X(sky130_fd_sc_hd__o21a_2_11_X)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_12 (
    .A(sky130_fd_sc_hd__or4_2_7_A),
    .X(sky130_fd_sc_hd__and4_2_6_D),
    .B(sky130_fd_sc_hd__or4_2_7_B)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_13 (
    .X(sky130_fd_sc_hd__nor2_2_32_B),
    .B(sky130_fd_sc_hd__or3b_2_0_A),
    .A_N(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_24 (
    .X(sky130_fd_sc_hd__and4_2_6_C),
    .B(sky130_fd_sc_hd__o21a_2_23_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_8_C)
  );

  sky130_fd_sc_hd__a211o_2 Xsky130_fd_sc_hd__a211o_2_2 (
    .X(sky130_fd_sc_hd__a211o_2_2_X),
    .A2(sky130_fd_sc_hd__nand2_2_9_Y),
    .A1(sky130_fd_sc_hd__or2_2_4_A),
    .B1(sky130_fd_sc_hd__or4_2_0_D),
    .C1(sky130_fd_sc_hd__or4_2_0_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_6 (
    
  );

  sky130_fd_sc_hd__dfxtp_2 Xsky130_fd_sc_hd__dfxtp_2_2 (
    .Q(sky130_fd_sc_hd__or3b_2_0_A),
    .CLK(sky130_fd_sc_hd__dfxtp_2_2_CLK),
    .D(sky130_fd_sc_hd__dfxtp_2_2_D)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_16 (
    .B1(sky130_fd_sc_hd__or3_2_9_A),
    .A2(sky130_fd_sc_hd__o31a_2_1_B1),
    .A1(sky130_fd_sc_hd__inv_2_12_A),
    .Y(sky130_fd_sc_hd__xnor2_2_14_B)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_25 (
    .Q(sky130_fd_sc_hd__and4_2_3_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_25_D),
    .CLK(sky130_fd_sc_hd__clkbuf_8_3_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_14 (
    .Q(sky130_fd_sc_hd__o21a_2_4_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__nand2b_2_1_Y),
    .CLK(sky130_fd_sc_hd__clkbuf_8_0_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_47 (
    .Q(sky130_fd_sc_hd__or2_2_11_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a31o_2_13_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_8_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_58 (
    .Q(sky130_fd_sc_hd__o21a_2_18_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_58_D),
    .CLK(sky130_fd_sc_hd__clkbuf_4_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_36 (
    .Q(sky130_fd_sc_hd__mux2_1_12_A0),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_12_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_6_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_69 (
    .Q(sky130_fd_sc_hd__or4_2_6_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a21o_2_16_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_10_X)
  );

  sky130_fd_sc_hd__o21bai_2 Xsky130_fd_sc_hd__o21bai_2_0 (
    .B1_N(sky130_fd_sc_hd__xnor2_2_6_A),
    .Y(sky130_fd_sc_hd__o21bai_2_0_Y),
    .A2(sky130_fd_sc_hd__o32ai_2_0_B1),
    .A1(sky130_fd_sc_hd__nor3_2_1_B)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_17 (
    .A(sky130_fd_sc_hd__inv_2_17_A),
    .Y(sky130_fd_sc_hd__or4_2_9_B)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_7 (
    .Y(sky130_fd_sc_hd__nor2_2_9_B),
    .A(sky130_fd_sc_hd__nor2_2_8_A),
    .B(sky130_fd_sc_hd__nor2_2_0_B)
  );

  sky130_fd_sc_hd__or4_2 Xsky130_fd_sc_hd__or4_2_9 (
    .C(sky130_fd_sc_hd__or4_2_9_C),
    .A(sky130_fd_sc_hd__or4_2_9_A),
    .X(sky130_fd_sc_hd__or4_2_9_X),
    .B(sky130_fd_sc_hd__or4_2_9_B),
    .D(sky130_fd_sc_hd__or4_2_9_D)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_2 (
    .A(sky130_fd_sc_hd__inv_2_2_A),
    .Y(sky130_fd_sc_hd__or4_2_2_B)
  );

  sky130_fd_sc_hd__a41oi_2 Xsky130_fd_sc_hd__a41oi_2_0 (
    .A4(sky130_fd_sc_hd__inv_2_7_A),
    .A3(sky130_fd_sc_hd__or4_2_4_C),
    .A2(sky130_fd_sc_hd__or4_2_4_A),
    .B1(sky130_fd_sc_hd__or4_2_4_D),
    .A1(sky130_fd_sc_hd__or4_2_4_B),
    .Y(sky130_fd_sc_hd__a41oi_2_0_Y)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_9 (
    .X(sky130_fd_sc_hd__clkbuf_4_9_X),
    .A(sky130_fd_sc_hd__clkbuf_4_9_A)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_1 (
    .X(sky130_fd_sc_hd__xor2_2_1_X),
    .B(sky130_fd_sc_hd__xor2_2_1_B),
    .A(sky130_fd_sc_hd__or4_2_4_C)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_3 (
    .B(sky130_fd_sc_hd__and3_2_3_B),
    .X(sky130_fd_sc_hd__and3_2_3_X),
    .A(sky130_fd_sc_hd__or4_2_0_B),
    .C(sky130_fd_sc_hd__and3_2_3_C)
  );

  sky130_fd_sc_hd__a221o_2 Xsky130_fd_sc_hd__a221o_2_4 (
    .X(sky130_fd_sc_hd__a221o_2_4_X),
    .B1(sky130_fd_sc_hd__nor2_2_39_Y),
    .A1(sky130_fd_sc_hd__inv_2_7_A),
    .B2(sky130_fd_sc_hd__xor2_2_14_B),
    .A2(sky130_fd_sc_hd__xor2_2_19_A),
    .C1(sky130_fd_sc_hd__o21a_2_14_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_23 (
    .A1(sky130_fd_sc_hd__o21a_2_23_A1),
    .B1(sky130_fd_sc_hd__a31o_2_19_X),
    .A2(sky130_fd_sc_hd__nand4_2_8_Y),
    .X(sky130_fd_sc_hd__o21a_2_23_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_12 (
    .A1(sky130_fd_sc_hd__o21a_2_12_A1),
    .B1(sky130_fd_sc_hd__a31o_2_9_X),
    .A2(sky130_fd_sc_hd__xnor2_2_11_B),
    .X(sky130_fd_sc_hd__o21a_2_12_X)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_13 (
    .A(sky130_fd_sc_hd__or4_2_8_A),
    .X(sky130_fd_sc_hd__and4_2_5_B),
    .B(sky130_fd_sc_hd__or4_2_8_B)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_14 (
    .X(sky130_fd_sc_hd__o31a_2_2_A2),
    .B(sky130_fd_sc_hd__or3b_2_0_A),
    .A_N(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_25 (
    .X(sky130_fd_sc_hd__and4_2_5_A),
    .B(sky130_fd_sc_hd__o21a_2_21_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_9_C)
  );

  sky130_fd_sc_hd__a211o_2 Xsky130_fd_sc_hd__a211o_2_3 (
    .X(sky130_fd_sc_hd__a211o_2_3_X),
    .A2(sky130_fd_sc_hd__or2_2_9_B),
    .A1(sky130_fd_sc_hd__or3b_2_0_A),
    .B1(sky130_fd_sc_hd__inv_2_13_Y),
    .C1(sky130_fd_sc_hd__o31a_2_1_A3)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_7 (
    
  );

  sky130_fd_sc_hd__dfxtp_2 Xsky130_fd_sc_hd__dfxtp_2_3 (
    .Q(sky130_fd_sc_hd__or2_2_9_B),
    .CLK(sky130_fd_sc_hd__dfxtp_2_3_CLK),
    .D(sky130_fd_sc_hd__dfxtp_2_3_D)
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_17 (
    .B1(sky130_fd_sc_hd__or2_2_8_B),
    .A2(sky130_fd_sc_hd__and3_2_17_C),
    .A1(sky130_fd_sc_hd__or3b_2_0_A),
    .Y(sky130_fd_sc_hd__a22o_2_7_A1)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_15 (
    .Q(sky130_fd_sc_hd__xor2_2_0_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o211a_2_7_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_4_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_48 (
    .Q(sky130_fd_sc_hd__xor2_2_14_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a221o_2_4_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_7_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_26 (
    .Q(sky130_fd_sc_hd__or3_2_8_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_11_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_3_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_59 (
    .Q(sky130_fd_sc_hd__o21a_2_16_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_59_D),
    .CLK(sky130_fd_sc_hd__clkbuf_4_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_37 (
    .Q(sky130_fd_sc_hd__inv_2_11_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a31o_2_12_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_6_X)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_18 (
    .A(sky130_fd_sc_hd__inv_2_18_A),
    .Y(sky130_fd_sc_hd__or4_2_7_B)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_8 (
    .Y(sky130_fd_sc_hd__xnor2_2_0_A),
    .A(sky130_fd_sc_hd__or4_2_4_B),
    .B(sky130_fd_sc_hd__xor2_2_0_X)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_3 (
    .A(sky130_fd_sc_hd__inv_2_3_A),
    .Y(sky130_fd_sc_hd__or4_2_3_B)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_20 (
    .S(sky130_fd_sc_hd__or2_2_9_B),
    .A1(sky130_fd_sc_hd__or2_2_8_B),
    .A0(sky130_fd_sc_hd__or2_2_9_A),
    .X(sky130_fd_sc_hd__mux2_1_20_X)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_2 (
    .X(sky130_fd_sc_hd__or3_2_3_B),
    .B(sky130_fd_sc_hd__xor2_2_2_B),
    .A(sky130_fd_sc_hd__xor2_2_2_A)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_4 (
    .B(sky130_fd_sc_hd__and3_2_4_B),
    .X(sky130_fd_sc_hd__and3_2_4_X),
    .A(sky130_fd_sc_hd__and3_2_4_A),
    .C(sky130_fd_sc_hd__or3_2_5_X)
  );

  sky130_fd_sc_hd__a221o_2 Xsky130_fd_sc_hd__a221o_2_5 (
    .X(sky130_fd_sc_hd__dfstp_2_0_D),
    .B1(sky130_fd_sc_hd__xor2_2_17_B),
    .A1(sky130_fd_sc_hd__inv_2_7_A),
    .B2(sky130_fd_sc_hd__nor2_2_39_Y),
    .A2(sky130_fd_sc_hd__a22o_2_4_B2),
    .C1(sky130_fd_sc_hd__nor2_2_40_Y)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_24 (
    .A1(sky130_fd_sc_hd__o21a_2_24_A1),
    .B1(sky130_fd_sc_hd__a31o_2_20_X),
    .A2(sky130_fd_sc_hd__o21a_2_24_A2),
    .X(sky130_fd_sc_hd__o21a_2_24_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_13 (
    .A1(sky130_fd_sc_hd__inv_2_15_Y),
    .B1(sky130_fd_sc_hd__inv_2_14_Y),
    .A2(sky130_fd_sc_hd__o31a_2_2_A1),
    .X(sky130_fd_sc_hd__o21a_2_13_X)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_14 (
    .A(sky130_fd_sc_hd__or4_2_6_A),
    .X(sky130_fd_sc_hd__and3_2_12_B),
    .B(sky130_fd_sc_hd__or4_2_6_B)
  );

  sky130_fd_sc_hd__a32o_2 Xsky130_fd_sc_hd__a32o_2_0 (
    .B2(sky130_fd_sc_hd__xor2_2_3_B),
    .X(sky130_fd_sc_hd__xor2_2_2_A),
    .A2(sky130_fd_sc_hd__xor2_2_0_X),
    .A3(sky130_fd_sc_hd__xor2_2_1_X),
    .A1(sky130_fd_sc_hd__or4_2_4_B),
    .B1(sky130_fd_sc_hd__xor2_2_3_A)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_26 (
    .X(sky130_fd_sc_hd__and4_2_5_D),
    .B(sky130_fd_sc_hd__o21a_2_28_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_10_C)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_15 (
    .X(sky130_fd_sc_hd__o32a_2_2_B1),
    .B(sky130_fd_sc_hd__nand2_2_29_Y),
    .A_N(sky130_fd_sc_hd__or3_2_9_B)
  );

  sky130_fd_sc_hd__a211o_2 Xsky130_fd_sc_hd__a211o_2_4 (
    .X(sky130_fd_sc_hd__or3_2_15_A),
    .A2(sky130_fd_sc_hd__or3_2_17_A),
    .A1(sky130_fd_sc_hd__or2_2_9_A),
    .B1(sky130_fd_sc_hd__or3_2_6_C),
    .C1(sky130_fd_sc_hd__or3_2_6_B)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_8 (
    
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_18 (
    .B1(sky130_fd_sc_hd__nor3_2_3_A),
    .A2(sky130_fd_sc_hd__nor3_2_3_C),
    .A1(sky130_fd_sc_hd__nor3_2_3_B),
    .Y(sky130_fd_sc_hd__or3_2_17_C)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_16 (
    .Q(sky130_fd_sc_hd__xor2_2_7_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_5_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_3_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_49 (
    .Q(sky130_fd_sc_hd__a22o_2_4_B2),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a31o_2_14_X),
    .CLK(sky130_fd_sc_hd__clkbuf_4_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_27 (
    .Q(sky130_fd_sc_hd__or2_2_7_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a22o_2_1_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_4_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_38 (
    .Q(sky130_fd_sc_hd__a22o_2_2_B2),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_11_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_6_X)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_19 (
    .A(sky130_fd_sc_hd__inv_2_19_A),
    .Y(sky130_fd_sc_hd__or4_2_8_B)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_9 (
    .Y(sky130_fd_sc_hd__nand2_2_9_Y),
    .A(sky130_fd_sc_hd__xor2_2_3_A),
    .B(sky130_fd_sc_hd__inv_2_4_A)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_0 (
    .A(sky130_fd_sc_hd__or3_2_3_A),
    .B(sky130_fd_sc_hd__or3_2_0_B),
    .X(sky130_fd_sc_hd__or3_2_0_X),
    .C(sky130_fd_sc_hd__or3_2_2_B)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_4 (
    .A(sky130_fd_sc_hd__inv_2_4_A),
    .Y(sky130_fd_sc_hd__inv_2_4_Y)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_10 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__mux2_1_8_A0),
    .A0(sky130_fd_sc_hd__mux2_1_12_A1),
    .X(sky130_fd_sc_hd__mux2_1_10_X)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_3 (
    .X(sky130_fd_sc_hd__or2_2_2_A),
    .B(sky130_fd_sc_hd__xor2_2_3_B),
    .A(sky130_fd_sc_hd__xor2_2_3_A)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_5 (
    .B(sky130_fd_sc_hd__and3_2_5_B),
    .X(sky130_fd_sc_hd__and3_2_6_C),
    .A(sky130_fd_sc_hd__and3_2_5_A),
    .C(sky130_fd_sc_hd__and3_2_5_C)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_25 (
    .A1(sky130_fd_sc_hd__o21a_2_25_A1),
    .B1(sky130_fd_sc_hd__a31o_2_21_X),
    .A2(sky130_fd_sc_hd__o21a_2_25_A2),
    .X(sky130_fd_sc_hd__o21a_2_25_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_14 (
    .A1(sky130_fd_sc_hd__xor2_2_13_X),
    .B1(sky130_fd_sc_hd__o21a_2_14_B1),
    .A2(sky130_fd_sc_hd__xor2_2_14_X),
    .X(sky130_fd_sc_hd__o21a_2_14_X)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_15 (
    .A(sky130_fd_sc_hd__inv_2_6_Y),
    .X(sky130_fd_sc_hd__and2_2_15_X),
    .B(sky130_fd_sc_hd__and4_2_3_X)
  );

  sky130_fd_sc_hd__a32o_2 Xsky130_fd_sc_hd__a32o_2_1 (
    .B2(sky130_fd_sc_hd__a32o_2_1_B2),
    .X(sky130_fd_sc_hd__a32o_2_1_X),
    .A2(sky130_fd_sc_hd__o21a_2_3_A2),
    .A3(sky130_fd_sc_hd__or2_2_4_X),
    .A1(sky130_fd_sc_hd__or4_2_0_A),
    .B1(sky130_fd_sc_hd__o22a_2_0_X)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_27 (
    .X(sky130_fd_sc_hd__and3_2_12_C),
    .B(sky130_fd_sc_hd__o21a_2_25_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_13_C)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_16 (
    .X(sky130_fd_sc_hd__and2b_2_16_X),
    .B(sky130_fd_sc_hd__or2_2_10_A),
    .A_N(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_9 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_190 (
    
  );

  sky130_fd_sc_hd__a21oi_2 Xsky130_fd_sc_hd__a21oi_2_19 (
    .B1(sky130_fd_sc_hd__nor2_2_46_A),
    .A2(sky130_fd_sc_hd__xor2_2_14_X),
    .A1(sky130_fd_sc_hd__xor2_2_13_X),
    .Y(sky130_fd_sc_hd__o21a_2_14_B1)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_0 (
    .A1(sky130_fd_sc_hd__nand2_2_5_Y),
    .A2(sky130_fd_sc_hd__or3_2_4_B),
    .X(sky130_fd_sc_hd__a22o_2_0_X),
    .B2(sky130_fd_sc_hd__or2_2_4_A),
    .B1(sky130_fd_sc_hd__or3_2_3_C)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_28 (
    .Q(sky130_fd_sc_hd__inv_2_6_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a31o_2_11_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_4_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_17 (
    .Q(sky130_fd_sc_hd__xor2_2_9_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__xor2_2_9_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_4_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_39 (
    .Q(sky130_fd_sc_hd__mux2_1_19_A0),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__mux2_1_19_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_8_X)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_1 (
    .A(sky130_fd_sc_hd__or4_2_0_A),
    .B(sky130_fd_sc_hd__or3_2_1_B),
    .X(sky130_fd_sc_hd__or3_2_1_X),
    .C(sky130_fd_sc_hd__or3_2_1_C)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_5 (
    .A(sky130_fd_sc_hd__inv_2_5_A),
    .Y(sky130_fd_sc_hd__inv_2_5_Y)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_11 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__mux2_1_12_A0),
    .A0(sky130_fd_sc_hd__a22o_2_2_B2),
    .X(sky130_fd_sc_hd__mux2_1_11_X)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_4 (
    .X(sky130_fd_sc_hd__xor2_2_4_X),
    .B(sky130_fd_sc_hd__xor2_2_7_X),
    .A(sky130_fd_sc_hd__xor2_2_4_A)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_6 (
    .B(sky130_fd_sc_hd__and4_2_0_X),
    .X(sky130_fd_sc_hd__and3_2_6_X),
    .A(sky130_fd_sc_hd__and4_2_1_X),
    .C(sky130_fd_sc_hd__and3_2_6_C)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_15 (
    .A1(sky130_fd_sc_hd__or2_2_9_A),
    .B1(sky130_fd_sc_hd__o21ai_2_5_Y),
    .A2(sky130_fd_sc_hd__o21a_2_15_A2),
    .X(sky130_fd_sc_hd__o21a_2_15_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_26 (
    .A1(sky130_fd_sc_hd__inv_2_20_A),
    .B1(sky130_fd_sc_hd__or4_2_6_X),
    .A2(sky130_fd_sc_hd__nor2_2_45_Y),
    .X(sky130_fd_sc_hd__o21a_2_26_X)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_16 (
    .A(sky130_fd_sc_hd__or2_2_11_B),
    .X(sky130_fd_sc_hd__or2_2_10_A),
    .B(sky130_fd_sc_hd__and3_2_25_C)
  );

  sky130_fd_sc_hd__a32o_2 Xsky130_fd_sc_hd__a32o_2_2 (
    .B2(sky130_fd_sc_hd__and4_2_3_A),
    .X(sky130_fd_sc_hd__a32o_2_2_X),
    .A2(sky130_fd_sc_hd__inv_2_7_A),
    .A3(sky130_fd_sc_hd__and3_2_10_B),
    .A1(I),
    .B1(sky130_fd_sc_hd__inv_2_10_Y)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_28 (
    .X(sky130_fd_sc_hd__and4_2_5_C),
    .B(sky130_fd_sc_hd__o21a_2_24_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_11_C)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_17 (
    .X(sky130_fd_sc_hd__o31a_2_1_A3),
    .B(sky130_fd_sc_hd__or2_2_9_A),
    .A_N(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_30 (
    .Y(sky130_fd_sc_hd__o31a_2_1_B1),
    .A(sky130_fd_sc_hd__or2_2_9_A),
    .B(sky130_fd_sc_hd__or2_2_8_B)
  );

  sky130_fd_sc_hd__diode_2 Xsky130_fd_sc_hd__diode_2_0 (
    .DIODE(sky130_fd_sc_hd__or4b_2_3_B)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_191 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_180 (
    
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_18 (
    .Q(sky130_fd_sc_hd__xor2_2_4_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o311a_2_1_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_4_X)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_29 (
    .Q(sky130_fd_sc_hd__inv_2_8_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_29_D),
    .CLK(sky130_fd_sc_hd__clkbuf_8_4_X)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_1 (
    .A1(sky130_fd_sc_hd__inv_2_7_Y),
    .A2(sky130_fd_sc_hd__or2_2_7_A),
    .X(sky130_fd_sc_hd__a22o_2_1_X),
    .B2(sky130_fd_sc_hd__inv_2_9_Y),
    .B1(sky130_fd_sc_hd__o211a_2_8_X)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_10 (
    .X(sky130_fd_sc_hd__clkbuf_4_10_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_X)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_2 (
    .A(sky130_fd_sc_hd__or3_2_3_A),
    .B(sky130_fd_sc_hd__or3_2_2_B),
    .X(sky130_fd_sc_hd__or4_2_0_C),
    .C(sky130_fd_sc_hd__or3_2_2_C)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_6 (
    .A(sky130_fd_sc_hd__inv_2_6_A),
    .Y(sky130_fd_sc_hd__inv_2_6_Y)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_12 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__mux2_1_12_A1),
    .A0(sky130_fd_sc_hd__mux2_1_12_A0),
    .X(sky130_fd_sc_hd__mux2_1_12_X)
  );

  sky130_fd_sc_hd__a311o_2 Xsky130_fd_sc_hd__a311o_2_0 (
    .X(sky130_fd_sc_hd__and3_2_3_B),
    .C1(sky130_fd_sc_hd__and3_2_1_X),
    .B1(sky130_fd_sc_hd__or3_2_4_B),
    .A1(sky130_fd_sc_hd__xor2_2_3_A),
    .A2(sky130_fd_sc_hd__or4_2_0_A),
    .A3(sky130_fd_sc_hd__or2_2_0_B)
  );

  sky130_fd_sc_hd__dfstp_2 Xsky130_fd_sc_hd__dfstp_2_0 (
    .Q(sky130_fd_sc_hd__xor2_2_17_B),
    .D(sky130_fd_sc_hd__dfstp_2_0_D),
    .SET_B(rst_n),
    .CLK(sky130_fd_sc_hd__clkbuf_8_7_X)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_5 (
    .X(sky130_fd_sc_hd__xor2_2_5_X),
    .B(sky130_fd_sc_hd__xor2_2_5_B),
    .A(sky130_fd_sc_hd__xor2_2_5_A)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_7 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .X(sky130_fd_sc_hd__and3_2_7_X),
    .A(sky130_fd_sc_hd__inv_2_9_A),
    .C(sky130_fd_sc_hd__and3_2_7_C)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_16 (
    .A1(sky130_fd_sc_hd__o21a_2_16_A1),
    .B1(sky130_fd_sc_hd__a31o_2_17_X),
    .A2(sky130_fd_sc_hd__nand4_2_4_Y),
    .X(sky130_fd_sc_hd__o21a_2_16_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_27 (
    .A1(sky130_fd_sc_hd__o21a_2_27_A1),
    .B1(sky130_fd_sc_hd__a31o_2_22_X),
    .A2(sky130_fd_sc_hd__o21a_2_27_A2),
    .X(sky130_fd_sc_hd__o21a_2_27_X)
  );

  sky130_fd_sc_hd__a32o_2 Xsky130_fd_sc_hd__a32o_2_3 (
    .B2(sky130_fd_sc_hd__a32o_2_4_B2),
    .X(sky130_fd_sc_hd__a32o_2_3_X),
    .A2(sky130_fd_sc_hd__and2_2_15_X),
    .A3(sky130_fd_sc_hd__and4b_2_3_X),
    .A1(sky130_fd_sc_hd__inv_2_23_Y),
    .B1(sky130_fd_sc_hd__a32o_2_3_B1)
  );

  sky130_fd_sc_hd__clkbuf_16 Xsky130_fd_sc_hd__clkbuf_16_0 (
    .X(sky130_fd_sc_hd__clkbuf_8_9_A),
    .A(clk)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_29 (
    .X(sky130_fd_sc_hd__and3_2_12_A),
    .B(sky130_fd_sc_hd__o21a_2_27_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_12_C)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_18 (
    .X(sky130_fd_sc_hd__o32a_2_3_A1),
    .B(sky130_fd_sc_hd__nor2_2_34_Y),
    .A_N(sky130_fd_sc_hd__xor2_2_16_X)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_20 (
    .Y(sky130_fd_sc_hd__and2_2_8_B),
    .A(sky130_fd_sc_hd__or2_2_9_B),
    .B(sky130_fd_sc_hd__or2_2_8_B)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_31 (
    .Y(sky130_fd_sc_hd__xor2_2_20_B),
    .A(sky130_fd_sc_hd__nand2_2_31_A),
    .B(sky130_fd_sc_hd__a22o_2_3_X)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_170 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_192 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_181 (
    
  );

  sky130_fd_sc_hd__diode_2 Xsky130_fd_sc_hd__diode_2_1 (
    .DIODE(enable)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_19 (
    .Q(sky130_fd_sc_hd__nor3_2_2_B),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__and2b_2_9_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_3_X)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_2 (
    .A1(sky130_fd_sc_hd__or4_2_4_X),
    .A2(sky130_fd_sc_hd__a22o_2_2_A2),
    .X(sky130_fd_sc_hd__a22o_2_2_X),
    .B2(sky130_fd_sc_hd__a22o_2_2_B2),
    .B1(sky130_fd_sc_hd__buf_2_0_X)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_11 (
    .X(sky130_fd_sc_hd__clkbuf_4_11_X),
    .A(sky130_fd_sc_hd__clkbuf_8_11_X)
  );

  sky130_fd_sc_hd__o31a_2 Xsky130_fd_sc_hd__o31a_2_10 (
    .X(sky130_fd_sc_hd__o31a_2_10_X),
    .A1(sky130_fd_sc_hd__o31a_2_9_A1),
    .A2(sky130_fd_sc_hd__a22o_2_13_X),
    .B1(sky130_fd_sc_hd__or3_2_15_X),
    .A3(sky130_fd_sc_hd__a22o_2_17_X)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_3 (
    .A(sky130_fd_sc_hd__or3_2_3_A),
    .B(sky130_fd_sc_hd__or3_2_3_B),
    .X(sky130_fd_sc_hd__or3_2_3_X),
    .C(sky130_fd_sc_hd__or3_2_3_C)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_7 (
    .A(sky130_fd_sc_hd__inv_2_7_A),
    .Y(sky130_fd_sc_hd__inv_2_7_Y)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_13 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(I),
    .A0(sky130_fd_sc_hd__a22o_2_2_A2),
    .X(sky130_fd_sc_hd__mux2_1_13_X)
  );

  sky130_fd_sc_hd__a311o_2 Xsky130_fd_sc_hd__a311o_2_1 (
    .X(sky130_fd_sc_hd__o31a_2_0_B1),
    .C1(sky130_fd_sc_hd__and3b_2_0_C),
    .B1(sky130_fd_sc_hd__and2b_2_6_X),
    .A1(sky130_fd_sc_hd__nor3_2_1_C),
    .A2(sky130_fd_sc_hd__o32ai_2_0_B1),
    .A3(sky130_fd_sc_hd__nand2b_2_8_Y)
  );

  sky130_fd_sc_hd__dfstp_2 Xsky130_fd_sc_hd__dfstp_2_1 (
    .Q(sky130_fd_sc_hd__xor2_2_16_A),
    .D(sky130_fd_sc_hd__o221a_2_1_X),
    .SET_B(rst_n),
    .CLK(sky130_fd_sc_hd__dfxtp_2_3_CLK)
  );

  sky130_fd_sc_hd__o31a_2 Xsky130_fd_sc_hd__o31a_2_0 (
    .X(sky130_fd_sc_hd__o31a_2_0_X),
    .A1(sky130_fd_sc_hd__o31a_2_0_A1),
    .A2(sky130_fd_sc_hd__o31a_2_0_A2),
    .B1(sky130_fd_sc_hd__o31a_2_0_B1),
    .A3(sky130_fd_sc_hd__nor3_2_1_Y)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_6 (
    .X(sky130_fd_sc_hd__or2_2_5_A),
    .B(sky130_fd_sc_hd__xor2_2_6_B),
    .A(sky130_fd_sc_hd__xor2_2_6_A)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_8 (
    .B(sky130_fd_sc_hd__and4_2_3_B),
    .X(sky130_fd_sc_hd__and4_2_4_D),
    .A(sky130_fd_sc_hd__and4_2_3_A),
    .C(sky130_fd_sc_hd__or3_2_8_B)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_0 (
    .Q(sky130_fd_sc_hd__nand4_2_0_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_4_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_0_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_28 (
    .A1(sky130_fd_sc_hd__o21a_2_28_A1),
    .B1(sky130_fd_sc_hd__a31o_2_23_X),
    .A2(sky130_fd_sc_hd__o21a_2_28_A2),
    .X(sky130_fd_sc_hd__o21a_2_28_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_17 (
    .A1(sky130_fd_sc_hd__inv_2_16_A),
    .B1(sky130_fd_sc_hd__or4_2_5_X),
    .A2(sky130_fd_sc_hd__nor2_2_42_Y),
    .X(sky130_fd_sc_hd__o21a_2_17_X)
  );

  sky130_fd_sc_hd__a32o_2 Xsky130_fd_sc_hd__a32o_2_4 (
    .B2(sky130_fd_sc_hd__a32o_2_4_B2),
    .X(sky130_fd_sc_hd__a32o_2_4_X),
    .A2(sky130_fd_sc_hd__and2_2_15_X),
    .A3(sky130_fd_sc_hd__and4b_2_3_X),
    .A1(sky130_fd_sc_hd__inv_2_23_A),
    .B1(success)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_19 (
    .X(sky130_fd_sc_hd__and2b_2_19_X),
    .B(sky130_fd_sc_hd__o221a_2_2_C1),
    .A_N(sky130_fd_sc_hd__or2_2_8_X)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_20 (
    .A1(sky130_fd_sc_hd__xnor2_2_13_Y),
    .A2(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__o31a_2_3_A3),
    .B2(sky130_fd_sc_hd__conb_1_0_LO),
    .B1(sky130_fd_sc_hd__nor3b_2_3_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_10 (
    .Y(sky130_fd_sc_hd__a31o_2_5_A3),
    .A(sky130_fd_sc_hd__or4_2_0_A),
    .B(sky130_fd_sc_hd__o31ai_2_1_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_21 (
    .Y(sky130_fd_sc_hd__and3_2_2_A),
    .A(sky130_fd_sc_hd__xor2_2_7_A),
    .B(sky130_fd_sc_hd__xor2_2_9_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_32 (
    .Y(sky130_fd_sc_hd__inv_2_12_A),
    .A(sky130_fd_sc_hd__or2_2_9_B),
    .B(sky130_fd_sc_hd__o31a_2_1_A3)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_160 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_193 (
    
  );

  sky130_fd_sc_hd__diode_2 Xsky130_fd_sc_hd__diode_2_2 (
    .DIODE(sky130_fd_sc_hd__conb_1_4_LO)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_182 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_171 (
    
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_3 (
    .A1(sky130_fd_sc_hd__or3_2_9_A),
    .A2(sky130_fd_sc_hd__or2_2_9_X),
    .X(sky130_fd_sc_hd__a22o_2_3_X),
    .B2(sky130_fd_sc_hd__or3b_2_0_X),
    .B1(sky130_fd_sc_hd__o32a_2_2_A2)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_12 (
    .X(sky130_fd_sc_hd__clkbuf_4_12_X),
    .A(sky130_fd_sc_hd__clkbuf_8_10_X)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_4 (
    .A(sky130_fd_sc_hd__or4_2_0_A),
    .B(sky130_fd_sc_hd__or3_2_4_B),
    .X(sky130_fd_sc_hd__or3_2_4_X),
    .C(sky130_fd_sc_hd__or3_2_4_C)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_8 (
    .A(sky130_fd_sc_hd__inv_2_8_A),
    .Y(sky130_fd_sc_hd__inv_2_8_Y)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_14 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__mux2_1_15_A0),
    .A0(sky130_fd_sc_hd__mux2_1_8_A1),
    .X(sky130_fd_sc_hd__mux2_1_14_X)
  );

  sky130_fd_sc_hd__dfstp_2 Xsky130_fd_sc_hd__dfstp_2_2 (
    .Q(sky130_fd_sc_hd__xor2_2_20_A),
    .D(sky130_fd_sc_hd__dfstp_2_2_D),
    .SET_B(rst_n),
    .CLK(sky130_fd_sc_hd__clkbuf_8_7_X)
  );

  sky130_fd_sc_hd__o31a_2 Xsky130_fd_sc_hd__o31a_2_1 (
    .X(sky130_fd_sc_hd__o31a_2_1_X),
    .A1(sky130_fd_sc_hd__or2_2_9_B),
    .A2(sky130_fd_sc_hd__or3_2_9_A),
    .B1(sky130_fd_sc_hd__o31a_2_1_B1),
    .A3(sky130_fd_sc_hd__o31a_2_1_A3)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_7 (
    .X(sky130_fd_sc_hd__xor2_2_7_X),
    .B(sky130_fd_sc_hd__xor2_2_9_A),
    .A(sky130_fd_sc_hd__xor2_2_7_A)
  );

  sky130_fd_sc_hd__and3_2 Xsky130_fd_sc_hd__and3_2_9 (
    .B(I),
    .X(sky130_fd_sc_hd__inv_2_10_A),
    .A(sky130_fd_sc_hd__or3_2_8_A),
    .C(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_1 (
    .Q(sky130_fd_sc_hd__inv_2_1_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_7_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_0_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_29 (
    .A1(sky130_fd_sc_hd__inv_2_17_A),
    .B1(sky130_fd_sc_hd__or4_2_9_X),
    .A2(sky130_fd_sc_hd__nor2_2_41_Y),
    .X(sky130_fd_sc_hd__o21a_2_29_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_18 (
    .A1(sky130_fd_sc_hd__o21a_2_18_A1),
    .B1(sky130_fd_sc_hd__a31o_2_16_X),
    .A2(sky130_fd_sc_hd__nand4_2_6_Y),
    .X(sky130_fd_sc_hd__o21a_2_18_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_0 (
    .A1(sky130_fd_sc_hd__or3_2_3_A),
    .B1(sky130_fd_sc_hd__or3_2_3_B),
    .A2(sky130_fd_sc_hd__or3_2_3_C),
    .X(sky130_fd_sc_hd__or4_2_0_D)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_21 (
    .A1(sky130_fd_sc_hd__o31a_2_2_X),
    .A2(sky130_fd_sc_hd__nor3b_2_2_Y),
    .X(sky130_fd_sc_hd__o31a_2_9_A2),
    .B2(sky130_fd_sc_hd__a22o_2_21_B2),
    .B1(sky130_fd_sc_hd__nor3_2_3_Y)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_10 (
    .A1(sky130_fd_sc_hd__xnor2_2_14_Y),
    .A2(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__o31a_2_9_A3),
    .B2(sky130_fd_sc_hd__o21bai_2_0_Y),
    .B1(sky130_fd_sc_hd__nor3b_2_3_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_11 (
    .Y(sky130_fd_sc_hd__o21a_2_3_A2),
    .A(sky130_fd_sc_hd__or2_2_4_A),
    .B(sky130_fd_sc_hd__nand2_2_5_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_33 (
    .Y(sky130_fd_sc_hd__or4_2_9_D),
    .A(I),
    .B(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_22 (
    .Y(sky130_fd_sc_hd__and3_2_2_B),
    .A(sky130_fd_sc_hd__xor2_2_4_A),
    .B(sky130_fd_sc_hd__xor2_2_7_X)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_161 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_150 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_194 (
    
  );

  sky130_fd_sc_hd__diode_2 Xsky130_fd_sc_hd__diode_2_3 (
    .DIODE(sky130_fd_sc_hd__and4_2_3_X)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_183 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_172 (
    
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_4 (
    .A1(sky130_fd_sc_hd__inv_2_7_A),
    .A2(sky130_fd_sc_hd__xor2_2_20_A),
    .X(sky130_fd_sc_hd__a22o_2_4_X),
    .B2(sky130_fd_sc_hd__a22o_2_4_B2),
    .B1(sky130_fd_sc_hd__nor2_2_39_Y)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_0 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__o21a_2_4_A2),
    .D(sky130_fd_sc_hd__nor4_2_0_Y),
    .C(sky130_fd_sc_hd__nand4_2_0_C)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_13 (
    .X(sky130_fd_sc_hd__clkbuf_4_13_X),
    .A(sky130_fd_sc_hd__dfxtp_2_2_CLK)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_5 (
    .A(sky130_fd_sc_hd__or3_2_5_A),
    .B(sky130_fd_sc_hd__or3_2_5_B),
    .X(sky130_fd_sc_hd__or3_2_5_X),
    .C(sky130_fd_sc_hd__or3_2_5_C)
  );

  sky130_fd_sc_hd__inv_2 Xsky130_fd_sc_hd__inv_2_9 (
    .A(sky130_fd_sc_hd__inv_2_9_A),
    .Y(sky130_fd_sc_hd__inv_2_9_Y)
  );

  sky130_fd_sc_hd__and3b_2 Xsky130_fd_sc_hd__and3b_2_0 (
    .B(sky130_fd_sc_hd__and2_2_7_B),
    .X(sky130_fd_sc_hd__xnor2_2_6_A),
    .A_N(sky130_fd_sc_hd__nor3_2_1_B),
    .C(sky130_fd_sc_hd__and3b_2_0_C)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_0 (
    .B(sky130_fd_sc_hd__nor2_2_0_B),
    .Y(sky130_fd_sc_hd__xor2_2_3_B),
    .A(sky130_fd_sc_hd__nor2_2_8_A)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_15 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__mux2_1_16_A0),
    .A0(sky130_fd_sc_hd__mux2_1_15_A0),
    .X(sky130_fd_sc_hd__mux2_1_15_X)
  );

  sky130_fd_sc_hd__dfstp_2 Xsky130_fd_sc_hd__dfstp_2_3 (
    .Q(sky130_fd_sc_hd__or2_2_12_A),
    .D(sky130_fd_sc_hd__o32a_2_3_X),
    .SET_B(rst_n),
    .CLK(sky130_fd_sc_hd__clkbuf_8_7_X)
  );

  sky130_fd_sc_hd__o31a_2 Xsky130_fd_sc_hd__o31a_2_2 (
    .X(sky130_fd_sc_hd__o31a_2_2_X),
    .A1(sky130_fd_sc_hd__o31a_2_2_A1),
    .A2(sky130_fd_sc_hd__o31a_2_2_A2),
    .B1(sky130_fd_sc_hd__inv_2_14_Y),
    .A3(sky130_fd_sc_hd__o31a_2_2_A3)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_40 (
    .B(sky130_fd_sc_hd__nor2_2_46_A),
    .Y(sky130_fd_sc_hd__nor2_2_40_Y),
    .A(sky130_fd_sc_hd__nor2_2_40_A)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_8 (
    .X(sky130_fd_sc_hd__or4_2_0_A),
    .B(sky130_fd_sc_hd__xor2_2_8_B),
    .A(sky130_fd_sc_hd__xor2_2_8_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_2 (
    .Q(sky130_fd_sc_hd__or4_2_1_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a21o_2_0_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_8_CLK)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_19 (
    .A1(sky130_fd_sc_hd__o21a_2_19_A1),
    .B1(sky130_fd_sc_hd__a31o_2_18_X),
    .A2(sky130_fd_sc_hd__nand4_2_7_Y),
    .X(sky130_fd_sc_hd__o21a_2_19_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_1 (
    .A1(sky130_fd_sc_hd__or3_2_3_B),
    .B1(sky130_fd_sc_hd__or2_2_4_X),
    .A2(sky130_fd_sc_hd__and2_2_2_X),
    .X(sky130_fd_sc_hd__o21a_2_1_X)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_0 (
    .Y(sky130_fd_sc_hd__xor2_2_3_A),
    .A(sky130_fd_sc_hd__xnor2_2_0_A),
    .B(sky130_fd_sc_hd__xor2_2_1_X)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_11 (
    .A1(sky130_fd_sc_hd__xnor2_2_18_Y),
    .A2(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__o31a_2_6_A3),
    .B2(sky130_fd_sc_hd__o31a_2_0_X),
    .B1(sky130_fd_sc_hd__nor3b_2_3_Y)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_22 (
    .A1(sky130_fd_sc_hd__or3b_2_0_A),
    .A2(sky130_fd_sc_hd__or3_2_9_C),
    .X(sky130_fd_sc_hd__a22o_2_22_X),
    .B2(sky130_fd_sc_hd__or2_2_9_B),
    .B1(sky130_fd_sc_hd__nand2_2_31_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_12 (
    .Y(sky130_fd_sc_hd__o311a_2_0_C1),
    .A(sky130_fd_sc_hd__or4_2_0_A),
    .B(sky130_fd_sc_hd__mux2_1_1_X)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_23 (
    .Y(sky130_fd_sc_hd__mux2_1_5_A1),
    .A(sky130_fd_sc_hd__inv_2_9_A),
    .B(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_34 (
    .Y(sky130_fd_sc_hd__or4_2_5_D),
    .A(I),
    .B(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_140 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_151 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_195 (
    
  );

  sky130_fd_sc_hd__diode_2 Xsky130_fd_sc_hd__diode_2_4 (
    .DIODE(sky130_fd_sc_hd__and3_2_6_X)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_184 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_173 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_162 (
    
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_5 (
    .A1(sky130_fd_sc_hd__inv_2_7_A),
    .A2(sky130_fd_sc_hd__xor2_2_14_B),
    .X(sky130_fd_sc_hd__a22o_2_5_X),
    .B2(sky130_fd_sc_hd__nor2_2_39_Y),
    .B1(sky130_fd_sc_hd__xor2_2_20_A)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_1 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__nand4_2_1_Y),
    .D(sky130_fd_sc_hd__nand4_2_1_D),
    .C(sky130_fd_sc_hd__nand4_2_1_C)
  );

  sky130_fd_sc_hd__clkbuf_4 Xsky130_fd_sc_hd__clkbuf_4_14 (
    .X(sky130_fd_sc_hd__clkbuf_4_14_X),
    .A(sky130_fd_sc_hd__dfrtp_2_8_CLK)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_10 (
    .X(sky130_fd_sc_hd__a21o_2_10_X),
    .B1(sky130_fd_sc_hd__and4_2_3_B),
    .A1(sky130_fd_sc_hd__and4_2_3_A),
    .A2(sky130_fd_sc_hd__inv_2_10_A)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_6 (
    .A(sky130_fd_sc_hd__or3_2_6_A),
    .B(sky130_fd_sc_hd__or3_2_6_B),
    .X(sky130_fd_sc_hd__or3_2_6_X),
    .C(sky130_fd_sc_hd__or3_2_6_C)
  );

  sky130_fd_sc_hd__and3b_2 Xsky130_fd_sc_hd__and3b_2_1 (
    .B(sky130_fd_sc_hd__or2_2_9_B),
    .X(sky130_fd_sc_hd__and3b_2_1_X),
    .A_N(sky130_fd_sc_hd__or2_2_8_B),
    .C(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_1 (
    .B(sky130_fd_sc_hd__or2_2_0_B),
    .Y(sky130_fd_sc_hd__or3_2_2_B),
    .A(sky130_fd_sc_hd__nor2_2_4_Y)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_16 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__mux2_1_9_A0),
    .A0(sky130_fd_sc_hd__mux2_1_16_A0),
    .X(sky130_fd_sc_hd__mux2_1_16_X)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_20 (
    .B(sky130_fd_sc_hd__o21a_2_27_A2),
    .Y(sky130_fd_sc_hd__dfrtp_2_70_D),
    .A_N(sky130_fd_sc_hd__o21a_2_27_A1)
  );

  sky130_fd_sc_hd__o31a_2 Xsky130_fd_sc_hd__o31a_2_3 (
    .X(sky130_fd_sc_hd__o31a_2_3_X),
    .A1(sky130_fd_sc_hd__o31a_2_9_A1),
    .A2(sky130_fd_sc_hd__a22o_2_6_X),
    .B1(sky130_fd_sc_hd__or3_2_13_X),
    .A3(sky130_fd_sc_hd__o31a_2_3_A3)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_41 (
    .B(sky130_fd_sc_hd__or4_2_9_D),
    .Y(sky130_fd_sc_hd__nor2_2_41_Y),
    .A(sky130_fd_sc_hd__or4_2_9_C)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_30 (
    .B(sky130_fd_sc_hd__nor2_2_30_B),
    .Y(sky130_fd_sc_hd__nor2_2_30_Y),
    .A(sky130_fd_sc_hd__inv_2_10_A)
  );

  sky130_fd_sc_hd__xor2_2 Xsky130_fd_sc_hd__xor2_2_9 (
    .X(sky130_fd_sc_hd__xor2_2_9_X),
    .B(sky130_fd_sc_hd__inv_2_5_A),
    .A(sky130_fd_sc_hd__xor2_2_9_A)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_0 (
    .A(sky130_fd_sc_hd__or2_2_1_X),
    .X(sky130_fd_sc_hd__and3_2_0_C),
    .B(sky130_fd_sc_hd__or2_2_0_B)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_3 (
    .Q(sky130_fd_sc_hd__or4_2_3_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__a21o_2_2_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_0_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_2 (
    .A1(sky130_fd_sc_hd__or3_2_3_B),
    .B1(sky130_fd_sc_hd__or2_2_4_B),
    .A2(sky130_fd_sc_hd__inv_2_4_A),
    .X(sky130_fd_sc_hd__or2_2_6_B)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_1 (
    .Y(sky130_fd_sc_hd__nor2_2_8_A),
    .A(sky130_fd_sc_hd__or4_2_4_B),
    .B(sky130_fd_sc_hd__xor2_2_0_X)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_12 (
    .A1(sky130_fd_sc_hd__conb_1_4_LO),
    .A2(sky130_fd_sc_hd__nor3b_2_2_Y),
    .X(sky130_fd_sc_hd__o31a_2_5_A2),
    .B2(sky130_fd_sc_hd__o211a_2_9_X),
    .B1(sky130_fd_sc_hd__nor3_2_3_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_35 (
    .Y(sky130_fd_sc_hd__or4_2_6_D),
    .A(I),
    .B(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_24 (
    .Y(sky130_fd_sc_hd__xnor2_2_11_B),
    .A(sky130_fd_sc_hd__inv_2_10_A),
    .B(sky130_fd_sc_hd__and4_2_4_D)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_13 (
    .Y(sky130_fd_sc_hd__or4_2_3_D),
    .A(I),
    .B(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nor4b_2 Xsky130_fd_sc_hd__nor4b_2_0 (
    .D_N(sky130_fd_sc_hd__or2_2_8_B),
    .Y(sky130_fd_sc_hd__or3_2_6_C),
    .C(sky130_fd_sc_hd__or2_2_9_B),
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .B(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_130 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_141 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_152 (
    
  );

  sky130_fd_sc_hd__diode_2 Xsky130_fd_sc_hd__diode_2_5 (
    .DIODE(sky130_fd_sc_hd__and4_2_3_X)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_185 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_174 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_163 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_196 (
    
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_6 (
    .A1(sky130_fd_sc_hd__conb_1_5_LO),
    .A2(sky130_fd_sc_hd__nor3b_2_2_Y),
    .X(sky130_fd_sc_hd__a22o_2_6_X),
    .B2(sky130_fd_sc_hd__conb_1_3_LO),
    .B1(sky130_fd_sc_hd__nor3_2_3_Y)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_2 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__o21a_2_8_A2),
    .D(sky130_fd_sc_hd__nand4_2_2_D),
    .C(sky130_fd_sc_hd__nand4_2_2_C)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_11 (
    .X(sky130_fd_sc_hd__dfstp_2_2_D),
    .B1(sky130_fd_sc_hd__a22o_2_5_X),
    .A1(sky130_fd_sc_hd__and2b_2_16_X),
    .A2(sky130_fd_sc_hd__xnor2_2_19_Y)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_7 (
    .A(sky130_fd_sc_hd__or3_2_7_A),
    .B(sky130_fd_sc_hd__or3_2_7_B),
    .X(sky130_fd_sc_hd__or3_2_7_X),
    .C(sky130_fd_sc_hd__or3_2_7_C)
  );

  sky130_fd_sc_hd__and3b_2 Xsky130_fd_sc_hd__and3b_2_2 (
    .B(sky130_fd_sc_hd__nor2_2_32_B),
    .X(sky130_fd_sc_hd__and3b_2_2_X),
    .A_N(sky130_fd_sc_hd__or2_2_8_B),
    .C(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_2 (
    .B(sky130_fd_sc_hd__inv_2_4_A),
    .Y(sky130_fd_sc_hd__or3_2_2_C),
    .A(sky130_fd_sc_hd__or3_2_0_B)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_17 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__mux2_1_19_A0),
    .A0(sky130_fd_sc_hd__mux2_1_9_A1),
    .X(sky130_fd_sc_hd__mux2_1_17_X)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_21 (
    .B(sky130_fd_sc_hd__o21a_2_28_A2),
    .Y(sky130_fd_sc_hd__dfrtp_2_64_D),
    .A_N(sky130_fd_sc_hd__o21a_2_28_A1)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_10 (
    .B(sky130_fd_sc_hd__or2_2_9_B),
    .Y(sky130_fd_sc_hd__and2_2_7_B),
    .A_N(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__o31a_2 Xsky130_fd_sc_hd__o31a_2_4 (
    .X(sky130_fd_sc_hd__o31a_2_4_X),
    .A1(sky130_fd_sc_hd__o31a_2_9_A1),
    .A2(sky130_fd_sc_hd__a22o_2_7_X),
    .B1(sky130_fd_sc_hd__or3_2_12_X),
    .A3(sky130_fd_sc_hd__a22o_2_9_X)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_20 (
    .B(sky130_fd_sc_hd__o211a_2_0_X),
    .Y(sky130_fd_sc_hd__nor2_2_20_Y),
    .A(sky130_fd_sc_hd__nor2_2_20_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_31 (
    .B(sky130_fd_sc_hd__nor2_2_31_B),
    .Y(sky130_fd_sc_hd__nor2_2_31_Y),
    .A(sky130_fd_sc_hd__inv_2_9_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_42 (
    .B(sky130_fd_sc_hd__or4_2_5_D),
    .Y(sky130_fd_sc_hd__nor2_2_42_Y),
    .A(sky130_fd_sc_hd__or4_2_5_C)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_90 (
    
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_1 (
    .A(sky130_fd_sc_hd__or4_2_4_A),
    .X(sky130_fd_sc_hd__or2_2_1_A),
    .B(sky130_fd_sc_hd__xor2_2_7_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_4 (
    .Q(sky130_fd_sc_hd__o21a_2_5_A1),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__dfrtp_2_4_D),
    .CLK(sky130_fd_sc_hd__dfrtp_2_8_CLK)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_3 (
    .A1(sky130_fd_sc_hd__or3_2_3_A),
    .B1(sky130_fd_sc_hd__or2_2_3_X),
    .A2(sky130_fd_sc_hd__o21a_2_3_A2),
    .X(sky130_fd_sc_hd__o21a_2_3_X)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_2 (
    .Y(sky130_fd_sc_hd__or3_2_0_B),
    .A(sky130_fd_sc_hd__xor2_2_3_A),
    .B(sky130_fd_sc_hd__xor2_2_3_B)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_13 (
    .A1(sky130_fd_sc_hd__a22o_2_13_A1),
    .A2(sky130_fd_sc_hd__nor3b_2_2_Y),
    .X(sky130_fd_sc_hd__a22o_2_13_X),
    .B2(sky130_fd_sc_hd__o221a_2_2_X),
    .B1(sky130_fd_sc_hd__nor3_2_3_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_36 (
    .Y(sky130_fd_sc_hd__or4_2_7_D),
    .A(I),
    .B(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nor4b_2 Xsky130_fd_sc_hd__nor4b_2_1 (
    .D_N(sky130_fd_sc_hd__nor3_2_2_Y),
    .Y(sky130_fd_sc_hd__or4b_2_8_A),
    .C(sky130_fd_sc_hd__and4_2_3_C),
    .A(sky130_fd_sc_hd__and4_2_3_A),
    .B(sky130_fd_sc_hd__and4_2_3_B)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_14 (
    .Y(sky130_fd_sc_hd__or4_2_1_D),
    .A(I),
    .B(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_25 (
    .Y(sky130_fd_sc_hd__mux2_1_7_A0),
    .A(sky130_fd_sc_hd__or2_2_7_A),
    .B(I)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_131 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_120 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_142 (
    
  );

  sky130_fd_sc_hd__diode_2 Xsky130_fd_sc_hd__diode_2_6 (
    .DIODE(sky130_fd_sc_hd__and3_2_6_X)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_186 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_175 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_164 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_153 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_197 (
    
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_7 (
    .A1(sky130_fd_sc_hd__a22o_2_7_A1),
    .A2(sky130_fd_sc_hd__nor3b_2_2_Y),
    .X(sky130_fd_sc_hd__a22o_2_7_X),
    .B2(sky130_fd_sc_hd__o21a_2_15_X),
    .B1(sky130_fd_sc_hd__nor3_2_3_Y)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_3 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__o21a_2_5_A2),
    .D(sky130_fd_sc_hd__nand4_2_3_D),
    .C(sky130_fd_sc_hd__nand4_2_3_C)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_12 (
    .X(sky130_fd_sc_hd__o32a_2_3_A3),
    .B1(sky130_fd_sc_hd__nor2_2_39_Y),
    .A1(sky130_fd_sc_hd__inv_2_7_A),
    .A2(sky130_fd_sc_hd__xor2_2_19_B)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_8 (
    .A(sky130_fd_sc_hd__or3_2_8_A),
    .B(sky130_fd_sc_hd__or3_2_8_B),
    .X(sky130_fd_sc_hd__or3_2_8_X),
    .C(sky130_fd_sc_hd__or3_2_8_C)
  );

  sky130_fd_sc_hd__and3b_2 Xsky130_fd_sc_hd__and3b_2_3 (
    .B(sky130_fd_sc_hd__nor2_2_40_A),
    .X(sky130_fd_sc_hd__o32a_2_3_A2),
    .A_N(sky130_fd_sc_hd__inv_2_7_A),
    .C(sky130_fd_sc_hd__xor2_2_16_X)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_3 (
    .B(sky130_fd_sc_hd__nor2_2_3_B),
    .Y(sky130_fd_sc_hd__nor2_2_3_Y),
    .A(sky130_fd_sc_hd__or3_2_3_B)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_18 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__a22o_2_2_A2),
    .A0(sky130_fd_sc_hd__mux2_1_19_A1),
    .X(sky130_fd_sc_hd__mux2_1_18_X)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_22 (
    .B(sky130_fd_sc_hd__or2_2_10_A),
    .Y(sky130_fd_sc_hd__nor2_2_46_A),
    .A_N(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_11 (
    .B(sky130_fd_sc_hd__or3b_2_0_A),
    .Y(sky130_fd_sc_hd__nand2_2_31_A),
    .A_N(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__o31a_2 Xsky130_fd_sc_hd__o31a_2_5 (
    .X(sky130_fd_sc_hd__o31a_2_5_X),
    .A1(sky130_fd_sc_hd__o31a_2_9_A1),
    .A2(sky130_fd_sc_hd__o31a_2_5_A2),
    .B1(sky130_fd_sc_hd__or3_2_17_X),
    .A3(sky130_fd_sc_hd__a22o_2_8_X)
  );

  sky130_fd_sc_hd__conb_1 Xsky130_fd_sc_hd__conb_1_0 (
    .LO(sky130_fd_sc_hd__conb_1_0_LO),
    .HI(sky130_fd_sc_hd__conb_1_0_HI)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_10 (
    .B(sky130_fd_sc_hd__or3_2_2_B),
    .Y(sky130_fd_sc_hd__nor2_2_3_B),
    .A(sky130_fd_sc_hd__or3_2_0_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_21 (
    .B(sky130_fd_sc_hd__and3_2_4_X),
    .Y(sky130_fd_sc_hd__xor2_2_8_B),
    .A(sky130_fd_sc_hd__nor2_2_21_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_32 (
    .B(sky130_fd_sc_hd__nor2_2_32_B),
    .Y(sky130_fd_sc_hd__nor2_2_32_Y),
    .A(sky130_fd_sc_hd__or2_2_8_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_43 (
    .B(sky130_fd_sc_hd__or4_2_7_D),
    .Y(sky130_fd_sc_hd__nor2_2_43_Y),
    .A(sky130_fd_sc_hd__or4_2_7_C)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_80 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_91 (
    
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_2 (
    .A(sky130_fd_sc_hd__and2_2_2_A),
    .X(sky130_fd_sc_hd__and2_2_2_X),
    .B(sky130_fd_sc_hd__and3_2_1_C)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_5 (
    .Q(sky130_fd_sc_hd__nand4_2_2_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_8_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_1_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_4 (
    .A1(sky130_fd_sc_hd__o21a_2_4_A1),
    .B1(sky130_fd_sc_hd__a31o_2_1_X),
    .A2(sky130_fd_sc_hd__o21a_2_4_A2),
    .X(sky130_fd_sc_hd__o21a_2_4_X)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_3 (
    .Y(sky130_fd_sc_hd__and3_2_2_C),
    .A(sky130_fd_sc_hd__xor2_2_0_B),
    .B(sky130_fd_sc_hd__xor2_2_4_A)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_14 (
    .A1(sky130_fd_sc_hd__and3_2_17_X),
    .A2(sky130_fd_sc_hd__nor3b_2_2_Y),
    .X(sky130_fd_sc_hd__o31a_2_8_A2),
    .B2(sky130_fd_sc_hd__and3b_2_2_X),
    .B1(sky130_fd_sc_hd__nor3_2_3_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_26 (
    .Y(sky130_fd_sc_hd__o21a_2_12_A1),
    .A(sky130_fd_sc_hd__and4_2_3_C),
    .B(sky130_fd_sc_hd__nor3_2_2_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_15 (
    .Y(sky130_fd_sc_hd__or4_2_2_D),
    .A(I),
    .B(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_37 (
    .Y(sky130_fd_sc_hd__or4_2_8_D),
    .A(I),
    .B(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_110 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_132 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_121 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_143 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_176 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_165 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_154 (
    
  );

  sky130_fd_sc_hd__diode_2 Xsky130_fd_sc_hd__diode_2_7 (
    .DIODE(sky130_fd_sc_hd__and3_2_6_X)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_198 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_187 (
    
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_8 (
    .A1(sky130_fd_sc_hd__xor2_2_12_X),
    .A2(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__a22o_2_8_X),
    .B2(sky130_fd_sc_hd__o32ai_2_0_Y),
    .B1(sky130_fd_sc_hd__nor3b_2_3_Y)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_4 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__nand4_2_4_Y),
    .D(sky130_fd_sc_hd__nand4_2_4_D),
    .C(sky130_fd_sc_hd__nand4_2_4_C)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_13 (
    .X(sky130_fd_sc_hd__a21o_2_13_X),
    .B1(sky130_fd_sc_hd__or4_2_5_A),
    .A1(sky130_fd_sc_hd__inv_2_16_A),
    .A2(sky130_fd_sc_hd__nor2_2_42_Y)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_9 (
    .A(sky130_fd_sc_hd__or3_2_9_A),
    .B(sky130_fd_sc_hd__or3_2_9_B),
    .X(sky130_fd_sc_hd__or3_2_9_X),
    .C(sky130_fd_sc_hd__or3_2_9_C)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_4 (
    .B(sky130_fd_sc_hd__or2_2_1_B),
    .Y(sky130_fd_sc_hd__nor2_2_4_Y),
    .A(sky130_fd_sc_hd__or2_2_1_A)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_19 (
    .S(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__mux2_1_19_A1),
    .A0(sky130_fd_sc_hd__mux2_1_19_A0),
    .X(sky130_fd_sc_hd__mux2_1_19_X)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_23 (
    .B(sky130_fd_sc_hd__or2_2_11_A),
    .Y(sky130_fd_sc_hd__a32o_2_4_B2),
    .A_N(sky130_fd_sc_hd__or2_2_11_B)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_12 (
    .B(sky130_fd_sc_hd__or2_2_9_A),
    .Y(sky130_fd_sc_hd__o221a_2_2_C1),
    .A_N(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__o31a_2 Xsky130_fd_sc_hd__o31a_2_6 (
    .X(sky130_fd_sc_hd__o31a_2_6_X),
    .A1(sky130_fd_sc_hd__o31a_2_9_A1),
    .A2(sky130_fd_sc_hd__o31a_2_6_A2),
    .B1(sky130_fd_sc_hd__or3_2_10_X),
    .A3(sky130_fd_sc_hd__o31a_2_6_A3)
  );

  sky130_fd_sc_hd__conb_1 Xsky130_fd_sc_hd__conb_1_1 (
    .LO(sky130_fd_sc_hd__or3_2_13_A),
    .HI(sky130_fd_sc_hd__conb_1_1_HI)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_11 (
    .B(sky130_fd_sc_hd__or2_2_4_B),
    .Y(sky130_fd_sc_hd__or3_2_1_C),
    .A(sky130_fd_sc_hd__or3_2_3_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_22 (
    .B(sky130_fd_sc_hd__or2_2_9_A),
    .Y(sky130_fd_sc_hd__nor3_2_1_B),
    .A(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_44 (
    .B(sky130_fd_sc_hd__or4_2_8_D),
    .Y(sky130_fd_sc_hd__nor2_2_44_Y),
    .A(sky130_fd_sc_hd__or4_2_8_C)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_33 (
    .B(sky130_fd_sc_hd__or2_2_9_A),
    .Y(sky130_fd_sc_hd__nor2_2_33_Y),
    .A(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_70 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_81 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_92 (
    
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_10 (
    .C1(sky130_fd_sc_hd__or2_2_9_A),
    .B1(sky130_fd_sc_hd__inv_2_14_Y),
    .A2(sky130_fd_sc_hd__or2_2_9_B),
    .A1(sky130_fd_sc_hd__inv_2_15_Y),
    .X(sky130_fd_sc_hd__o211a_2_10_X)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_3 (
    .A(sky130_fd_sc_hd__or4_2_1_A),
    .X(sky130_fd_sc_hd__and4_2_0_A),
    .B(sky130_fd_sc_hd__or4_2_1_B)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_6 (
    .Q(sky130_fd_sc_hd__nand4_2_1_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_10_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_1_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_5 (
    .A1(sky130_fd_sc_hd__o21a_2_5_A1),
    .B1(sky130_fd_sc_hd__a31o_2_4_X),
    .A2(sky130_fd_sc_hd__o21a_2_5_A2),
    .X(sky130_fd_sc_hd__o21a_2_5_X)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_4 (
    .Y(sky130_fd_sc_hd__xnor2_2_5_B),
    .A(sky130_fd_sc_hd__xnor2_2_4_A),
    .B(sky130_fd_sc_hd__xor2_2_4_X)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_15 (
    .A1(sky130_fd_sc_hd__o21a_2_13_X),
    .A2(sky130_fd_sc_hd__nor3b_2_2_Y),
    .X(sky130_fd_sc_hd__o31a_2_6_A2),
    .B2(sky130_fd_sc_hd__and3b_2_1_X),
    .B1(sky130_fd_sc_hd__nor3_2_3_Y)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_16 (
    .Y(sky130_fd_sc_hd__and3_2_4_B),
    .A(sky130_fd_sc_hd__or4_2_4_D),
    .B(sky130_fd_sc_hd__xnor2_2_5_B)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_27 (
    .Y(sky130_fd_sc_hd__o21a_2_15_A2),
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .B(sky130_fd_sc_hd__or2_2_8_X)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_38 (
    .Y(sky130_fd_sc_hd__nand2_2_38_Y),
    .A(sky130_fd_sc_hd__or2_2_12_A),
    .B(sky130_fd_sc_hd__or2_2_12_B)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_100 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_133 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_122 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_111 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_177 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_166 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_144 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_155 (
    
  );

  sky130_fd_sc_hd__diode_2 Xsky130_fd_sc_hd__diode_2_8 (
    .DIODE(sky130_fd_sc_hd__and3_2_6_X)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_199 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_188 (
    
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_9 (
    .A1(sky130_fd_sc_hd__a22o_2_9_A1),
    .A2(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__a22o_2_9_X),
    .B2(sky130_fd_sc_hd__o22a_2_2_X),
    .B1(sky130_fd_sc_hd__nor3b_2_3_Y)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_5 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__nand4_2_5_Y),
    .D(sky130_fd_sc_hd__nand4_2_5_D),
    .C(sky130_fd_sc_hd__nand4_2_5_C)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_14 (
    .X(sky130_fd_sc_hd__a21o_2_14_X),
    .B1(sky130_fd_sc_hd__or4_2_7_A),
    .A1(sky130_fd_sc_hd__inv_2_18_A),
    .A2(sky130_fd_sc_hd__nor2_2_43_Y)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_5 (
    .B(sky130_fd_sc_hd__or3_2_3_B),
    .Y(sky130_fd_sc_hd__nor2_2_5_Y),
    .A(sky130_fd_sc_hd__nor2_2_5_A)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_13 (
    .B(sky130_fd_sc_hd__nand4_2_6_Y),
    .Y(sky130_fd_sc_hd__dfrtp_2_58_D),
    .A_N(sky130_fd_sc_hd__o21a_2_18_A1)
  );

  sky130_fd_sc_hd__o31a_2 Xsky130_fd_sc_hd__o31a_2_7 (
    .X(sky130_fd_sc_hd__o31a_2_7_X),
    .A1(sky130_fd_sc_hd__o31a_2_9_A1),
    .A2(sky130_fd_sc_hd__o31a_2_7_A2),
    .B1(sky130_fd_sc_hd__or3_2_11_X),
    .A3(sky130_fd_sc_hd__o31a_2_7_A3)
  );

  sky130_fd_sc_hd__conb_1 Xsky130_fd_sc_hd__conb_1_2 (
    .LO(sky130_fd_sc_hd__conb_1_2_LO),
    .HI(sky130_fd_sc_hd__conb_1_2_HI)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_12 (
    .B(sky130_fd_sc_hd__nor2_2_3_B),
    .Y(sky130_fd_sc_hd__or3_2_4_B),
    .A(sky130_fd_sc_hd__or2_2_4_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_23 (
    .B(sky130_fd_sc_hd__and2_2_8_A),
    .Y(sky130_fd_sc_hd__nor2_2_23_Y),
    .A(sky130_fd_sc_hd__or2_2_8_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_45 (
    .B(sky130_fd_sc_hd__or4_2_6_D),
    .Y(sky130_fd_sc_hd__nor2_2_45_Y),
    .A(sky130_fd_sc_hd__or4_2_6_C)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_34 (
    .B(sky130_fd_sc_hd__nor2_2_40_A),
    .Y(sky130_fd_sc_hd__nor2_2_34_Y),
    .A(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_60 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_71 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_93 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_82 (
    
  );

  sky130_fd_sc_hd__o211a_2 Xsky130_fd_sc_hd__o211a_2_11 (
    .C1(sky130_fd_sc_hd__or2_2_11_B),
    .B1(sky130_fd_sc_hd__a21o_2_17_X),
    .A2(sky130_fd_sc_hd__nand3_2_1_Y),
    .A1(sky130_fd_sc_hd__or2_2_8_B),
    .X(sky130_fd_sc_hd__dfxtp_2_3_D)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_4 (
    .A(sky130_fd_sc_hd__or4_2_2_A),
    .X(sky130_fd_sc_hd__and4_2_1_B),
    .B(sky130_fd_sc_hd__or4_2_2_B)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_7 (
    .Q(sky130_fd_sc_hd__inv_2_2_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_9_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_1_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_6 (
    .A1(sky130_fd_sc_hd__inv_2_3_A),
    .B1(sky130_fd_sc_hd__or4_2_3_X),
    .A2(sky130_fd_sc_hd__o21a_2_6_A2),
    .X(sky130_fd_sc_hd__o21a_2_6_X)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_5 (
    .Y(sky130_fd_sc_hd__xnor2_2_8_A),
    .A(sky130_fd_sc_hd__or4_2_4_D),
    .B(sky130_fd_sc_hd__xnor2_2_5_B)
  );

  sky130_fd_sc_hd__o22ai_2 Xsky130_fd_sc_hd__o22ai_2_0 (
    .B2(sky130_fd_sc_hd__a31o_2_7_X),
    .B1(sky130_fd_sc_hd__a21oi_2_5_Y),
    .Y(sky130_fd_sc_hd__o22ai_2_0_Y),
    .A1(sky130_fd_sc_hd__xor2_2_0_B),
    .A2(sky130_fd_sc_hd__and3_2_2_B)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_16 (
    .A1(sky130_fd_sc_hd__o211a_2_10_X),
    .A2(sky130_fd_sc_hd__nor3b_2_2_Y),
    .X(sky130_fd_sc_hd__o31a_2_7_A2),
    .B2(sky130_fd_sc_hd__and2b_2_19_X),
    .B1(sky130_fd_sc_hd__nor3_2_3_Y)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_0 (
    .X(sky130_fd_sc_hd__a31o_2_0_X),
    .B1(sky130_fd_sc_hd__and3_2_0_C),
    .A3(sky130_fd_sc_hd__and3_2_1_C),
    .A1(sky130_fd_sc_hd__or3_2_3_B),
    .A2(sky130_fd_sc_hd__and2_2_2_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_17 (
    .Y(sky130_fd_sc_hd__xnor2_2_4_A),
    .A(sky130_fd_sc_hd__xor2_2_0_B),
    .B(sky130_fd_sc_hd__xor2_2_9_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_28 (
    .Y(sky130_fd_sc_hd__o32a_2_2_B2),
    .A(sky130_fd_sc_hd__or2_2_9_X),
    .B(sky130_fd_sc_hd__o32a_2_2_A2)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_101 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_134 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_123 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_112 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_167 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_145 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_156 (
    
  );

  sky130_fd_sc_hd__diode_2 Xsky130_fd_sc_hd__diode_2_9 (
    .DIODE(sky130_fd_sc_hd__and4_2_3_X)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_189 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_178 (
    
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_6 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__nand4_2_6_Y),
    .D(sky130_fd_sc_hd__nand4_2_6_D),
    .C(sky130_fd_sc_hd__nand4_2_6_C)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_15 (
    .X(sky130_fd_sc_hd__a21o_2_15_X),
    .B1(sky130_fd_sc_hd__or4_2_8_A),
    .A1(sky130_fd_sc_hd__inv_2_19_A),
    .A2(sky130_fd_sc_hd__nor2_2_44_Y)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_0 (
    .B(sky130_fd_sc_hd__or2_2_0_B),
    .X(sky130_fd_sc_hd__or2_2_4_B),
    .A(sky130_fd_sc_hd__or2_2_2_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_6 (
    .B(sky130_fd_sc_hd__xor2_2_9_A),
    .Y(sky130_fd_sc_hd__nor2_2_6_Y),
    .A(sky130_fd_sc_hd__xor2_2_0_B)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_14 (
    .B(sky130_fd_sc_hd__nand4_2_7_Y),
    .Y(sky130_fd_sc_hd__dfrtp_2_57_D),
    .A_N(sky130_fd_sc_hd__o21a_2_19_A1)
  );

  sky130_fd_sc_hd__o31a_2 Xsky130_fd_sc_hd__o31a_2_8 (
    .X(sky130_fd_sc_hd__o31a_2_8_X),
    .A1(sky130_fd_sc_hd__o31a_2_9_A1),
    .A2(sky130_fd_sc_hd__o31a_2_8_A2),
    .B1(sky130_fd_sc_hd__or3_2_14_X),
    .A3(sky130_fd_sc_hd__o31a_2_8_A3)
  );

  sky130_fd_sc_hd__conb_1 Xsky130_fd_sc_hd__conb_1_3 (
    .LO(sky130_fd_sc_hd__conb_1_3_LO),
    .HI(sky130_fd_sc_hd__conb_1_3_HI)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_13 (
    .B(sky130_fd_sc_hd__or3_2_0_X),
    .Y(sky130_fd_sc_hd__o32a_2_1_A3),
    .A(sky130_fd_sc_hd__or2_2_4_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_46 (
    .B(sky130_fd_sc_hd__nor2_2_46_B),
    .Y(sky130_fd_sc_hd__nor2_2_46_Y),
    .A(sky130_fd_sc_hd__nor2_2_46_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_24 (
    .B(sky130_fd_sc_hd__or2_2_8_B),
    .Y(sky130_fd_sc_hd__nor2_2_24_Y),
    .A(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_35 (
    .B(sky130_fd_sc_hd__o32a_2_2_B1),
    .Y(sky130_fd_sc_hd__o32a_2_2_A3),
    .A(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_50 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_72 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_61 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_94 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_83 (
    
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_20 (
    .X(sky130_fd_sc_hd__a31o_2_20_X),
    .B1(sky130_fd_sc_hd__nand4_2_11_C),
    .A3(sky130_fd_sc_hd__and4b_2_2_X),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_5 (
    .A(sky130_fd_sc_hd__or4_2_3_A),
    .X(sky130_fd_sc_hd__and4_2_0_D),
    .B(sky130_fd_sc_hd__or4_2_3_B)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_8 (
    .Q(sky130_fd_sc_hd__nand4_2_3_C),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_5_X),
    .CLK(sky130_fd_sc_hd__dfrtp_2_8_CLK)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_7 (
    .A1(sky130_fd_sc_hd__inv_2_1_A),
    .B1(sky130_fd_sc_hd__or4_2_1_X),
    .A2(sky130_fd_sc_hd__o21a_2_7_A2),
    .X(sky130_fd_sc_hd__o21a_2_7_X)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_6 (
    .Y(sky130_fd_sc_hd__xnor2_2_6_Y),
    .A(sky130_fd_sc_hd__xnor2_2_6_A),
    .B(sky130_fd_sc_hd__a21o_2_6_X)
  );

  sky130_fd_sc_hd__o22ai_2 Xsky130_fd_sc_hd__o22ai_2_1 (
    .B2(sky130_fd_sc_hd__or2_2_5_A),
    .B1(sky130_fd_sc_hd__or3_2_3_X),
    .Y(sky130_fd_sc_hd__o22ai_2_1_Y),
    .A1(sky130_fd_sc_hd__or2_2_4_A),
    .A2(sky130_fd_sc_hd__nand2_2_5_Y)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_17 (
    .A1(sky130_fd_sc_hd__xor2_2_18_X),
    .A2(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__a22o_2_17_X),
    .B2(sky130_fd_sc_hd__xnor2_2_6_Y),
    .B1(sky130_fd_sc_hd__nor3b_2_3_Y)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_1 (
    .X(sky130_fd_sc_hd__a31o_2_1_X),
    .B1(sky130_fd_sc_hd__nand4_2_0_C),
    .A3(sky130_fd_sc_hd__nor4_2_0_Y),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_18 (
    .Y(sky130_fd_sc_hd__a21o_2_8_A2),
    .A(sky130_fd_sc_hd__xnor2_2_8_A),
    .B(sky130_fd_sc_hd__xnor2_2_8_B)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_29 (
    .Y(sky130_fd_sc_hd__nand2_2_29_Y),
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .B(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_124 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_113 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_102 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_135 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_146 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_168 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_157 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_179 (
    
  );

  sky130_fd_sc_hd__o21ai_2 Xsky130_fd_sc_hd__o21ai_2_0 (
    .B1(sky130_fd_sc_hd__or4_2_0_A),
    .Y(sky130_fd_sc_hd__and3_2_3_C),
    .A2(sky130_fd_sc_hd__and3_2_1_X),
    .A1(sky130_fd_sc_hd__or3_2_4_B)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_7 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__nand4_2_7_Y),
    .D(sky130_fd_sc_hd__nor4_2_1_Y),
    .C(sky130_fd_sc_hd__nand4_2_7_C)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_16 (
    .X(sky130_fd_sc_hd__a21o_2_16_X),
    .B1(sky130_fd_sc_hd__or4_2_6_A),
    .A1(sky130_fd_sc_hd__inv_2_20_A),
    .A2(sky130_fd_sc_hd__nor2_2_45_Y)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_0 (
    .X(sky130_fd_sc_hd__a21o_2_0_X),
    .B1(sky130_fd_sc_hd__or4_2_1_A),
    .A1(sky130_fd_sc_hd__inv_2_1_A),
    .A2(sky130_fd_sc_hd__o21a_2_7_A2)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_1 (
    .B(sky130_fd_sc_hd__or2_2_1_B),
    .X(sky130_fd_sc_hd__or2_2_1_X),
    .A(sky130_fd_sc_hd__or2_2_1_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_7 (
    .B(sky130_fd_sc_hd__xor2_2_7_A),
    .Y(sky130_fd_sc_hd__or2_2_1_B),
    .A(sky130_fd_sc_hd__or4_2_4_A)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_15 (
    .B(sky130_fd_sc_hd__nand4_2_4_Y),
    .Y(sky130_fd_sc_hd__dfrtp_2_59_D),
    .A_N(sky130_fd_sc_hd__o21a_2_16_A1)
  );

  sky130_fd_sc_hd__o31a_2 Xsky130_fd_sc_hd__o31a_2_9 (
    .X(sky130_fd_sc_hd__o31a_2_9_X),
    .A1(sky130_fd_sc_hd__o31a_2_9_A1),
    .A2(sky130_fd_sc_hd__o31a_2_9_A2),
    .B1(sky130_fd_sc_hd__or3_2_16_X),
    .A3(sky130_fd_sc_hd__o31a_2_9_A3)
  );

  sky130_fd_sc_hd__conb_1 Xsky130_fd_sc_hd__conb_1_4 (
    .LO(sky130_fd_sc_hd__conb_1_4_LO),
    .HI(sky130_fd_sc_hd__conb_1_4_HI)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_14 (
    .B(sky130_fd_sc_hd__or4_2_3_D),
    .Y(sky130_fd_sc_hd__o21a_2_6_A2),
    .A(sky130_fd_sc_hd__or4_2_3_C)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_47 (
    .B(sky130_fd_sc_hd__or3_2_17_C),
    .Y(sky130_fd_sc_hd__o31a_2_9_A1),
    .A(sky130_fd_sc_hd__or3_2_17_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_25 (
    .B(sky130_fd_sc_hd__and3_2_2_B),
    .Y(sky130_fd_sc_hd__or3_2_5_A),
    .A(sky130_fd_sc_hd__xor2_2_0_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_36 (
    .B(sky130_fd_sc_hd__inv_2_13_Y),
    .Y(sky130_fd_sc_hd__or3_2_9_A),
    .A(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_51 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_40 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_62 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_73 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_84 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_95 (
    
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_21 (
    .X(sky130_fd_sc_hd__a31o_2_21_X),
    .B1(sky130_fd_sc_hd__nand4_2_13_C),
    .A3(sky130_fd_sc_hd__nand4_2_13_D),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_10 (
    .X(sky130_fd_sc_hd__and2b_2_9_B),
    .B1(sky130_fd_sc_hd__nor3_2_2_B),
    .A3(sky130_fd_sc_hd__and4_2_4_D),
    .A1(sky130_fd_sc_hd__and4_2_4_B),
    .A2(sky130_fd_sc_hd__inv_2_10_A)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_6 (
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .X(sky130_fd_sc_hd__nor3_2_1_C),
    .B(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__dfrtp_2 Xsky130_fd_sc_hd__dfrtp_2_9 (
    .Q(sky130_fd_sc_hd__inv_2_3_A),
    .RESET_B(rst_n),
    .D(sky130_fd_sc_hd__o21a_2_6_X),
    .CLK(sky130_fd_sc_hd__clkbuf_8_0_X)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_8 (
    .A1(sky130_fd_sc_hd__o21a_2_8_A1),
    .B1(sky130_fd_sc_hd__a31o_2_2_X),
    .A2(sky130_fd_sc_hd__o21a_2_8_A2),
    .X(sky130_fd_sc_hd__o21a_2_8_X)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_7 (
    .Y(sky130_fd_sc_hd__or3_2_7_A),
    .A(sky130_fd_sc_hd__xor2_2_5_A),
    .B(sky130_fd_sc_hd__xor2_2_5_B)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_10 (
    .A(sky130_fd_sc_hd__or3_2_10_A),
    .B(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__or3_2_10_X),
    .C(sky130_fd_sc_hd__or3_2_17_C)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_18 (
    .A1(sky130_fd_sc_hd__xnor2_2_22_Y),
    .A2(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__o31a_2_7_A3),
    .B2(sky130_fd_sc_hd__and2_2_8_X),
    .B1(sky130_fd_sc_hd__nor3b_2_3_Y)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_2 (
    .X(sky130_fd_sc_hd__a31o_2_2_X),
    .B1(sky130_fd_sc_hd__nand4_2_2_C),
    .A3(sky130_fd_sc_hd__nand4_2_2_D),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nand2_2 Xsky130_fd_sc_hd__nand2_2_19 (
    .Y(sky130_fd_sc_hd__and2_2_8_A),
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .B(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_0 (
    .A_N(sky130_fd_sc_hd__xor2_2_7_A),
    .C(sky130_fd_sc_hd__xor2_2_9_A),
    .B_N(sky130_fd_sc_hd__xor2_2_0_B),
    .X(sky130_fd_sc_hd__and4bb_2_0_X),
    .D(sky130_fd_sc_hd__xor2_2_4_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_125 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_114 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_103 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_136 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_147 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_158 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_169 (
    
  );

  sky130_fd_sc_hd__o21ai_2 Xsky130_fd_sc_hd__o21ai_2_1 (
    .B1(sky130_fd_sc_hd__or4_2_0_X),
    .Y(sky130_fd_sc_hd__o21ai_2_1_Y),
    .A2(sky130_fd_sc_hd__o32a_2_0_X),
    .A1(sky130_fd_sc_hd__or2_2_5_A)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_8 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__nand4_2_8_Y),
    .D(sky130_fd_sc_hd__nand4_2_8_D),
    .C(sky130_fd_sc_hd__nand4_2_8_C)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_17 (
    .X(sky130_fd_sc_hd__a21o_2_17_X),
    .B1(sky130_fd_sc_hd__or2_2_9_B),
    .A1(sky130_fd_sc_hd__or2_2_9_A),
    .A2(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_1 (
    .X(sky130_fd_sc_hd__a21o_2_1_X),
    .B1(sky130_fd_sc_hd__or4_2_2_A),
    .A1(sky130_fd_sc_hd__inv_2_2_A),
    .A2(sky130_fd_sc_hd__o21a_2_9_A2)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_2 (
    .B(sky130_fd_sc_hd__or3_2_2_B),
    .X(sky130_fd_sc_hd__or3_2_3_C),
    .A(sky130_fd_sc_hd__or2_2_2_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_8 (
    .B(sky130_fd_sc_hd__or2_2_1_X),
    .Y(sky130_fd_sc_hd__or3_2_3_A),
    .A(sky130_fd_sc_hd__nor2_2_8_A)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_16 (
    .B(sky130_fd_sc_hd__nand4_2_9_Y),
    .Y(sky130_fd_sc_hd__dfrtp_2_66_D),
    .A_N(sky130_fd_sc_hd__o21a_2_21_A1)
  );

  sky130_fd_sc_hd__conb_1 Xsky130_fd_sc_hd__conb_1_5 (
    .LO(sky130_fd_sc_hd__conb_1_5_LO),
    .HI(sky130_fd_sc_hd__conb_1_5_HI)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_37 (
    .B(sky130_fd_sc_hd__or2_2_8_B),
    .Y(sky130_fd_sc_hd__or3_2_9_C),
    .A(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_26 (
    .B(sky130_fd_sc_hd__or2_2_4_A),
    .Y(sky130_fd_sc_hd__nor2_2_26_Y),
    .A(sky130_fd_sc_hd__nor2_2_5_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_15 (
    .B(sky130_fd_sc_hd__or4_2_1_D),
    .Y(sky130_fd_sc_hd__o21a_2_7_A2),
    .A(sky130_fd_sc_hd__or4_2_1_C)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_48 (
    .B(sky130_fd_sc_hd__o21ba_2_1_X),
    .Y(sky130_fd_sc_hd__nor3_2_3_B),
    .A(sky130_fd_sc_hd__or4b_2_8_A)
  );

  sky130_fd_sc_hd__nand3b_2 Xsky130_fd_sc_hd__nand3b_2_0 (
    .Y(sky130_fd_sc_hd__and3_2_7_C),
    .C(sky130_fd_sc_hd__xor2_2_0_B),
    .A_N(sky130_fd_sc_hd__xor2_2_9_A),
    .B(sky130_fd_sc_hd__xor2_2_4_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_30 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_52 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_41 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_63 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_96 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_74 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_85 (
    
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_22 (
    .X(sky130_fd_sc_hd__a31o_2_22_X),
    .B1(sky130_fd_sc_hd__nand4_2_12_C),
    .A3(sky130_fd_sc_hd__nand4_2_12_D),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_11 (
    .X(sky130_fd_sc_hd__a31o_2_11_X),
    .B1(sky130_fd_sc_hd__inv_2_6_A),
    .A3(sky130_fd_sc_hd__mux2_1_7_X),
    .A1(sky130_fd_sc_hd__inv_2_9_A),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_7 (
    .A(sky130_fd_sc_hd__or2_2_9_A),
    .X(sky130_fd_sc_hd__and2_2_7_X),
    .B(sky130_fd_sc_hd__and2_2_7_B)
  );

  sky130_fd_sc_hd__o21a_2 Xsky130_fd_sc_hd__o21a_2_9 (
    .A1(sky130_fd_sc_hd__inv_2_2_A),
    .B1(sky130_fd_sc_hd__or4_2_2_X),
    .A2(sky130_fd_sc_hd__o21a_2_9_A2),
    .X(sky130_fd_sc_hd__o21a_2_9_X)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_8 (
    .Y(sky130_fd_sc_hd__xor2_2_2_B),
    .A(sky130_fd_sc_hd__xnor2_2_8_A),
    .B(sky130_fd_sc_hd__xnor2_2_8_B)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_11 (
    .A(sky130_fd_sc_hd__or3_2_11_A),
    .B(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__or3_2_11_X),
    .C(sky130_fd_sc_hd__or3_2_17_C)
  );

  sky130_fd_sc_hd__a22o_2 Xsky130_fd_sc_hd__a22o_2_19 (
    .A1(sky130_fd_sc_hd__xor2_2_20_X),
    .A2(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__o31a_2_8_A3),
    .B2(sky130_fd_sc_hd__nor2_2_23_Y),
    .B1(sky130_fd_sc_hd__nor3b_2_3_Y)
  );

  sky130_fd_sc_hd__a2111oi_2 Xsky130_fd_sc_hd__a2111oi_2_0 (
    .D1(sky130_fd_sc_hd__nor2_2_33_Y),
    .C1(sky130_fd_sc_hd__and3_2_17_C),
    .A2(sky130_fd_sc_hd__or2_2_9_B),
    .A1(sky130_fd_sc_hd__or3b_2_0_A),
    .Y(sky130_fd_sc_hd__a22o_2_13_A1),
    .B1(sky130_fd_sc_hd__or2_2_8_B)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_3 (
    .X(sky130_fd_sc_hd__a31o_2_3_X),
    .B1(sky130_fd_sc_hd__nand4_2_1_C),
    .A3(sky130_fd_sc_hd__nand4_2_1_D),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_1 (
    .A_N(sky130_fd_sc_hd__or4b_2_2_C),
    .C(sky130_fd_sc_hd__or4b_2_3_B),
    .B_N(sky130_fd_sc_hd__or4b_2_3_C),
    .X(sky130_fd_sc_hd__nand4_2_3_D),
    .D(sky130_fd_sc_hd__or4b_2_3_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_115 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_104 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_126 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_137 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_159 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_148 (
    
  );

  sky130_fd_sc_hd__o21ai_2 Xsky130_fd_sc_hd__o21ai_2_2 (
    .B1(sky130_fd_sc_hd__or4_2_0_A),
    .Y(sky130_fd_sc_hd__o21ai_2_2_Y),
    .A2(sky130_fd_sc_hd__inv_2_0_Y),
    .A1(sky130_fd_sc_hd__or3_2_3_B)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_9 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__nand4_2_9_Y),
    .D(sky130_fd_sc_hd__nand4_2_9_D),
    .C(sky130_fd_sc_hd__nand4_2_9_C)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_18 (
    .X(sky130_fd_sc_hd__a21o_2_18_X),
    .B1(sky130_fd_sc_hd__or4_2_9_A),
    .A1(sky130_fd_sc_hd__inv_2_17_A),
    .A2(sky130_fd_sc_hd__nor2_2_41_Y)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_2 (
    .X(sky130_fd_sc_hd__a21o_2_2_X),
    .B1(sky130_fd_sc_hd__or4_2_3_A),
    .A1(sky130_fd_sc_hd__inv_2_3_A),
    .A2(sky130_fd_sc_hd__o21a_2_6_A2)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_3 (
    .B(sky130_fd_sc_hd__or3_2_2_B),
    .X(sky130_fd_sc_hd__or2_2_3_X),
    .A(sky130_fd_sc_hd__or2_2_4_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_9 (
    .B(sky130_fd_sc_hd__nor2_2_9_B),
    .Y(sky130_fd_sc_hd__inv_2_4_A),
    .A(sky130_fd_sc_hd__or2_2_1_B)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_17 (
    .B(sky130_fd_sc_hd__nand4_2_8_Y),
    .Y(sky130_fd_sc_hd__dfrtp_2_63_D),
    .A_N(sky130_fd_sc_hd__o21a_2_23_A1)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_38 (
    .B(sky130_fd_sc_hd__or2_2_9_A),
    .Y(sky130_fd_sc_hd__or3_2_9_B),
    .A(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_27 (
    .B(sky130_fd_sc_hd__o21a_2_3_A2),
    .Y(sky130_fd_sc_hd__o32a_2_1_B1),
    .A(sky130_fd_sc_hd__nor2_2_3_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_16 (
    .B(sky130_fd_sc_hd__or4_2_2_D),
    .Y(sky130_fd_sc_hd__o21a_2_9_A2),
    .A(sky130_fd_sc_hd__or4_2_2_C)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_20 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_42 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_53 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_31 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_97 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_75 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_64 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_86 (
    
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_23 (
    .X(sky130_fd_sc_hd__a31o_2_23_X),
    .B1(sky130_fd_sc_hd__nand4_2_10_C),
    .A3(sky130_fd_sc_hd__nand4_2_10_D),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_12 (
    .X(sky130_fd_sc_hd__a31o_2_12_X),
    .B1(sky130_fd_sc_hd__inv_2_11_A),
    .A3(sky130_fd_sc_hd__a221o_2_1_X),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_8 (
    .A(sky130_fd_sc_hd__and2_2_8_A),
    .X(sky130_fd_sc_hd__and2_2_8_X),
    .B(sky130_fd_sc_hd__and2_2_8_B)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_9 (
    .Y(sky130_fd_sc_hd__or2_2_4_A),
    .A(sky130_fd_sc_hd__xor2_2_2_A),
    .B(sky130_fd_sc_hd__xor2_2_2_B)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_12 (
    .A(sky130_fd_sc_hd__or3_2_6_X),
    .B(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__or3_2_12_X),
    .C(sky130_fd_sc_hd__or3_2_17_C)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_4 (
    .X(sky130_fd_sc_hd__a31o_2_4_X),
    .B1(sky130_fd_sc_hd__nand4_2_3_C),
    .A3(sky130_fd_sc_hd__nand4_2_3_D),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_2 (
    .A_N(sky130_fd_sc_hd__or4b_2_3_A),
    .C(sky130_fd_sc_hd__or4b_2_3_C),
    .B_N(sky130_fd_sc_hd__or4b_2_2_C),
    .X(sky130_fd_sc_hd__nand4_2_1_D),
    .D(sky130_fd_sc_hd__or4b_2_3_B)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_10 (
    .X(sky130_fd_sc_hd__clkbuf_8_10_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_116 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_105 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_127 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_138 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_149 (
    
  );

  sky130_fd_sc_hd__o21ai_2 Xsky130_fd_sc_hd__o21ai_2_3 (
    .B1(sky130_fd_sc_hd__o21ai_2_3_B1),
    .Y(sky130_fd_sc_hd__o21ai_2_3_Y),
    .A2(sky130_fd_sc_hd__nor2_2_40_A),
    .A1(I)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_3 (
    .X(sky130_fd_sc_hd__a21o_2_3_X),
    .B1(sky130_fd_sc_hd__and3_2_3_X),
    .A1(sky130_fd_sc_hd__or2_2_5_A),
    .A2(sky130_fd_sc_hd__a21o_2_3_A2)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_4 (
    .B(sky130_fd_sc_hd__or2_2_4_B),
    .X(sky130_fd_sc_hd__or2_2_4_X),
    .A(sky130_fd_sc_hd__or2_2_4_A)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_18 (
    .B(sky130_fd_sc_hd__o21a_2_24_A2),
    .Y(sky130_fd_sc_hd__dfrtp_2_67_D),
    .A_N(sky130_fd_sc_hd__o21a_2_24_A1)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_17 (
    .B(sky130_fd_sc_hd__and3_2_2_C),
    .Y(sky130_fd_sc_hd__or3_2_5_B),
    .A(sky130_fd_sc_hd__and3_2_2_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_28 (
    .B(sky130_fd_sc_hd__and2_2_2_A),
    .Y(sky130_fd_sc_hd__or3_2_1_B),
    .A(sky130_fd_sc_hd__or3_2_3_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_39 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .Y(sky130_fd_sc_hd__nor2_2_39_Y),
    .A(sky130_fd_sc_hd__or2_2_10_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_10 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_21 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_43 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_54 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_32 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_76 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_65 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_87 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_98 (
    
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_13 (
    .X(sky130_fd_sc_hd__a31o_2_13_X),
    .B1(sky130_fd_sc_hd__or2_2_11_A),
    .A3(sky130_fd_sc_hd__inv_2_7_A),
    .A1(sky130_fd_sc_hd__inv_2_9_A),
    .A2(sky130_fd_sc_hd__nor2_2_29_Y)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_24 (
    .X(sky130_fd_sc_hd__a31o_2_24_X),
    .B1(sky130_fd_sc_hd__nand4_2_9_C),
    .A3(sky130_fd_sc_hd__nand4_2_9_D),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__and2_2 Xsky130_fd_sc_hd__and2_2_9 (
    .A(sky130_fd_sc_hd__and4_2_3_C),
    .X(sky130_fd_sc_hd__and4_2_4_B),
    .B(sky130_fd_sc_hd__nor3_2_2_A)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_13 (
    .A(sky130_fd_sc_hd__or3_2_13_A),
    .B(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__or3_2_13_X),
    .C(sky130_fd_sc_hd__or3_2_17_C)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_5 (
    .X(sky130_fd_sc_hd__a31o_2_5_X),
    .B1(sky130_fd_sc_hd__xor2_2_5_X),
    .A3(sky130_fd_sc_hd__a31o_2_5_A3),
    .A1(sky130_fd_sc_hd__or2_2_5_A),
    .A2(sky130_fd_sc_hd__a31o_2_5_A2)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_20 (
    .Y(sky130_fd_sc_hd__xnor2_2_21_B),
    .A(sky130_fd_sc_hd__or2_2_12_A),
    .B(sky130_fd_sc_hd__xor2_2_20_A)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_3 (
    .A_N(sky130_fd_sc_hd__or4b_2_3_B),
    .C(sky130_fd_sc_hd__or4b_2_3_C),
    .B_N(sky130_fd_sc_hd__or4b_2_2_C),
    .X(sky130_fd_sc_hd__nand4_2_2_D),
    .D(sky130_fd_sc_hd__or4b_2_3_A)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_11 (
    .X(sky130_fd_sc_hd__clkbuf_8_11_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_106 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_128 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_117 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_139 (
    
  );

  sky130_fd_sc_hd__o21ai_2 Xsky130_fd_sc_hd__o21ai_2_4 (
    .B1(sky130_fd_sc_hd__a211o_2_3_X),
    .Y(sky130_fd_sc_hd__o21ai_2_4_Y),
    .A2(sky130_fd_sc_hd__o32a_2_2_B2),
    .A1(sky130_fd_sc_hd__inv_2_12_Y)
  );

  sky130_fd_sc_hd__nand3_2 Xsky130_fd_sc_hd__nand3_2_0 (
    .A(sky130_fd_sc_hd__xor2_2_9_A),
    .Y(sky130_fd_sc_hd__nand3_2_0_Y),
    .B(sky130_fd_sc_hd__xor2_2_4_A),
    .C(sky130_fd_sc_hd__inv_2_5_A)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_0 (
    .S(sky130_fd_sc_hd__or4_2_0_A),
    .A1(sky130_fd_sc_hd__a31o_2_0_X),
    .A0(sky130_fd_sc_hd__o21a_2_3_X),
    .X(sky130_fd_sc_hd__mux2_1_0_X)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_4 (
    .X(sky130_fd_sc_hd__xor2_2_5_B),
    .B1(sky130_fd_sc_hd__a21oi_2_6_Y),
    .A1(sky130_fd_sc_hd__xnor2_2_4_A),
    .A2(sky130_fd_sc_hd__or3_2_5_B)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_5 (
    .B(sky130_fd_sc_hd__or3_2_1_B),
    .X(sky130_fd_sc_hd__or2_2_5_X),
    .A(sky130_fd_sc_hd__or2_2_5_A)
  );

  sky130_fd_sc_hd__nand2b_2 Xsky130_fd_sc_hd__nand2b_2_19 (
    .B(sky130_fd_sc_hd__o21a_2_25_A2),
    .Y(sky130_fd_sc_hd__dfrtp_2_68_D),
    .A_N(sky130_fd_sc_hd__o21a_2_25_A1)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_0 (
    .X(sky130_fd_sc_hd__or2_2_0_B),
    .B(sky130_fd_sc_hd__nor2_2_9_B),
    .A_N(sky130_fd_sc_hd__xor2_2_3_B)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_18 (
    .B(sky130_fd_sc_hd__xor2_2_5_B),
    .Y(sky130_fd_sc_hd__nor2_2_20_A),
    .A(sky130_fd_sc_hd__xor2_2_5_A)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_29 (
    .B(sky130_fd_sc_hd__and3_2_7_C),
    .Y(sky130_fd_sc_hd__nor2_2_29_Y),
    .A(sky130_fd_sc_hd__xor2_2_7_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_11 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_44 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_22 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_33 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_77 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_55 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_66 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_88 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_99 (
    
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_14 (
    .X(sky130_fd_sc_hd__a31o_2_14_X),
    .B1(sky130_fd_sc_hd__a22o_2_4_X),
    .A3(sky130_fd_sc_hd__or2_2_12_X),
    .A1(sky130_fd_sc_hd__and2b_2_16_X),
    .A2(sky130_fd_sc_hd__nand2_2_38_Y)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_25 (
    .X(sky130_fd_sc_hd__a31o_2_25_X),
    .B1(sky130_fd_sc_hd__nand4_2_5_C),
    .A3(sky130_fd_sc_hd__nand4_2_5_D),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_14 (
    .A(sky130_fd_sc_hd__or3_2_14_A),
    .B(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__or3_2_14_X),
    .C(sky130_fd_sc_hd__or3_2_17_C)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_6 (
    .X(sky130_fd_sc_hd__or3_2_11_A),
    .B1(sky130_fd_sc_hd__nor3_2_0_Y),
    .A3(sky130_fd_sc_hd__nor2_2_24_Y),
    .A1(sky130_fd_sc_hd__or3b_2_0_A),
    .A2(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_10 (
    .Y(sky130_fd_sc_hd__or4_2_0_B),
    .A(sky130_fd_sc_hd__xor2_2_6_A),
    .B(sky130_fd_sc_hd__xor2_2_6_B)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_21 (
    .Y(sky130_fd_sc_hd__xnor2_2_21_Y),
    .A(sky130_fd_sc_hd__a22o_2_4_B2),
    .B(sky130_fd_sc_hd__xnor2_2_21_B)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_4 (
    .A_N(sky130_fd_sc_hd__or2_2_9_B),
    .C(sky130_fd_sc_hd__or3b_2_0_A),
    .B_N(sky130_fd_sc_hd__or2_2_8_B),
    .X(sky130_fd_sc_hd__or3_2_14_A),
    .D(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_12 (
    .X(sky130_fd_sc_hd__dfxtp_2_2_CLK),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_107 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_129 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_118 (
    
  );

  sky130_fd_sc_hd__o21ai_2 Xsky130_fd_sc_hd__o21ai_2_5 (
    .B1(sky130_fd_sc_hd__or2_2_8_B),
    .Y(sky130_fd_sc_hd__o21ai_2_5_Y),
    .A2(sky130_fd_sc_hd__or2_2_9_B),
    .A1(sky130_fd_sc_hd__or2_2_9_A)
  );

  sky130_fd_sc_hd__nand3_2 Xsky130_fd_sc_hd__nand3_2_1 (
    .A(sky130_fd_sc_hd__or2_2_9_B),
    .Y(sky130_fd_sc_hd__nand3_2_1_Y),
    .B(sky130_fd_sc_hd__or2_2_9_A),
    .C(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_1 (
    .S(sky130_fd_sc_hd__or3_2_3_B),
    .A1(sky130_fd_sc_hd__or4_2_0_C),
    .A0(sky130_fd_sc_hd__or3_2_0_X),
    .X(sky130_fd_sc_hd__mux2_1_1_X)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_5 (
    .X(sky130_fd_sc_hd__xor2_2_6_A),
    .B1(sky130_fd_sc_hd__nor2_2_21_A),
    .A1(sky130_fd_sc_hd__xor2_2_8_A),
    .A2(sky130_fd_sc_hd__xor2_2_8_B)
  );

  sky130_fd_sc_hd__o32ai_2 Xsky130_fd_sc_hd__o32ai_2_0 (
    .A1(sky130_fd_sc_hd__o31a_2_0_A1),
    .B1(sky130_fd_sc_hd__o32ai_2_0_B1),
    .A2(sky130_fd_sc_hd__o31a_2_0_A2),
    .A3(sky130_fd_sc_hd__and2_2_7_X),
    .Y(sky130_fd_sc_hd__o32ai_2_0_Y),
    .B2(sky130_fd_sc_hd__or3b_2_0_A)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_6 (
    .B(sky130_fd_sc_hd__or2_2_6_B),
    .X(sky130_fd_sc_hd__or2_2_6_X),
    .A(sky130_fd_sc_hd__or3_2_1_C)
  );

  sky130_fd_sc_hd__o21ba_2 Xsky130_fd_sc_hd__o21ba_2_0 (
    .B1_N(sky130_fd_sc_hd__nor2_2_5_Y),
    .A1(sky130_fd_sc_hd__or2_2_4_A),
    .X(sky130_fd_sc_hd__o21ba_2_0_X),
    .A2(sky130_fd_sc_hd__nand2_2_9_Y)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_1 (
    .X(sky130_fd_sc_hd__and4_2_0_B),
    .B(sky130_fd_sc_hd__o21a_2_4_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_0_C)
  );

  sky130_fd_sc_hd__or4bb_2 Xsky130_fd_sc_hd__or4bb_2_0 (
    .A(sky130_fd_sc_hd__or4_2_4_A),
    .X(sky130_fd_sc_hd__or4bb_2_0_X),
    .B(sky130_fd_sc_hd__or4_2_4_C),
    .D_N(sky130_fd_sc_hd__or4_2_4_B),
    .C_N(sky130_fd_sc_hd__or4_2_4_D)
  );

  sky130_fd_sc_hd__nor2_2 Xsky130_fd_sc_hd__nor2_2_19 (
    .B(sky130_fd_sc_hd__xnor2_2_8_B),
    .Y(sky130_fd_sc_hd__nor2_2_19_Y),
    .A(sky130_fd_sc_hd__xnor2_2_8_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_45 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_12 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_23 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_34 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_56 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_67 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_78 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_89 (
    
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_15 (
    .X(sky130_fd_sc_hd__a31o_2_15_X),
    .B1(sky130_fd_sc_hd__a22oi_2_0_Y),
    .A3(sky130_fd_sc_hd__nand2_2_29_Y),
    .A1(sky130_fd_sc_hd__or2_2_9_B),
    .A2(sky130_fd_sc_hd__inv_2_13_Y)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_10 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__o21a_2_28_A2),
    .D(sky130_fd_sc_hd__nand4_2_10_D),
    .C(sky130_fd_sc_hd__nand4_2_10_C)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_15 (
    .A(sky130_fd_sc_hd__or3_2_15_A),
    .B(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__or3_2_15_X),
    .C(sky130_fd_sc_hd__or3_2_17_C)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_7 (
    .X(sky130_fd_sc_hd__a31o_2_7_X),
    .B1(sky130_fd_sc_hd__or3_2_5_B),
    .A3(sky130_fd_sc_hd__xor2_2_4_A),
    .A1(sky130_fd_sc_hd__xor2_2_0_B),
    .A2(sky130_fd_sc_hd__xor2_2_9_A)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_22 (
    .Y(sky130_fd_sc_hd__xnor2_2_22_Y),
    .A(sky130_fd_sc_hd__or2_2_12_A),
    .B(sky130_fd_sc_hd__o21ai_2_4_Y)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_11 (
    .Y(sky130_fd_sc_hd__xnor2_2_11_Y),
    .A(sky130_fd_sc_hd__and4_2_3_C),
    .B(sky130_fd_sc_hd__xnor2_2_11_B)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_5 (
    .A_N(sky130_fd_sc_hd__and4_2_3_B),
    .C(sky130_fd_sc_hd__nor3_2_2_B),
    .B_N(sky130_fd_sc_hd__or3_2_8_C),
    .X(sky130_fd_sc_hd__and3_2_10_A),
    .D(sky130_fd_sc_hd__or3_2_8_B)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_13 (
    .X(sky130_fd_sc_hd__clkbuf_4_9_A),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_119 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_108 (
    
  );

  sky130_fd_sc_hd__nor3b_2 Xsky130_fd_sc_hd__nor3b_2_0 (
    .C_N(sky130_fd_sc_hd__nor2_2_40_A),
    .Y(sky130_fd_sc_hd__o22a_2_3_B1),
    .A(sky130_fd_sc_hd__inv_2_7_A),
    .B(sky130_fd_sc_hd__nor3b_2_0_B)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_2 (
    .S(sky130_fd_sc_hd__or4_2_0_A),
    .A1(sky130_fd_sc_hd__a22o_2_0_X),
    .A0(sky130_fd_sc_hd__or2_2_6_X),
    .X(sky130_fd_sc_hd__mux2_1_2_X)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_6 (
    .X(sky130_fd_sc_hd__a21o_2_6_X),
    .B1(sky130_fd_sc_hd__or2_2_9_A),
    .A1(sky130_fd_sc_hd__and2_2_7_B),
    .A2(sky130_fd_sc_hd__a21o_2_6_A2)
  );

  sky130_fd_sc_hd__or2_2 Xsky130_fd_sc_hd__or2_2_7 (
    .B(I),
    .X(sky130_fd_sc_hd__or2_2_7_X),
    .A(sky130_fd_sc_hd__or2_2_7_A)
  );

  sky130_fd_sc_hd__o21ba_2 Xsky130_fd_sc_hd__o21ba_2_1 (
    .B1_N(sky130_fd_sc_hd__or4b_2_8_C),
    .A1(success),
    .X(sky130_fd_sc_hd__o21ba_2_1_X),
    .A2(sky130_fd_sc_hd__a32o_2_3_B1)
  );

  sky130_fd_sc_hd__and2b_2 Xsky130_fd_sc_hd__and2b_2_2 (
    .X(sky130_fd_sc_hd__and4_2_0_C),
    .B(sky130_fd_sc_hd__o21a_2_5_A1),
    .A_N(sky130_fd_sc_hd__nand4_2_3_C)
  );

  sky130_fd_sc_hd__o31ai_2 Xsky130_fd_sc_hd__o31ai_2_0 (
    .A1(sky130_fd_sc_hd__or2_2_4_A),
    .Y(sky130_fd_sc_hd__o32a_2_1_B2),
    .B1(sky130_fd_sc_hd__or4_2_0_A),
    .A3(sky130_fd_sc_hd__inv_2_0_Y),
    .A2(sky130_fd_sc_hd__or3_2_2_C)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_13 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_24 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_35 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_46 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_57 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_68 (
    
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_79 (
    
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_16 (
    .X(sky130_fd_sc_hd__a31o_2_16_X),
    .B1(sky130_fd_sc_hd__nand4_2_6_C),
    .A3(sky130_fd_sc_hd__nand4_2_6_D),
    .A1(I),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__nand4_2 Xsky130_fd_sc_hd__nand4_2_11 (
    .B(sky130_fd_sc_hd__inv_2_7_A),
    .A(I),
    .Y(sky130_fd_sc_hd__o21a_2_24_A2),
    .D(sky130_fd_sc_hd__and4b_2_2_X),
    .C(sky130_fd_sc_hd__nand4_2_11_C)
  );

  sky130_fd_sc_hd__or3_2 Xsky130_fd_sc_hd__or3_2_16 (
    .A(sky130_fd_sc_hd__or3_2_16_A),
    .B(sky130_fd_sc_hd__or3_2_17_B),
    .X(sky130_fd_sc_hd__or3_2_16_X),
    .C(sky130_fd_sc_hd__or3_2_17_C)
  );

  sky130_fd_sc_hd__a31o_2 Xsky130_fd_sc_hd__a31o_2_8 (
    .X(sky130_fd_sc_hd__a31o_2_8_X),
    .B1(sky130_fd_sc_hd__xor2_2_0_B),
    .A3(sky130_fd_sc_hd__xor2_2_7_A),
    .A1(sky130_fd_sc_hd__inv_2_9_A),
    .A2(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_23 (
    .Y(sky130_fd_sc_hd__or2_2_12_B),
    .A(sky130_fd_sc_hd__a22o_2_4_B2),
    .B(sky130_fd_sc_hd__xnor2_2_26_A)
  );

  sky130_fd_sc_hd__and4bb_2 Xsky130_fd_sc_hd__and4bb_2_6 (
    .A_N(sky130_fd_sc_hd__or4_2_4_A),
    .C(sky130_fd_sc_hd__or4_2_4_D),
    .B_N(sky130_fd_sc_hd__or4_2_4_C),
    .X(sky130_fd_sc_hd__inv_2_9_A),
    .D(sky130_fd_sc_hd__or4_2_4_B)
  );

  sky130_fd_sc_hd__xnor2_2 Xsky130_fd_sc_hd__xnor2_2_12 (
    .Y(sky130_fd_sc_hd__nor2_2_31_B),
    .A(sky130_fd_sc_hd__or4_2_4_A),
    .B(sky130_fd_sc_hd__inv_2_7_A)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_14 (
    .X(sky130_fd_sc_hd__dfxtp_2_3_CLK),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__decap_3 Xsky130_fd_sc_hd__decap_3_109 (
    
  );

  sky130_fd_sc_hd__nor3b_2 Xsky130_fd_sc_hd__nor3b_2_1 (
    .C_N(sky130_fd_sc_hd__or2_2_9_A),
    .Y(sky130_fd_sc_hd__o31a_2_2_A3),
    .A(sky130_fd_sc_hd__or3b_2_0_A),
    .B(sky130_fd_sc_hd__or2_2_9_B)
  );

  sky130_fd_sc_hd__clkbuf_8 Xsky130_fd_sc_hd__clkbuf_8_0 (
    .X(sky130_fd_sc_hd__clkbuf_8_0_X),
    .A(sky130_fd_sc_hd__clkbuf_8_9_A)
  );

  sky130_fd_sc_hd__mux2_1 Xsky130_fd_sc_hd__mux2_1_3 (
    .S(sky130_fd_sc_hd__or2_2_5_A),
    .A1(sky130_fd_sc_hd__mux2_1_0_X),
    .A0(sky130_fd_sc_hd__o32a_2_1_X),
    .X(sky130_fd_sc_hd__mux2_1_3_X)
  );

  sky130_fd_sc_hd__a21o_2 Xsky130_fd_sc_hd__a21o_2_7 (
    .X(sky130_fd_sc_hd__or3_2_10_A),
    .B1(sky130_fd_sc_hd__or3_2_6_C),
    .A1(sky130_fd_sc_hd__or3b_2_0_A),
    .A2(sky130_fd_sc_hd__nor2_2_24_Y)
  );

endmodule
