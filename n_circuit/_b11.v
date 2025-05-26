/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP4
// Date      : Mon Jul  1 17:32:43 2024
/////////////////////////////////////////////////////////////

  input  x_in[0], x_in[1], x_in[2], x_in[3], x_in[4], x_in[5];
  output  x_out[0], x_out[1], x_out[2], x_out[3], x_out[4], x_out[5];
  input stbi, clock, reset, test_si, test_se;
  output test_so;
  wire   N70, N71, N72, N73, N95, N96, N97, N98, N99, N102, N103, N104, N105,
         N106, N107, N108, N111, N124, N126, N129, N130, N131, N132, N139,
         N140, N144, N148, N150, N152, N153, N154, N155, N159, N161, N163,
         N164, N165, N168, N169, N175, N179, N180, N184, N213, N220, N242,
         N243, N244, N245, n102, n111, n112, n113, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, add_99_carry_2_,
         add_99_carry_3_, sub_95_carry_2_, sub_95_carry_3_, sub_95_carry_4_,
         sub_95_carry_5_, sub_95_carry_6_, sub_95_carry_7_, sub_95_carry_8_,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450;
  wire    stato[0], stato[1], stato[2], stato[3];
  wire    r_in[0], r_in[1], r_in[2], r_in[3], r_in[4], r_in[5];
  wire    cont[0], cont[1], cont[2], cont[3], cont[4];
  wire    cont1[1], cont1[2], cont1[3], cont1[4], cont1[5], cont1[6], cont1[7];
  wire    add_101_carry[4], add_101_carry[5];
  wire    sub_97_carry[3], sub_97_carry[4], sub_97_carry[5], sub_97_carry[6], sub_97_carry[7], sub_97_carry[8];
  wire    add_88_carry[3], add_88_carry[4], add_88_carry[5];
  wire    sub_81_carry[3], sub_81_carry[4], sub_81_carry[5], sub_81_carry[6], sub_81_carry[7], sub_81_carry[8];
  wire    sub_76_carry[1], sub_76_carry[2], sub_76_carry[3], sub_76_carry[4], sub_76_carry[5], sub_76_carry[6];
  wire    add_73_carry[2], add_73_carry[3], add_73_carry[4], add_73_carry[5], add_73_carry[6];
  wire    add_53_carry[2], add_53_carry[3], add_53_carry[4], add_53_carry[5];
  

  SDFFR_X2 cont1_reg_0_ ( .D(n232), .SI(test_si), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(N124), .QN(n442) );
  SDFFR_X2 cont1_reg_8_ ( .D(n433), .SI(cont1[7]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(N213), .QN(n443) );
  SDFFR_X2 cont1_reg_7_ ( .D(n434), .SI(cont1[6]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(cont1[7]), .QN(n444) );
  SDFFR_X2 cont1_reg_6_ ( .D(n435), .SI(cont1[5]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(cont1[6]), .QN(n445) );
  SDFFR_X2 cont1_reg_5_ ( .D(n227), .SI(cont1[4]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(cont1[5]), .QN(n446) );
  SDFFR_X2 cont1_reg_4_ ( .D(n228), .SI(cont1[3]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(cont1[4]), .QN(n447) );
  SDFFR_X2 cont1_reg_1_ ( .D(n231), .SI(N124), .SE(test_se), .CK(clock), .RN(
        n432), .Q(cont1[1]), .QN(n448) );
  SDFFR_X2 cont1_reg_3_ ( .D(n229), .SI(cont1[2]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(cont1[3]), .QN(n449) );
  SDFFR_X2 stato_reg_1_ ( .D(N243), .SI(stato[0]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(stato[1]), .QN(n253) );
  SDFFR_X2 stato_reg_3_ ( .D(N245), .SI(stato[2]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(stato[3]) );
  SDFFR_X2 r_in_reg_1_ ( .D(n430), .SI(r_in[0]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(r_in[1]), .QN(n235) );
  SDFFR_X2 r_in_reg_2_ ( .D(n429), .SI(r_in[1]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(r_in[2]), .QN(n250) );
  SDFFR_X2 r_in_reg_3_ ( .D(n428), .SI(r_in[2]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(r_in[3]) );
  SDFFR_X2 r_in_reg_4_ ( .D(n427), .SI(r_in[3]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(r_in[4]) );
  SDFFR_X2 r_in_reg_5_ ( .D(n426), .SI(r_in[4]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(r_in[5]), .QN(n249) );
  SDFFR_X2 r_in_reg_0_ ( .D(n431), .SI(n233), .SE(test_se), .CK(clock), .RN(
        n432), .Q(r_in[0]), .QN(n251) );
  SDFFR_X2 stato_reg_0_ ( .D(N242), .SI(r_in[5]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(stato[0]), .QN(n252) );
  SDFFR_X2 stato_reg_2_ ( .D(N244), .SI(stato[1]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(stato[2]), .QN(n254) );
  SDFFR_X2 cont_reg_5_ ( .D(n226), .SI(cont[4]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(n233), .QN(n102) );
  SDFFR_X2 cont_reg_0_ ( .D(n225), .SI(N213), .SE(test_se), .CK(clock), .RN(
        n432), .Q(cont[0]), .QN(n113) );
  SDFFR_X2 cont_reg_1_ ( .D(n224), .SI(cont[0]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(cont[1]), .QN(n112) );
  SDFFR_X2 cont_reg_2_ ( .D(n223), .SI(cont[1]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(cont[2]), .QN(n111) );
  SDFFR_X2 cont1_reg_2_ ( .D(n230), .SI(cont1[1]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(cont1[2]), .QN(n450) );
  SDFFR_X2 cont_reg_3_ ( .D(n222), .SI(cont[2]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(cont[3]) );
  SDFFR_X2 cont_reg_4_ ( .D(n221), .SI(cont[3]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(cont[4]) );
  SDFFR_X2 x_out_reg_1_ ( .D(n441), .SI(x_out[0]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(x_out[1]), .QN(n424) );
  SDFFR_X2 x_out_reg_2_ ( .D(n440), .SI(x_out[1]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(x_out[2]), .QN(n423) );
  SDFFR_X2 x_out_reg_3_ ( .D(n439), .SI(x_out[2]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(x_out[3]), .QN(n422) );
  SDFFR_X2 x_out_reg_4_ ( .D(n438), .SI(x_out[3]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(x_out[4]), .QN(n421) );
  SDFFR_X2 x_out_reg_5_ ( .D(n437), .SI(x_out[4]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(x_out[5]), .QN(n420) );
  SDFFR_X2 x_out_reg_0_ ( .D(n436), .SI(stato[3]), .SE(test_se), .CK(clock), 
        .RN(n432), .Q(x_out[0]), .QN(n425) );
  FA_X1 sub_76_U2_1 ( .A(r_in[1]), .B(n448), .CI(sub_76_carry[1]), .CO(
        sub_76_carry[2]), .S(N104) );
  FA_X1 sub_76_U2_2 ( .A(r_in[2]), .B(n450), .CI(sub_76_carry[2]), .CO(
        sub_76_carry[3]), .S(N105) );
  FA_X1 sub_76_U2_3 ( .A(r_in[3]), .B(n449), .CI(sub_76_carry[3]), .CO(
        sub_76_carry[4]), .S(N106) );
  FA_X1 sub_76_U2_4 ( .A(r_in[4]), .B(n447), .CI(sub_76_carry[4]), .CO(
        sub_76_carry[5]), .S(N107) );
  FA_X1 sub_76_U2_5 ( .A(r_in[5]), .B(n446), .CI(sub_76_carry[5]), .CO(
        sub_76_carry[6]), .S(N108) );
  FA_X1 add_73_U1_1 ( .A(r_in[1]), .B(cont1[1]), .CI(n260), .CO(
        add_73_carry[2]), .S(N95) );
  FA_X1 add_73_U1_2 ( .A(r_in[2]), .B(cont1[2]), .CI(add_73_carry[2]), .CO(
        add_73_carry[3]), .S(N96) );
  FA_X1 add_73_U1_3 ( .A(r_in[3]), .B(cont1[3]), .CI(add_73_carry[3]), .CO(
        add_73_carry[4]), .S(N97) );
  FA_X1 add_73_U1_4 ( .A(r_in[4]), .B(cont1[4]), .CI(add_73_carry[4]), .CO(
        add_73_carry[5]), .S(N98) );
  FA_X1 add_73_U1_5 ( .A(r_in[5]), .B(cont1[5]), .CI(add_73_carry[5]), .CO(
        add_73_carry[6]), .S(N99) );
  HA_X1 add_53_U1_1_1 ( .A(cont[1]), .B(cont[0]), .CO(add_53_carry[2]), .S(N70) );
  HA_X1 add_53_U1_1_2 ( .A(cont[2]), .B(add_53_carry[2]), .CO(add_53_carry[3]), 
        .S(N71) );
  HA_X1 add_53_U1_1_3 ( .A(cont[3]), .B(add_53_carry[3]), .CO(add_53_carry[4]), 
        .S(N72) );
  HA_X1 add_53_U1_1_4 ( .A(cont[4]), .B(add_53_carry[4]), .CO(add_53_carry[5]), 
        .S(N73) );
  AND2_X4 U202 ( .A1(n448), .A2(n442), .ZN(n234) );
  AND2_X4 U203 ( .A1(cont1[6]), .A2(n258), .ZN(n236) );
  AND2_X4 U204 ( .A1(cont1[6]), .A2(n259), .ZN(n237) );
  AND2_X4 U205 ( .A1(cont1[3]), .A2(sub_81_carry[3]), .ZN(n238) );
  AND2_X4 U206 ( .A1(cont1[6]), .A2(n257), .ZN(n239) );
  AND2_X4 U207 ( .A1(cont1[6]), .A2(add_73_carry[6]), .ZN(n240) );
  AND2_X4 U208 ( .A1(n450), .A2(n234), .ZN(n241) );
  AND2_X4 U209 ( .A1(n449), .A2(n241), .ZN(n242) );
  XOR2_X2 U210 ( .A(cont1[7]), .B(n239), .Z(n243) );
  XOR2_X2 U211 ( .A(cont1[7]), .B(n240), .Z(n244) );
  AND2_X4 U212 ( .A1(n445), .A2(sub_76_carry[6]), .ZN(n245) );
  XOR2_X2 U213 ( .A(cont1[5]), .B(add_101_carry[5]), .Z(n246) );
  XOR2_X2 U214 ( .A(cont1[6]), .B(n257), .Z(n247) );
  XOR2_X2 U215 ( .A(cont1[6]), .B(add_73_carry[6]), .Z(n248) );
  AND2_X4 U216 ( .A1(cont1[3]), .A2(add_99_carry_3_), .ZN(n255) );
  AND2_X4 U217 ( .A1(cont1[4]), .A2(n255), .ZN(n256) );
  AND2_X4 U218 ( .A1(cont1[5]), .A2(add_101_carry[5]), .ZN(n257) );
  AND2_X4 U219 ( .A1(cont1[5]), .A2(n256), .ZN(n258) );
  AND2_X4 U220 ( .A1(cont1[5]), .A2(add_88_carry[5]), .ZN(n259) );
  AND2_X4 U221 ( .A1(N124), .A2(r_in[0]), .ZN(n260) );
  XOR2_X2 U222 ( .A(cont1[3]), .B(sub_97_carry[3]), .Z(n261) );
  XOR2_X2 U223 ( .A(cont1[2]), .B(sub_95_carry_2_), .Z(n262) );
  XOR2_X2 U224 ( .A(cont1[5]), .B(sub_97_carry[5]), .Z(n263) );
  XOR2_X2 U225 ( .A(cont1[2]), .B(cont1[1]), .Z(n264) );
  XOR2_X2 U226 ( .A(cont1[4]), .B(sub_95_carry_4_), .Z(n265) );
  XOR2_X2 U227 ( .A(cont1[3]), .B(add_99_carry_3_), .Z(n266) );
  XOR2_X2 U228 ( .A(cont1[3]), .B(sub_81_carry[3]), .Z(n267) );
  XOR2_X2 U229 ( .A(cont1[4]), .B(n255), .Z(n268) );
  XOR2_X2 U230 ( .A(cont1[4]), .B(n238), .Z(n269) );
  XOR2_X2 U231 ( .A(cont1[6]), .B(n258), .Z(n270) );
  XOR2_X2 U232 ( .A(cont1[5]), .B(n256), .Z(n271) );
  XOR2_X2 U233 ( .A(cont1[5]), .B(add_88_carry[5]), .Z(n272) );
  XOR2_X2 U234 ( .A(cont1[7]), .B(n236), .Z(n273) );
  XOR2_X2 U235 ( .A(cont1[7]), .B(n237), .Z(n274) );
  XOR2_X2 U236 ( .A(cont1[6]), .B(n259), .Z(n275) );
  XOR2_X2 U237 ( .A(N124), .B(r_in[0]), .Z(n276) );
  XOR2_X2 U238 ( .A(n448), .B(n442), .Z(n277) );
  XOR2_X2 U239 ( .A(n445), .B(sub_76_carry[6]), .Z(n278) );
  XOR2_X2 U240 ( .A(n450), .B(n234), .Z(n279) );
  XOR2_X2 U241 ( .A(n444), .B(n245), .Z(n280) );
  XOR2_X2 U242 ( .A(n447), .B(n242), .Z(n281) );
  XOR2_X2 U243 ( .A(n449), .B(n241), .Z(n282) );
  INV_X4 U244 ( .A(reset), .ZN(n432) );
  NAND2_X2 U245 ( .A1(n449), .A2(n450), .ZN(add_101_carry[4]) );
  XNOR2_X2 U246 ( .A(cont1[3]), .B(cont1[2]), .ZN(N179) );
  NAND2_X2 U247 ( .A1(n447), .A2(n283), .ZN(add_101_carry[5]) );
  XNOR2_X2 U248 ( .A(cont1[4]), .B(add_101_carry[4]), .ZN(N180) );
  INV_X4 U249 ( .A(add_101_carry[4]), .ZN(n283) );
  NAND2_X2 U250 ( .A1(n448), .A2(n442), .ZN(add_99_carry_2_) );
  XNOR2_X2 U251 ( .A(cont1[1]), .B(N124), .ZN(N168) );
  NAND2_X2 U252 ( .A1(n450), .A2(n234), .ZN(add_99_carry_3_) );
  XNOR2_X2 U253 ( .A(cont1[2]), .B(add_99_carry_2_), .ZN(N169) );
  NAND2_X2 U254 ( .A1(n450), .A2(n448), .ZN(sub_97_carry[3]) );
  XNOR2_X2 U255 ( .A(cont1[2]), .B(cont1[1]), .ZN(N159) );
  NAND2_X2 U256 ( .A1(n447), .A2(n293), .ZN(sub_97_carry[5]) );
  XNOR2_X2 U257 ( .A(cont1[4]), .B(sub_97_carry[4]), .ZN(N161) );
  NAND2_X2 U258 ( .A1(n445), .A2(n294), .ZN(sub_97_carry[7]) );
  XNOR2_X2 U259 ( .A(cont1[6]), .B(sub_97_carry[6]), .ZN(N163) );
  NAND2_X2 U260 ( .A1(n444), .A2(n284), .ZN(sub_97_carry[8]) );
  XNOR2_X2 U261 ( .A(cont1[7]), .B(sub_97_carry[7]), .ZN(N164) );
  INV_X4 U262 ( .A(sub_97_carry[7]), .ZN(n284) );
  XNOR2_X2 U263 ( .A(N213), .B(sub_97_carry[8]), .ZN(N165) );
  NAND2_X2 U264 ( .A1(n448), .A2(n442), .ZN(sub_95_carry_2_) );
  XNOR2_X2 U265 ( .A(cont1[1]), .B(N124), .ZN(N148) );
  NAND2_X2 U266 ( .A1(n449), .A2(n295), .ZN(sub_95_carry_4_) );
  XNOR2_X2 U267 ( .A(cont1[3]), .B(sub_95_carry_3_), .ZN(N150) );
  NAND2_X2 U268 ( .A1(n446), .A2(n296), .ZN(sub_95_carry_6_) );
  XNOR2_X2 U269 ( .A(cont1[5]), .B(sub_95_carry_5_), .ZN(N152) );
  NAND2_X2 U270 ( .A1(n445), .A2(n285), .ZN(sub_95_carry_7_) );
  XNOR2_X2 U271 ( .A(cont1[6]), .B(sub_95_carry_6_), .ZN(N153) );
  INV_X4 U272 ( .A(sub_95_carry_6_), .ZN(n285) );
  NAND2_X2 U273 ( .A1(n444), .A2(n286), .ZN(sub_95_carry_8_) );
  XNOR2_X2 U274 ( .A(cont1[7]), .B(sub_95_carry_7_), .ZN(N154) );
  INV_X4 U275 ( .A(sub_95_carry_7_), .ZN(n286) );
  XNOR2_X2 U276 ( .A(N213), .B(sub_95_carry_8_), .ZN(N155) );
  NAND2_X2 U277 ( .A1(n449), .A2(n297), .ZN(add_88_carry[4]) );
  XNOR2_X2 U278 ( .A(cont1[3]), .B(add_88_carry[3]), .ZN(N139) );
  NAND2_X2 U279 ( .A1(n447), .A2(n287), .ZN(add_88_carry[5]) );
  XNOR2_X2 U280 ( .A(cont1[4]), .B(add_88_carry[4]), .ZN(N140) );
  INV_X4 U281 ( .A(add_88_carry[4]), .ZN(n287) );
  NAND2_X2 U282 ( .A1(n450), .A2(n448), .ZN(sub_81_carry[3]) );
  XNOR2_X2 U283 ( .A(cont1[2]), .B(cont1[1]), .ZN(N126) );
  NAND2_X2 U284 ( .A1(n446), .A2(n299), .ZN(sub_81_carry[6]) );
  XNOR2_X2 U285 ( .A(cont1[5]), .B(sub_81_carry[5]), .ZN(N129) );
  NAND2_X2 U286 ( .A1(n445), .A2(n288), .ZN(sub_81_carry[7]) );
  XNOR2_X2 U287 ( .A(cont1[6]), .B(sub_81_carry[6]), .ZN(N130) );
  INV_X4 U288 ( .A(sub_81_carry[6]), .ZN(n288) );
  NAND2_X2 U289 ( .A1(n444), .A2(n289), .ZN(sub_81_carry[8]) );
  XNOR2_X2 U290 ( .A(cont1[7]), .B(sub_81_carry[7]), .ZN(N131) );
  INV_X4 U291 ( .A(sub_81_carry[7]), .ZN(n289) );
  XNOR2_X2 U292 ( .A(N213), .B(sub_81_carry[8]), .ZN(N132) );
  NAND2_X2 U293 ( .A1(N124), .A2(n251), .ZN(sub_76_carry[1]) );
  XNOR2_X2 U294 ( .A(n442), .B(r_in[0]), .ZN(N103) );
  NAND2_X2 U295 ( .A1(n447), .A2(n242), .ZN(n290) );
  XNOR2_X2 U296 ( .A(n446), .B(n290), .ZN(N220) );
  NAND2_X2 U297 ( .A1(cont1[7]), .A2(n239), .ZN(n291) );
  XNOR2_X2 U298 ( .A(N213), .B(n291), .ZN(N184) );
  NAND2_X2 U299 ( .A1(cont1[7]), .A2(n236), .ZN(n292) );
  XNOR2_X2 U300 ( .A(N213), .B(n292), .ZN(N175) );
  NAND2_X2 U301 ( .A1(cont1[3]), .A2(sub_97_carry[3]), .ZN(n293) );
  INV_X4 U302 ( .A(n293), .ZN(sub_97_carry[4]) );
  NAND2_X2 U303 ( .A1(cont1[5]), .A2(sub_97_carry[5]), .ZN(n294) );
  INV_X4 U304 ( .A(n294), .ZN(sub_97_carry[6]) );
  NAND2_X2 U305 ( .A1(cont1[2]), .A2(sub_95_carry_2_), .ZN(n295) );
  INV_X4 U306 ( .A(n295), .ZN(sub_95_carry_3_) );
  NAND2_X2 U307 ( .A1(cont1[4]), .A2(sub_95_carry_4_), .ZN(n296) );
  INV_X4 U308 ( .A(n296), .ZN(sub_95_carry_5_) );
  NAND2_X2 U309 ( .A1(cont1[2]), .A2(cont1[1]), .ZN(n297) );
  INV_X4 U310 ( .A(n297), .ZN(add_88_carry[3]) );
  NAND2_X2 U311 ( .A1(cont1[7]), .A2(n237), .ZN(n298) );
  XNOR2_X2 U312 ( .A(N213), .B(n298), .ZN(N144) );
  NAND2_X2 U313 ( .A1(cont1[4]), .A2(n238), .ZN(n299) );
  INV_X4 U314 ( .A(n299), .ZN(sub_81_carry[5]) );
  NAND2_X2 U315 ( .A1(n444), .A2(n245), .ZN(n300) );
  XNOR2_X2 U316 ( .A(n443), .B(n300), .ZN(N111) );
  NAND2_X2 U317 ( .A1(cont1[7]), .A2(n240), .ZN(n301) );
  XNOR2_X2 U318 ( .A(N213), .B(n301), .ZN(N102) );
  MUX2_X1 U319 ( .A(x_in[5]), .B(r_in[5]), .S(n302), .Z(n426) );
  MUX2_X1 U320 ( .A(x_in[4]), .B(r_in[4]), .S(n302), .Z(n427) );
  MUX2_X1 U321 ( .A(x_in[3]), .B(r_in[3]), .S(n302), .Z(n428) );
  MUX2_X1 U322 ( .A(x_in[2]), .B(r_in[2]), .S(n302), .Z(n429) );
  MUX2_X1 U323 ( .A(x_in[1]), .B(r_in[1]), .S(n302), .Z(n430) );
  MUX2_X1 U324 ( .A(x_in[0]), .B(r_in[0]), .S(n302), .Z(n431) );
  AND2_X1 U325 ( .A1(n303), .A2(n304), .ZN(n302) );
  MUX2_X1 U326 ( .A(n305), .B(N213), .S(n306), .Z(n433) );
  NAND4_X1 U327 ( .A1(n307), .A2(n308), .A3(n309), .A4(n310), .ZN(n305) );
  AOI22_X1 U328 ( .A1(N184), .A2(n311), .B1(N175), .B2(n312), .ZN(n310) );
  AOI22_X1 U329 ( .A1(N155), .A2(n313), .B1(N165), .B2(n314), .ZN(n309) );
  AOI22_X1 U330 ( .A1(N111), .A2(n315), .B1(N132), .B2(n316), .ZN(n308) );
  AOI22_X1 U331 ( .A1(N102), .A2(n317), .B1(N144), .B2(n318), .ZN(n307) );
  MUX2_X1 U332 ( .A(n319), .B(cont1[7]), .S(n306), .Z(n434) );
  NAND4_X1 U333 ( .A1(n320), .A2(n321), .A3(n322), .A4(n323), .ZN(n319) );
  AOI22_X1 U334 ( .A1(n243), .A2(n311), .B1(n273), .B2(n312), .ZN(n323) );
  AOI22_X1 U335 ( .A1(N154), .A2(n313), .B1(N164), .B2(n314), .ZN(n322) );
  AOI22_X1 U336 ( .A1(n280), .A2(n315), .B1(N131), .B2(n316), .ZN(n321) );
  AOI22_X1 U337 ( .A1(n244), .A2(n317), .B1(n274), .B2(n318), .ZN(n320) );
  MUX2_X1 U338 ( .A(n324), .B(cont1[6]), .S(n306), .Z(n435) );
  NAND4_X1 U339 ( .A1(n325), .A2(n326), .A3(n327), .A4(n328), .ZN(n324) );
  AOI222_X1 U340 ( .A1(N153), .A2(n313), .B1(n247), .B2(n311), .C1(n270), .C2(
        n312), .ZN(n328) );
  AOI22_X1 U341 ( .A1(n329), .A2(n233), .B1(N163), .B2(n314), .ZN(n327) );
  AOI22_X1 U342 ( .A1(n278), .A2(n315), .B1(N130), .B2(n316), .ZN(n326) );
  AOI22_X1 U343 ( .A1(n248), .A2(n317), .B1(n275), .B2(n318), .ZN(n325) );
  OAI21_X1 U344 ( .B1(n330), .B2(n425), .A(n331), .ZN(n436) );
  OAI21_X1 U345 ( .B1(n332), .B2(n333), .A(N124), .ZN(n331) );
  OAI21_X1 U346 ( .B1(n330), .B2(n420), .A(n334), .ZN(n437) );
  AOI22_X1 U347 ( .A1(N220), .A2(n332), .B1(n333), .B2(cont1[5]), .ZN(n334) );
  OAI21_X1 U348 ( .B1(n330), .B2(n421), .A(n335), .ZN(n438) );
  AOI22_X1 U349 ( .A1(n281), .A2(n332), .B1(n333), .B2(cont1[4]), .ZN(n335) );
  OAI21_X1 U350 ( .B1(n330), .B2(n422), .A(n336), .ZN(n439) );
  AOI22_X1 U351 ( .A1(n282), .A2(n332), .B1(n333), .B2(cont1[3]), .ZN(n336) );
  OAI21_X1 U352 ( .B1(n330), .B2(n423), .A(n337), .ZN(n440) );
  AOI22_X1 U353 ( .A1(n279), .A2(n332), .B1(n333), .B2(cont1[2]), .ZN(n337) );
  OAI21_X1 U354 ( .B1(n330), .B2(n424), .A(n338), .ZN(n441) );
  AOI22_X1 U355 ( .A1(n277), .A2(n332), .B1(n333), .B2(cont1[1]), .ZN(n338) );
  NOR2_X1 U356 ( .A1(n339), .A2(N213), .ZN(n333) );
  NOR2_X1 U357 ( .A1(n339), .A2(n443), .ZN(n332) );
  OAI22_X1 U358 ( .A1(n306), .A2(n340), .B1(n442), .B2(n341), .ZN(n232) );
  NOR2_X1 U359 ( .A1(n342), .A2(n343), .ZN(n341) );
  INV_X1 U360 ( .A(n344), .ZN(n342) );
  AOI221_X1 U361 ( .B1(n276), .B2(n317), .C1(n345), .C2(r_in[0]), .A(n346), 
        .ZN(n340) );
  INV_X1 U362 ( .A(n347), .ZN(n346) );
  AOI221_X1 U363 ( .B1(cont[0]), .B2(n348), .C1(n315), .C2(N103), .A(n349), 
        .ZN(n347) );
  INV_X1 U364 ( .A(n350), .ZN(n349) );
  OAI21_X1 U365 ( .B1(n312), .B2(n313), .A(n442), .ZN(n350) );
  OAI22_X1 U366 ( .A1(n306), .A2(n351), .B1(n448), .B2(n344), .ZN(n231) );
  NOR2_X1 U367 ( .A1(n306), .A2(n311), .ZN(n344) );
  AND4_X1 U368 ( .A1(n352), .A2(n353), .A3(n354), .A4(n355), .ZN(n351) );
  AOI22_X1 U369 ( .A1(n448), .A2(n343), .B1(N168), .B2(n312), .ZN(n355) );
  OR3_X1 U370 ( .A1(n318), .A2(n314), .A3(n316), .ZN(n343) );
  AOI22_X1 U371 ( .A1(n348), .A2(cont[1]), .B1(N148), .B2(n313), .ZN(n354) );
  AOI22_X1 U372 ( .A1(n329), .A2(cont[0]), .B1(N104), .B2(n315), .ZN(n353) );
  AOI22_X1 U373 ( .A1(N95), .A2(n317), .B1(n345), .B2(r_in[1]), .ZN(n352) );
  MUX2_X1 U374 ( .A(n356), .B(cont1[2]), .S(n306), .Z(n230) );
  NAND4_X1 U375 ( .A1(n357), .A2(n358), .A3(n359), .A4(n360), .ZN(n356) );
  AOI222_X1 U376 ( .A1(n348), .A2(cont[2]), .B1(n311), .B2(n450), .C1(N169), 
        .C2(n312), .ZN(n360) );
  AOI222_X1 U377 ( .A1(N159), .A2(n314), .B1(n262), .B2(n313), .C1(n329), .C2(
        cont[1]), .ZN(n359) );
  AOI222_X1 U378 ( .A1(N96), .A2(n317), .B1(N105), .B2(n315), .C1(N126), .C2(
        n316), .ZN(n358) );
  AOI22_X1 U379 ( .A1(n264), .A2(n318), .B1(n345), .B2(r_in[2]), .ZN(n357) );
  MUX2_X1 U380 ( .A(n361), .B(cont1[3]), .S(n306), .Z(n229) );
  NAND4_X1 U381 ( .A1(n362), .A2(n363), .A3(n364), .A4(n365), .ZN(n361) );
  AOI222_X1 U382 ( .A1(n348), .A2(cont[3]), .B1(N179), .B2(n311), .C1(n266), 
        .C2(n312), .ZN(n365) );
  AOI222_X1 U383 ( .A1(n261), .A2(n314), .B1(N150), .B2(n313), .C1(n329), .C2(
        cont[2]), .ZN(n364) );
  AOI222_X1 U384 ( .A1(N97), .A2(n317), .B1(N106), .B2(n315), .C1(n267), .C2(
        n316), .ZN(n363) );
  AOI22_X1 U385 ( .A1(N139), .A2(n318), .B1(n345), .B2(r_in[3]), .ZN(n362) );
  MUX2_X1 U386 ( .A(n366), .B(cont1[4]), .S(n306), .Z(n228) );
  NAND4_X1 U387 ( .A1(n367), .A2(n368), .A3(n369), .A4(n370), .ZN(n366) );
  AOI222_X1 U388 ( .A1(n348), .A2(cont[4]), .B1(N180), .B2(n311), .C1(n268), 
        .C2(n312), .ZN(n370) );
  AOI222_X1 U389 ( .A1(N161), .A2(n314), .B1(n265), .B2(n313), .C1(n329), .C2(
        cont[3]), .ZN(n369) );
  AOI222_X1 U390 ( .A1(N98), .A2(n317), .B1(N107), .B2(n315), .C1(n269), .C2(
        n316), .ZN(n368) );
  AOI22_X1 U391 ( .A1(N140), .A2(n318), .B1(n345), .B2(r_in[4]), .ZN(n367) );
  MUX2_X1 U392 ( .A(n371), .B(cont1[5]), .S(n306), .Z(n227) );
  AND4_X1 U393 ( .A1(n372), .A2(n373), .A3(n374), .A4(n375), .ZN(n306) );
  AOI22_X1 U394 ( .A1(n376), .A2(n443), .B1(n377), .B2(n316), .ZN(n375) );
  NOR2_X1 U395 ( .A1(n378), .A2(n379), .ZN(n376) );
  INV_X1 U396 ( .A(N245), .ZN(n373) );
  NAND4_X1 U397 ( .A1(n380), .A2(n381), .A3(n382), .A4(n383), .ZN(n371) );
  AOI222_X1 U398 ( .A1(n348), .A2(n233), .B1(n246), .B2(n311), .C1(n271), .C2(
        n312), .ZN(n383) );
  AND2_X1 U399 ( .A1(n384), .A2(n250), .ZN(n312) );
  AND2_X1 U400 ( .A1(n384), .A2(r_in[2]), .ZN(n311) );
  NOR3_X1 U401 ( .A1(n385), .A2(n386), .A3(n387), .ZN(n384) );
  NOR2_X1 U402 ( .A1(n374), .A2(r_in[0]), .ZN(n348) );
  AOI222_X1 U403 ( .A1(n263), .A2(n314), .B1(N152), .B2(n313), .C1(n329), .C2(
        cont[4]), .ZN(n382) );
  NOR2_X1 U404 ( .A1(n374), .A2(n251), .ZN(n329) );
  NOR2_X1 U405 ( .A1(n387), .A2(n388), .ZN(n313) );
  NOR2_X1 U406 ( .A1(n389), .A2(n387), .ZN(n314) );
  INV_X1 U407 ( .A(n386), .ZN(n389) );
  NOR2_X1 U408 ( .A1(n250), .A2(r_in[3]), .ZN(n386) );
  AOI222_X1 U409 ( .A1(N99), .A2(n317), .B1(N108), .B2(n315), .C1(N129), .C2(
        n316), .ZN(n381) );
  INV_X1 U410 ( .A(n390), .ZN(n316) );
  AOI22_X1 U411 ( .A1(n272), .A2(n318), .B1(n345), .B2(r_in[5]), .ZN(n380) );
  INV_X1 U412 ( .A(n391), .ZN(n226) );
  AOI22_X1 U413 ( .A1(n233), .A2(n392), .B1(n393), .B2(add_53_carry[5]), .ZN(
        n391) );
  MUX2_X1 U414 ( .A(n393), .B(n392), .S(cont[0]), .Z(n225) );
  INV_X1 U415 ( .A(n394), .ZN(n224) );
  AOI22_X1 U416 ( .A1(cont[1]), .A2(n392), .B1(n393), .B2(N70), .ZN(n394) );
  INV_X1 U417 ( .A(n395), .ZN(n223) );
  AOI22_X1 U418 ( .A1(cont[2]), .A2(n392), .B1(n393), .B2(N71), .ZN(n395) );
  INV_X1 U419 ( .A(n396), .ZN(n222) );
  AOI22_X1 U420 ( .A1(cont[3]), .A2(n392), .B1(n393), .B2(N72), .ZN(n396) );
  INV_X1 U421 ( .A(n397), .ZN(n221) );
  AOI22_X1 U422 ( .A1(cont[4]), .A2(n392), .B1(n393), .B2(N73), .ZN(n397) );
  AND4_X1 U423 ( .A1(n102), .A2(n345), .A3(n398), .A4(n399), .ZN(n393) );
  NAND3_X1 U424 ( .A1(cont[4]), .A2(cont[3]), .A3(n400), .ZN(n398) );
  NAND3_X1 U425 ( .A1(n112), .A2(n111), .A3(n113), .ZN(n400) );
  INV_X1 U426 ( .A(n399), .ZN(n392) );
  OAI21_X1 U427 ( .B1(n401), .B2(n402), .A(n304), .ZN(n399) );
  OAI21_X1 U428 ( .B1(n401), .B2(n402), .A(n387), .ZN(N245) );
  NAND3_X1 U429 ( .A1(stato[1]), .A2(stato[0]), .A3(n403), .ZN(n387) );
  NAND4_X1 U430 ( .A1(n374), .A2(n390), .A3(n372), .A4(n379), .ZN(N244) );
  NAND3_X1 U431 ( .A1(stato[0]), .A2(n404), .A3(stato[1]), .ZN(n374) );
  OR4_X1 U432 ( .A1(n318), .A2(n315), .A3(n405), .A4(n406), .ZN(N243) );
  OAI22_X1 U433 ( .A1(n390), .A2(n377), .B1(n303), .B2(stbi), .ZN(n406) );
  AND2_X1 U434 ( .A1(n443), .A2(n407), .ZN(n377) );
  OAI211_X1 U435 ( .C1(n408), .C2(n409), .A(n378), .B(n446), .ZN(n407) );
  NAND2_X1 U436 ( .A1(cont1[4]), .A2(cont1[3]), .ZN(n409) );
  AOI21_X1 U437 ( .B1(cont1[1]), .B2(N124), .A(cont1[2]), .ZN(n408) );
  AND4_X1 U438 ( .A1(n401), .A2(n345), .A3(n410), .A4(n249), .ZN(n405) );
  OAI211_X1 U439 ( .C1(r_in[2]), .C2(n411), .A(r_in[4]), .B(r_in[3]), .ZN(n410) );
  NOR2_X1 U440 ( .A1(n235), .A2(n251), .ZN(n411) );
  NOR2_X1 U441 ( .A1(n372), .A2(r_in[1]), .ZN(n315) );
  NAND4_X1 U442 ( .A1(n390), .A2(n412), .A3(n413), .A4(n414), .ZN(N242) );
  AOI221_X1 U443 ( .B1(stbi), .B2(n415), .C1(n401), .C2(n345), .A(n330), .ZN(
        n414) );
  NAND2_X1 U444 ( .A1(n304), .A2(n339), .ZN(n330) );
  NAND3_X1 U445 ( .A1(n416), .A2(n254), .A3(stato[3]), .ZN(n339) );
  NAND2_X1 U446 ( .A1(n404), .A2(n416), .ZN(n304) );
  INV_X1 U447 ( .A(n402), .ZN(n345) );
  NAND3_X1 U448 ( .A1(n404), .A2(n252), .A3(stato[1]), .ZN(n402) );
  MUX2_X1 U449 ( .A(n417), .B(n418), .S(n249), .Z(n401) );
  OR4_X1 U450 ( .A1(n388), .A2(r_in[0]), .A3(r_in[1]), .A4(r_in[4]), .ZN(n418)
         );
  INV_X1 U451 ( .A(n385), .ZN(n388) );
  NOR2_X1 U452 ( .A1(r_in[3]), .A2(r_in[2]), .ZN(n385) );
  NAND3_X1 U453 ( .A1(r_in[0]), .A2(r_in[1]), .A3(n419), .ZN(n417) );
  AND3_X1 U454 ( .A1(r_in[2]), .A2(r_in[4]), .A3(r_in[3]), .ZN(n419) );
  INV_X1 U455 ( .A(n303), .ZN(n415) );
  NAND3_X1 U456 ( .A1(n404), .A2(n253), .A3(stato[0]), .ZN(n303) );
  NOR2_X1 U457 ( .A1(stato[3]), .A2(stato[2]), .ZN(n404) );
  OAI21_X1 U458 ( .B1(n378), .B2(N213), .A(n318), .ZN(n413) );
  INV_X1 U459 ( .A(n379), .ZN(n318) );
  NAND3_X1 U460 ( .A1(stato[1]), .A2(n252), .A3(n403), .ZN(n379) );
  NOR2_X1 U461 ( .A1(cont1[6]), .A2(cont1[7]), .ZN(n378) );
  INV_X1 U462 ( .A(n317), .ZN(n412) );
  NOR2_X1 U463 ( .A1(n372), .A2(n235), .ZN(n317) );
  NAND2_X1 U464 ( .A1(n403), .A2(n416), .ZN(n372) );
  NOR2_X1 U465 ( .A1(stato[1]), .A2(stato[0]), .ZN(n416) );
  NAND3_X1 U466 ( .A1(stato[0]), .A2(n253), .A3(n403), .ZN(n390) );
  NOR2_X1 U467 ( .A1(n254), .A2(stato[3]), .ZN(n403) );

