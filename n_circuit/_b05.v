/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP4
// Date      : Mon Jul  1 17:31:48 2024
/////////////////////////////////////////////////////////////

  output  DISPMAX1[0], DISPMAX1[1], DISPMAX1[2], DISPMAX1[3], DISPMAX1[4], DISPMAX1[5], DISPMAX1[6];
  output  DISPMAX2[0], DISPMAX2[1], DISPMAX2[2], DISPMAX2[3], DISPMAX2[4], DISPMAX2[5], DISPMAX2[6];
  output  DISPMAX3[0], DISPMAX3[1], DISPMAX3[2], DISPMAX3[3], DISPMAX3[4], DISPMAX3[5], DISPMAX3[6];
  output  DISPNUM1[0], DISPNUM1[1], DISPNUM1[2], DISPNUM1[3], DISPNUM1[4], DISPNUM1[5], DISPNUM1[6];
  output  DISPNUM2[0], DISPNUM2[1], DISPNUM2[2], DISPNUM2[3], DISPNUM2[4], DISPNUM2[5], DISPNUM2[6];
  input CLOCK, RESET, START, test_si, test_se;
  output SIGN, test_so;
  wire   TEMP_7_, TEMP_6_, TEMP_5_, TEMP_4_, TEMP_3_, TEMP_2_, TEMP_1_,
         TEMP_0_, N464, N468, N469, N470, N471, N472, N473, N474, N475, N476,
         N477, EN_DISP, RES_DISP, N484, N492, N493, N494, N495, N498, N501,
         N520, N524, N527, N529, N530, N532, N539, N541, N542, N544, N549,
         N550, N551, N553, N554, N556, N564, N565, N566, N568, N572, N573,
         N576, N577, N578, N580, N586, N588, N589, N590, N592, N599, N600,
         N601, N602, N604, N609, N611, N612, N613, N614, N616, N621, N622,
         N623, N624, N625, N626, N627, N628, N751, N754, N757, N760, N763,
         N766, N769, N772, N774, N826, N828, N830, N832, N836, N837, N838,
         N839, N840, N841, N842, N843, N846, N849, N852, N855, N858, N861,
         N864, N866, FLAG, N985, N986, N987, N988, N1015, N1016, N1017, N1018,
         N1025, N1026, N1027, n213, n214, n217, n218, n228, n229, n230, n231,
         n246, n249, n251, n252, n253, n291, n293, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n410, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442,
         n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464,
         n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475,
         n476, n477, n478, n479, n480, n481, n482, n483, n484, n485, n486,
         n487, n488, n489, n490, n491, n492, n493, n494, n495, n496, n497,
         n498, n499, n500, n501, n502, n503, n504, n505, n506, n507, n508,
         n509, n510, n511, n512, n513, n514, n515, n516, n517, n518, n519,
         n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530,
         sub_73_carry_8_, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, n561,
         n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594,
         n595, n596, n597, n598, n599, n600, n601, n602, n603, n604, n605,
         n606, n607, n608, n609, n610, n611, n612, n613, n614, n615, n616,
         n617, n618, n619, n620, n621, n622, n623, n624, n625, n626, n627,
         n628, n629, n630, n631, n632, n633, n634, n635, n636, n637, n639,
         n640, n641, n642, n643, n644, n645, n646, n647, n648, n649, n650,
         n651, n652, n653, n654, n655, n656, n657, n658, n659, n660, n661,
         n662, n663, n664, n665, n666, n667, n668, n669, n670, n671, n672,
         n673, n674, n675, n676, n677, n678, n679, n680, n681, n682, n683,
         n684, n685, n686, n687, n688, n689, n690, n691, n692, n693, n694,
         n695, n696, n697, n698, n699, n700, n701, n702, n703, n704, n705,
         n706, n707, n708, n709, n710, n711, n712, n713, n714, n715, n716,
         n717, n718, n719, n720, n721, n722, n723, n724, n725, n726, n727,
         n728, n729, n730, n731, n732, n733, n734, n735, n736, n737, n738,
         n739, n740, n741, n742, n743, n744, n745, n746, n747, n748, n749,
         n750, n751, n752, n753, n754, n755, n756, n757, n758, n760, n761,
         n762, n763, n764, n765, n766;
  wire    MAR[0], MAR[1], MAR[2], MAR[3], MAR[4];
  wire    AC1[0], AC1[1], AC1[2], AC1[3], AC1[4], AC1[5], AC1[6], AC1[7];
  wire    MAX[1], MAX[2], MAX[3], MAX[4], MAX[5], MAX[6], MAX[7];
  wire    NUM[1], NUM[2], NUM[3], NUM[4];
  wire    STATO[0], STATO[1], STATO[2];
  wire    add_304_carry[2], add_304_carry[3], add_304_carry[4];
  wire    add_283_carry[2], add_283_carry[3], add_283_carry[4];
  wire    sub_199_carry[3], sub_199_carry[4];
  wire    sub_148_aco_carry[2], sub_148_aco_carry[3], sub_148_aco_carry[4], sub_148_aco_carry[5], sub_148_aco_carry[6], sub_148_aco_carry[7], sub_148_aco_carry[8];
  wire    sub_144_carry[4], sub_144_carry[5], sub_144_carry[6], sub_144_carry[7], sub_144_carry[8];
  wire    sub_140_carry[5], sub_140_carry[6], sub_140_carry[7], sub_140_carry[8];
  wire    sub_136_carry[5], sub_136_carry[6], sub_136_carry[7], sub_136_carry[8];
  wire    sub_132_carry[3], sub_132_carry[4], sub_132_carry[5], sub_132_carry[6], sub_132_carry[7], sub_132_carry[8];
  wire    sub_128_carry[6], sub_128_carry[7], sub_128_carry[8];
  wire    sub_124_carry[4], sub_124_carry[5], sub_124_carry[6], sub_124_carry[7], sub_124_carry[8];
  wire    sub_120_carry[6], sub_120_carry[7], sub_120_carry[8];
  wire    sub_116_carry[3], sub_116_carry[4], sub_116_carry[5], sub_116_carry[6], sub_116_carry[7], sub_116_carry[8];
  wire    sub_60_carry[1], sub_60_carry[2], sub_60_carry[3], sub_60_carry[4], sub_60_carry[5], sub_60_carry[6], sub_60_carry[7], sub_60_carry[8];
  
  
  
  
  
  
  
  
  
  
  

  SDFFR_X2 MAR_reg_0_ ( .D(n530), .SI(n766), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(MAR[0]), .QN(n253) );
  SDFFR_X2 STATO_reg_2_ ( .D(N1027), .SI(n760), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(STATO[2]), .QN(n213) );
  SDFFR_X2 STATO_reg_0_ ( .D(N1025), .SI(RES_DISP), .SE(test_se), .CK(CLOCK), 
        .RN(n605), .Q(STATO[0]), .QN(n214) );
  SDFFR_X2 STATO_reg_1_ ( .D(N1026), .SI(STATO[0]), .SE(test_se), .CK(CLOCK), 
        .RN(n605), .Q(STATO[1]), .QN(n760) );
  SDFFR_X2 RES_DISP_reg ( .D(n528), .SI(n228), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(RES_DISP), .QN(n217) );
  SDFFR_X2 EN_DISP_reg ( .D(n524), .SI(test_si), .SE(test_se), .CK(CLOCK), 
        .RN(n605), .Q(EN_DISP), .QN(n218) );
  SDFFR_X2 MAR_reg_4_ ( .D(n529), .SI(n249), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(MAR[4]), .QN(n246) );
  SDFFR_X2 MAR_reg_1_ ( .D(n527), .SI(MAR[0]), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(MAR[1]), .QN(n252) );
  SDFFR_X2 MAR_reg_2_ ( .D(n526), .SI(n252), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(MAR[2]), .QN(n251) );
  SDFFR_X2 MAR_reg_3_ ( .D(n525), .SI(MAR[2]), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(MAR[3]), .QN(n249) );
  SDFFR_X2 TEMP_reg_8_ ( .D(n523), .SI(TEMP_7_), .SE(test_se), .CK(CLOCK), 
        .RN(n605), .Q(test_so), .QN(n552) );
  SDFFR_X2 TEMP_reg_7_ ( .D(n627), .SI(TEMP_6_), .SE(test_se), .CK(CLOCK), 
        .RN(n605), .Q(TEMP_7_), .QN(n551) );
  SDFFR_X2 TEMP_reg_6_ ( .D(n522), .SI(TEMP_5_), .SE(test_se), .CK(CLOCK), 
        .RN(n605), .Q(TEMP_6_), .QN(n550) );
  SDFFR_X2 TEMP_reg_5_ ( .D(n521), .SI(TEMP_4_), .SE(test_se), .CK(CLOCK), 
        .RN(n605), .Q(TEMP_5_), .QN(n549) );
  SDFFR_X2 TEMP_reg_4_ ( .D(n520), .SI(TEMP_3_), .SE(test_se), .CK(CLOCK), 
        .RN(n605), .Q(TEMP_4_), .QN(n548) );
  SDFFR_X2 TEMP_reg_3_ ( .D(n519), .SI(TEMP_2_), .SE(test_se), .CK(CLOCK), 
        .RN(n605), .Q(TEMP_3_), .QN(n547) );
  SDFFR_X2 TEMP_reg_2_ ( .D(n518), .SI(TEMP_1_), .SE(test_se), .CK(CLOCK), 
        .RN(n605), .Q(TEMP_2_), .QN(n546) );
  SDFFR_X2 TEMP_reg_1_ ( .D(n517), .SI(n532), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(TEMP_1_), .QN(n545) );
  SDFFR_X2 TEMP_reg_0_ ( .D(n516), .SI(STATO[2]), .SE(test_se), .CK(CLOCK), 
        .RN(n605), .Q(TEMP_0_), .QN(n532) );
  SDFFR_X2 FLAG_reg ( .D(n616), .SI(EN_DISP), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(FLAG), .QN(n766) );
  SDFFR_X2 NUM_reg_1_ ( .D(n614), .SI(n652), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(NUM[1]), .QN(n231) );
  SDFFR_X2 NUM_reg_0_ ( .D(n613), .SI(n531), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(N828), .QN(n652) );
  SDFFR_X2 NUM_reg_2_ ( .D(n612), .SI(n231), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(NUM[2]), .QN(n230) );
  SDFFR_X2 NUM_reg_3_ ( .D(n611), .SI(n230), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(NUM[3]), .QN(n229) );
  SDFFR_X2 NUM_reg_4_ ( .D(n610), .SI(n229), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(NUM[4]), .QN(n228) );
  SDFFR_X2 MAX_reg_5_ ( .D(n510), .SI(n764), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(MAX[5]), .QN(n763) );
  SDFFR_X2 MAX_reg_7_ ( .D(n619), .SI(n762), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(MAX[7]), .QN(n761) );
  OAI22_X2 U117 ( .A1(n620), .A2(n296), .B1(n297), .B2(n601), .ZN(n508) );
  AOI22_X2 U118 ( .A1(n620), .A2(MAX[7]), .B1(n297), .B2(N469), .ZN(n298) );
  OAI22_X2 U119 ( .A1(n622), .A2(n620), .B1(n685), .B2(n297), .ZN(n509) );
  NAND2_X2 U121 ( .A1(MAX[5]), .A2(n620), .ZN(n299) );
  OAI22_X2 U122 ( .A1(n297), .A2(n686), .B1(n620), .B2(n630), .ZN(n511) );
  OAI22_X2 U123 ( .A1(n297), .A2(n291), .B1(n620), .B2(n623), .ZN(n512) );
  OAI22_X2 U124 ( .A1(n297), .A2(n687), .B1(n620), .B2(n621), .ZN(n513) );
  OAI22_X2 U125 ( .A1(n297), .A2(n293), .B1(n620), .B2(n624), .ZN(n514) );
  OAI22_X2 U126 ( .A1(n297), .A2(n684), .B1(n620), .B2(n588), .ZN(n515) );
  NAND3_X2 U128 ( .A1(n302), .A2(n544), .A3(N477), .ZN(n301) );
  AOI22_X2 U129 ( .A1(N988), .A2(n304), .B1(NUM[4]), .B2(n615), .ZN(n303) );
  AOI22_X2 U130 ( .A1(N987), .A2(n304), .B1(NUM[3]), .B2(n615), .ZN(n305) );
  AOI22_X2 U131 ( .A1(N986), .A2(n304), .B1(NUM[2]), .B2(n615), .ZN(n306) );
  AOI22_X2 U132 ( .A1(n652), .A2(n304), .B1(N828), .B2(n615), .ZN(n307) );
  AOI22_X2 U133 ( .A1(N985), .A2(n304), .B1(NUM[1]), .B2(n615), .ZN(n308) );
  NOR2_X2 U134 ( .A1(n309), .A2(n615), .ZN(n304) );
  AOI22_X2 U135 ( .A1(FLAG), .A2(n312), .B1(n617), .B2(n302), .ZN(n311) );
  NAND2_X2 U137 ( .A1(n313), .A2(n314), .ZN(n310) );
  NAND3_X2 U138 ( .A1(FLAG), .A2(n635), .A3(N464), .ZN(n314) );
  NOR2_X2 U139 ( .A1(n309), .A2(N464), .ZN(n302) );
  NAND2_X2 U141 ( .A1(TEMP_0_), .A2(n604), .ZN(n316) );
  NAND2_X2 U143 ( .A1(TEMP_1_), .A2(n604), .ZN(n317) );
  NAND2_X2 U145 ( .A1(TEMP_2_), .A2(n604), .ZN(n318) );
  NAND2_X2 U147 ( .A1(TEMP_3_), .A2(n604), .ZN(n319) );
  NAND2_X2 U149 ( .A1(TEMP_4_), .A2(n604), .ZN(n320) );
  NAND2_X2 U151 ( .A1(TEMP_5_), .A2(n604), .ZN(n321) );
  NAND2_X2 U153 ( .A1(TEMP_6_), .A2(n604), .ZN(n322) );
  AOI22_X2 U154 ( .A1(n533), .A2(N469), .B1(n604), .B2(TEMP_7_), .ZN(n323) );
  NAND2_X2 U155 ( .A1(n324), .A2(n296), .ZN(n523) );
  NAND2_X2 U156 ( .A1(n533), .A2(N468), .ZN(n296) );
  NAND2_X2 U157 ( .A1(test_so), .A2(n604), .ZN(n324) );
  OAI22_X2 U159 ( .A1(n325), .A2(n636), .B1(n607), .B2(n218), .ZN(n524) );
  NAND2_X2 U162 ( .A1(N1017), .A2(n326), .ZN(n328) );
  NAND2_X2 U164 ( .A1(N1016), .A2(n326), .ZN(n329) );
  NAND2_X2 U166 ( .A1(N1015), .A2(n326), .ZN(n330) );
  OAI22_X2 U167 ( .A1(n331), .A2(n636), .B1(n608), .B2(n217), .ZN(n528) );
  NOR2_X2 U168 ( .A1(n333), .A2(n609), .ZN(n331) );
  NAND2_X2 U170 ( .A1(N1018), .A2(n326), .ZN(n334) );
  NAND2_X2 U172 ( .A1(n253), .A2(n326), .ZN(n335) );
  NAND2_X2 U177 ( .A1(N832), .A2(N826), .ZN(n337) );
  NAND2_X2 U179 ( .A1(n567), .A2(N826), .ZN(n338) );
  NAND2_X2 U181 ( .A1(N830), .A2(N826), .ZN(n339) );
  NAND2_X2 U183 ( .A1(n231), .A2(N826), .ZN(n340) );
  NAND2_X2 U185 ( .A1(N828), .A2(N826), .ZN(n341) );
  AOI22_X2 U186 ( .A1(n343), .A2(n671), .B1(N530), .B2(N520), .ZN(n342) );
  NAND4_X2 U187 ( .A1(n344), .A2(n345), .A3(n346), .A4(n347), .ZN(n343) );
  AOI22_X2 U188 ( .A1(N554), .A2(n348), .B1(N590), .B2(n349), .ZN(n347) );
  AOI22_X2 U189 ( .A1(N628), .A2(n350), .B1(N614), .B2(n351), .ZN(n346) );
  AOI22_X2 U190 ( .A1(N566), .A2(n352), .B1(N602), .B2(n353), .ZN(n345) );
  AOI22_X2 U191 ( .A1(N578), .A2(n354), .B1(N542), .B2(N532), .ZN(n344) );
  AOI22_X2 U192 ( .A1(n356), .A2(n671), .B1(N529), .B2(N520), .ZN(n355) );
  NAND4_X2 U193 ( .A1(n357), .A2(n358), .A3(n359), .A4(n360), .ZN(n356) );
  AOI22_X2 U194 ( .A1(N553), .A2(n348), .B1(N589), .B2(n349), .ZN(n360) );
  AOI22_X2 U195 ( .A1(N627), .A2(n350), .B1(N613), .B2(n351), .ZN(n359) );
  AOI22_X2 U196 ( .A1(N565), .A2(n352), .B1(N601), .B2(n353), .ZN(n358) );
  AOI22_X2 U197 ( .A1(N577), .A2(n354), .B1(N541), .B2(N532), .ZN(n357) );
  AOI22_X2 U198 ( .A1(n362), .A2(n671), .B1(n561), .B2(N520), .ZN(n361) );
  NAND4_X2 U199 ( .A1(n363), .A2(n364), .A3(n365), .A4(n366), .ZN(n362) );
  AOI22_X2 U200 ( .A1(n554), .A2(n348), .B1(N588), .B2(n349), .ZN(n366) );
  AOI22_X2 U201 ( .A1(N626), .A2(n350), .B1(N612), .B2(n351), .ZN(n365) );
  AOI22_X2 U202 ( .A1(N564), .A2(n352), .B1(N600), .B2(n353), .ZN(n364) );
  AOI22_X2 U203 ( .A1(N576), .A2(n354), .B1(n557), .B2(N532), .ZN(n363) );
  AOI22_X2 U204 ( .A1(n368), .A2(n671), .B1(N527), .B2(N520), .ZN(n367) );
  NAND4_X2 U205 ( .A1(n369), .A2(n370), .A3(n371), .A4(n372), .ZN(n368) );
  AOI22_X2 U206 ( .A1(N551), .A2(n348), .B1(n558), .B2(n349), .ZN(n372) );
  AOI22_X2 U207 ( .A1(N625), .A2(n350), .B1(N611), .B2(n351), .ZN(n371) );
  AOI22_X2 U208 ( .A1(n556), .A2(n352), .B1(N599), .B2(n353), .ZN(n370) );
  AOI22_X2 U209 ( .A1(n555), .A2(n354), .B1(N539), .B2(N532), .ZN(n369) );
  AOI22_X2 U210 ( .A1(n374), .A2(n671), .B1(n566), .B2(N520), .ZN(n373) );
  NAND4_X2 U211 ( .A1(n375), .A2(n376), .A3(n377), .A4(n378), .ZN(n374) );
  AOI22_X2 U212 ( .A1(N550), .A2(n348), .B1(N586), .B2(n349), .ZN(n378) );
  AOI22_X2 U213 ( .A1(N624), .A2(n350), .B1(n565), .B2(n351), .ZN(n377) );
  AOI22_X2 U214 ( .A1(n542), .A2(n352), .B1(n564), .B2(n353), .ZN(n376) );
  AOI22_X2 U215 ( .A1(n562), .A2(n354), .B1(n603), .B2(N532), .ZN(n375) );
  AOI22_X2 U216 ( .A1(n380), .A2(n671), .B1(n560), .B2(N520), .ZN(n379) );
  NAND4_X2 U217 ( .A1(n381), .A2(n382), .A3(n383), .A4(n384), .ZN(n380) );
  AOI22_X2 U218 ( .A1(N549), .A2(n348), .B1(n577), .B2(n349), .ZN(n384) );
  AOI22_X2 U219 ( .A1(N623), .A2(n350), .B1(N609), .B2(n351), .ZN(n383) );
  AOI22_X2 U220 ( .A1(n539), .A2(n352), .B1(n559), .B2(n353), .ZN(n382) );
  AOI22_X2 U221 ( .A1(N573), .A2(n354), .B1(N494), .B2(N532), .ZN(n381) );
  AOI22_X2 U222 ( .A1(n386), .A2(n671), .B1(N524), .B2(N520), .ZN(n385) );
  NAND4_X2 U223 ( .A1(n387), .A2(n388), .A3(n389), .A4(n390), .ZN(n386) );
  AOI22_X2 U224 ( .A1(n534), .A2(n348), .B1(N493), .B2(n349), .ZN(n390) );
  AOI22_X2 U225 ( .A1(N622), .A2(n350), .B1(n602), .B2(n351), .ZN(n389) );
  AOI22_X2 U226 ( .A1(n602), .A2(n352), .B1(n534), .B2(n353), .ZN(n388) );
  AOI22_X2 U227 ( .A1(N572), .A2(n354), .B1(N493), .B2(N532), .ZN(n387) );
  AOI22_X2 U228 ( .A1(n392), .A2(n671), .B1(n683), .B2(N520), .ZN(n391) );
  NAND4_X2 U229 ( .A1(n393), .A2(n394), .A3(n395), .A4(n396), .ZN(n392) );
  AOI22_X2 U230 ( .A1(n683), .A2(n348), .B1(N492), .B2(n349), .ZN(n396) );
  AOI22_X2 U231 ( .A1(N621), .A2(n350), .B1(N492), .B2(n351), .ZN(n395) );
  AOI22_X2 U232 ( .A1(N492), .A2(n352), .B1(n683), .B2(n353), .ZN(n394) );
  AOI22_X2 U233 ( .A1(n683), .A2(n354), .B1(N492), .B2(N532), .ZN(n393) );
  AOI22_X2 U234 ( .A1(n398), .A2(n671), .B1(N501), .B2(N520), .ZN(n397) );
  NAND4_X2 U235 ( .A1(n399), .A2(n400), .A3(n401), .A4(n402), .ZN(n398) );
  AOI22_X2 U236 ( .A1(N501), .A2(n348), .B1(N501), .B2(n349), .ZN(n402) );
  AOI22_X2 U239 ( .A1(N501), .A2(n350), .B1(N501), .B2(n351), .ZN(n401) );
  AOI22_X2 U241 ( .A1(N501), .A2(n352), .B1(N501), .B2(n353), .ZN(n400) );
  AOI22_X2 U244 ( .A1(N501), .A2(n354), .B1(N501), .B2(N532), .ZN(n399) );
  NAND2_X2 U261 ( .A1(n600), .A2(n531), .ZN(n410) );
  NAND2_X2 U263 ( .A1(n570), .A2(n531), .ZN(n417) );
  NAND2_X2 U265 ( .A1(n568), .A2(n531), .ZN(n418) );
  NAND2_X2 U267 ( .A1(n569), .A2(n531), .ZN(n419) );
  NAND2_X2 U269 ( .A1(n571), .A2(n531), .ZN(n420) );
  NAND2_X2 U271 ( .A1(N484), .A2(n531), .ZN(n421) );
  OAI221_X2 U272 ( .B1(n252), .B2(n422), .C1(MAR[4]), .C2(n423), .A(n424), 
        .ZN(N476) );
  OAI22_X2 U274 ( .A1(n428), .A2(n632), .B1(n249), .B2(n429), .ZN(n425) );
  NAND4_X2 U275 ( .A1(n430), .A2(n429), .A3(n431), .A4(n432), .ZN(N475) );
  AOI22_X2 U276 ( .A1(n433), .A2(n434), .B1(n435), .B2(MAR[0]), .ZN(n432) );
  NOR2_X2 U277 ( .A1(MAR[1]), .A2(n251), .ZN(n433) );
  NOR2_X2 U279 ( .A1(MAR[4]), .A2(MAR[0]), .ZN(n436) );
  NAND3_X2 U280 ( .A1(n422), .A2(n437), .A3(n438), .ZN(N474) );
  AOI22_X2 U281 ( .A1(n439), .A2(n249), .B1(n625), .B2(n639), .ZN(n438) );
  NAND4_X2 U282 ( .A1(n440), .A2(n430), .A3(n441), .A4(n631), .ZN(N473) );
  OAI22_X2 U283 ( .A1(n443), .A2(MAR[0]), .B1(n429), .B2(n246), .ZN(n442) );
  NAND2_X2 U284 ( .A1(n428), .A2(n253), .ZN(n429) );
  NAND3_X2 U285 ( .A1(MAR[2]), .A2(n249), .A3(n435), .ZN(n441) );
  NOR2_X2 U287 ( .A1(n249), .A2(n251), .ZN(n444) );
  NOR2_X2 U290 ( .A1(MAR[2]), .A2(MAR[0]), .ZN(n447) );
  AOI221_X2 U291 ( .B1(n640), .B2(MAR[3]), .C1(n449), .C2(MAR[2]), .A(n427), 
        .ZN(n445) );
  NOR3_X2 U292 ( .A1(n640), .A2(MAR[3]), .A3(n253), .ZN(n427) );
  NOR2_X2 U293 ( .A1(MAR[0]), .A2(n434), .ZN(n449) );
  NOR2_X2 U294 ( .A1(MAR[4]), .A2(MAR[3]), .ZN(n434) );
  NAND4_X2 U295 ( .A1(n451), .A2(n629), .A3(n452), .A4(n453), .ZN(N471) );
  NOR2_X2 U297 ( .A1(MAR[2]), .A2(MAR[1]), .ZN(n428) );
  NAND3_X2 U298 ( .A1(MAR[2]), .A2(n253), .A3(MAR[1]), .ZN(n452) );
  NAND3_X2 U299 ( .A1(n251), .A2(n246), .A3(n632), .ZN(n451) );
  OAI221_X2 U300 ( .B1(n246), .B2(n632), .C1(n249), .C2(n629), .A(n456), .ZN(
        N470) );
  AOI221_X2 U301 ( .B1(n439), .B2(n251), .C1(MAR[2]), .C2(n455), .A(n625), 
        .ZN(n456) );
  AND3_X2 U305 ( .A1(n437), .A2(n423), .A3(n629), .ZN(n457) );
  NAND3_X2 U306 ( .A1(n251), .A2(n249), .A3(MAR[4]), .ZN(n437) );
  NAND3_X2 U307 ( .A1(n251), .A2(n246), .A3(MAR[3]), .ZN(n443) );
  NAND2_X2 U308 ( .A1(n448), .A2(MAR[2]), .ZN(n422) );
  NAND2_X2 U310 ( .A1(MAR[4]), .A2(n625), .ZN(n430) );
  NAND2_X2 U311 ( .A1(n454), .A2(n251), .ZN(n423) );
  NAND3_X2 U312 ( .A1(n450), .A2(n252), .A3(n448), .ZN(n458) );
  NOR2_X2 U313 ( .A1(MAR[0]), .A2(MAR[3]), .ZN(n448) );
  XNOR2_X2 U314 ( .A(MAR[4]), .B(n251), .ZN(n450) );
  NOR3_X2 U315 ( .A1(n253), .A2(MAR[4]), .A3(n252), .ZN(n426) );
  NAND3_X2 U317 ( .A1(STATO[0]), .A2(n213), .A3(STATO[1]), .ZN(n309) );
  NAND2_X2 U318 ( .A1(n326), .A2(START), .ZN(n460) );
  OR2_X2 U319 ( .A1(n327), .A2(n634), .ZN(N1026) );
  NAND2_X2 U321 ( .A1(START), .A2(n332), .ZN(n313) );
  NOR2_X2 U323 ( .A1(n333), .A2(n634), .ZN(n462) );
  NAND3_X2 U324 ( .A1(n214), .A2(n213), .A3(STATO[1]), .ZN(n300) );
  NOR3_X2 U325 ( .A1(STATO[1]), .A2(STATO[2]), .A3(STATO[0]), .ZN(n333) );
  NOR3_X2 U327 ( .A1(STATO[1]), .A2(STATO[2]), .A3(n214), .ZN(n332) );
  NAND3_X2 U329 ( .A1(MAR[2]), .A2(n454), .A3(n435), .ZN(n459) );
  NOR2_X2 U330 ( .A1(n252), .A2(n246), .ZN(n435) );
  NOR2_X2 U331 ( .A1(n249), .A2(n253), .ZN(n454) );
  NOR2_X2 U333 ( .A1(n465), .A2(n217), .ZN(n463) );
  NOR2_X2 U337 ( .A1(n469), .A2(n637), .ZN(DISPNUM2[4]) );
  NOR4_X2 U338 ( .A1(N861), .A2(N858), .A3(n470), .A4(n648), .ZN(n469) );
  NAND3_X2 U341 ( .A1(n650), .A2(n647), .A3(n468), .ZN(n472) );
  NAND2_X2 U342 ( .A1(N866), .A2(n648), .ZN(n468) );
  NAND2_X2 U343 ( .A1(n473), .A2(n471), .ZN(n470) );
  NOR3_X2 U344 ( .A1(N846), .A2(N849), .A3(N843), .ZN(n471) );
  NAND4_X2 U346 ( .A1(n644), .A2(n647), .A3(n648), .A4(n649), .ZN(n474) );
  NOR2_X2 U349 ( .A1(N855), .A2(N852), .ZN(n473) );
  NOR3_X2 U352 ( .A1(n477), .A2(N858), .A3(N855), .ZN(n476) );
  NOR2_X2 U354 ( .A1(n637), .A2(N826), .ZN(DISPNUM1[5]) );
  NOR2_X2 U356 ( .A1(n480), .A2(n217), .ZN(n478) );
  NOR2_X2 U360 ( .A1(n484), .A2(n637), .ZN(DISPMAX3[4]) );
  NOR4_X2 U361 ( .A1(N769), .A2(N766), .A3(n485), .A4(n662), .ZN(n484) );
  NAND3_X2 U364 ( .A1(n661), .A2(n657), .A3(n483), .ZN(n487) );
  NAND2_X2 U365 ( .A1(N774), .A2(n662), .ZN(n483) );
  NAND2_X2 U366 ( .A1(n488), .A2(n486), .ZN(n485) );
  NOR3_X2 U367 ( .A1(N754), .A2(N757), .A3(N751), .ZN(n486) );
  NAND4_X2 U369 ( .A1(n655), .A2(n657), .A3(n662), .A4(n658), .ZN(n489) );
  NOR2_X2 U372 ( .A1(N763), .A2(N760), .ZN(n488) );
  NOR3_X2 U375 ( .A1(n492), .A2(N766), .A3(N763), .ZN(n491) );
  NOR2_X2 U377 ( .A1(EN_DISP), .A2(n493), .ZN(DISPMAX2[6]) );
  NOR3_X2 U378 ( .A1(n494), .A2(n495), .A3(n217), .ZN(n493) );
  NOR3_X2 U384 ( .A1(N580), .A2(N592), .A3(n403), .ZN(n404) );
  NOR2_X2 U385 ( .A1(n499), .A2(n637), .ZN(DISPMAX2[3]) );
  NOR4_X2 U386 ( .A1(N544), .A2(N532), .A3(N520), .A4(n500), .ZN(n499) );
  NOR2_X2 U387 ( .A1(N568), .A2(N556), .ZN(n500) );
  NOR2_X2 U388 ( .A1(n501), .A2(n637), .ZN(DISPMAX2[2]) );
  NOR3_X2 U389 ( .A1(n403), .A2(N520), .A3(n502), .ZN(n501) );
  AND3_X2 U390 ( .A1(n498), .A2(n677), .A3(n676), .ZN(n502) );
  NAND2_X2 U391 ( .A1(N616), .A2(n678), .ZN(n498) );
  NAND2_X2 U392 ( .A1(n405), .A2(n675), .ZN(n403) );
  NOR3_X2 U393 ( .A1(N544), .A2(N556), .A3(N532), .ZN(n405) );
  NAND4_X2 U395 ( .A1(n674), .A2(n677), .A3(n678), .A4(n679), .ZN(n503) );
  OR2_X2 U398 ( .A1(N556), .A2(N568), .ZN(n504) );
  NOR3_X2 U401 ( .A1(n507), .A2(N580), .A3(N568), .ZN(n506) );
  NOR2_X2 U403 ( .A1(EN_DISP), .A2(RES_DISP), .ZN(DISPNUM1[6]) );
  HA_X1 add_304_U1_1_1 ( .A(MAR[1]), .B(MAR[0]), .CO(add_304_carry[2]), .S(
        N1015) );
  HA_X1 add_304_U1_1_2 ( .A(MAR[2]), .B(add_304_carry[2]), .CO(
        add_304_carry[3]), .S(N1016) );
  HA_X1 add_304_U1_1_3 ( .A(MAR[3]), .B(add_304_carry[3]), .CO(
        add_304_carry[4]), .S(N1017) );
  HA_X1 add_283_U1_1_1 ( .A(NUM[1]), .B(N828), .CO(add_283_carry[2]), .S(N985)
         );
  HA_X1 add_283_U1_1_2 ( .A(NUM[2]), .B(add_283_carry[2]), .CO(
        add_283_carry[3]), .S(N986) );
  HA_X1 add_283_U1_1_3 ( .A(NUM[3]), .B(add_283_carry[3]), .CO(
        add_283_carry[4]), .S(N987) );
  FA_X1 sub_148_aco_U2_3 ( .A(N494), .B(n679), .CI(sub_148_aco_carry[3]), .CO(
        sub_148_aco_carry[4]), .S(N623) );
  FA_X1 sub_73_U2_8 ( .A(N468), .B(n601), .CI(sub_73_carry_8_), .S(N477) );
  FA_X1 sub_60_U2_1 ( .A(N475), .B(n545), .CI(sub_60_carry[1]), .CO(
        sub_60_carry[2]), .S(AC1[1]) );
  FA_X1 sub_60_U2_2 ( .A(N474), .B(n546), .CI(sub_60_carry[2]), .CO(
        sub_60_carry[3]), .S(AC1[2]) );
  FA_X1 sub_60_U2_3 ( .A(N473), .B(n547), .CI(sub_60_carry[3]), .CO(
        sub_60_carry[4]), .S(AC1[3]) );
  FA_X1 sub_60_U2_4 ( .A(N472), .B(n548), .CI(sub_60_carry[4]), .CO(
        sub_60_carry[5]), .S(AC1[4]) );
  FA_X1 sub_60_U2_5 ( .A(N471), .B(n549), .CI(sub_60_carry[5]), .CO(
        sub_60_carry[6]), .S(AC1[5]) );
  FA_X1 sub_60_U2_6 ( .A(N470), .B(n550), .CI(sub_60_carry[6]), .CO(
        sub_60_carry[7]), .S(AC1[6]) );
  FA_X1 sub_60_U2_7 ( .A(N469), .B(n551), .CI(sub_60_carry[7]), .CO(
        sub_60_carry[8]), .S(AC1[7]) );
  FA_X1 sub_60_U2_8 ( .A(N468), .B(n552), .CI(sub_60_carry[8]), .S(N464) );
  SDFFR_X2 MAX_reg_0_ ( .D(n515), .SI(n246), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(N484), .QN(n684) );
  SDFFR_X2 MAX_reg_8_ ( .D(n508), .SI(n761), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(n531), .QN(n601) );
  SDFFR_X2 MAX_reg_6_ ( .D(n509), .SI(n763), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(n762), .QN(n685) );
  SDFFR_X2 MAX_reg_4_ ( .D(n511), .SI(n291), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(n764), .QN(n686) );
  SDFFR_X2 MAX_reg_3_ ( .D(n512), .SI(n765), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(MAX[3]), .QN(n291) );
  SDFFR_X2 MAX_reg_2_ ( .D(n513), .SI(n293), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(n765), .QN(n687) );
  SDFFR_X2 MAX_reg_1_ ( .D(n514), .SI(N484), .SE(test_se), .CK(CLOCK), .RN(
        n605), .Q(MAX[1]), .QN(n293) );
  AND2_X4 U487 ( .A1(n600), .A2(n531), .ZN(N498) );
  INV_X1 U488 ( .A(N495), .ZN(n603) );
  OR2_X4 U489 ( .A1(n634), .A2(n635), .ZN(n533) );
  XOR2_X2 U490 ( .A(N493), .B(N492), .Z(n534) );
  AND2_X4 U491 ( .A1(N494), .A2(n705), .ZN(n535) );
  AND2_X4 U492 ( .A1(N494), .A2(sub_116_carry[3]), .ZN(n536) );
  AND2_X4 U493 ( .A1(N495), .A2(sub_132_carry[4]), .ZN(n537) );
  AND2_X4 U494 ( .A1(N495), .A2(n553), .ZN(n538) );
  XOR2_X2 U495 ( .A(N494), .B(N493), .Z(n539) );
  AND2_X4 U496 ( .A1(n687), .A2(n563), .ZN(n540) );
  AND2_X4 U497 ( .A1(n291), .A2(n540), .ZN(n541) );
  XOR2_X2 U498 ( .A(N495), .B(n553), .Z(n542) );
  AND2_X4 U499 ( .A1(n228), .A2(n589), .ZN(n543) );
  OR4_X4 U500 ( .A1(n758), .A2(n757), .A3(AC1[5]), .A4(AC1[4]), .ZN(n544) );
  OAI21_X2 U501 ( .B1(n531), .B2(n293), .A(n420), .ZN(N492) );
  AND2_X4 U502 ( .A1(N494), .A2(N493), .ZN(n553) );
  XOR2_X2 U503 ( .A(n680), .B(sub_124_carry[6]), .Z(n554) );
  XOR2_X2 U504 ( .A(n680), .B(n537), .Z(n555) );
  XOR2_X2 U505 ( .A(n680), .B(n538), .Z(n556) );
  XOR2_X2 U506 ( .A(n680), .B(sub_120_carry[6]), .Z(n557) );
  XOR2_X2 U507 ( .A(n680), .B(sub_136_carry[5]), .Z(n558) );
  XOR2_X2 U508 ( .A(N494), .B(n705), .Z(n559) );
  XOR2_X2 U509 ( .A(N494), .B(sub_116_carry[3]), .Z(n560) );
  XOR2_X2 U510 ( .A(N498), .B(sub_116_carry[6]), .Z(n561) );
  XOR2_X2 U511 ( .A(N495), .B(sub_132_carry[4]), .Z(n562) );
  AND2_X4 U512 ( .A1(n293), .A2(n684), .ZN(n563) );
  XOR2_X2 U513 ( .A(N495), .B(n535), .Z(n564) );
  XOR2_X2 U514 ( .A(N495), .B(sub_144_carry[4]), .Z(n565) );
  XOR2_X2 U515 ( .A(N495), .B(n536), .Z(n566) );
  XOR2_X2 U516 ( .A(NUM[3]), .B(sub_199_carry[3]), .Z(n567) );
  XOR2_X2 U517 ( .A(n291), .B(n540), .Z(n568) );
  XOR2_X2 U518 ( .A(n687), .B(n563), .Z(n569) );
  XOR2_X2 U519 ( .A(n686), .B(n541), .Z(n570) );
  AOI211_X2 U520 ( .C1(n655), .C2(n656), .A(N751), .B(N754), .ZN(n481) );
  NOR2_X2 U521 ( .A1(n674), .A2(N532), .ZN(n348) );
  AOI21_X2 U522 ( .B1(n723), .B2(n722), .A(n663), .ZN(N754) );
  NOR2_X2 U523 ( .A1(n676), .A2(n403), .ZN(n349) );
  AOI21_X2 U524 ( .B1(n655), .B2(N766), .A(n653), .ZN(n479) );
  AOI21_X2 U525 ( .B1(n662), .B2(n658), .A(N769), .ZN(n492) );
  INV_X4 U526 ( .A(n297), .ZN(n620) );
  INV_X4 U527 ( .A(n533), .ZN(n604) );
  AOI21_X2 U528 ( .B1(n704), .B2(n410), .A(N498), .ZN(N532) );
  OAI21_X2 U529 ( .B1(n680), .B2(N495), .A(N498), .ZN(n704) );
  NOR3_X2 U530 ( .A1(n403), .A2(N580), .A3(n677), .ZN(n353) );
  AOI211_X2 U531 ( .C1(n674), .C2(n504), .A(N520), .B(N532), .ZN(n496) );
  AOI211_X2 U532 ( .C1(n644), .C2(n645), .A(N843), .B(N846), .ZN(n466) );
  AOI21_X2 U533 ( .B1(n735), .B2(n734), .A(n663), .ZN(N769) );
  AOI211_X2 U534 ( .C1(n670), .C2(n659), .A(n668), .B(n669), .ZN(n735) );
  AOI21_X2 U535 ( .B1(n733), .B2(n732), .A(n663), .ZN(N766) );
  AOI21_X2 U536 ( .B1(n721), .B2(n720), .A(n663), .ZN(N751) );
  AOI21_X2 U537 ( .B1(n668), .B2(n719), .A(n667), .ZN(n721) );
  AOI21_X2 U538 ( .B1(n644), .B2(N858), .A(n642), .ZN(n464) );
  AOI21_X2 U539 ( .B1(n726), .B2(n725), .A(n663), .ZN(N757) );
  AOI211_X2 U540 ( .C1(n673), .C2(n505), .A(n637), .B(N520), .ZN(DISPMAX2[0])
         );
  OAI21_X2 U541 ( .B1(n506), .B2(N556), .A(n674), .ZN(n505) );
  AOI21_X2 U542 ( .B1(n678), .B2(n679), .A(N592), .ZN(n507) );
  AOI211_X2 U543 ( .C1(n651), .C2(n475), .A(n637), .B(N843), .ZN(DISPNUM2[0])
         );
  OAI21_X2 U544 ( .B1(n476), .B2(N852), .A(n644), .ZN(n475) );
  AOI211_X2 U545 ( .C1(n660), .C2(n490), .A(n637), .B(N751), .ZN(DISPMAX3[0])
         );
  OAI21_X2 U546 ( .B1(n491), .B2(N760), .A(n655), .ZN(n490) );
  AOI21_X2 U547 ( .B1(n728), .B2(n727), .A(n663), .ZN(N760) );
  AOI211_X2 U548 ( .C1(n669), .C2(n670), .A(n667), .B(n668), .ZN(n728) );
  OAI21_X2 U549 ( .B1(N544), .B2(n676), .A(n496), .ZN(n494) );
  AOI21_X2 U550 ( .B1(n739), .B2(n738), .A(n663), .ZN(N774) );
  AOI21_X2 U551 ( .B1(n731), .B2(n730), .A(n663), .ZN(N763) );
  AOI211_X2 U552 ( .C1(n669), .C2(n729), .A(n667), .B(n668), .ZN(n731) );
  AOI21_X2 U553 ( .B1(n648), .B2(n649), .A(N861), .ZN(n477) );
  INV_X4 U554 ( .A(n342), .ZN(n663) );
  AOI21_X2 U555 ( .B1(n464), .B2(n474), .A(n637), .ZN(DISPNUM2[1]) );
  AOI21_X2 U556 ( .B1(n643), .B2(n472), .A(n637), .ZN(DISPNUM2[2]) );
  AOI21_X2 U557 ( .B1(n471), .B2(n645), .A(n637), .ZN(DISPNUM2[3]) );
  AOI21_X2 U558 ( .B1(n466), .B2(n467), .A(n637), .ZN(DISPNUM2[5]) );
  OAI211_X2 U559 ( .C1(N861), .C2(n468), .A(n644), .B(n650), .ZN(n467) );
  AOI21_X2 U560 ( .B1(n479), .B2(n489), .A(n637), .ZN(DISPMAX3[1]) );
  AOI21_X2 U561 ( .B1(n654), .B2(n487), .A(n637), .ZN(DISPMAX3[2]) );
  AOI21_X2 U562 ( .B1(n486), .B2(n656), .A(n637), .ZN(DISPMAX3[3]) );
  AOI21_X2 U563 ( .B1(n481), .B2(n482), .A(n637), .ZN(DISPMAX3[5]) );
  OAI211_X2 U564 ( .C1(N769), .C2(n483), .A(n655), .B(n661), .ZN(n482) );
  AOI21_X2 U565 ( .B1(n672), .B2(n503), .A(n637), .ZN(DISPMAX2[1]) );
  AOI21_X2 U566 ( .B1(n351), .B2(n671), .A(n637), .ZN(DISPMAX2[4]) );
  AOI21_X2 U567 ( .B1(n496), .B2(n497), .A(n637), .ZN(DISPMAX2[5]) );
  OAI211_X2 U568 ( .C1(N592), .C2(n498), .A(n674), .B(n676), .ZN(n497) );
  INV_X4 U569 ( .A(N520), .ZN(n671) );
  INV_X4 U570 ( .A(n379), .ZN(n668) );
  INV_X4 U571 ( .A(n373), .ZN(n667) );
  AOI21_X2 U572 ( .B1(n737), .B2(n736), .A(n663), .ZN(N772) );
  NAND2_X2 U573 ( .A1(n300), .A2(n301), .ZN(n297) );
  OAI211_X2 U574 ( .C1(n435), .C2(n422), .A(n443), .B(n457), .ZN(N469) );
  OAI21_X2 U575 ( .B1(n618), .B2(n633), .A(n313), .ZN(n327) );
  AOI21_X2 U576 ( .B1(n703), .B2(n410), .A(N498), .ZN(N520) );
  OAI21_X2 U577 ( .B1(n680), .B2(n681), .A(N498), .ZN(n703) );
  OAI211_X2 U578 ( .C1(N492), .C2(N493), .A(N494), .B(N495), .ZN(n702) );
  AOI21_X2 U579 ( .B1(N498), .B2(n706), .A(N498), .ZN(n707) );
  AOI21_X2 U580 ( .B1(n752), .B2(n751), .A(N842), .ZN(N861) );
  AOI21_X2 U581 ( .B1(N837), .B2(N836), .A(N838), .ZN(n752) );
  AOI211_X2 U582 ( .C1(N839), .C2(n741), .A(N841), .B(N840), .ZN(n742) );
  AOI21_X2 U583 ( .B1(n410), .B2(n711), .A(N498), .ZN(N580) );
  OAI21_X2 U584 ( .B1(N494), .B2(N495), .A(n680), .ZN(n711) );
  AOI21_X2 U585 ( .B1(n410), .B2(n708), .A(N498), .ZN(N556) );
  INV_X4 U586 ( .A(DISPNUM1[4]), .ZN(n637) );
  AOI21_X2 U587 ( .B1(n410), .B2(n710), .A(N498), .ZN(N568) );
  OAI211_X2 U588 ( .C1(N492), .C2(n709), .A(N495), .B(n680), .ZN(n710) );
  AOI21_X2 U589 ( .B1(n747), .B2(n746), .A(N842), .ZN(N852) );
  AOI21_X2 U590 ( .B1(N838), .B2(N837), .A(N839), .ZN(n747) );
  AOI21_X2 U591 ( .B1(n718), .B2(n717), .A(N498), .ZN(N616) );
  AOI21_X2 U592 ( .B1(N494), .B2(n716), .A(N495), .ZN(n718) );
  AOI21_X2 U593 ( .B1(n756), .B2(n755), .A(N842), .ZN(N866) );
  INV_X4 U594 ( .A(n410), .ZN(n680) );
  OAI21_X2 U595 ( .B1(N836), .B2(N837), .A(N838), .ZN(n748) );
  OAI21_X2 U596 ( .B1(N493), .B2(N494), .A(N495), .ZN(n714) );
  AOI21_X2 U597 ( .B1(n754), .B2(n753), .A(N842), .ZN(N864) );
  INV_X4 U598 ( .A(RESET), .ZN(n605) );
  AOI211_X2 U599 ( .C1(MAR[4]), .C2(n425), .A(n426), .B(n427), .ZN(n424) );
  OAI21_X2 U600 ( .B1(n620), .B2(n628), .A(n299), .ZN(n510) );
  AOI21_X2 U601 ( .B1(n544), .B2(n302), .A(n310), .ZN(n312) );
  OAI211_X2 U602 ( .C1(n436), .C2(MAR[2]), .A(MAR[3]), .B(MAR[1]), .ZN(n431)
         );
  OAI21_X2 U603 ( .B1(MAR[1]), .B2(n246), .A(n629), .ZN(n439) );
  OAI21_X2 U604 ( .B1(n445), .B2(n252), .A(n446), .ZN(N472) );
  OAI211_X2 U605 ( .C1(n447), .C2(n448), .A(n252), .B(n246), .ZN(n446) );
  OAI211_X2 U606 ( .C1(n444), .C2(n434), .A(n252), .B(MAR[0]), .ZN(n440) );
  AOI222_X1 U607 ( .A1(n448), .A2(n252), .B1(n454), .B2(n641), .C1(MAR[4]), 
        .C2(n455), .ZN(n453) );
  OAI21_X2 U608 ( .B1(MAR[3]), .B2(MAR[1]), .A(n632), .ZN(n455) );
  OAI211_X2 U609 ( .C1(n249), .C2(n629), .A(n458), .B(n430), .ZN(N468) );
  OAI21_X2 U610 ( .B1(n604), .B2(n622), .A(n322), .ZN(n522) );
  OAI21_X2 U611 ( .B1(n604), .B2(n628), .A(n321), .ZN(n521) );
  OAI21_X2 U612 ( .B1(n604), .B2(n621), .A(n318), .ZN(n518) );
  OAI21_X2 U613 ( .B1(n604), .B2(n588), .A(n316), .ZN(n516) );
  OAI21_X2 U614 ( .B1(n604), .B2(n630), .A(n320), .ZN(n520) );
  OAI21_X2 U615 ( .B1(n246), .B2(n327), .A(n334), .ZN(n529) );
  OAI21_X2 U616 ( .B1(n604), .B2(n624), .A(n317), .ZN(n517) );
  OAI21_X2 U617 ( .B1(n604), .B2(n623), .A(n319), .ZN(n519) );
  OAI21_X2 U618 ( .B1(n249), .B2(n327), .A(n328), .ZN(n525) );
  OAI21_X2 U619 ( .B1(n253), .B2(n327), .A(n335), .ZN(n530) );
  OAI21_X2 U620 ( .B1(n251), .B2(n327), .A(n329), .ZN(n526) );
  OAI21_X2 U621 ( .B1(n252), .B2(n327), .A(n330), .ZN(n527) );
  AOI21_X2 U622 ( .B1(n326), .B2(n618), .A(n608), .ZN(n325) );
  NOR3_X2 U623 ( .A1(STATO[0]), .A2(STATO[1]), .A3(n213), .ZN(n326) );
  OAI21_X2 U624 ( .B1(n459), .B2(n460), .A(n309), .ZN(N1027) );
  OAI211_X2 U625 ( .C1(n618), .C2(n633), .A(n461), .B(n462), .ZN(N1025) );
  OAI21_X2 U626 ( .B1(n326), .B2(n332), .A(n606), .ZN(n461) );
  XOR2_X2 U627 ( .A(n293), .B(n684), .Z(n571) );
  OAI21_X2 U628 ( .B1(N826), .B2(n229), .A(n338), .ZN(N839) );
  OAI21_X2 U629 ( .B1(N826), .B2(n228), .A(n337), .ZN(N840) );
  NAND2_X2 U630 ( .A1(n740), .A2(n228), .ZN(N826) );
  OAI21_X2 U631 ( .B1(NUM[2]), .B2(NUM[1]), .A(NUM[3]), .ZN(n740) );
  OAI21_X2 U632 ( .B1(n531), .B2(n684), .A(n421), .ZN(N501) );
  OAI21_X2 U633 ( .B1(N826), .B2(n230), .A(n339), .ZN(N838) );
  OAI21_X2 U634 ( .B1(N826), .B2(n231), .A(n340), .ZN(N837) );
  OAI21_X2 U635 ( .B1(N826), .B2(n652), .A(n341), .ZN(N836) );
  AOI21_X2 U636 ( .B1(n463), .B2(n464), .A(EN_DISP), .ZN(DISPNUM2[6]) );
  AOI21_X2 U637 ( .B1(n648), .B2(n647), .A(N849), .ZN(n465) );
  AOI21_X2 U638 ( .B1(n478), .B2(n479), .A(EN_DISP), .ZN(DISPMAX3[6]) );
  AOI21_X2 U639 ( .B1(n662), .B2(n657), .A(N757), .ZN(n480) );
  NOR2_X2 U640 ( .A1(n217), .A2(EN_DISP), .ZN(DISPNUM1[4]) );
  OAI21_X2 U641 ( .B1(n531), .B2(n686), .A(n417), .ZN(N495) );
  OAI21_X2 U642 ( .B1(n531), .B2(n291), .A(n418), .ZN(N494) );
  AOI21_X2 U643 ( .B1(n678), .B2(n677), .A(N544), .ZN(n495) );
  INV_X4 U644 ( .A(N493), .ZN(n602) );
  OAI21_X2 U645 ( .B1(n531), .B2(n687), .A(n419), .ZN(N493) );
  AOI21_X2 U646 ( .B1(n218), .B2(n531), .A(DISPNUM1[6]), .ZN(n336) );
  NOR3_X2 U647 ( .A1(n712), .A2(N498), .A3(n680), .ZN(n713) );
  NOR3_X2 U648 ( .A1(n682), .A2(n680), .A3(n680), .ZN(n715) );
  NOR2_X2 U649 ( .A1(n680), .A2(N498), .ZN(n717) );
  NAND2_X2 U650 ( .A1(n230), .A2(n231), .ZN(sub_199_carry[3]) );
  XNOR2_X2 U651 ( .A(NUM[2]), .B(NUM[1]), .ZN(N830) );
  XNOR2_X2 U652 ( .A(NUM[4]), .B(sub_199_carry[4]), .ZN(N832) );
  NAND2_X2 U653 ( .A1(n602), .A2(n572), .ZN(sub_148_aco_carry[3]) );
  XNOR2_X2 U654 ( .A(N493), .B(sub_148_aco_carry[2]), .ZN(N622) );
  INV_X4 U655 ( .A(sub_148_aco_carry[2]), .ZN(n572) );
  NAND2_X2 U656 ( .A1(n603), .A2(n573), .ZN(sub_148_aco_carry[5]) );
  XNOR2_X2 U657 ( .A(N495), .B(sub_148_aco_carry[4]), .ZN(N624) );
  INV_X4 U658 ( .A(sub_148_aco_carry[4]), .ZN(n573) );
  NAND2_X2 U659 ( .A1(n410), .A2(n574), .ZN(sub_148_aco_carry[6]) );
  XNOR2_X2 U660 ( .A(n680), .B(sub_148_aco_carry[5]), .ZN(N625) );
  INV_X4 U661 ( .A(sub_148_aco_carry[5]), .ZN(n574) );
  NAND2_X2 U662 ( .A1(n410), .A2(n575), .ZN(sub_148_aco_carry[7]) );
  XNOR2_X2 U663 ( .A(n680), .B(sub_148_aco_carry[6]), .ZN(N626) );
  INV_X4 U664 ( .A(sub_148_aco_carry[6]), .ZN(n575) );
  NAND2_X2 U665 ( .A1(n410), .A2(n576), .ZN(sub_148_aco_carry[8]) );
  XNOR2_X2 U666 ( .A(N498), .B(sub_148_aco_carry[7]), .ZN(N627) );
  INV_X4 U667 ( .A(sub_148_aco_carry[7]), .ZN(n576) );
  XNOR2_X2 U668 ( .A(N498), .B(sub_148_aco_carry[8]), .ZN(N628) );
  NAND2_X2 U669 ( .A1(N616), .A2(n683), .ZN(sub_148_aco_carry[2]) );
  XNOR2_X2 U670 ( .A(n679), .B(N492), .ZN(N621) );
  NAND2_X2 U671 ( .A1(n577), .A2(n602), .ZN(sub_144_carry[4]) );
  XNOR2_X2 U672 ( .A(N494), .B(N493), .ZN(N609) );
  INV_X4 U673 ( .A(N494), .ZN(n577) );
  NAND2_X2 U674 ( .A1(n410), .A2(n590), .ZN(sub_144_carry[6]) );
  XNOR2_X2 U675 ( .A(n680), .B(sub_144_carry[5]), .ZN(N611) );
  NAND2_X2 U676 ( .A1(n410), .A2(n578), .ZN(sub_144_carry[7]) );
  XNOR2_X2 U677 ( .A(n680), .B(sub_144_carry[6]), .ZN(N612) );
  INV_X4 U678 ( .A(sub_144_carry[6]), .ZN(n578) );
  NAND2_X2 U679 ( .A1(n410), .A2(n579), .ZN(sub_144_carry[8]) );
  XNOR2_X2 U680 ( .A(N498), .B(sub_144_carry[7]), .ZN(N613) );
  INV_X4 U681 ( .A(sub_144_carry[7]), .ZN(n579) );
  XNOR2_X2 U682 ( .A(N498), .B(sub_144_carry[8]), .ZN(N614) );
  NAND2_X2 U683 ( .A1(n410), .A2(n591), .ZN(sub_140_carry[6]) );
  XNOR2_X2 U684 ( .A(n680), .B(sub_140_carry[5]), .ZN(N599) );
  NAND2_X2 U685 ( .A1(n410), .A2(n580), .ZN(sub_140_carry[7]) );
  XNOR2_X2 U686 ( .A(n680), .B(sub_140_carry[6]), .ZN(N600) );
  INV_X4 U687 ( .A(sub_140_carry[6]), .ZN(n580) );
  NAND2_X2 U688 ( .A1(n410), .A2(n581), .ZN(sub_140_carry[8]) );
  XNOR2_X2 U689 ( .A(N498), .B(sub_140_carry[7]), .ZN(N601) );
  INV_X4 U690 ( .A(sub_140_carry[7]), .ZN(n581) );
  XNOR2_X2 U691 ( .A(N498), .B(sub_140_carry[8]), .ZN(N602) );
  NAND2_X2 U692 ( .A1(n603), .A2(n577), .ZN(sub_136_carry[5]) );
  XNOR2_X2 U693 ( .A(N495), .B(N494), .ZN(N586) );
  NAND2_X2 U694 ( .A1(n410), .A2(n592), .ZN(sub_136_carry[7]) );
  XNOR2_X2 U695 ( .A(n680), .B(sub_136_carry[6]), .ZN(N588) );
  NAND2_X2 U696 ( .A1(n410), .A2(n582), .ZN(sub_136_carry[8]) );
  XNOR2_X2 U697 ( .A(N498), .B(sub_136_carry[7]), .ZN(N589) );
  INV_X4 U698 ( .A(sub_136_carry[7]), .ZN(n582) );
  XNOR2_X2 U699 ( .A(N498), .B(sub_136_carry[8]), .ZN(N590) );
  NAND2_X2 U700 ( .A1(n602), .A2(n683), .ZN(sub_132_carry[3]) );
  XNOR2_X2 U701 ( .A(N493), .B(N492), .ZN(N572) );
  NAND2_X2 U702 ( .A1(n577), .A2(n583), .ZN(sub_132_carry[4]) );
  XNOR2_X2 U703 ( .A(N494), .B(sub_132_carry[3]), .ZN(N573) );
  INV_X4 U704 ( .A(sub_132_carry[3]), .ZN(n583) );
  NAND2_X2 U705 ( .A1(n410), .A2(n593), .ZN(sub_132_carry[7]) );
  XNOR2_X2 U706 ( .A(n680), .B(sub_132_carry[6]), .ZN(N576) );
  NAND2_X2 U707 ( .A1(n410), .A2(n584), .ZN(sub_132_carry[8]) );
  XNOR2_X2 U708 ( .A(N498), .B(sub_132_carry[7]), .ZN(N577) );
  INV_X4 U709 ( .A(sub_132_carry[7]), .ZN(n584) );
  XNOR2_X2 U710 ( .A(N498), .B(sub_132_carry[8]), .ZN(N578) );
  NAND2_X2 U711 ( .A1(n410), .A2(n594), .ZN(sub_128_carry[7]) );
  XNOR2_X2 U712 ( .A(n680), .B(sub_128_carry[6]), .ZN(N564) );
  NAND2_X2 U713 ( .A1(n410), .A2(n585), .ZN(sub_128_carry[8]) );
  XNOR2_X2 U714 ( .A(n680), .B(sub_128_carry[7]), .ZN(N565) );
  INV_X4 U715 ( .A(sub_128_carry[7]), .ZN(n585) );
  XNOR2_X2 U716 ( .A(N498), .B(sub_128_carry[8]), .ZN(N566) );
  NAND2_X2 U717 ( .A1(n577), .A2(n595), .ZN(sub_124_carry[4]) );
  XNOR2_X2 U718 ( .A(N494), .B(n705), .ZN(N549) );
  NAND2_X2 U719 ( .A1(n603), .A2(n586), .ZN(sub_124_carry[5]) );
  XNOR2_X2 U720 ( .A(N495), .B(sub_124_carry[4]), .ZN(N550) );
  INV_X4 U721 ( .A(sub_124_carry[4]), .ZN(n586) );
  NAND2_X2 U722 ( .A1(n410), .A2(n587), .ZN(sub_124_carry[6]) );
  XNOR2_X2 U723 ( .A(n680), .B(sub_124_carry[5]), .ZN(N551) );
  INV_X4 U724 ( .A(sub_124_carry[5]), .ZN(n587) );
  NAND2_X2 U725 ( .A1(n410), .A2(n596), .ZN(sub_124_carry[8]) );
  XNOR2_X2 U726 ( .A(n680), .B(sub_124_carry[7]), .ZN(N553) );
  XNOR2_X2 U727 ( .A(N498), .B(sub_124_carry[8]), .ZN(N554) );
  NAND2_X2 U728 ( .A1(n410), .A2(n603), .ZN(sub_120_carry[6]) );
  XNOR2_X2 U729 ( .A(n680), .B(N495), .ZN(N539) );
  NAND2_X2 U730 ( .A1(n410), .A2(n597), .ZN(sub_120_carry[8]) );
  XNOR2_X2 U731 ( .A(N498), .B(sub_120_carry[7]), .ZN(N541) );
  XNOR2_X2 U732 ( .A(n680), .B(sub_120_carry[8]), .ZN(N542) );
  NAND2_X2 U733 ( .A1(n602), .A2(n683), .ZN(sub_116_carry[3]) );
  XNOR2_X2 U734 ( .A(N493), .B(N492), .ZN(N524) );
  NAND2_X2 U735 ( .A1(n410), .A2(n598), .ZN(sub_116_carry[6]) );
  XNOR2_X2 U736 ( .A(n680), .B(sub_116_carry[5]), .ZN(N527) );
  NAND2_X2 U737 ( .A1(n410), .A2(n599), .ZN(sub_116_carry[8]) );
  XNOR2_X2 U738 ( .A(N498), .B(sub_116_carry[7]), .ZN(N529) );
  XNOR2_X2 U739 ( .A(N498), .B(sub_116_carry[8]), .ZN(N530) );
  NAND2_X2 U740 ( .A1(TEMP_0_), .A2(n588), .ZN(sub_60_carry[1]) );
  XNOR2_X2 U741 ( .A(n532), .B(N476), .ZN(AC1[0]) );
  INV_X4 U742 ( .A(N476), .ZN(n588) );
  NAND2_X2 U743 ( .A1(NUM[3]), .A2(sub_199_carry[3]), .ZN(n589) );
  INV_X4 U744 ( .A(n589), .ZN(sub_199_carry[4]) );
  NAND2_X2 U745 ( .A1(N495), .A2(sub_144_carry[4]), .ZN(n590) );
  INV_X4 U746 ( .A(n590), .ZN(sub_144_carry[5]) );
  NAND2_X2 U747 ( .A1(N495), .A2(n535), .ZN(n591) );
  INV_X4 U748 ( .A(n591), .ZN(sub_140_carry[5]) );
  NAND2_X2 U749 ( .A1(n680), .A2(sub_136_carry[5]), .ZN(n592) );
  INV_X4 U750 ( .A(n592), .ZN(sub_136_carry[6]) );
  NAND2_X2 U751 ( .A1(n680), .A2(n537), .ZN(n593) );
  INV_X4 U752 ( .A(n593), .ZN(sub_132_carry[6]) );
  NAND2_X2 U753 ( .A1(n680), .A2(n538), .ZN(n594) );
  INV_X4 U754 ( .A(n594), .ZN(sub_128_carry[6]) );
  NAND2_X2 U755 ( .A1(N493), .A2(N492), .ZN(n595) );
  NAND2_X2 U756 ( .A1(N498), .A2(sub_124_carry[6]), .ZN(n596) );
  INV_X4 U757 ( .A(n596), .ZN(sub_124_carry[7]) );
  NAND2_X2 U758 ( .A1(N498), .A2(sub_120_carry[6]), .ZN(n597) );
  INV_X4 U759 ( .A(n597), .ZN(sub_120_carry[7]) );
  NAND2_X2 U760 ( .A1(N495), .A2(n536), .ZN(n598) );
  INV_X4 U761 ( .A(n598), .ZN(sub_116_carry[5]) );
  NAND2_X2 U762 ( .A1(N498), .A2(sub_116_carry[6]), .ZN(n599) );
  INV_X4 U763 ( .A(n599), .ZN(sub_116_carry[7]) );
  NAND2_X2 U764 ( .A1(n686), .A2(n541), .ZN(n600) );
  AND2_X4 U765 ( .A1(N604), .A2(n404), .ZN(n351) );
  AND2_X4 U766 ( .A1(N568), .A2(n405), .ZN(n354) );
  AND3_X4 U767 ( .A1(n673), .A2(n674), .A3(N556), .ZN(n352) );
  AND2_X4 U768 ( .A1(n404), .A2(n678), .ZN(n350) );
  AND2_X4 U769 ( .A1(n543), .A2(N826), .ZN(N841) );
  AND2_X4 U770 ( .A1(n543), .A2(N826), .ZN(N842) );
  NOR2_X2 U771 ( .A1(n684), .A2(N476), .ZN(n689) );
  AND2_X2 U772 ( .A1(n624), .A2(n689), .ZN(n688) );
  OAI22_X2 U773 ( .A1(n689), .A2(n624), .B1(MAX[1]), .B2(n688), .ZN(n691) );
  OR2_X2 U774 ( .A1(N474), .A2(n691), .ZN(n690) );
  AOI22_X2 U775 ( .A1(n691), .A2(N474), .B1(n687), .B2(n690), .ZN(n693) );
  AND2_X2 U776 ( .A1(n623), .A2(n693), .ZN(n692) );
  OAI22_X2 U777 ( .A1(n693), .A2(n623), .B1(MAX[3]), .B2(n692), .ZN(n695) );
  OR2_X2 U778 ( .A1(N472), .A2(n695), .ZN(n694) );
  AOI22_X2 U779 ( .A1(n695), .A2(N472), .B1(n686), .B2(n694), .ZN(n697) );
  AND2_X2 U780 ( .A1(n628), .A2(n697), .ZN(n696) );
  OAI22_X2 U781 ( .A1(n697), .A2(n628), .B1(MAX[5]), .B2(n696), .ZN(n699) );
  OR2_X2 U782 ( .A1(N470), .A2(n699), .ZN(n698) );
  AOI22_X2 U783 ( .A1(n699), .A2(N470), .B1(n685), .B2(n698), .ZN(n701) );
  AND2_X2 U784 ( .A1(n626), .A2(n701), .ZN(n700) );
  OAI22_X2 U785 ( .A1(n701), .A2(n626), .B1(MAX[7]), .B2(n700), .ZN(
        sub_73_carry_8_) );
  AND2_X2 U786 ( .A1(N493), .A2(N492), .ZN(n705) );
  OR4_X2 U787 ( .A1(N494), .A2(n705), .A3(n680), .A4(N495), .ZN(n706) );
  NOR2_X2 U788 ( .A1(N498), .A2(n707), .ZN(N544) );
  NAND4_X2 U789 ( .A1(n680), .A2(N495), .A3(N494), .A4(N493), .ZN(n708) );
  OR2_X2 U790 ( .A1(N494), .A2(N493), .ZN(n709) );
  AND4_X2 U791 ( .A1(N495), .A2(N494), .A3(N493), .A4(N492), .ZN(n712) );
  NOR2_X2 U792 ( .A1(N498), .A2(n713), .ZN(N592) );
  NOR2_X2 U793 ( .A1(N498), .A2(n715), .ZN(N604) );
  OR2_X2 U794 ( .A1(N492), .A2(N493), .ZN(n716) );
  OR3_X2 U795 ( .A1(n669), .A2(n670), .A3(n659), .ZN(n719) );
  NOR3_X2 U796 ( .A1(n666), .A2(n664), .A3(n665), .ZN(n720) );
  NOR2_X2 U797 ( .A1(n667), .A2(n668), .ZN(n723) );
  NOR3_X2 U798 ( .A1(n666), .A2(n664), .A3(n665), .ZN(n722) );
  AND3_X2 U799 ( .A1(n670), .A2(n659), .A3(n669), .ZN(n724) );
  NOR3_X2 U800 ( .A1(n724), .A2(n667), .A3(n668), .ZN(n726) );
  NOR3_X2 U801 ( .A1(n666), .A2(n664), .A3(n665), .ZN(n725) );
  NOR3_X2 U802 ( .A1(n666), .A2(n664), .A3(n665), .ZN(n727) );
  OR2_X2 U803 ( .A1(n659), .A2(n670), .ZN(n729) );
  NOR3_X2 U804 ( .A1(n666), .A2(n664), .A3(n665), .ZN(n730) );
  NOR3_X2 U805 ( .A1(n669), .A2(n667), .A3(n668), .ZN(n733) );
  NOR3_X2 U806 ( .A1(n666), .A2(n664), .A3(n665), .ZN(n732) );
  NOR4_X2 U807 ( .A1(n664), .A2(n665), .A3(n666), .A4(n667), .ZN(n734) );
  NOR3_X2 U808 ( .A1(n670), .A2(n668), .A3(n669), .ZN(n737) );
  NOR4_X2 U809 ( .A1(n664), .A2(n665), .A3(n666), .A4(n667), .ZN(n736) );
  NOR4_X2 U810 ( .A1(n668), .A2(n669), .A3(n670), .A4(n659), .ZN(n739) );
  NOR4_X2 U811 ( .A1(n664), .A2(n665), .A3(n666), .A4(n667), .ZN(n738) );
  OR3_X2 U812 ( .A1(N838), .A2(N837), .A3(N836), .ZN(n741) );
  NOR2_X2 U813 ( .A1(N842), .A2(n742), .ZN(N843) );
  NOR3_X2 U814 ( .A1(N839), .A2(N841), .A3(N840), .ZN(n743) );
  NOR2_X2 U815 ( .A1(N842), .A2(n743), .ZN(N846) );
  AND3_X2 U816 ( .A1(N837), .A2(N836), .A3(N838), .ZN(n744) );
  NOR4_X2 U817 ( .A1(N841), .A2(N840), .A3(N839), .A4(n744), .ZN(n745) );
  NOR2_X2 U818 ( .A1(N842), .A2(n745), .ZN(N849) );
  NOR2_X2 U819 ( .A1(N841), .A2(N840), .ZN(n746) );
  NOR4_X2 U820 ( .A1(N841), .A2(N840), .A3(N839), .A4(n646), .ZN(n749) );
  NOR2_X2 U821 ( .A1(N842), .A2(n749), .ZN(N855) );
  NOR4_X2 U822 ( .A1(N841), .A2(N840), .A3(N839), .A4(N838), .ZN(n750) );
  NOR2_X2 U823 ( .A1(N842), .A2(n750), .ZN(N858) );
  NOR3_X2 U824 ( .A1(N839), .A2(N841), .A3(N840), .ZN(n751) );
  NOR2_X2 U825 ( .A1(N838), .A2(N837), .ZN(n754) );
  NOR3_X2 U826 ( .A1(N839), .A2(N841), .A3(N840), .ZN(n753) );
  NOR3_X2 U827 ( .A1(N836), .A2(N838), .A3(N837), .ZN(n756) );
  NOR3_X2 U828 ( .A1(N839), .A2(N841), .A3(N840), .ZN(n755) );
  XOR2_X2 U829 ( .A(add_283_carry[4]), .B(NUM[4]), .Z(N988) );
  XOR2_X2 U830 ( .A(add_304_carry[4]), .B(MAR[4]), .Z(N1018) );
  OR4_X2 U831 ( .A1(AC1[1]), .A2(AC1[0]), .A3(AC1[3]), .A4(AC1[2]), .ZN(n758)
         );
  OR3_X2 U832 ( .A1(N464), .A2(AC1[7]), .A3(AC1[6]), .ZN(n757) );
  INV_X4 U833 ( .A(START), .ZN(n606) );
  INV_X4 U834 ( .A(n325), .ZN(n607) );
  INV_X4 U835 ( .A(n331), .ZN(n608) );
  INV_X4 U836 ( .A(n313), .ZN(n609) );
  INV_X4 U837 ( .A(n303), .ZN(n610) );
  INV_X4 U838 ( .A(n305), .ZN(n611) );
  INV_X4 U839 ( .A(n306), .ZN(n612) );
  INV_X4 U840 ( .A(n307), .ZN(n613) );
  INV_X4 U841 ( .A(n308), .ZN(n614) );
  INV_X4 U842 ( .A(n310), .ZN(n615) );
  INV_X4 U843 ( .A(n311), .ZN(n616) );
  INV_X4 U844 ( .A(n312), .ZN(n617) );
  INV_X4 U845 ( .A(n459), .ZN(n618) );
  INV_X4 U846 ( .A(n298), .ZN(n619) );
  INV_X4 U847 ( .A(N474), .ZN(n621) );
  INV_X4 U848 ( .A(N470), .ZN(n622) );
  INV_X4 U849 ( .A(N473), .ZN(n623) );
  INV_X4 U850 ( .A(N475), .ZN(n624) );
  INV_X4 U851 ( .A(n423), .ZN(n625) );
  INV_X4 U852 ( .A(N469), .ZN(n626) );
  INV_X4 U853 ( .A(n323), .ZN(n627) );
  INV_X4 U854 ( .A(N471), .ZN(n628) );
  INV_X4 U855 ( .A(n426), .ZN(n629) );
  INV_X4 U856 ( .A(N472), .ZN(n630) );
  INV_X4 U857 ( .A(n442), .ZN(n631) );
  INV_X4 U858 ( .A(n448), .ZN(n632) );
  INV_X4 U859 ( .A(n326), .ZN(n633) );
  INV_X4 U860 ( .A(n300), .ZN(n634) );
  INV_X4 U861 ( .A(n309), .ZN(n635) );
  INV_X4 U862 ( .A(n332), .ZN(n636) );
  INV_X4 U863 ( .A(n336), .ZN(SIGN) );
  INV_X4 U864 ( .A(n435), .ZN(n639) );
  INV_X4 U865 ( .A(n450), .ZN(n640) );
  INV_X4 U866 ( .A(n428), .ZN(n641) );
  INV_X4 U867 ( .A(n466), .ZN(n642) );
  INV_X4 U868 ( .A(n470), .ZN(n643) );
  INV_X4 U869 ( .A(N849), .ZN(n644) );
  INV_X4 U870 ( .A(n473), .ZN(n645) );
  INV_X4 U871 ( .A(n748), .ZN(n646) );
  INV_X4 U872 ( .A(N861), .ZN(n647) );
  INV_X4 U873 ( .A(N864), .ZN(n648) );
  INV_X4 U874 ( .A(N866), .ZN(n649) );
  INV_X4 U875 ( .A(N858), .ZN(n650) );
  INV_X4 U876 ( .A(N846), .ZN(n651) );
  INV_X4 U877 ( .A(n481), .ZN(n653) );
  INV_X4 U878 ( .A(n485), .ZN(n654) );
  INV_X4 U879 ( .A(N757), .ZN(n655) );
  INV_X4 U880 ( .A(n488), .ZN(n656) );
  INV_X4 U881 ( .A(N769), .ZN(n657) );
  INV_X4 U882 ( .A(N774), .ZN(n658) );
  INV_X4 U883 ( .A(n397), .ZN(n659) );
  INV_X4 U884 ( .A(N754), .ZN(n660) );
  INV_X4 U885 ( .A(N766), .ZN(n661) );
  INV_X4 U886 ( .A(N772), .ZN(n662) );
  INV_X4 U887 ( .A(n355), .ZN(n664) );
  INV_X4 U888 ( .A(n361), .ZN(n665) );
  INV_X4 U889 ( .A(n367), .ZN(n666) );
  INV_X4 U890 ( .A(n385), .ZN(n669) );
  INV_X4 U891 ( .A(n391), .ZN(n670) );
  INV_X4 U892 ( .A(n494), .ZN(n672) );
  INV_X4 U893 ( .A(N532), .ZN(n673) );
  INV_X4 U894 ( .A(N544), .ZN(n674) );
  INV_X4 U895 ( .A(N568), .ZN(n675) );
  INV_X4 U896 ( .A(N580), .ZN(n676) );
  INV_X4 U897 ( .A(N592), .ZN(n677) );
  INV_X4 U898 ( .A(N604), .ZN(n678) );
  INV_X4 U899 ( .A(N616), .ZN(n679) );
  INV_X4 U900 ( .A(n702), .ZN(n681) );
  INV_X4 U901 ( .A(n714), .ZN(n682) );
  INV_X4 U902 ( .A(N492), .ZN(n683) );

