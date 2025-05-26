/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP4
// Date      : Mon Jul  1 14:36:17 2024
/////////////////////////////////////////////////////////////


module b04 ( RESTART, AVERAGE, ENABLE, DATA_IN, DATA_OUT, RESET, CLOCK, 
        test_si, test_so, test_se );
  input [7:0] DATA_IN;
  output [7:0] DATA_OUT;
  input RESTART, AVERAGE, ENABLE, RESET, CLOCK, test_si, test_se;
  output test_so;
  wire   stato_0_, N26, N27, N28, N29, N30, N31, N40, N43, N61, N62, N63, N64,
         N65, N66, N67, N68, N83, N84, N85, N86, N87, N88, N97, N100, N118,
         N119, N120, N121, N122, N123, N124, N125, N166, N168, N170,
         dp_cluster_0_N106, dp_cluster_0_N105, dp_cluster_0_N104,
         dp_cluster_0_N103, dp_cluster_0_N102, dp_cluster_0_N101,
         dp_cluster_1_N49, dp_cluster_1_N48, dp_cluster_1_N47,
         dp_cluster_1_N46, dp_cluster_1_N45, dp_cluster_1_N44, n118, n119,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, add_77_carry_8_, add_65_carry_8_, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434;
  wire   [7:0] RMAX;
  wire   [7:0] RMIN;
  wire   [7:0] RLAST;
  wire   [7:0] REG3;
  wire   [7:0] REG4;
  wire   [7:2] dp_cluster_1_sub_70_carry;
  wire   [6:1] dp_cluster_1_sub_70_A;
  wire   [7:1] dp_cluster_1_sub_1_root_sub_70_2_carry;
  wire   [7:0] dp_cluster_1_sub_1_root_sub_70_2_A;
  wire   [7:2] dp_cluster_0_sub_82_carry;
  wire   [6:1] dp_cluster_0_sub_82_A;
  wire   [7:1] dp_cluster_0_sub_1_root_sub_82_2_carry;
  wire   [7:0] dp_cluster_0_sub_1_root_sub_82_2_A;
  wire   [6:2] add_76_carry;
  wire   [6:2] add_64_carry;

  SDFFR_X2 stato_reg_0_ ( .D(N170), .SI(n128), .SE(test_se), .CK(CLOCK), .RN(
        n291), .Q(stato_0_), .QN(n403) );
  SDFFR_X2 stato_reg_1_ ( .D(n293), .SI(n403), .SE(test_se), .CK(CLOCK), .RN(
        n290), .Q(test_so), .QN(n118) );
  SDFFR_X2 RLAST_reg_7_ ( .D(n263), .SI(n137), .SE(test_se), .CK(CLOCK), .RN(
        n291), .Q(RLAST[7]), .QN(n136) );
  SDFFR_X2 RLAST_reg_6_ ( .D(n262), .SI(RLAST[5]), .SE(test_se), .CK(CLOCK), 
        .RN(n290), .Q(RLAST[6]), .QN(n137) );
  SDFFR_X2 RLAST_reg_5_ ( .D(n261), .SI(RLAST[4]), .SE(test_se), .CK(CLOCK), 
        .RN(n290), .Q(RLAST[5]), .QN(n138) );
  SDFFR_X2 RLAST_reg_4_ ( .D(n260), .SI(RLAST[3]), .SE(test_se), .CK(CLOCK), 
        .RN(n291), .Q(RLAST[4]), .QN(n139) );
  SDFFR_X2 RLAST_reg_3_ ( .D(n259), .SI(RLAST[2]), .SE(test_se), .CK(CLOCK), 
        .RN(n290), .Q(RLAST[3]), .QN(n140) );
  SDFFR_X2 RLAST_reg_2_ ( .D(n258), .SI(RLAST[1]), .SE(test_se), .CK(CLOCK), 
        .RN(n291), .Q(RLAST[2]), .QN(n141) );
  SDFFR_X2 RLAST_reg_1_ ( .D(n257), .SI(RLAST[0]), .SE(test_se), .CK(CLOCK), 
        .RN(n290), .Q(RLAST[1]), .QN(n142) );
  SDFFR_X2 RLAST_reg_0_ ( .D(n256), .SI(n404), .SE(test_se), .CK(CLOCK), .RN(
        n290), .Q(RLAST[0]), .QN(n143) );
  SDFFR_X2 REG3_reg_7_ ( .D(n239), .SI(REG3[6]), .SE(test_se), .CK(CLOCK), 
        .RN(n291), .Q(REG3[7]), .QN(n160) );
  SDFFR_X2 REG3_reg_6_ ( .D(n238), .SI(REG3[5]), .SE(test_se), .CK(CLOCK), 
        .RN(n290), .Q(REG3[6]), .QN(n161) );
  SDFFR_X2 REG3_reg_5_ ( .D(n237), .SI(REG3[4]), .SE(test_se), .CK(CLOCK), 
        .RN(n291), .Q(REG3[5]), .QN(n162) );
  SDFFR_X2 REG3_reg_4_ ( .D(n236), .SI(REG3[3]), .SE(test_se), .CK(CLOCK), 
        .RN(n290), .Q(REG3[4]), .QN(n163) );
  SDFFR_X2 REG3_reg_3_ ( .D(n235), .SI(REG3[2]), .SE(test_se), .CK(CLOCK), 
        .RN(n290), .Q(REG3[3]), .QN(n164) );
  SDFFR_X2 REG3_reg_2_ ( .D(n234), .SI(REG3[1]), .SE(test_se), .CK(CLOCK), 
        .RN(n291), .Q(REG3[2]), .QN(n165) );
  SDFFR_X2 REG3_reg_1_ ( .D(n233), .SI(REG3[0]), .SE(test_se), .CK(CLOCK), 
        .RN(n291), .Q(REG3[1]), .QN(n166) );
  SDFFR_X2 REG3_reg_0_ ( .D(n232), .SI(n411), .SE(test_se), .CK(CLOCK), .RN(
        n290), .Q(REG3[0]), .QN(n167) );
  SDFFR_X2 REG4_reg_7_ ( .D(n337), .SI(n405), .SE(test_se), .CK(CLOCK), .RN(
        n291), .Q(REG4[7]), .QN(n404) );
  SDFFR_X2 REG4_reg_6_ ( .D(n336), .SI(n406), .SE(test_se), .CK(CLOCK), .RN(
        n290), .Q(REG4[6]), .QN(n405) );
  SDFFR_X2 REG4_reg_5_ ( .D(n335), .SI(n407), .SE(test_se), .CK(CLOCK), .RN(
        n291), .Q(REG4[5]), .QN(n406) );
  SDFFR_X2 REG4_reg_4_ ( .D(n334), .SI(n408), .SE(test_se), .CK(CLOCK), .RN(
        n290), .Q(REG4[4]), .QN(n407) );
  SDFFR_X2 REG4_reg_3_ ( .D(n333), .SI(n409), .SE(test_se), .CK(CLOCK), .RN(
        n290), .Q(REG4[3]), .QN(n408) );
  SDFFR_X2 REG4_reg_2_ ( .D(n332), .SI(n286), .SE(test_se), .CK(CLOCK), .RN(
        n291), .Q(REG4[2]), .QN(n409) );
  SDFFR_X2 REG4_reg_1_ ( .D(n331), .SI(n410), .SE(test_se), .CK(CLOCK), .RN(
        n291), .Q(REG4[1]), .QN(n286) );
  SDFFR_X2 REG4_reg_0_ ( .D(n330), .SI(REG3[7]), .SE(test_se), .CK(CLOCK), 
        .RN(n291), .Q(REG4[0]), .QN(n410) );
  SDFFR_X2 DATA_OUT_reg_7_ ( .D(n231), .SI(n428), .SE(test_se), .CK(CLOCK), 
        .RN(n290), .Q(DATA_OUT[7]), .QN(n427) );
  SDFFR_X2 DATA_OUT_reg_6_ ( .D(n230), .SI(n429), .SE(test_se), .CK(CLOCK), 
        .RN(n290), .Q(DATA_OUT[6]), .QN(n428) );
  SDFFR_X2 DATA_OUT_reg_5_ ( .D(n229), .SI(n430), .SE(test_se), .CK(CLOCK), 
        .RN(n291), .Q(DATA_OUT[5]), .QN(n429) );
  SDFFR_X2 DATA_OUT_reg_4_ ( .D(n228), .SI(n431), .SE(test_se), .CK(CLOCK), 
        .RN(n291), .Q(DATA_OUT[4]), .QN(n430) );
  SDFFR_X2 DATA_OUT_reg_3_ ( .D(n227), .SI(n432), .SE(test_se), .CK(CLOCK), 
        .RN(n291), .Q(DATA_OUT[3]), .QN(n431) );
  SDFFR_X2 DATA_OUT_reg_2_ ( .D(n226), .SI(n433), .SE(test_se), .CK(CLOCK), 
        .RN(n290), .Q(DATA_OUT[2]), .QN(n432) );
  SDFFR_X2 DATA_OUT_reg_1_ ( .D(n225), .SI(n434), .SE(test_se), .CK(CLOCK), 
        .RN(n291), .Q(DATA_OUT[1]), .QN(n433) );
  SDFFR_X2 DATA_OUT_reg_0_ ( .D(n224), .SI(test_si), .SE(test_se), .CK(CLOCK), 
        .RN(n290), .Q(DATA_OUT[0]), .QN(n434) );
  NAND3_X2 U80 ( .A1(n180), .A2(n181), .A3(n182), .ZN(n224) );
  AOI22_X2 U82 ( .A1(N26), .A2(n185), .B1(REG4[0]), .B2(n186), .ZN(n181) );
  AOI22_X2 U83 ( .A1(N83), .A2(n187), .B1(RLAST[0]), .B2(n188), .ZN(n180) );
  NAND3_X2 U84 ( .A1(n189), .A2(n190), .A3(n191), .ZN(n225) );
  AOI22_X2 U86 ( .A1(N27), .A2(n185), .B1(REG4[1]), .B2(n186), .ZN(n190) );
  AOI22_X2 U87 ( .A1(N84), .A2(n187), .B1(RLAST[1]), .B2(n188), .ZN(n189) );
  NAND3_X2 U88 ( .A1(n192), .A2(n193), .A3(n194), .ZN(n226) );
  AOI22_X2 U90 ( .A1(N28), .A2(n185), .B1(REG4[2]), .B2(n186), .ZN(n193) );
  AOI22_X2 U91 ( .A1(N85), .A2(n187), .B1(RLAST[2]), .B2(n188), .ZN(n192) );
  NAND3_X2 U92 ( .A1(n195), .A2(n196), .A3(n197), .ZN(n227) );
  AOI22_X2 U94 ( .A1(N29), .A2(n185), .B1(REG4[3]), .B2(n186), .ZN(n196) );
  AOI22_X2 U95 ( .A1(N86), .A2(n187), .B1(RLAST[3]), .B2(n188), .ZN(n195) );
  NAND3_X2 U96 ( .A1(n198), .A2(n199), .A3(n200), .ZN(n228) );
  AOI22_X2 U98 ( .A1(N30), .A2(n185), .B1(REG4[4]), .B2(n186), .ZN(n199) );
  AOI22_X2 U99 ( .A1(N87), .A2(n187), .B1(RLAST[4]), .B2(n188), .ZN(n198) );
  NAND3_X2 U100 ( .A1(n201), .A2(n202), .A3(n203), .ZN(n229) );
  AOI22_X2 U102 ( .A1(N31), .A2(n185), .B1(REG4[5]), .B2(n186), .ZN(n202) );
  AND3_X2 U103 ( .A1(n351), .A2(n204), .A3(RESTART), .ZN(n185) );
  AOI22_X2 U104 ( .A1(N88), .A2(n187), .B1(RLAST[5]), .B2(n188), .ZN(n201) );
  NOR3_X2 U105 ( .A1(n205), .A2(AVERAGE), .A3(N97), .ZN(n187) );
  NAND2_X2 U106 ( .A1(n206), .A2(n207), .ZN(n230) );
  AOI22_X2 U108 ( .A1(N124), .A2(n184), .B1(DATA_OUT[6]), .B2(n287), .ZN(n206)
         );
  NAND2_X2 U109 ( .A1(n208), .A2(n209), .ZN(n231) );
  NOR3_X2 U111 ( .A1(ENABLE), .A2(RESTART), .A3(n292), .ZN(n188) );
  NOR2_X2 U112 ( .A1(n295), .A2(n205), .ZN(n186) );
  NOR3_X2 U113 ( .A1(n292), .A2(n351), .A3(n294), .ZN(n183) );
  AOI22_X2 U114 ( .A1(N125), .A2(n184), .B1(DATA_OUT[7]), .B2(n287), .ZN(n208)
         );
  NOR3_X2 U115 ( .A1(AVERAGE), .A2(n297), .A3(n205), .ZN(n184) );
  NAND3_X2 U116 ( .A1(n204), .A2(n294), .A3(ENABLE), .ZN(n205) );
  AOI22_X2 U117 ( .A1(n287), .A2(REG4[0]), .B1(n204), .B2(REG3[0]), .ZN(n210)
         );
  AOI22_X2 U118 ( .A1(n287), .A2(REG4[1]), .B1(n204), .B2(REG3[1]), .ZN(n211)
         );
  AOI22_X2 U119 ( .A1(n287), .A2(REG4[2]), .B1(n204), .B2(REG3[2]), .ZN(n212)
         );
  AOI22_X2 U120 ( .A1(n287), .A2(REG4[3]), .B1(n204), .B2(REG3[3]), .ZN(n213)
         );
  AOI22_X2 U121 ( .A1(n287), .A2(REG4[4]), .B1(n204), .B2(REG3[4]), .ZN(n214)
         );
  AOI22_X2 U122 ( .A1(n287), .A2(REG4[5]), .B1(n204), .B2(REG3[5]), .ZN(n215)
         );
  AOI22_X2 U123 ( .A1(n287), .A2(REG4[6]), .B1(n204), .B2(REG3[6]), .ZN(n216)
         );
  AOI22_X2 U124 ( .A1(n287), .A2(REG4[7]), .B1(n204), .B2(REG3[7]), .ZN(n217)
         );
  OAI22_X2 U125 ( .A1(n293), .A2(n167), .B1(n292), .B2(n159), .ZN(n232) );
  OAI22_X2 U126 ( .A1(n293), .A2(n166), .B1(n292), .B2(n158), .ZN(n233) );
  OAI22_X2 U127 ( .A1(n293), .A2(n165), .B1(n292), .B2(n157), .ZN(n234) );
  OAI22_X2 U128 ( .A1(n293), .A2(n164), .B1(n292), .B2(n156), .ZN(n235) );
  OAI22_X2 U129 ( .A1(n293), .A2(n163), .B1(n292), .B2(n155), .ZN(n236) );
  OAI22_X2 U130 ( .A1(n293), .A2(n162), .B1(n292), .B2(n154), .ZN(n237) );
  OAI22_X2 U131 ( .A1(n293), .A2(n161), .B1(n292), .B2(n153), .ZN(n238) );
  OAI22_X2 U132 ( .A1(n293), .A2(n160), .B1(n292), .B2(n152), .ZN(n239) );
  OAI22_X2 U133 ( .A1(n293), .A2(n159), .B1(n292), .B2(n151), .ZN(n240) );
  OAI22_X2 U134 ( .A1(n293), .A2(n158), .B1(n292), .B2(n150), .ZN(n241) );
  OAI22_X2 U135 ( .A1(n293), .A2(n157), .B1(n292), .B2(n149), .ZN(n242) );
  OAI22_X2 U136 ( .A1(n293), .A2(n156), .B1(n292), .B2(n148), .ZN(n243) );
  OAI22_X2 U137 ( .A1(n293), .A2(n155), .B1(n292), .B2(n147), .ZN(n244) );
  OAI22_X2 U138 ( .A1(n293), .A2(n154), .B1(n292), .B2(n146), .ZN(n245) );
  OAI22_X2 U139 ( .A1(n293), .A2(n153), .B1(n292), .B2(n145), .ZN(n246) );
  OAI22_X2 U140 ( .A1(n293), .A2(n152), .B1(n292), .B2(n144), .ZN(n247) );
  OAI22_X2 U141 ( .A1(n293), .A2(n151), .B1(n292), .B2(n329), .ZN(n248) );
  OAI22_X2 U142 ( .A1(n293), .A2(n150), .B1(n292), .B2(n326), .ZN(n249) );
  OAI22_X2 U143 ( .A1(n293), .A2(n149), .B1(n292), .B2(n322), .ZN(n250) );
  OAI22_X2 U144 ( .A1(n293), .A2(n148), .B1(n292), .B2(n318), .ZN(n251) );
  OAI22_X2 U145 ( .A1(n293), .A2(n147), .B1(n292), .B2(n315), .ZN(n252) );
  OAI22_X2 U146 ( .A1(n293), .A2(n146), .B1(n292), .B2(n310), .ZN(n253) );
  OAI22_X2 U147 ( .A1(n293), .A2(n145), .B1(n292), .B2(n307), .ZN(n254) );
  OAI22_X2 U148 ( .A1(n293), .A2(n144), .B1(n292), .B2(n301), .ZN(n255) );
  OAI22_X2 U149 ( .A1(n143), .A2(n218), .B1(n329), .B2(n219), .ZN(n256) );
  OAI22_X2 U150 ( .A1(n142), .A2(n218), .B1(n326), .B2(n219), .ZN(n257) );
  OAI22_X2 U151 ( .A1(n141), .A2(n218), .B1(n322), .B2(n219), .ZN(n258) );
  OAI22_X2 U152 ( .A1(n140), .A2(n218), .B1(n318), .B2(n219), .ZN(n259) );
  OAI22_X2 U153 ( .A1(n139), .A2(n218), .B1(n315), .B2(n219), .ZN(n260) );
  OAI22_X2 U154 ( .A1(n138), .A2(n218), .B1(n310), .B2(n219), .ZN(n261) );
  OAI22_X2 U155 ( .A1(n137), .A2(n218), .B1(n307), .B2(n219), .ZN(n262) );
  OAI22_X2 U156 ( .A1(n136), .A2(n218), .B1(n301), .B2(n219), .ZN(n263) );
  NAND2_X2 U157 ( .A1(n204), .A2(n218), .ZN(n219) );
  OAI22_X2 U159 ( .A1(n298), .A2(n326), .B1(n221), .B2(n134), .ZN(n264) );
  OAI22_X2 U160 ( .A1(n298), .A2(n322), .B1(n221), .B2(n133), .ZN(n265) );
  OAI22_X2 U161 ( .A1(n298), .A2(n318), .B1(n221), .B2(n132), .ZN(n266) );
  OAI22_X2 U162 ( .A1(n298), .A2(n315), .B1(n221), .B2(n131), .ZN(n267) );
  OAI22_X2 U163 ( .A1(n298), .A2(n310), .B1(n221), .B2(n130), .ZN(n268) );
  OAI22_X2 U164 ( .A1(n298), .A2(n307), .B1(n221), .B2(n129), .ZN(n269) );
  OAI22_X2 U165 ( .A1(n298), .A2(n301), .B1(n221), .B2(n128), .ZN(n270) );
  OAI22_X2 U166 ( .A1(n298), .A2(n329), .B1(n221), .B2(n135), .ZN(n271) );
  NAND3_X2 U168 ( .A1(n204), .A2(n300), .A3(N168), .ZN(n222) );
  OAI22_X2 U169 ( .A1(n299), .A2(n301), .B1(n223), .B2(n119), .ZN(n272) );
  OAI22_X2 U170 ( .A1(n299), .A2(n307), .B1(n223), .B2(n121), .ZN(n273) );
  OAI22_X2 U171 ( .A1(n299), .A2(n310), .B1(n223), .B2(n122), .ZN(n274) );
  OAI22_X2 U172 ( .A1(n299), .A2(n315), .B1(n223), .B2(n123), .ZN(n275) );
  OAI22_X2 U173 ( .A1(n299), .A2(n318), .B1(n223), .B2(n124), .ZN(n276) );
  OAI22_X2 U174 ( .A1(n299), .A2(n322), .B1(n223), .B2(n125), .ZN(n277) );
  OAI22_X2 U175 ( .A1(n299), .A2(n326), .B1(n223), .B2(n126), .ZN(n278) );
  OAI22_X2 U176 ( .A1(n299), .A2(n329), .B1(n223), .B2(n127), .ZN(n279) );
  NAND2_X2 U180 ( .A1(stato_0_), .A2(n118), .ZN(n220) );
  NOR2_X2 U182 ( .A1(test_so), .A2(stato_0_), .ZN(N170) );
  FA_X1 dp_cluster_1_sub_70_U2_1 ( .A(1'b0), .B(n350), .CI(n289), .CO(
        dp_cluster_1_sub_70_carry[2]), .S(dp_cluster_1_N44) );
  FA_X1 dp_cluster_1_sub_70_U2_2 ( .A(1'b0), .B(n348), .CI(
        dp_cluster_1_sub_70_carry[2]), .CO(dp_cluster_1_sub_70_carry[3]), .S(
        dp_cluster_1_N45) );
  FA_X1 dp_cluster_1_sub_70_U2_3 ( .A(1'b0), .B(n346), .CI(
        dp_cluster_1_sub_70_carry[3]), .CO(dp_cluster_1_sub_70_carry[4]), .S(
        dp_cluster_1_N46) );
  FA_X1 dp_cluster_1_sub_70_U2_4 ( .A(1'b0), .B(n344), .CI(
        dp_cluster_1_sub_70_carry[4]), .CO(dp_cluster_1_sub_70_carry[5]), .S(
        dp_cluster_1_N47) );
  FA_X1 dp_cluster_1_sub_70_U2_5 ( .A(1'b0), .B(n342), .CI(
        dp_cluster_1_sub_70_carry[5]), .CO(dp_cluster_1_sub_70_carry[6]), .S(
        dp_cluster_1_N48) );
  FA_X1 dp_cluster_1_sub_70_U2_6 ( .A(1'b0), .B(n340), .CI(
        dp_cluster_1_sub_70_carry[6]), .CO(dp_cluster_1_sub_70_carry[7]), .S(
        dp_cluster_1_N49) );
  FA_X1 dp_cluster_1_sub_1_root_sub_70_2_U2_0 ( .A(1'b0), .B(n349), .CI(n283), 
        .CO(dp_cluster_1_sub_1_root_sub_70_2_carry[1]), .S(N61) );
  FA_X1 dp_cluster_1_sub_1_root_sub_70_2_U2_1 ( .A(1'b0), .B(n347), .CI(
        dp_cluster_1_sub_1_root_sub_70_2_carry[1]), .CO(
        dp_cluster_1_sub_1_root_sub_70_2_carry[2]), .S(N62) );
  FA_X1 dp_cluster_1_sub_1_root_sub_70_2_U2_2 ( .A(1'b0), .B(n345), .CI(
        dp_cluster_1_sub_1_root_sub_70_2_carry[2]), .CO(
        dp_cluster_1_sub_1_root_sub_70_2_carry[3]), .S(N63) );
  FA_X1 dp_cluster_1_sub_1_root_sub_70_2_U2_3 ( .A(1'b0), .B(n343), .CI(
        dp_cluster_1_sub_1_root_sub_70_2_carry[3]), .CO(
        dp_cluster_1_sub_1_root_sub_70_2_carry[4]), .S(N64) );
  FA_X1 dp_cluster_1_sub_1_root_sub_70_2_U2_4 ( .A(1'b0), .B(n341), .CI(
        dp_cluster_1_sub_1_root_sub_70_2_carry[4]), .CO(
        dp_cluster_1_sub_1_root_sub_70_2_carry[5]), .S(N65) );
  FA_X1 dp_cluster_1_sub_1_root_sub_70_2_U2_5 ( .A(1'b0), .B(n339), .CI(
        dp_cluster_1_sub_1_root_sub_70_2_carry[5]), .CO(
        dp_cluster_1_sub_1_root_sub_70_2_carry[6]), .S(N66) );
  FA_X1 dp_cluster_1_sub_1_root_sub_70_2_U2_6 ( .A(1'b0), .B(
        dp_cluster_1_sub_70_carry[7]), .CI(
        dp_cluster_1_sub_1_root_sub_70_2_carry[6]), .CO(
        dp_cluster_1_sub_1_root_sub_70_2_carry[7]), .S(N67) );
  FA_X1 dp_cluster_1_sub_1_root_sub_70_2_U2_7 ( .A(1'b0), .B(
        dp_cluster_1_sub_70_carry[7]), .CI(
        dp_cluster_1_sub_1_root_sub_70_2_carry[7]), .S(N68) );
  FA_X1 dp_cluster_0_sub_82_U2_1 ( .A(1'b0), .B(n324), .CI(n288), .CO(
        dp_cluster_0_sub_82_carry[2]), .S(dp_cluster_0_N101) );
  FA_X1 dp_cluster_0_sub_82_U2_2 ( .A(1'b0), .B(n320), .CI(
        dp_cluster_0_sub_82_carry[2]), .CO(dp_cluster_0_sub_82_carry[3]), .S(
        dp_cluster_0_N102) );
  FA_X1 dp_cluster_0_sub_82_U2_3 ( .A(1'b0), .B(n317), .CI(
        dp_cluster_0_sub_82_carry[3]), .CO(dp_cluster_0_sub_82_carry[4]), .S(
        dp_cluster_0_N103) );
  FA_X1 dp_cluster_0_sub_82_U2_4 ( .A(1'b0), .B(n312), .CI(
        dp_cluster_0_sub_82_carry[4]), .CO(dp_cluster_0_sub_82_carry[5]), .S(
        dp_cluster_0_N104) );
  FA_X1 dp_cluster_0_sub_82_U2_5 ( .A(1'b0), .B(n309), .CI(
        dp_cluster_0_sub_82_carry[5]), .CO(dp_cluster_0_sub_82_carry[6]), .S(
        dp_cluster_0_N105) );
  FA_X1 dp_cluster_0_sub_82_U2_6 ( .A(1'b0), .B(n304), .CI(
        dp_cluster_0_sub_82_carry[6]), .CO(dp_cluster_0_sub_82_carry[7]), .S(
        dp_cluster_0_N106) );
  FA_X1 dp_cluster_0_sub_1_root_sub_82_2_U2_0 ( .A(1'b0), .B(n323), .CI(n284), 
        .CO(dp_cluster_0_sub_1_root_sub_82_2_carry[1]), .S(N118) );
  FA_X1 dp_cluster_0_sub_1_root_sub_82_2_U2_1 ( .A(1'b0), .B(n319), .CI(
        dp_cluster_0_sub_1_root_sub_82_2_carry[1]), .CO(
        dp_cluster_0_sub_1_root_sub_82_2_carry[2]), .S(N119) );
  FA_X1 dp_cluster_0_sub_1_root_sub_82_2_U2_2 ( .A(1'b0), .B(n316), .CI(
        dp_cluster_0_sub_1_root_sub_82_2_carry[2]), .CO(
        dp_cluster_0_sub_1_root_sub_82_2_carry[3]), .S(N120) );
  FA_X1 dp_cluster_0_sub_1_root_sub_82_2_U2_3 ( .A(1'b0), .B(n311), .CI(
        dp_cluster_0_sub_1_root_sub_82_2_carry[3]), .CO(
        dp_cluster_0_sub_1_root_sub_82_2_carry[4]), .S(N121) );
  FA_X1 dp_cluster_0_sub_1_root_sub_82_2_U2_4 ( .A(1'b0), .B(n308), .CI(
        dp_cluster_0_sub_1_root_sub_82_2_carry[4]), .CO(
        dp_cluster_0_sub_1_root_sub_82_2_carry[5]), .S(N122) );
  FA_X1 dp_cluster_0_sub_1_root_sub_82_2_U2_5 ( .A(1'b0), .B(n303), .CI(
        dp_cluster_0_sub_1_root_sub_82_2_carry[5]), .CO(
        dp_cluster_0_sub_1_root_sub_82_2_carry[6]), .S(N123) );
  FA_X1 dp_cluster_0_sub_1_root_sub_82_2_U2_6 ( .A(1'b0), .B(
        dp_cluster_0_sub_82_carry[7]), .CI(
        dp_cluster_0_sub_1_root_sub_82_2_carry[6]), .CO(
        dp_cluster_0_sub_1_root_sub_82_2_carry[7]), .S(N124) );
  FA_X1 dp_cluster_0_sub_1_root_sub_82_2_U2_7 ( .A(1'b0), .B(
        dp_cluster_0_sub_82_carry[7]), .CI(
        dp_cluster_0_sub_1_root_sub_82_2_carry[7]), .S(N125) );
  FA_X1 add_77_U1_8 ( .A(DATA_IN[7]), .B(REG4[7]), .CI(add_77_carry_8_), .S(
        N97) );
  FA_X1 add_76_U1_1 ( .A(DATA_IN[1]), .B(REG4[1]), .CI(n285), .CO(
        add_76_carry[2]), .S(N83) );
  FA_X1 add_76_U1_2 ( .A(DATA_IN[2]), .B(REG4[2]), .CI(add_76_carry[2]), .CO(
        add_76_carry[3]), .S(N84) );
  FA_X1 add_76_U1_3 ( .A(DATA_IN[3]), .B(REG4[3]), .CI(add_76_carry[3]), .CO(
        add_76_carry[4]), .S(N85) );
  FA_X1 add_76_U1_4 ( .A(DATA_IN[4]), .B(REG4[4]), .CI(add_76_carry[4]), .CO(
        add_76_carry[5]), .S(N86) );
  FA_X1 add_76_U1_5 ( .A(DATA_IN[5]), .B(REG4[5]), .CI(add_76_carry[5]), .CO(
        add_76_carry[6]), .S(N87) );
  FA_X1 add_76_U1_6 ( .A(DATA_IN[6]), .B(REG4[6]), .CI(add_76_carry[6]), .S(
        N88) );
  FA_X1 add_65_U1_8 ( .A(RMAX[7]), .B(RMIN[7]), .CI(add_65_carry_8_), .S(N40)
         );
  FA_X1 add_64_U1_1 ( .A(RMAX[1]), .B(RMIN[1]), .CI(n282), .CO(add_64_carry[2]), .S(N26) );
  FA_X1 add_64_U1_2 ( .A(RMAX[2]), .B(RMIN[2]), .CI(add_64_carry[2]), .CO(
        add_64_carry[3]), .S(N27) );
  FA_X1 add_64_U1_3 ( .A(RMAX[3]), .B(RMIN[3]), .CI(add_64_carry[3]), .CO(
        add_64_carry[4]), .S(N28) );
  FA_X1 add_64_U1_4 ( .A(RMAX[4]), .B(RMIN[4]), .CI(add_64_carry[4]), .CO(
        add_64_carry[5]), .S(N29) );
  FA_X1 add_64_U1_5 ( .A(RMAX[5]), .B(RMIN[5]), .CI(add_64_carry[5]), .CO(
        add_64_carry[6]), .S(N30) );
  FA_X1 add_64_U1_6 ( .A(RMAX[6]), .B(RMIN[6]), .CI(add_64_carry[6]), .S(N31)
         );
  SDFFR_X2 RMAX_reg_0_ ( .D(n279), .SI(n136), .SE(test_se), .CK(CLOCK), .RN(
        n290), .Q(RMAX[0]), .QN(n127) );
  SDFFR_X2 RMAX_reg_7_ ( .D(n272), .SI(n121), .SE(test_se), .CK(CLOCK), .RN(
        n290), .Q(RMAX[7]), .QN(n119) );
  SDFFR_X2 RMAX_reg_6_ ( .D(n273), .SI(n122), .SE(test_se), .CK(CLOCK), .RN(
        n290), .Q(RMAX[6]), .QN(n121) );
  SDFFR_X2 RMAX_reg_5_ ( .D(n274), .SI(n123), .SE(test_se), .CK(CLOCK), .RN(
        n290), .Q(RMAX[5]), .QN(n122) );
  SDFFR_X2 RMAX_reg_4_ ( .D(n275), .SI(n124), .SE(test_se), .CK(CLOCK), .RN(
        n290), .Q(RMAX[4]), .QN(n123) );
  SDFFR_X2 RMAX_reg_3_ ( .D(n276), .SI(n125), .SE(test_se), .CK(CLOCK), .RN(
        n290), .Q(RMAX[3]), .QN(n124) );
  SDFFR_X2 RMAX_reg_2_ ( .D(n277), .SI(n126), .SE(test_se), .CK(CLOCK), .RN(
        n290), .Q(RMAX[2]), .QN(n125) );
  SDFFR_X2 RMAX_reg_1_ ( .D(n278), .SI(n127), .SE(test_se), .CK(CLOCK), .RN(
        n290), .Q(RMAX[1]), .QN(n126) );
  SDFFR_X2 RMIN_reg_0_ ( .D(n271), .SI(RMAX[7]), .SE(test_se), .CK(CLOCK), 
        .RN(n290), .Q(RMIN[0]), .QN(n135) );
  SDFFR_X2 RMIN_reg_1_ ( .D(n264), .SI(n135), .SE(test_se), .CK(CLOCK), .RN(
        n290), .Q(RMIN[1]), .QN(n134) );
  SDFFR_X2 RMIN_reg_2_ ( .D(n265), .SI(n134), .SE(test_se), .CK(CLOCK), .RN(
        n290), .Q(RMIN[2]), .QN(n133) );
  SDFFR_X2 RMIN_reg_3_ ( .D(n266), .SI(n133), .SE(test_se), .CK(CLOCK), .RN(
        n290), .Q(RMIN[3]), .QN(n132) );
  SDFFR_X2 RMIN_reg_4_ ( .D(n267), .SI(n132), .SE(test_se), .CK(CLOCK), .RN(
        n291), .Q(RMIN[4]), .QN(n131) );
  SDFFR_X2 RMIN_reg_5_ ( .D(n268), .SI(n131), .SE(test_se), .CK(CLOCK), .RN(
        n291), .Q(RMIN[5]), .QN(n130) );
  SDFFR_X2 RMIN_reg_6_ ( .D(n269), .SI(n130), .SE(test_se), .CK(CLOCK), .RN(
        n291), .Q(RMIN[6]), .QN(n129) );
  SDFFR_X2 RMIN_reg_7_ ( .D(n270), .SI(n129), .SE(test_se), .CK(CLOCK), .RN(
        n291), .Q(RMIN[7]), .QN(n128) );
  SDFFR_X2 REG1_reg_7_ ( .D(n255), .SI(n420), .SE(test_se), .CK(CLOCK), .RN(
        n291), .Q(n419), .QN(n144) );
  SDFFR_X2 REG1_reg_6_ ( .D(n254), .SI(n421), .SE(test_se), .CK(CLOCK), .RN(
        n291), .Q(n420), .QN(n145) );
  SDFFR_X2 REG1_reg_5_ ( .D(n253), .SI(n422), .SE(test_se), .CK(CLOCK), .RN(
        n291), .Q(n421), .QN(n146) );
  SDFFR_X2 REG1_reg_4_ ( .D(n252), .SI(n423), .SE(test_se), .CK(CLOCK), .RN(
        n291), .Q(n422), .QN(n147) );
  SDFFR_X2 REG1_reg_3_ ( .D(n251), .SI(n424), .SE(test_se), .CK(CLOCK), .RN(
        n291), .Q(n423), .QN(n148) );
  SDFFR_X2 REG1_reg_2_ ( .D(n250), .SI(n425), .SE(test_se), .CK(CLOCK), .RN(
        n291), .Q(n424), .QN(n149) );
  SDFFR_X2 REG1_reg_1_ ( .D(n249), .SI(n426), .SE(test_se), .CK(CLOCK), .RN(
        n291), .Q(n425), .QN(n150) );
  SDFFR_X2 REG1_reg_0_ ( .D(n248), .SI(n427), .SE(test_se), .CK(CLOCK), .RN(
        n291), .Q(n426), .QN(n151) );
  SDFFR_X2 REG2_reg_7_ ( .D(n247), .SI(n412), .SE(test_se), .CK(CLOCK), .RN(
        n290), .Q(n411), .QN(n152) );
  SDFFR_X2 REG2_reg_6_ ( .D(n246), .SI(n413), .SE(test_se), .CK(CLOCK), .RN(
        n291), .Q(n412), .QN(n153) );
  SDFFR_X2 REG2_reg_5_ ( .D(n245), .SI(n414), .SE(test_se), .CK(CLOCK), .RN(
        n290), .Q(n413), .QN(n154) );
  SDFFR_X2 REG2_reg_4_ ( .D(n244), .SI(n415), .SE(test_se), .CK(CLOCK), .RN(
        n291), .Q(n414), .QN(n155) );
  SDFFR_X2 REG2_reg_3_ ( .D(n243), .SI(n416), .SE(test_se), .CK(CLOCK), .RN(
        n291), .Q(n415), .QN(n156) );
  SDFFR_X2 REG2_reg_2_ ( .D(n242), .SI(n417), .SE(test_se), .CK(CLOCK), .RN(
        n290), .Q(n416), .QN(n157) );
  SDFFR_X2 REG2_reg_1_ ( .D(n241), .SI(n418), .SE(test_se), .CK(CLOCK), .RN(
        n291), .Q(n417), .QN(n158) );
  SDFFR_X2 REG2_reg_0_ ( .D(n240), .SI(n419), .SE(test_se), .CK(CLOCK), .RN(
        n290), .Q(n418), .QN(n159) );
  AND2_X4 U213 ( .A1(RMIN[0]), .A2(RMAX[0]), .ZN(n282) );
  NAND2_X2 U214 ( .A1(n338), .A2(N43), .ZN(n283) );
  NAND2_X2 U215 ( .A1(n302), .A2(N100), .ZN(n284) );
  AND2_X4 U216 ( .A1(REG4[0]), .A2(DATA_IN[0]), .ZN(n285) );
  INV_X4 U217 ( .A(n204), .ZN(n292) );
  INV_X4 U218 ( .A(n287), .ZN(n293) );
  INV_X4 U219 ( .A(RESET), .ZN(n291) );
  INV_X4 U220 ( .A(RESET), .ZN(n290) );
  OAI21_X2 U221 ( .B1(n292), .B2(n300), .A(n220), .ZN(n223) );
  AND2_X2 U222 ( .A1(n292), .A2(n220), .ZN(n287) );
  AOI222_X1 U223 ( .A1(N68), .A2(n183), .B1(REG4[7]), .B2(n186), .C1(RLAST[7]), 
        .C2(n188), .ZN(n209) );
  AOI222_X1 U224 ( .A1(N67), .A2(n183), .B1(REG4[6]), .B2(n186), .C1(RLAST[6]), 
        .C2(n188), .ZN(n207) );
  AOI222_X1 U225 ( .A1(DATA_OUT[5]), .A2(n287), .B1(N66), .B2(n183), .C1(N123), 
        .C2(n184), .ZN(n203) );
  AOI222_X1 U226 ( .A1(DATA_OUT[4]), .A2(n287), .B1(N65), .B2(n183), .C1(N122), 
        .C2(n184), .ZN(n200) );
  AOI222_X1 U227 ( .A1(DATA_OUT[3]), .A2(n287), .B1(N64), .B2(n183), .C1(N121), 
        .C2(n184), .ZN(n197) );
  AOI222_X1 U228 ( .A1(DATA_OUT[2]), .A2(n287), .B1(N63), .B2(n183), .C1(N120), 
        .C2(n184), .ZN(n194) );
  AOI222_X1 U229 ( .A1(DATA_OUT[1]), .A2(n287), .B1(N62), .B2(n183), .C1(N119), 
        .C2(n184), .ZN(n191) );
  AOI222_X1 U230 ( .A1(DATA_OUT[0]), .A2(n287), .B1(N61), .B2(n183), .C1(N118), 
        .C2(n184), .ZN(n182) );
  AOI21_X2 U231 ( .B1(n368), .B2(RMAX[6]), .A(n353), .ZN(n370) );
  OAI21_X2 U232 ( .B1(RMAX[6]), .B2(n368), .A(RMIN[6]), .ZN(n367) );
  OAI21_X2 U233 ( .B1(n366), .B2(n122), .A(n365), .ZN(n368) );
  OAI211_X2 U234 ( .C1(RMAX[1]), .C2(RMIN[1]), .A(RMAX[0]), .B(RMIN[0]), .ZN(
        n358) );
  OAI21_X2 U235 ( .B1(n357), .B2(n125), .A(n360), .ZN(n361) );
  OAI21_X2 U236 ( .B1(RMAX[2]), .B2(n359), .A(RMIN[2]), .ZN(n360) );
  OAI21_X2 U237 ( .B1(n126), .B2(n134), .A(n358), .ZN(n359) );
  OAI21_X2 U238 ( .B1(RMAX[3]), .B2(n361), .A(RMIN[3]), .ZN(n362) );
  OAI21_X2 U239 ( .B1(RMAX[5]), .B2(n354), .A(RMIN[5]), .ZN(n365) );
  AOI21_X2 U240 ( .B1(n364), .B2(RMAX[4]), .A(n355), .ZN(n366) );
  OAI21_X2 U241 ( .B1(RMAX[4]), .B2(n364), .A(RMIN[4]), .ZN(n363) );
  OAI21_X2 U242 ( .B1(n356), .B2(n124), .A(n362), .ZN(n364) );
  OAI21_X2 U243 ( .B1(n370), .B2(n119), .A(n369), .ZN(add_65_carry_8_) );
  OAI21_X2 U244 ( .B1(RMAX[7]), .B2(n352), .A(RMIN[7]), .ZN(n369) );
  OAI211_X2 U245 ( .C1(DATA_IN[1]), .C2(REG4[1]), .A(DATA_IN[0]), .B(REG4[0]), 
        .ZN(n371) );
  OAI21_X2 U246 ( .B1(n383), .B2(n301), .A(n382), .ZN(add_77_carry_8_) );
  OAI21_X2 U247 ( .B1(DATA_IN[7]), .B2(n305), .A(REG4[7]), .ZN(n382) );
  OAI21_X2 U248 ( .B1(n325), .B2(n322), .A(n373), .ZN(n374) );
  OAI21_X2 U249 ( .B1(DATA_IN[2]), .B2(n372), .A(REG4[2]), .ZN(n373) );
  OAI21_X2 U250 ( .B1(n326), .B2(n286), .A(n371), .ZN(n372) );
  OAI21_X2 U251 ( .B1(DATA_IN[3]), .B2(n374), .A(REG4[3]), .ZN(n375) );
  OAI21_X2 U252 ( .B1(DATA_IN[5]), .B2(n313), .A(REG4[5]), .ZN(n378) );
  AOI21_X2 U253 ( .B1(n377), .B2(DATA_IN[4]), .A(n314), .ZN(n379) );
  OAI21_X2 U254 ( .B1(DATA_IN[4]), .B2(n377), .A(REG4[4]), .ZN(n376) );
  OAI21_X2 U255 ( .B1(n321), .B2(n318), .A(n375), .ZN(n377) );
  AOI21_X2 U256 ( .B1(n381), .B2(DATA_IN[6]), .A(n306), .ZN(n383) );
  OAI21_X2 U257 ( .B1(DATA_IN[6]), .B2(n381), .A(REG4[6]), .ZN(n380) );
  OAI21_X2 U258 ( .B1(n379), .B2(n310), .A(n378), .ZN(n381) );
  NAND2_X2 U259 ( .A1(n220), .A2(n222), .ZN(n221) );
  OAI21_X2 U260 ( .B1(RMIN[7]), .B2(n301), .A(n401), .ZN(N168) );
  AOI21_X2 U261 ( .B1(n393), .B2(n326), .A(RMIN[1]), .ZN(n394) );
  AOI21_X2 U262 ( .B1(n384), .B2(n126), .A(DATA_IN[1]), .ZN(n385) );
  OAI21_X2 U263 ( .B1(DATA_IN[7]), .B2(n119), .A(n392), .ZN(N166) );
  NOR2_X2 U264 ( .A1(n118), .A2(stato_0_), .ZN(n204) );
  OAI21_X2 U265 ( .B1(n292), .B2(n296), .A(n220), .ZN(n218) );
  XNOR2_X2 U266 ( .A(REG4[0]), .B(DATA_IN[0]), .ZN(n288) );
  INV_X4 U267 ( .A(n288), .ZN(N100) );
  XNOR2_X2 U268 ( .A(RMIN[0]), .B(RMAX[0]), .ZN(n289) );
  INV_X4 U269 ( .A(n289), .ZN(N43) );
  NOR2_X2 U270 ( .A1(RMAX[6]), .A2(n307), .ZN(n391) );
  NOR2_X2 U271 ( .A1(n329), .A2(RMAX[0]), .ZN(n384) );
  AOI221_X2 U272 ( .B1(RMAX[2]), .B2(n322), .C1(RMAX[1]), .C2(n327), .A(n385), 
        .ZN(n386) );
  AOI221_X2 U273 ( .B1(DATA_IN[3]), .B2(n124), .C1(DATA_IN[2]), .C2(n125), .A(
        n386), .ZN(n387) );
  AOI221_X2 U274 ( .B1(RMAX[4]), .B2(n315), .C1(RMAX[3]), .C2(n318), .A(n387), 
        .ZN(n388) );
  AOI221_X2 U275 ( .B1(DATA_IN[5]), .B2(n122), .C1(DATA_IN[4]), .C2(n123), .A(
        n388), .ZN(n389) );
  AOI221_X2 U276 ( .B1(RMAX[6]), .B2(n307), .C1(RMAX[5]), .C2(n310), .A(n389), 
        .ZN(n390) );
  OAI22_X2 U277 ( .A1(n391), .A2(n390), .B1(RMAX[7]), .B2(n301), .ZN(n392) );
  NOR2_X2 U278 ( .A1(DATA_IN[6]), .A2(n129), .ZN(n400) );
  NOR2_X2 U279 ( .A1(n135), .A2(DATA_IN[0]), .ZN(n393) );
  AOI221_X2 U280 ( .B1(DATA_IN[2]), .B2(n133), .C1(DATA_IN[1]), .C2(n328), .A(
        n394), .ZN(n395) );
  AOI221_X2 U281 ( .B1(RMIN[3]), .B2(n318), .C1(RMIN[2]), .C2(n322), .A(n395), 
        .ZN(n396) );
  AOI221_X2 U282 ( .B1(DATA_IN[4]), .B2(n131), .C1(DATA_IN[3]), .C2(n132), .A(
        n396), .ZN(n397) );
  AOI221_X2 U283 ( .B1(RMIN[5]), .B2(n310), .C1(RMIN[4]), .C2(n315), .A(n397), 
        .ZN(n398) );
  AOI221_X2 U284 ( .B1(DATA_IN[6]), .B2(n129), .C1(DATA_IN[5]), .C2(n130), .A(
        n398), .ZN(n399) );
  OAI22_X2 U285 ( .A1(n400), .A2(n399), .B1(DATA_IN[7]), .B2(n128), .ZN(n401)
         );
  INV_X4 U286 ( .A(RESTART), .ZN(n294) );
  INV_X4 U287 ( .A(AVERAGE), .ZN(n295) );
  INV_X4 U288 ( .A(ENABLE), .ZN(n296) );
  INV_X4 U289 ( .A(N97), .ZN(n297) );
  INV_X4 U290 ( .A(n221), .ZN(n298) );
  INV_X4 U291 ( .A(n223), .ZN(n299) );
  INV_X4 U292 ( .A(N166), .ZN(n300) );
  INV_X4 U293 ( .A(DATA_IN[7]), .ZN(n301) );
  INV_X4 U294 ( .A(dp_cluster_0_sub_82_carry[7]), .ZN(n302) );
  INV_X4 U295 ( .A(dp_cluster_0_N106), .ZN(n303) );
  INV_X4 U296 ( .A(N88), .ZN(n304) );
  INV_X4 U297 ( .A(n383), .ZN(n305) );
  INV_X4 U298 ( .A(n380), .ZN(n306) );
  INV_X4 U299 ( .A(DATA_IN[6]), .ZN(n307) );
  INV_X4 U300 ( .A(dp_cluster_0_N105), .ZN(n308) );
  INV_X4 U301 ( .A(N87), .ZN(n309) );
  INV_X4 U302 ( .A(DATA_IN[5]), .ZN(n310) );
  INV_X4 U303 ( .A(dp_cluster_0_N104), .ZN(n311) );
  INV_X4 U304 ( .A(N86), .ZN(n312) );
  INV_X4 U305 ( .A(n379), .ZN(n313) );
  INV_X4 U306 ( .A(n376), .ZN(n314) );
  INV_X4 U307 ( .A(DATA_IN[4]), .ZN(n315) );
  INV_X4 U308 ( .A(dp_cluster_0_N103), .ZN(n316) );
  INV_X4 U309 ( .A(N85), .ZN(n317) );
  INV_X4 U310 ( .A(DATA_IN[3]), .ZN(n318) );
  INV_X4 U311 ( .A(dp_cluster_0_N102), .ZN(n319) );
  INV_X4 U312 ( .A(N84), .ZN(n320) );
  INV_X4 U313 ( .A(n374), .ZN(n321) );
  INV_X4 U314 ( .A(DATA_IN[2]), .ZN(n322) );
  INV_X4 U315 ( .A(dp_cluster_0_N101), .ZN(n323) );
  INV_X4 U316 ( .A(N83), .ZN(n324) );
  INV_X4 U317 ( .A(n372), .ZN(n325) );
  INV_X4 U318 ( .A(DATA_IN[1]), .ZN(n326) );
  INV_X4 U319 ( .A(n384), .ZN(n327) );
  INV_X4 U320 ( .A(n393), .ZN(n328) );
  INV_X4 U321 ( .A(DATA_IN[0]), .ZN(n329) );
  INV_X4 U322 ( .A(n210), .ZN(n330) );
  INV_X4 U323 ( .A(n211), .ZN(n331) );
  INV_X4 U324 ( .A(n212), .ZN(n332) );
  INV_X4 U325 ( .A(n213), .ZN(n333) );
  INV_X4 U326 ( .A(n214), .ZN(n334) );
  INV_X4 U327 ( .A(n215), .ZN(n335) );
  INV_X4 U328 ( .A(n216), .ZN(n336) );
  INV_X4 U329 ( .A(n217), .ZN(n337) );
  INV_X4 U330 ( .A(dp_cluster_1_sub_70_carry[7]), .ZN(n338) );
  INV_X4 U331 ( .A(dp_cluster_1_N49), .ZN(n339) );
  INV_X4 U332 ( .A(N31), .ZN(n340) );
  INV_X4 U333 ( .A(dp_cluster_1_N48), .ZN(n341) );
  INV_X4 U334 ( .A(N30), .ZN(n342) );
  INV_X4 U335 ( .A(dp_cluster_1_N47), .ZN(n343) );
  INV_X4 U336 ( .A(N29), .ZN(n344) );
  INV_X4 U337 ( .A(dp_cluster_1_N46), .ZN(n345) );
  INV_X4 U338 ( .A(N28), .ZN(n346) );
  INV_X4 U339 ( .A(dp_cluster_1_N45), .ZN(n347) );
  INV_X4 U340 ( .A(N27), .ZN(n348) );
  INV_X4 U341 ( .A(dp_cluster_1_N44), .ZN(n349) );
  INV_X4 U342 ( .A(N26), .ZN(n350) );
  INV_X4 U343 ( .A(N40), .ZN(n351) );
  INV_X4 U344 ( .A(n370), .ZN(n352) );
  INV_X4 U345 ( .A(n367), .ZN(n353) );
  INV_X4 U346 ( .A(n366), .ZN(n354) );
  INV_X4 U347 ( .A(n363), .ZN(n355) );
  INV_X4 U348 ( .A(n361), .ZN(n356) );
  INV_X4 U349 ( .A(n359), .ZN(n357) );
endmodule

