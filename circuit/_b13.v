/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP4
// Date      : Mon Jul  1 17:33:19 2024
/////////////////////////////////////////////////////////////


module b13 ( reset, eoc, soc, load_dato, add_mpx2, canale, mux_en, clock, 
        data_in, dsr, error, data_out, test_si, test_so, test_se );
  output [3:0] canale;
  input [7:0] data_in;
  input reset, eoc, clock, dsr, test_si, test_se;
  output soc, load_dato, add_mpx2, mux_en, error, data_out, test_so;
  wire   send_data, rdy, N81, N82, N83, N103, N104, send, tre, N193, N194,
         N195, N196, N197, N198, N199, N200, N214, N215, n122, n125, n126,
         n127, n128, n132, n169, n193, n198, n199, n205, n207, n212, n219,
         n223, n224, n225, n226, n227, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383;
  wire   [7:0] out_reg;
  wire   [3:0] next_bit;
  wire   [9:0] tx_conta;
  wire   [9:2] add_291_carry;
  assign canale[3] = 1'b0;

  SDFFR_X2 next_bit_reg_0_ ( .D(n242), .SI(mux_en), .SE(test_se), .CK(clock), 
        .RN(n365), .Q(next_bit[0]), .QN(n255) );
  SDFFR_X2 tx_end_reg ( .D(N214), .SI(tx_conta[9]), .SE(test_se), .CK(clock), 
        .RN(n365), .Q(test_so), .QN(n263) );
  SDFFR_X2 confirm_reg ( .D(n212), .SI(canale[2]), .SE(test_se), .CK(clock), 
        .RN(n365), .Q(n364), .QN(n260) );
  SDFFR_X2 add_mpx2_reg ( .D(n193), .SI(n363), .SE(test_se), .CK(clock), .RN(
        n365), .Q(add_mpx2), .QN(n132) );
  SDFFR_X2 mpx_reg ( .D(n207), .SI(n353), .SE(test_se), .CK(clock), .RN(n365), 
        .Q(n361), .QN(n252) );
  SDFFR_X2 S2_reg_0_ ( .D(N103), .SI(n359), .SE(test_se), .CK(clock), .RN(n365), .Q(n362) );
  SDFFR_X2 S2_reg_1_ ( .D(N104), .SI(n362), .SE(test_se), .CK(clock), .RN(n365), .Q(n363), .QN(n246) );
  SDFFR_X2 rdy_reg ( .D(n205), .SI(out_reg[7]), .SE(test_se), .CK(clock), .RN(
        n365), .Q(rdy) );
  SDFFR_X2 S1_reg_0_ ( .D(N81), .SI(test_si), .SE(test_se), .CK(clock), .RN(
        n365), .Q(n358), .QN(n243) );
  SDFFR_X2 S1_reg_1_ ( .D(N82), .SI(n358), .SE(test_se), .CK(clock), .RN(n365), 
        .Q(n360), .QN(n253) );
  SDFFR_X2 conta_tmp_reg_0_ ( .D(n233), .SI(n364), .SE(test_se), .CK(clock), 
        .RN(n365), .Q(n351) );
  SDFFR_X2 conta_tmp_reg_1_ ( .D(n234), .SI(n351), .SE(test_se), .CK(clock), 
        .RN(n365), .Q(n352), .QN(n251) );
  SDFFR_X2 canale_reg_2_ ( .D(n229), .SI(canale[1]), .SE(test_se), .CK(clock), 
        .RN(n365), .Q(canale[2]), .QN(n128) );
  SDFFR_X2 canale_reg_1_ ( .D(n231), .SI(canale[0]), .SE(test_se), .CK(clock), 
        .RN(n365), .Q(canale[1]), .QN(n127) );
  SDFFR_X2 canale_reg_0_ ( .D(n232), .SI(add_mpx2), .SE(test_se), .CK(clock), 
        .RN(n365), .Q(canale[0]), .QN(n126) );
  SDFFR_X2 S1_reg_2_ ( .D(N83), .SI(n360), .SE(test_se), .CK(clock), .RN(n365), 
        .Q(n359), .QN(n249) );
  SDFFR_X2 send_data_reg ( .D(n199), .SI(rdy), .SE(test_se), .CK(clock), .RN(
        n365), .Q(send_data), .QN(n264) );
  SDFFR_X2 load_dato_reg ( .D(n235), .SI(n355), .SE(test_se), .CK(clock), .RN(
        n365), .Q(load_dato), .QN(n125) );
  SDFFR_X2 mux_en_reg ( .D(n198), .SI(n361), .SE(test_se), .CK(clock), .RN(
        n365), .Q(mux_en) );
  SDFFR_X2 soc_reg ( .D(n241), .SI(n356), .SE(test_se), .CK(clock), .RN(n365), 
        .Q(soc), .QN(n122) );
  SDFFR_X2 itfc_state_reg_0_ ( .D(n238), .SI(error), .SE(test_se), .CK(clock), 
        .RN(n365), .Q(n354), .QN(n247) );
  SDFFR_X2 itfc_state_reg_1_ ( .D(n373), .SI(n354), .SE(test_se), .CK(clock), 
        .RN(n365), .Q(n355), .QN(n254) );
  SDFFR_X2 load_reg ( .D(n236), .SI(load_dato), .SE(test_se), .CK(clock), .RN(
        n365), .Q(n353), .QN(n261) );
  SDFFR_X2 tre_reg ( .D(n169), .SI(soc), .SE(test_se), .CK(clock), .RN(n365), 
        .Q(tre) );
  SDFFR_X2 out_reg_reg_7_ ( .D(n366), .SI(out_reg[6]), .SE(test_se), .CK(clock), .RN(n365), .Q(out_reg[7]) );
  SDFFR_X2 out_reg_reg_6_ ( .D(n219), .SI(out_reg[5]), .SE(test_se), .CK(clock), .RN(n365), .Q(out_reg[6]), .QN(n256) );
  SDFFR_X2 out_reg_reg_5_ ( .D(n367), .SI(out_reg[4]), .SE(test_se), .CK(clock), .RN(n365), .Q(out_reg[5]) );
  SDFFR_X2 out_reg_reg_4_ ( .D(n368), .SI(out_reg[3]), .SE(test_se), .CK(clock), .RN(n365), .Q(out_reg[4]), .QN(n257) );
  SDFFR_X2 out_reg_reg_3_ ( .D(n369), .SI(out_reg[2]), .SE(test_se), .CK(clock), .RN(n365), .Q(out_reg[3]) );
  SDFFR_X2 out_reg_reg_2_ ( .D(n370), .SI(out_reg[1]), .SE(test_se), .CK(clock), .RN(n365), .Q(out_reg[2]) );
  SDFFR_X2 out_reg_reg_1_ ( .D(n371), .SI(out_reg[0]), .SE(test_se), .CK(clock), .RN(n365), .Q(out_reg[1]), .QN(n259) );
  SDFFR_X2 out_reg_reg_0_ ( .D(n372), .SI(next_bit[3]), .SE(test_se), .CK(
        clock), .RN(n365), .Q(out_reg[0]) );
  SDFFR_X2 send_reg ( .D(n237), .SI(n357), .SE(test_se), .CK(clock), .RN(n365), 
        .Q(send) );
  SDFFR_X2 send_en_reg ( .D(n226), .SI(send_data), .SE(test_se), .CK(clock), 
        .RN(n365), .Q(n357), .QN(n248) );
  SDFFR_X2 tx_conta_reg_1_ ( .D(n380), .SI(tx_conta[0]), .SE(test_se), .CK(
        clock), .RN(n365), .Q(tx_conta[1]) );
  SDFFR_X2 tx_conta_reg_9_ ( .D(n379), .SI(tx_conta[8]), .SE(test_se), .CK(
        clock), .RN(n365), .Q(tx_conta[9]) );
  SDFFR_X2 tx_conta_reg_8_ ( .D(n378), .SI(tx_conta[7]), .SE(test_se), .CK(
        clock), .RN(n365), .Q(tx_conta[8]) );
  SDFFR_X2 tx_conta_reg_7_ ( .D(n377), .SI(tx_conta[6]), .SE(test_se), .CK(
        clock), .RN(n365), .Q(tx_conta[7]) );
  SDFFR_X2 tx_conta_reg_6_ ( .D(n376), .SI(tx_conta[5]), .SE(test_se), .CK(
        clock), .RN(n365), .Q(tx_conta[6]) );
  SDFFR_X2 tx_conta_reg_5_ ( .D(n375), .SI(tx_conta[4]), .SE(test_se), .CK(
        clock), .RN(n365), .Q(tx_conta[5]) );
  SDFFR_X2 tx_conta_reg_4_ ( .D(n374), .SI(tx_conta[3]), .SE(test_se), .CK(
        clock), .RN(n365), .Q(tx_conta[4]) );
  SDFFR_X2 tx_conta_reg_3_ ( .D(n383), .SI(tx_conta[2]), .SE(test_se), .CK(
        clock), .RN(n365), .Q(tx_conta[3]) );
  SDFFR_X2 tx_conta_reg_2_ ( .D(n382), .SI(tx_conta[1]), .SE(test_se), .CK(
        clock), .RN(n365), .Q(tx_conta[2]) );
  SDFFR_X2 tx_conta_reg_0_ ( .D(n381), .SI(tre), .SE(test_se), .CK(clock), 
        .RN(n365), .Q(tx_conta[0]) );
  SDFFR_X2 next_bit_reg_3_ ( .D(n225), .SI(next_bit[2]), .SE(test_se), .CK(
        clock), .RN(n365), .Q(next_bit[3]), .QN(n245) );
  SDFFR_X2 next_bit_reg_1_ ( .D(n224), .SI(next_bit[0]), .SE(test_se), .CK(
        clock), .RN(n365), .Q(next_bit[1]), .QN(n244) );
  SDFFR_X2 next_bit_reg_2_ ( .D(n223), .SI(next_bit[1]), .SE(test_se), .CK(
        clock), .RN(n365), .Q(next_bit[2]), .QN(n250) );
  SDFFR_X2 data_out_reg ( .D(N215), .SI(n350), .SE(test_se), .CK(clock), .RN(
        n365), .Q(data_out) );
  SDFFR_X2 error_reg ( .D(n227), .SI(data_out), .SE(test_se), .CK(clock), .RN(
        n365), .Q(error) );
  HA_X1 add_291_U1_1_1 ( .A(tx_conta[1]), .B(tx_conta[0]), .CO(
        add_291_carry[2]), .S(N193) );
  HA_X1 add_291_U1_1_2 ( .A(tx_conta[2]), .B(add_291_carry[2]), .CO(
        add_291_carry[3]), .S(N194) );
  HA_X1 add_291_U1_1_3 ( .A(tx_conta[3]), .B(add_291_carry[3]), .CO(
        add_291_carry[4]), .S(N195) );
  HA_X1 add_291_U1_1_4 ( .A(tx_conta[4]), .B(add_291_carry[4]), .CO(
        add_291_carry[5]), .S(N196) );
  HA_X1 add_291_U1_1_5 ( .A(tx_conta[5]), .B(add_291_carry[5]), .CO(
        add_291_carry[6]), .S(N197) );
  HA_X1 add_291_U1_1_6 ( .A(tx_conta[6]), .B(add_291_carry[6]), .CO(
        add_291_carry[7]), .S(N198) );
  HA_X1 add_291_U1_1_7 ( .A(tx_conta[7]), .B(add_291_carry[7]), .CO(
        add_291_carry[8]), .S(N199) );
  HA_X1 add_291_U1_1_8 ( .A(tx_conta[8]), .B(add_291_carry[8]), .CO(
        add_291_carry[9]), .S(N200) );
  SDFFR_X2 conta_tmp_reg_2_ ( .D(n230), .SI(n352), .SE(test_se), .CK(clock), 
        .RN(n365), .Q(n350), .QN(n262) );
  SDFFR_X2 shot_reg ( .D(n240), .SI(send), .SE(test_se), .CK(clock), .RN(n365), 
        .Q(n356), .QN(n258) );
  INV_X8 U225 ( .A(reset), .ZN(n365) );
  MUX2_X1 U227 ( .A(out_reg[7]), .B(data_in[7]), .S(n265), .Z(n366) );
  MUX2_X1 U228 ( .A(out_reg[5]), .B(data_in[5]), .S(n265), .Z(n367) );
  MUX2_X1 U229 ( .A(out_reg[4]), .B(data_in[4]), .S(n265), .Z(n368) );
  MUX2_X1 U230 ( .A(out_reg[3]), .B(data_in[3]), .S(n265), .Z(n369) );
  MUX2_X1 U231 ( .A(out_reg[2]), .B(data_in[2]), .S(n265), .Z(n370) );
  MUX2_X1 U232 ( .A(out_reg[1]), .B(data_in[1]), .S(n265), .Z(n371) );
  MUX2_X1 U233 ( .A(out_reg[0]), .B(data_in[0]), .S(n265), .Z(n372) );
  OAI21_X1 U234 ( .B1(test_so), .B2(n266), .A(n267), .ZN(n373) );
  INV_X1 U235 ( .A(n268), .ZN(n374) );
  AOI22_X1 U236 ( .A1(N196), .A2(n269), .B1(tx_conta[4]), .B2(n248), .ZN(n268)
         );
  INV_X1 U237 ( .A(n270), .ZN(n375) );
  AOI22_X1 U238 ( .A1(N197), .A2(n269), .B1(tx_conta[5]), .B2(n248), .ZN(n270)
         );
  INV_X1 U239 ( .A(n271), .ZN(n376) );
  AOI22_X1 U240 ( .A1(N198), .A2(n269), .B1(tx_conta[6]), .B2(n248), .ZN(n271)
         );
  INV_X1 U241 ( .A(n272), .ZN(n377) );
  AOI22_X1 U242 ( .A1(N199), .A2(n269), .B1(tx_conta[7]), .B2(n248), .ZN(n272)
         );
  INV_X1 U243 ( .A(n273), .ZN(n378) );
  AOI22_X1 U244 ( .A1(N200), .A2(n269), .B1(tx_conta[8]), .B2(n248), .ZN(n273)
         );
  INV_X1 U245 ( .A(n274), .ZN(n379) );
  AOI22_X1 U246 ( .A1(add_291_carry[9]), .A2(n269), .B1(tx_conta[9]), .B2(n248), .ZN(n274) );
  INV_X1 U247 ( .A(n275), .ZN(n380) );
  AOI22_X1 U248 ( .A1(N193), .A2(n269), .B1(tx_conta[1]), .B2(n248), .ZN(n275)
         );
  MUX2_X1 U249 ( .A(n269), .B(n248), .S(tx_conta[0]), .Z(n381) );
  INV_X1 U250 ( .A(n276), .ZN(n382) );
  AOI22_X1 U251 ( .A1(N194), .A2(n269), .B1(tx_conta[2]), .B2(n248), .ZN(n276)
         );
  INV_X1 U252 ( .A(n277), .ZN(n383) );
  AOI22_X1 U253 ( .A1(N195), .A2(n269), .B1(tx_conta[3]), .B2(n248), .ZN(n277)
         );
  AND2_X1 U254 ( .A1(n357), .A2(n278), .ZN(n269) );
  MUX2_X1 U255 ( .A(next_bit[0]), .B(n279), .S(n280), .Z(n242) );
  OAI211_X1 U256 ( .C1(n281), .C2(n245), .A(n282), .B(n283), .ZN(n279) );
  INV_X1 U257 ( .A(n284), .ZN(n282) );
  OAI21_X1 U258 ( .B1(n285), .B2(n122), .A(n286), .ZN(n241) );
  MUX2_X1 U259 ( .A(n362), .B(n356), .S(n287), .Z(n240) );
  OAI21_X1 U260 ( .B1(n354), .B2(n254), .A(n288), .ZN(n238) );
  MUX2_X1 U261 ( .A(n289), .B(n258), .S(n266), .Z(n288) );
  NAND2_X1 U262 ( .A1(n267), .A2(n263), .ZN(n289) );
  INV_X1 U263 ( .A(n290), .ZN(n237) );
  AOI21_X1 U264 ( .B1(n267), .B2(send), .A(n291), .ZN(n290) );
  AOI21_X1 U265 ( .B1(n247), .B2(n355), .A(n291), .ZN(n267) );
  MUX2_X1 U266 ( .A(n266), .B(n353), .S(n292), .Z(n236) );
  AOI21_X1 U267 ( .B1(n266), .B2(n356), .A(n291), .ZN(n292) );
  NOR2_X1 U268 ( .A1(n247), .A2(n355), .ZN(n291) );
  OAI21_X1 U269 ( .B1(n125), .B2(n285), .A(n293), .ZN(n235) );
  OAI22_X1 U270 ( .A1(n285), .A2(n251), .B1(n294), .B2(n295), .ZN(n234) );
  INV_X1 U271 ( .A(n296), .ZN(n233) );
  MUX2_X1 U272 ( .A(n295), .B(n285), .S(n351), .Z(n296) );
  OAI22_X1 U273 ( .A1(n126), .A2(n285), .B1(n351), .B2(n295), .ZN(n232) );
  OAI22_X1 U274 ( .A1(n127), .A2(n285), .B1(n294), .B2(n295), .ZN(n231) );
  OAI22_X1 U275 ( .A1(n285), .A2(n262), .B1(n297), .B2(n295), .ZN(n230) );
  OAI22_X1 U276 ( .A1(n128), .A2(n285), .B1(n297), .B2(n295), .ZN(n229) );
  NAND2_X1 U277 ( .A1(n285), .A2(n298), .ZN(n295) );
  NAND3_X1 U278 ( .A1(n294), .A2(n351), .A3(n350), .ZN(n298) );
  XOR2_X1 U279 ( .A(n251), .B(n351), .Z(n294) );
  AOI21_X1 U280 ( .B1(n351), .B2(n352), .A(n350), .ZN(n297) );
  INV_X1 U281 ( .A(n299), .ZN(n285) );
  MUX2_X1 U282 ( .A(n300), .B(error), .S(n301), .Z(n227) );
  NOR2_X1 U283 ( .A1(n353), .A2(send), .ZN(n301) );
  INV_X1 U284 ( .A(n302), .ZN(n300) );
  OAI21_X1 U285 ( .B1(send), .B2(tre), .A(n303), .ZN(n302) );
  OAI21_X1 U286 ( .B1(test_so), .B2(n248), .A(n303), .ZN(n226) );
  NAND3_X1 U287 ( .A1(dsr), .A2(send), .A3(tre), .ZN(n303) );
  NAND2_X1 U288 ( .A1(n304), .A2(n305), .ZN(n225) );
  MUX2_X1 U289 ( .A(n245), .B(n306), .S(n280), .Z(n304) );
  NAND3_X1 U290 ( .A1(next_bit[1]), .A2(next_bit[2]), .A3(n307), .ZN(n306) );
  MUX2_X1 U291 ( .A(next_bit[1]), .B(n308), .S(n280), .Z(n224) );
  OAI211_X1 U292 ( .C1(n309), .C2(n281), .A(n310), .B(n283), .ZN(n308) );
  NOR2_X1 U293 ( .A1(n311), .A2(n312), .ZN(n283) );
  NAND2_X1 U294 ( .A1(n313), .A2(n310), .ZN(n223) );
  OR2_X1 U295 ( .A1(n314), .A2(n315), .ZN(n310) );
  MUX2_X1 U296 ( .A(n250), .B(n316), .S(n280), .Z(n313) );
  NOR3_X1 U297 ( .A1(n317), .A2(n284), .A3(n312), .ZN(n316) );
  NOR3_X1 U298 ( .A1(n314), .A2(next_bit[2]), .A3(n244), .ZN(n317) );
  MUX2_X1 U299 ( .A(out_reg[6]), .B(data_in[6]), .S(n265), .Z(n219) );
  NOR2_X1 U300 ( .A1(n261), .A2(tre), .ZN(n265) );
  MUX2_X1 U301 ( .A(n354), .B(n364), .S(n318), .Z(n212) );
  AOI21_X1 U302 ( .B1(n319), .B2(test_so), .A(n266), .ZN(n318) );
  NOR2_X1 U303 ( .A1(n354), .A2(n355), .ZN(n266) );
  NOR2_X1 U304 ( .A1(n254), .A2(n247), .ZN(n319) );
  XOR2_X1 U305 ( .A(n252), .B(n320), .Z(n207) );
  MUX2_X1 U306 ( .A(n246), .B(rdy), .S(n321), .Z(n205) );
  AOI21_X1 U307 ( .B1(n322), .B2(n361), .A(n323), .ZN(n321) );
  NAND2_X1 U308 ( .A1(n324), .A2(n325), .ZN(n199) );
  NAND3_X1 U309 ( .A1(n359), .A2(n360), .A3(n358), .ZN(n325) );
  OAI21_X1 U310 ( .B1(n243), .B2(n326), .A(send_data), .ZN(n324) );
  MUX2_X1 U311 ( .A(n327), .B(mux_en), .S(n328), .Z(n198) );
  AOI21_X1 U312 ( .B1(n327), .B2(n249), .A(n329), .ZN(n328) );
  INV_X1 U313 ( .A(n330), .ZN(n327) );
  OAI21_X1 U314 ( .B1(n361), .B2(n320), .A(n132), .ZN(n193) );
  OR3_X1 U315 ( .A1(tre), .A2(test_so), .A3(n353), .ZN(n169) );
  OAI211_X1 U316 ( .C1(n249), .C2(n243), .A(n299), .B(n286), .ZN(N83) );
  NAND3_X1 U317 ( .A1(n249), .A2(n243), .A3(n360), .ZN(n286) );
  NAND3_X1 U318 ( .A1(n293), .A2(n299), .A3(n331), .ZN(N82) );
  MUX2_X1 U319 ( .A(n332), .B(n330), .S(n359), .Z(n331) );
  NAND2_X1 U320 ( .A1(n253), .A2(n243), .ZN(n330) );
  NAND2_X1 U321 ( .A1(n358), .A2(n326), .ZN(n332) );
  NAND2_X1 U322 ( .A1(rdy), .A2(n360), .ZN(n326) );
  NAND3_X1 U323 ( .A1(n360), .A2(n243), .A3(n359), .ZN(n299) );
  INV_X1 U324 ( .A(n329), .ZN(n293) );
  NOR4_X1 U325 ( .A1(n243), .A2(n249), .A3(eoc), .A4(n360), .ZN(n329) );
  NAND2_X1 U326 ( .A1(n333), .A2(n358), .ZN(N81) );
  MUX2_X1 U327 ( .A(n334), .B(n335), .S(n359), .Z(n333) );
  NAND2_X1 U328 ( .A1(eoc), .A2(n253), .ZN(n335) );
  OR2_X1 U329 ( .A1(n253), .A2(rdy), .ZN(n334) );
  NAND3_X1 U330 ( .A1(n336), .A2(n280), .A3(n337), .ZN(N215) );
  AOI221_X1 U331 ( .B1(n307), .B2(n338), .C1(n312), .C2(out_reg[3]), .A(n339), 
        .ZN(n337) );
  OAI21_X1 U332 ( .B1(n259), .B2(n305), .A(n340), .ZN(n339) );
  NAND3_X1 U333 ( .A1(n341), .A2(out_reg[0]), .A3(next_bit[0]), .ZN(n340) );
  NAND3_X1 U334 ( .A1(n341), .A2(n255), .A3(next_bit[3]), .ZN(n305) );
  NOR3_X1 U335 ( .A1(n309), .A2(n250), .A3(n244), .ZN(n312) );
  OAI211_X1 U336 ( .C1(n257), .C2(n315), .A(n281), .B(n342), .ZN(n338) );
  MUX2_X1 U337 ( .A(n256), .B(n343), .S(next_bit[2]), .Z(n342) );
  NAND2_X1 U338 ( .A1(next_bit[1]), .A2(out_reg[2]), .ZN(n343) );
  AOI22_X1 U339 ( .A1(n284), .A2(out_reg[5]), .B1(n311), .B2(out_reg[7]), .ZN(
        n336) );
  NOR3_X1 U340 ( .A1(n309), .A2(next_bit[2]), .A3(n244), .ZN(n311) );
  NOR2_X1 U341 ( .A1(n309), .A2(n315), .ZN(n284) );
  NAND2_X1 U342 ( .A1(next_bit[2]), .A2(n244), .ZN(n315) );
  NAND2_X1 U343 ( .A1(n255), .A2(n245), .ZN(n309) );
  AND3_X1 U344 ( .A1(n307), .A2(n341), .A3(n280), .ZN(N214) );
  NOR2_X1 U345 ( .A1(n248), .A2(n278), .ZN(n280) );
  NOR4_X1 U346 ( .A1(n344), .A2(tx_conta[7]), .A3(tx_conta[8]), .A4(
        tx_conta[9]), .ZN(n278) );
  AND3_X1 U347 ( .A1(tx_conta[5]), .A2(n345), .A3(tx_conta[6]), .ZN(n344) );
  INV_X1 U348 ( .A(n346), .ZN(n345) );
  AOI21_X1 U349 ( .B1(n347), .B2(tx_conta[3]), .A(tx_conta[4]), .ZN(n346) );
  OR3_X1 U350 ( .A1(tx_conta[0]), .A2(tx_conta[2]), .A3(tx_conta[1]), .ZN(n347) );
  INV_X1 U351 ( .A(n281), .ZN(n341) );
  NAND2_X1 U352 ( .A1(n250), .A2(n244), .ZN(n281) );
  INV_X1 U353 ( .A(n314), .ZN(n307) );
  NAND2_X1 U354 ( .A1(next_bit[0]), .A2(n245), .ZN(n314) );
  OAI21_X1 U355 ( .B1(n348), .B2(n252), .A(n287), .ZN(N104) );
  AOI22_X1 U356 ( .A1(n246), .A2(n362), .B1(n260), .B2(n349), .ZN(n287) );
  INV_X1 U357 ( .A(n349), .ZN(n348) );
  OR2_X1 U358 ( .A1(n322), .A2(n323), .ZN(N103) );
  NOR3_X1 U359 ( .A1(n363), .A2(n362), .A3(n264), .ZN(n323) );
  INV_X1 U360 ( .A(n320), .ZN(n322) );
  NAND2_X1 U361 ( .A1(n364), .A2(n349), .ZN(n320) );
  NOR2_X1 U362 ( .A1(n246), .A2(n362), .ZN(n349) );
endmodule

