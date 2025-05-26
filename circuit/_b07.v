/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP4
// Date      : Mon Jul  1 17:32:04 2024
/////////////////////////////////////////////////////////////


module b07 ( punti_retta, start, reset, clock, test_si, test_so, test_se );
  output [7:0] punti_retta;
  input start, reset, clock, test_si, test_se;
  output test_so;
  wire   y_5_, y_4_, y_3_, y_2_, y_1_, y_0_, N118, N119, N120, N121, N122,
         N123, N124, N126, N127, N128, N129, N130, N131, N132, N137, N138,
         N139, N140, N141, N142, N166, N171, N172, N173, n95, n96, n97, n99,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, add_79_aco_B_0_, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
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
         n357, n358, n359, n360;
  wire   [2:0] stato;
  wire   [7:0] cont;
  wire   [7:0] x;
  wire   [6:1] t;
  wire   [7:2] add_69_carry;
  wire   [6:2] add_64_carry;
  wire   [6:2] add_61_carry;
  wire   [6:2] add_57_carry;

  SDFFR_X2 mar_reg_0_ ( .D(n209), .SI(cont[7]), .SE(test_se), .CK(clock), .RN(
        n352), .Q(n218), .QN(n99) );
  SDFFR_X2 mar_reg_2_ ( .D(n206), .SI(n221), .SE(test_se), .CK(clock), .RN(
        n352), .Q(n213), .QN(n96) );
  SDFFR_X2 stato_reg_2_ ( .D(N173), .SI(stato[1]), .SE(test_se), .CK(clock), 
        .RN(n352), .Q(stato[2]), .QN(n214) );
  SDFFR_X2 stato_reg_0_ ( .D(N171), .SI(punti_retta[7]), .SE(test_se), .CK(
        clock), .RN(n352), .Q(stato[0]), .QN(n219) );
  SDFFR_X2 stato_reg_1_ ( .D(N172), .SI(stato[0]), .SE(test_se), .CK(clock), 
        .RN(n352), .Q(stato[1]), .QN(n216) );
  SDFFR_X2 mar_reg_1_ ( .D(n207), .SI(n218), .SE(test_se), .CK(clock), .RN(
        n352), .Q(n221), .QN(n97) );
  SDFFR_X2 mar_reg_3_ ( .D(n208), .SI(n213), .SE(test_se), .CK(clock), .RN(
        n352), .Q(n215), .QN(n95) );
  SDFFR_X2 y_reg_6_ ( .D(n205), .SI(y_5_), .SE(test_se), .CK(clock), .RN(n352), 
        .Q(test_so), .QN(n333) );
  SDFFR_X2 y_reg_5_ ( .D(n204), .SI(y_4_), .SE(test_se), .CK(clock), .RN(n352), 
        .Q(y_5_), .QN(n332) );
  SDFFR_X2 y_reg_4_ ( .D(n203), .SI(y_3_), .SE(test_se), .CK(clock), .RN(n352), 
        .Q(y_4_), .QN(n331) );
  SDFFR_X2 y_reg_3_ ( .D(n202), .SI(y_2_), .SE(test_se), .CK(clock), .RN(n352), 
        .Q(y_3_), .QN(n330) );
  SDFFR_X2 y_reg_2_ ( .D(n353), .SI(y_1_), .SE(test_se), .CK(clock), .RN(n352), 
        .Q(y_2_), .QN(n329) );
  SDFFR_X2 y_reg_1_ ( .D(n201), .SI(y_0_), .SE(test_se), .CK(clock), .RN(n352), 
        .Q(y_1_) );
  SDFFR_X2 y_reg_0_ ( .D(n354), .SI(x[7]), .SE(test_se), .CK(clock), .RN(n352), 
        .Q(y_0_), .QN(n328) );
  SDFFR_X2 x_reg_6_ ( .D(n194), .SI(add_57_carry[6]), .SE(test_se), .CK(clock), 
        .RN(n352), .Q(x[6]), .QN(n227) );
  SDFFR_X2 x_reg_1_ ( .D(n199), .SI(x[0]), .SE(test_se), .CK(clock), .RN(n352), 
        .Q(add_57_carry[2]), .QN(n222) );
  SDFFR_X2 x_reg_2_ ( .D(n198), .SI(add_57_carry[2]), .SE(test_se), .CK(clock), 
        .RN(n352), .Q(add_57_carry[3]), .QN(n225) );
  SDFFR_X2 x_reg_3_ ( .D(n197), .SI(add_57_carry[3]), .SE(test_se), .CK(clock), 
        .RN(n352), .Q(add_57_carry[4]), .QN(n226) );
  SDFFR_X2 x_reg_4_ ( .D(n196), .SI(add_57_carry[4]), .SE(test_se), .CK(clock), 
        .RN(n352), .Q(add_57_carry[5]), .QN(n223) );
  SDFFR_X2 x_reg_5_ ( .D(n195), .SI(add_57_carry[5]), .SE(test_se), .CK(clock), 
        .RN(n352), .Q(add_57_carry[6]), .QN(n224) );
  SDFFR_X2 t_reg_1_ ( .D(n360), .SI(stato[2]), .SE(test_se), .CK(clock), .RN(
        n352), .Q(t[1]) );
  SDFFR_X2 t_reg_2_ ( .D(n359), .SI(t[1]), .SE(test_se), .CK(clock), .RN(n352), 
        .Q(t[2]) );
  SDFFR_X2 t_reg_3_ ( .D(n358), .SI(t[2]), .SE(test_se), .CK(clock), .RN(n352), 
        .Q(t[3]) );
  SDFFR_X2 t_reg_4_ ( .D(n357), .SI(t[3]), .SE(test_se), .CK(clock), .RN(n352), 
        .Q(t[4]) );
  SDFFR_X2 t_reg_5_ ( .D(n356), .SI(t[4]), .SE(test_se), .CK(clock), .RN(n352), 
        .Q(t[5]) );
  SDFFR_X2 t_reg_6_ ( .D(n355), .SI(t[5]), .SE(test_se), .CK(clock), .RN(n352), 
        .Q(t[6]) );
  SDFFR_X2 x_reg_7_ ( .D(n193), .SI(x[6]), .SE(test_se), .CK(clock), .RN(n352), 
        .Q(x[7]), .QN(n228) );
  SDFFR_X2 cont_reg_1_ ( .D(n344), .SI(cont[0]), .SE(test_se), .CK(clock), 
        .RN(n352), .Q(cont[1]), .QN(n327) );
  SDFFR_X2 cont_reg_0_ ( .D(n345), .SI(test_si), .SE(test_se), .CK(clock), 
        .RN(n352), .Q(cont[0]), .QN(n334) );
  SDFFR_X2 cont_reg_2_ ( .D(n346), .SI(cont[1]), .SE(test_se), .CK(clock), 
        .RN(n352), .Q(cont[2]), .QN(n326) );
  SDFFR_X2 cont_reg_3_ ( .D(n347), .SI(cont[2]), .SE(test_se), .CK(clock), 
        .RN(n352), .Q(cont[3]), .QN(n325) );
  SDFFR_X2 cont_reg_4_ ( .D(n348), .SI(cont[3]), .SE(test_se), .CK(clock), 
        .RN(n352), .Q(cont[4]), .QN(n324) );
  SDFFR_X2 cont_reg_5_ ( .D(n349), .SI(cont[4]), .SE(test_se), .CK(clock), 
        .RN(n352), .Q(cont[5]), .QN(n323) );
  SDFFR_X2 cont_reg_6_ ( .D(n350), .SI(cont[5]), .SE(test_se), .CK(clock), 
        .RN(n352), .Q(cont[6]), .QN(n322) );
  SDFFR_X2 cont_reg_7_ ( .D(n351), .SI(cont[6]), .SE(test_se), .CK(clock), 
        .RN(n352), .Q(cont[7]), .QN(n335) );
  SDFFR_X2 punti_retta_reg_0_ ( .D(n336), .SI(n215), .SE(test_se), .CK(clock), 
        .RN(n352), .Q(punti_retta[0]) );
  SDFFR_X2 punti_retta_reg_1_ ( .D(n337), .SI(punti_retta[0]), .SE(test_se), 
        .CK(clock), .RN(n352), .Q(punti_retta[1]) );
  SDFFR_X2 punti_retta_reg_2_ ( .D(n338), .SI(punti_retta[1]), .SE(test_se), 
        .CK(clock), .RN(n352), .Q(punti_retta[2]) );
  SDFFR_X2 punti_retta_reg_3_ ( .D(n339), .SI(punti_retta[2]), .SE(test_se), 
        .CK(clock), .RN(n352), .Q(punti_retta[3]) );
  SDFFR_X2 punti_retta_reg_4_ ( .D(n340), .SI(punti_retta[3]), .SE(test_se), 
        .CK(clock), .RN(n352), .Q(punti_retta[4]) );
  SDFFR_X2 punti_retta_reg_5_ ( .D(n341), .SI(punti_retta[4]), .SE(test_se), 
        .CK(clock), .RN(n352), .Q(punti_retta[5]) );
  SDFFR_X2 punti_retta_reg_6_ ( .D(n342), .SI(punti_retta[5]), .SE(test_se), 
        .CK(clock), .RN(n352), .Q(punti_retta[6]) );
  SDFFR_X2 punti_retta_reg_7_ ( .D(n343), .SI(punti_retta[6]), .SE(test_se), 
        .CK(clock), .RN(n352), .Q(punti_retta[7]) );
  HA_X1 add_69_U1_1_1 ( .A(cont[1]), .B(cont[0]), .CO(add_69_carry[2]), .S(
        N137) );
  HA_X1 add_69_U1_1_2 ( .A(cont[2]), .B(add_69_carry[2]), .CO(add_69_carry[3]), 
        .S(N138) );
  HA_X1 add_69_U1_1_3 ( .A(cont[3]), .B(add_69_carry[3]), .CO(add_69_carry[4]), 
        .S(N139) );
  HA_X1 add_69_U1_1_4 ( .A(cont[4]), .B(add_69_carry[4]), .CO(add_69_carry[5]), 
        .S(N140) );
  HA_X1 add_69_U1_1_5 ( .A(cont[5]), .B(add_69_carry[5]), .CO(add_69_carry[6]), 
        .S(N141) );
  HA_X1 add_69_U1_1_6 ( .A(cont[6]), .B(add_69_carry[6]), .CO(add_69_carry[7]), 
        .S(N142) );
  FA_X1 add_64_U1_1 ( .A(add_57_carry[2]), .B(y_1_), .CI(n234), .CO(
        add_64_carry[2]), .S(N126) );
  FA_X1 add_64_U1_2 ( .A(add_57_carry[3]), .B(y_2_), .CI(add_64_carry[2]), 
        .CO(add_64_carry[3]), .S(N127) );
  FA_X1 add_64_U1_3 ( .A(add_57_carry[4]), .B(y_3_), .CI(add_64_carry[3]), 
        .CO(add_64_carry[4]), .S(N128) );
  FA_X1 add_64_U1_4 ( .A(add_57_carry[5]), .B(y_4_), .CI(add_64_carry[4]), 
        .CO(add_64_carry[5]), .S(N129) );
  FA_X1 add_64_U1_5 ( .A(add_57_carry[6]), .B(y_5_), .CI(add_64_carry[5]), 
        .CO(add_64_carry[6]), .S(N130) );
  FA_X1 add_64_U1_6 ( .A(x[6]), .B(test_so), .CI(add_64_carry[6]), .CO(N132), 
        .S(N131) );
  FA_X1 add_61_U1_2 ( .A(add_57_carry[3]), .B(t[2]), .CI(add_61_carry[2]), 
        .CO(add_61_carry[3]), .S(N119) );
  FA_X1 add_61_U1_3 ( .A(add_57_carry[4]), .B(t[3]), .CI(add_61_carry[3]), 
        .CO(add_61_carry[4]), .S(N120) );
  FA_X1 add_61_U1_4 ( .A(add_57_carry[5]), .B(t[4]), .CI(add_61_carry[4]), 
        .CO(add_61_carry[5]), .S(N121) );
  FA_X1 add_61_U1_5 ( .A(add_57_carry[6]), .B(t[5]), .CI(add_61_carry[5]), 
        .CO(add_61_carry[6]), .S(N122) );
  FA_X1 add_61_U1_6 ( .A(x[6]), .B(t[6]), .CI(add_61_carry[6]), .CO(N124), .S(
        N123) );
  SDFFR_X2 x_reg_0_ ( .D(n200), .SI(t[6]), .SE(test_se), .CK(clock), .RN(n352), 
        .Q(x[0]), .QN(n220) );
  NAND2_X2 U202 ( .A1(t[1]), .A2(add_57_carry[2]), .ZN(n211) );
  INV_X4 U203 ( .A(n211), .ZN(add_61_carry[2]) );
  XNOR2_X2 U204 ( .A(t[1]), .B(add_57_carry[2]), .ZN(n212) );
  INV_X4 U205 ( .A(n212), .ZN(N118) );
  AND2_X4 U206 ( .A1(cont[5]), .A2(n233), .ZN(n217) );
  AND2_X4 U207 ( .A1(add_79_aco_B_0_), .A2(cont[0]), .ZN(n229) );
  AND2_X4 U208 ( .A1(cont[1]), .A2(n229), .ZN(n230) );
  AND2_X4 U209 ( .A1(cont[2]), .A2(n230), .ZN(n231) );
  AND2_X4 U210 ( .A1(cont[3]), .A2(n231), .ZN(n232) );
  AND2_X4 U211 ( .A1(cont[4]), .A2(n232), .ZN(n233) );
  AND2_X4 U212 ( .A1(y_0_), .A2(x[0]), .ZN(n234) );
  XOR2_X2 U213 ( .A(y_0_), .B(x[0]), .Z(n235) );
  XOR2_X2 U214 ( .A(add_79_aco_B_0_), .B(cont[0]), .Z(n236) );
  XOR2_X2 U215 ( .A(cont[1]), .B(n229), .Z(n237) );
  XOR2_X2 U216 ( .A(cont[2]), .B(n230), .Z(n238) );
  XOR2_X2 U217 ( .A(cont[3]), .B(n231), .Z(n239) );
  XOR2_X2 U218 ( .A(cont[4]), .B(n232), .Z(n240) );
  XOR2_X2 U219 ( .A(cont[5]), .B(n233), .Z(n241) );
  XOR2_X2 U220 ( .A(cont[6]), .B(n217), .Z(n242) );
  INV_X8 U221 ( .A(reset), .ZN(n352) );
  NAND2_X2 U222 ( .A1(cont[6]), .A2(n217), .ZN(n243) );
  XNOR2_X2 U223 ( .A(cont[7]), .B(n243), .ZN(N166) );
  INV_X1 U224 ( .A(n244), .ZN(n345) );
  MUX2_X1 U225 ( .A(n245), .B(n246), .S(n334), .Z(n244) );
  OAI22_X1 U226 ( .A1(n326), .A2(n245), .B1(n246), .B2(n247), .ZN(n346) );
  INV_X1 U227 ( .A(N138), .ZN(n247) );
  OAI22_X1 U228 ( .A1(n325), .A2(n245), .B1(n246), .B2(n248), .ZN(n347) );
  INV_X1 U229 ( .A(N139), .ZN(n248) );
  OAI22_X1 U230 ( .A1(n324), .A2(n245), .B1(n246), .B2(n249), .ZN(n348) );
  INV_X1 U231 ( .A(N140), .ZN(n249) );
  OAI22_X1 U232 ( .A1(n323), .A2(n245), .B1(n246), .B2(n250), .ZN(n349) );
  INV_X1 U233 ( .A(N141), .ZN(n250) );
  OAI22_X1 U234 ( .A1(n322), .A2(n245), .B1(n246), .B2(n251), .ZN(n350) );
  INV_X1 U235 ( .A(N142), .ZN(n251) );
  MUX2_X1 U236 ( .A(n252), .B(n253), .S(n335), .Z(n351) );
  NOR2_X1 U237 ( .A1(n246), .A2(n254), .ZN(n253) );
  INV_X1 U238 ( .A(add_69_carry[7]), .ZN(n254) );
  OAI21_X1 U239 ( .B1(add_69_carry[7]), .B2(n246), .A(n245), .ZN(n252) );
  OAI22_X1 U240 ( .A1(n255), .A2(n329), .B1(n256), .B2(n257), .ZN(n353) );
  OAI22_X1 U241 ( .A1(n255), .A2(n328), .B1(n258), .B2(n257), .ZN(n354) );
  INV_X1 U242 ( .A(n259), .ZN(n257) );
  MUX2_X1 U243 ( .A(add_57_carry[6]), .B(t[6]), .S(n261), .Z(n355) );
  MUX2_X1 U244 ( .A(add_57_carry[5]), .B(t[5]), .S(n261), .Z(n356) );
  MUX2_X1 U245 ( .A(add_57_carry[4]), .B(t[4]), .S(n261), .Z(n357) );
  MUX2_X1 U246 ( .A(add_57_carry[3]), .B(t[3]), .S(n261), .Z(n358) );
  MUX2_X1 U247 ( .A(add_57_carry[2]), .B(t[2]), .S(n261), .Z(n359) );
  MUX2_X1 U248 ( .A(x[0]), .B(t[1]), .S(n261), .Z(n360) );
  INV_X1 U249 ( .A(n262), .ZN(n336) );
  AOI22_X1 U250 ( .A1(n236), .A2(n263), .B1(punti_retta[0]), .B2(n264), .ZN(
        n262) );
  INV_X1 U251 ( .A(n265), .ZN(n337) );
  AOI22_X1 U252 ( .A1(n237), .A2(n263), .B1(punti_retta[1]), .B2(n264), .ZN(
        n265) );
  INV_X1 U253 ( .A(n266), .ZN(n338) );
  AOI22_X1 U254 ( .A1(n238), .A2(n263), .B1(punti_retta[2]), .B2(n264), .ZN(
        n266) );
  INV_X1 U255 ( .A(n267), .ZN(n339) );
  AOI22_X1 U256 ( .A1(n239), .A2(n263), .B1(punti_retta[3]), .B2(n264), .ZN(
        n267) );
  INV_X1 U257 ( .A(n268), .ZN(n340) );
  AOI22_X1 U258 ( .A1(n240), .A2(n263), .B1(punti_retta[4]), .B2(n264), .ZN(
        n268) );
  INV_X1 U259 ( .A(n269), .ZN(n341) );
  AOI22_X1 U260 ( .A1(n241), .A2(n263), .B1(punti_retta[5]), .B2(n264), .ZN(
        n269) );
  INV_X1 U261 ( .A(n270), .ZN(n342) );
  AOI22_X1 U262 ( .A1(n242), .A2(n263), .B1(punti_retta[6]), .B2(n264), .ZN(
        n270) );
  INV_X1 U263 ( .A(n271), .ZN(n343) );
  AOI22_X1 U264 ( .A1(N166), .A2(n263), .B1(punti_retta[7]), .B2(n264), .ZN(
        n271) );
  NOR2_X1 U265 ( .A1(n264), .A2(n272), .ZN(n263) );
  OAI22_X1 U266 ( .A1(n327), .A2(n245), .B1(n246), .B2(n273), .ZN(n344) );
  INV_X1 U267 ( .A(N137), .ZN(n273) );
  NAND2_X1 U268 ( .A1(n274), .A2(n245), .ZN(n246) );
  OAI21_X1 U269 ( .B1(n275), .B2(n276), .A(n277), .ZN(n245) );
  NAND3_X1 U270 ( .A1(n274), .A2(n278), .A3(add_79_aco_B_0_), .ZN(n277) );
  MUX2_X1 U271 ( .A(n279), .B(n280), .S(n99), .Z(n209) );
  MUX2_X1 U272 ( .A(n281), .B(n282), .S(n215), .Z(n208) );
  OAI21_X1 U273 ( .B1(n283), .B2(n213), .A(n284), .ZN(n282) );
  INV_X1 U274 ( .A(n285), .ZN(n284) );
  AND2_X1 U275 ( .A1(n213), .A2(n286), .ZN(n281) );
  OAI22_X1 U276 ( .A1(n97), .A2(n287), .B1(n283), .B2(n288), .ZN(n207) );
  MUX2_X1 U277 ( .A(n286), .B(n285), .S(n213), .Z(n206) );
  OAI21_X1 U278 ( .B1(n283), .B2(n221), .A(n287), .ZN(n285) );
  AOI21_X1 U279 ( .B1(n280), .B2(n99), .A(n279), .ZN(n287) );
  AND2_X1 U280 ( .A1(n289), .A2(n261), .ZN(n279) );
  INV_X1 U281 ( .A(n283), .ZN(n280) );
  NOR3_X1 U282 ( .A1(n97), .A2(n99), .A3(n283), .ZN(n286) );
  NOR2_X1 U283 ( .A1(n260), .A2(n274), .ZN(n283) );
  OAI21_X1 U284 ( .B1(n255), .B2(n333), .A(n290), .ZN(n205) );
  OAI21_X1 U285 ( .B1(n255), .B2(n332), .A(n290), .ZN(n204) );
  OAI21_X1 U286 ( .B1(n255), .B2(n331), .A(n290), .ZN(n203) );
  OAI21_X1 U287 ( .B1(n255), .B2(n330), .A(n290), .ZN(n202) );
  NAND2_X1 U288 ( .A1(n259), .A2(n291), .ZN(n290) );
  NOR2_X1 U289 ( .A1(n213), .A2(n292), .ZN(n259) );
  MUX2_X1 U290 ( .A(n293), .B(y_1_), .S(n292), .Z(n201) );
  OAI221_X1 U291 ( .B1(n258), .B2(n294), .C1(n220), .C2(n295), .A(n296), .ZN(
        n200) );
  AOI22_X1 U292 ( .A1(x[0]), .A2(n255), .B1(n235), .B2(n297), .ZN(n296) );
  AOI21_X1 U293 ( .B1(n97), .B2(n95), .A(n298), .ZN(n258) );
  OAI221_X1 U294 ( .B1(n299), .B2(n300), .C1(n222), .C2(n295), .A(n301), .ZN(
        n199) );
  AOI22_X1 U295 ( .A1(N118), .A2(n255), .B1(N126), .B2(n297), .ZN(n301) );
  INV_X1 U296 ( .A(n293), .ZN(n299) );
  NAND2_X1 U297 ( .A1(n302), .A2(n288), .ZN(n293) );
  MUX2_X1 U298 ( .A(n303), .B(n304), .S(n218), .Z(n302) );
  NAND2_X1 U299 ( .A1(n215), .A2(n213), .ZN(n304) );
  NAND2_X1 U300 ( .A1(n96), .A2(n298), .ZN(n303) );
  OAI221_X1 U301 ( .B1(n256), .B2(n294), .C1(n295), .C2(n225), .A(n305), .ZN(
        n198) );
  AOI22_X1 U302 ( .A1(N119), .A2(n255), .B1(N127), .B2(n297), .ZN(n305) );
  INV_X1 U303 ( .A(n306), .ZN(n294) );
  AND2_X1 U304 ( .A1(n307), .A2(n308), .ZN(n256) );
  OAI211_X1 U305 ( .C1(n295), .C2(n226), .A(n309), .B(n310), .ZN(n197) );
  AOI22_X1 U306 ( .A1(N120), .A2(n255), .B1(N128), .B2(n297), .ZN(n310) );
  OAI211_X1 U307 ( .C1(n295), .C2(n223), .A(n309), .B(n311), .ZN(n196) );
  AOI22_X1 U308 ( .A1(N121), .A2(n255), .B1(N129), .B2(n297), .ZN(n311) );
  OAI211_X1 U309 ( .C1(n295), .C2(n224), .A(n309), .B(n312), .ZN(n195) );
  AOI22_X1 U310 ( .A1(N122), .A2(n255), .B1(N130), .B2(n297), .ZN(n312) );
  OAI211_X1 U311 ( .C1(n295), .C2(n227), .A(n309), .B(n313), .ZN(n194) );
  AOI22_X1 U312 ( .A1(N123), .A2(n255), .B1(N131), .B2(n297), .ZN(n313) );
  OAI211_X1 U313 ( .C1(n295), .C2(n228), .A(n309), .B(n314), .ZN(n193) );
  AOI22_X1 U314 ( .A1(N124), .A2(n255), .B1(N132), .B2(n297), .ZN(n314) );
  NAND2_X1 U315 ( .A1(n306), .A2(n291), .ZN(n309) );
  OAI21_X1 U316 ( .B1(n308), .B2(n218), .A(n307), .ZN(n291) );
  OR2_X1 U317 ( .A1(n215), .A2(n288), .ZN(n307) );
  NAND2_X1 U318 ( .A1(n97), .A2(n218), .ZN(n288) );
  NOR2_X1 U319 ( .A1(n300), .A2(n213), .ZN(n306) );
  NAND3_X1 U320 ( .A1(n315), .A2(n300), .A3(n292), .ZN(n295) );
  AND4_X1 U321 ( .A1(add_57_carry[2]), .A2(n220), .A3(n316), .A4(n317), .ZN(
        add_79_aco_B_0_) );
  NOR4_X1 U322 ( .A1(x[7]), .A2(x[6]), .A3(add_57_carry[6]), .A4(
        add_57_carry[5]), .ZN(n317) );
  NOR2_X1 U323 ( .A1(add_57_carry[4]), .A2(add_57_carry[3]), .ZN(n316) );
  NAND4_X1 U324 ( .A1(n318), .A2(n292), .A3(n261), .A4(n315), .ZN(N173) );
  INV_X1 U325 ( .A(n260), .ZN(n261) );
  NOR3_X1 U326 ( .A1(n216), .A2(stato[2]), .A3(n219), .ZN(n260) );
  INV_X1 U327 ( .A(n255), .ZN(n292) );
  NOR3_X1 U328 ( .A1(stato[0]), .A2(stato[1]), .A3(n214), .ZN(n255) );
  OR3_X1 U329 ( .A1(n276), .A2(n272), .A3(n278), .ZN(n318) );
  NAND4_X1 U330 ( .A1(n289), .A2(n319), .A3(n315), .A4(n300), .ZN(N172) );
  INV_X1 U331 ( .A(n297), .ZN(n315) );
  NOR3_X1 U332 ( .A1(n214), .A2(stato[1]), .A3(n219), .ZN(n297) );
  NAND2_X1 U333 ( .A1(start), .A2(n274), .ZN(n319) );
  AOI22_X1 U334 ( .A1(n278), .A2(n274), .B1(n320), .B2(start), .ZN(n289) );
  INV_X1 U335 ( .A(n275), .ZN(n320) );
  OAI211_X1 U336 ( .C1(stato[1]), .C2(stato[0]), .A(n264), .B(n300), .ZN(N171)
         );
  NAND3_X1 U337 ( .A1(n219), .A2(n214), .A3(stato[1]), .ZN(n300) );
  NAND2_X1 U338 ( .A1(n276), .A2(n321), .ZN(n264) );
  OAI21_X1 U339 ( .B1(n272), .B2(n278), .A(n275), .ZN(n321) );
  NAND3_X1 U340 ( .A1(n216), .A2(n214), .A3(stato[0]), .ZN(n275) );
  NAND3_X1 U341 ( .A1(n213), .A2(n218), .A3(n298), .ZN(n278) );
  INV_X1 U342 ( .A(n308), .ZN(n298) );
  NAND2_X1 U343 ( .A1(n215), .A2(n221), .ZN(n308) );
  INV_X1 U344 ( .A(n274), .ZN(n272) );
  NOR3_X1 U345 ( .A1(n216), .A2(stato[0]), .A3(n214), .ZN(n274) );
  INV_X1 U346 ( .A(start), .ZN(n276) );
endmodule

