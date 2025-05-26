/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP4
// Date      : Mon Jul  1 17:27:41 2024
/////////////////////////////////////////////////////////////

  input  v_in[0], v_in[1], v_in[2], v_in[3];
  output  v_out[0], v_out[1], v_out[2], v_out[3];
  input r_button, g_button, key, start, reset, test, rts, rtr, clock, test_si,
         test_se;
  output cts, ctr, test_so;
  wire   voto0, voto1, voto2, n17, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204;
  wire    stato[0], stato[1], stato[2], stato[3];

  SDFFR_X1 last_r_reg ( .D(n127), .SI(n202), .SE(test_se), .CK(clock), .RN(n17), .Q(n204) );
  SDFFR_X2 voto2_reg ( .D(n126), .SI(voto1), .SE(test_se), .CK(clock), .RN(n17), .Q(voto2) );
  SDFFR_X2 voto3_reg ( .D(n117), .SI(voto2), .SE(test_se), .CK(clock), .RN(n17), .Q(test_so), .QN(n133) );
  SDFFR_X2 stato_reg_3_ ( .D(n125), .SI(stato[2]), .SE(test_se), .CK(clock), 
        .RN(n17), .Q(stato[3]) );
  SDFFR_X2 stato_reg_0_ ( .D(n124), .SI(n203), .SE(test_se), .CK(clock), .RN(
        n17), .Q(stato[0]), .QN(n130) );
  SDFFR_X2 stato_reg_1_ ( .D(n123), .SI(stato[0]), .SE(test_se), .CK(clock), 
        .RN(n17), .Q(stato[1]), .QN(n131) );
  SDFFR_X2 stato_reg_2_ ( .D(n122), .SI(stato[1]), .SE(test_se), .CK(clock), 
        .RN(n17), .Q(stato[2]), .QN(n128) );
  SDFFR_X1 v_out_reg_3_ ( .D(n113), .SI(v_out[2]), .SE(test_se), .CK(clock), 
        .RN(n17), .Q(v_out[3]) );
  SDFFR_X1 v_out_reg_2_ ( .D(n114), .SI(v_out[1]), .SE(test_se), .CK(clock), 
        .RN(n17), .Q(v_out[2]) );
  SDFFR_X1 sign_reg_3_ ( .D(n121), .SI(n204), .SE(test_se), .CK(clock), .RN(
        n17), .Q(n203), .QN(n132) );
  SDFFR_X1 last_g_reg ( .D(n119), .SI(cts), .SE(test_se), .CK(clock), .RN(n17), 
        .Q(n202) );
  SDFFR_X2 voto0_reg ( .D(n120), .SI(v_out[3]), .SE(test_se), .CK(clock), .RN(
        n17), .Q(voto0), .QN(n129) );
  SDFFR_X1 v_out_reg_0_ ( .D(n116), .SI(stato[3]), .SE(test_se), .CK(clock), 
        .RN(n17), .Q(v_out[0]) );
  SDFFR_X2 voto1_reg ( .D(n118), .SI(voto0), .SE(test_se), .CK(clock), .RN(n17), .Q(voto1) );
  SDFFR_X1 v_out_reg_1_ ( .D(n115), .SI(v_out[0]), .SE(test_se), .CK(clock), 
        .RN(n17), .Q(v_out[1]) );
  SDFFR_X2 cts_reg ( .D(n112), .SI(ctr), .SE(test_se), .CK(clock), .RN(n17), 
        .Q(cts) );
  SDFFR_X2 ctr_reg ( .D(n111), .SI(test_si), .SE(test_se), .CK(clock), .RN(n17), .Q(ctr), .QN(n201) );
  INV_X4 U116 ( .A(reset), .ZN(n17) );
  MUX2_X1 U117 ( .A(n204), .B(r_button), .S(n134), .Z(n127) );
  MUX2_X1 U118 ( .A(n135), .B(voto2), .S(n136), .Z(n126) );
  NOR2_X1 U119 ( .A1(n137), .A2(n138), .ZN(n136) );
  NOR3_X1 U120 ( .A1(n139), .A2(n204), .A3(n140), .ZN(n137) );
  INV_X1 U121 ( .A(r_button), .ZN(n139) );
  OAI22_X1 U122 ( .A1(n141), .A2(n142), .B1(voto2), .B2(n143), .ZN(n135) );
  INV_X1 U123 ( .A(v_in[2]), .ZN(n142) );
  MUX2_X1 U124 ( .A(n144), .B(stato[3]), .S(n145), .Z(n125) );
  OAI221_X1 U125 ( .B1(n146), .B2(n147), .C1(test), .C2(n148), .A(n149), .ZN(
        n144) );
  MUX2_X1 U126 ( .A(n150), .B(stato[0]), .S(n145), .Z(n124) );
  NAND4_X1 U127 ( .A1(n151), .A2(n148), .A3(n152), .A4(n153), .ZN(n150) );
  INV_X1 U128 ( .A(n154), .ZN(n151) );
  MUX2_X1 U129 ( .A(n155), .B(stato[1]), .S(n145), .Z(n123) );
  NAND4_X1 U130 ( .A1(n141), .A2(n156), .A3(n157), .A4(n152), .ZN(n155) );
  NAND4_X1 U131 ( .A1(n158), .A2(n159), .A3(n160), .A4(n161), .ZN(n122) );
  AOI211_X1 U132 ( .C1(n145), .C2(stato[2]), .A(n154), .B(n162), .ZN(n161) );
  INV_X1 U133 ( .A(n156), .ZN(n162) );
  OAI21_X1 U134 ( .B1(n163), .B2(n146), .A(n164), .ZN(n154) );
  INV_X1 U135 ( .A(n147), .ZN(n163) );
  NAND4_X1 U136 ( .A1(voto1), .A2(voto2), .A3(n129), .A4(n133), .ZN(n147) );
  NOR4_X1 U137 ( .A1(n165), .A2(n166), .A3(n167), .A4(n168), .ZN(n145) );
  OAI221_X1 U138 ( .B1(n152), .B2(start), .C1(n156), .C2(rts), .A(n169), .ZN(
        n168) );
  INV_X1 U139 ( .A(n170), .ZN(n169) );
  AND4_X1 U140 ( .A1(n171), .A2(v_in[2]), .A3(v_in[0]), .A4(n172), .ZN(n167)
         );
  AND2_X1 U141 ( .A1(v_in[1]), .A2(v_in[3]), .ZN(n172) );
  OAI21_X1 U142 ( .B1(n173), .B2(n132), .A(n149), .ZN(n121) );
  NOR2_X1 U143 ( .A1(test), .A2(n148), .ZN(n173) );
  MUX2_X1 U144 ( .A(n174), .B(voto0), .S(n175), .Z(n120) );
  NOR3_X1 U145 ( .A1(n170), .A2(n176), .A3(n171), .ZN(n175) );
  INV_X1 U146 ( .A(n149), .ZN(n171) );
  NAND3_X1 U147 ( .A1(n160), .A2(n158), .A3(n177), .ZN(n170) );
  OAI221_X1 U148 ( .B1(n203), .B2(n160), .C1(n141), .C2(n178), .A(n143), .ZN(
        n174) );
  INV_X1 U149 ( .A(v_in[0]), .ZN(n178) );
  NAND2_X1 U150 ( .A1(n179), .A2(stato[1]), .ZN(n160) );
  MUX2_X1 U151 ( .A(n202), .B(g_button), .S(n134), .Z(n119) );
  AND2_X1 U152 ( .A1(key), .A2(n176), .ZN(n134) );
  INV_X1 U153 ( .A(n140), .ZN(n176) );
  MUX2_X1 U154 ( .A(n180), .B(voto1), .S(n181), .Z(n118) );
  NOR2_X1 U155 ( .A1(n182), .A2(n138), .ZN(n181) );
  NOR3_X1 U156 ( .A1(n183), .A2(n202), .A3(n140), .ZN(n182) );
  INV_X1 U157 ( .A(g_button), .ZN(n183) );
  OAI22_X1 U158 ( .A1(n141), .A2(n184), .B1(voto1), .B2(n143), .ZN(n180) );
  NAND2_X1 U159 ( .A1(key), .A2(n185), .ZN(n143) );
  INV_X1 U160 ( .A(v_in[1]), .ZN(n184) );
  INV_X1 U161 ( .A(n186), .ZN(n141) );
  OAI21_X1 U162 ( .B1(n187), .B2(n158), .A(n188), .ZN(n117) );
  MUX2_X1 U163 ( .A(n189), .B(n190), .S(n138), .Z(n188) );
  OAI211_X1 U164 ( .C1(key), .C2(n140), .A(n149), .B(n177), .ZN(n138) );
  AOI21_X1 U165 ( .B1(start), .B2(n191), .A(n192), .ZN(n177) );
  NAND2_X1 U166 ( .A1(start), .A2(n185), .ZN(n140) );
  INV_X1 U167 ( .A(n152), .ZN(n185) );
  NAND3_X1 U168 ( .A1(n130), .A2(n128), .A3(n193), .ZN(n152) );
  NAND2_X1 U169 ( .A1(v_in[3]), .A2(n186), .ZN(n190) );
  NAND2_X1 U170 ( .A1(n164), .A2(n149), .ZN(n186) );
  NAND4_X1 U171 ( .A1(stato[3]), .A2(stato[0]), .A3(n131), .A4(n128), .ZN(n149) );
  NAND2_X1 U172 ( .A1(test_so), .A2(n158), .ZN(n189) );
  NAND3_X1 U173 ( .A1(n193), .A2(n128), .A3(stato[0]), .ZN(n158) );
  XOR2_X1 U174 ( .A(n129), .B(n194), .Z(n187) );
  XOR2_X1 U175 ( .A(voto2), .B(voto1), .Z(n194) );
  MUX2_X1 U176 ( .A(v_out[0]), .B(voto0), .S(n166), .Z(n116) );
  MUX2_X1 U177 ( .A(v_out[1]), .B(voto1), .S(n166), .Z(n115) );
  MUX2_X1 U178 ( .A(v_out[2]), .B(voto2), .S(n166), .Z(n114) );
  MUX2_X1 U179 ( .A(v_out[3]), .B(test_so), .S(n166), .Z(n113) );
  MUX2_X1 U180 ( .A(n195), .B(cts), .S(n196), .Z(n112) );
  NOR4_X1 U181 ( .A1(n197), .A2(n191), .A3(n166), .A4(n165), .ZN(n196) );
  AOI21_X1 U182 ( .B1(n153), .B2(n159), .A(rtr), .ZN(n165) );
  NAND3_X1 U183 ( .A1(stato[0]), .A2(n193), .A3(stato[2]), .ZN(n159) );
  NAND2_X1 U184 ( .A1(n179), .A2(n131), .ZN(n153) );
  AND3_X1 U185 ( .A1(n130), .A2(n128), .A3(stato[3]), .ZN(n179) );
  NOR2_X1 U186 ( .A1(n198), .A2(n146), .ZN(n166) );
  INV_X1 U187 ( .A(n157), .ZN(n191) );
  INV_X1 U188 ( .A(n148), .ZN(n197) );
  OAI21_X1 U189 ( .B1(n157), .B2(n198), .A(n146), .ZN(n195) );
  NAND3_X1 U190 ( .A1(stato[2]), .A2(n130), .A3(n199), .ZN(n146) );
  INV_X1 U191 ( .A(rtr), .ZN(n198) );
  NAND3_X1 U192 ( .A1(stato[0]), .A2(n128), .A3(n199), .ZN(n157) );
  OAI22_X1 U193 ( .A1(n201), .A2(n192), .B1(rts), .B2(n156), .ZN(n111) );
  NAND3_X1 U194 ( .A1(stato[2]), .A2(stato[0]), .A3(n199), .ZN(n156) );
  OAI21_X1 U195 ( .B1(n164), .B2(n200), .A(n148), .ZN(n192) );
  NAND3_X1 U196 ( .A1(n130), .A2(n128), .A3(n199), .ZN(n148) );
  NOR2_X1 U197 ( .A1(stato[3]), .A2(stato[1]), .ZN(n199) );
  INV_X1 U198 ( .A(rts), .ZN(n200) );
  NAND3_X1 U199 ( .A1(n193), .A2(n130), .A3(stato[2]), .ZN(n164) );
  NOR2_X1 U200 ( .A1(n131), .A2(stato[3]), .ZN(n193) );

