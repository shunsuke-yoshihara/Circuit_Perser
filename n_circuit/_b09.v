/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP4
// Date      : Mon Jul  1 17:32:22 2024
/////////////////////////////////////////////////////////////

  input reset, clock, x, test_si, test_se;
  output y, test_so;
  wire   y, stato_1_, N39, N41, N42, N43, N44, N45, N46, N47, N48, N49, n28,
         n30, n36, n38, n39, n40, n41, n42, n43, n44, n45, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190;
  

  SDFFR_X2 old_reg_0_ ( .D(n110), .SI(n176), .SE(test_se), .CK(clock), .RN(n28), .Q(n175), .QN(n119) );
  SDFFR_X2 d_in_reg_8_ ( .D(N49), .SI(n184), .SE(test_se), .CK(clock), .RN(n28), .Q(n183), .QN(n36) );
  SDFFR_X2 d_in_reg_7_ ( .D(N48), .SI(n185), .SE(test_se), .CK(clock), .RN(n28), .Q(n184), .QN(n38) );
  SDFFR_X2 d_in_reg_6_ ( .D(N47), .SI(n186), .SE(test_se), .CK(clock), .RN(n28), .Q(n185), .QN(n39) );
  SDFFR_X2 d_in_reg_5_ ( .D(N46), .SI(n187), .SE(test_se), .CK(clock), .RN(n28), .Q(n186), .QN(n40) );
  SDFFR_X2 d_in_reg_4_ ( .D(N45), .SI(n188), .SE(test_se), .CK(clock), .RN(n28), .Q(n187), .QN(n41) );
  SDFFR_X2 d_in_reg_3_ ( .D(N44), .SI(n189), .SE(test_se), .CK(clock), .RN(n28), .Q(n188), .QN(n42) );
  SDFFR_X2 d_in_reg_2_ ( .D(N43), .SI(n190), .SE(test_se), .CK(clock), .RN(n28), .Q(n189), .QN(n43) );
  SDFFR_X2 d_in_reg_1_ ( .D(N42), .SI(n125), .SE(test_se), .CK(clock), .RN(n28), .Q(n190), .QN(n44) );
  SDFFR_X2 d_in_reg_0_ ( .D(N41), .SI(test_si), .SE(test_se), .CK(clock), .RN(
        n28), .Q(n125), .QN(n45) );
  SDFFR_X1 stato_reg_0_ ( .D(N39), .SI(n168), .SE(test_se), .CK(clock), .RN(
        n28), .Q(n166) );
  SDFFR_X2 stato_reg_1_ ( .D(n30), .SI(n166), .SE(test_se), .CK(clock), .RN(
        n28), .Q(stato_1_), .QN(n127) );
  SDFFR_X1 d_out_reg_7_ ( .D(n102), .SI(n177), .SE(test_se), .CK(clock), .RN(
        n28), .Q(n176), .QN(n126) );
  SDFFR_X1 d_out_reg_6_ ( .D(n103), .SI(n178), .SE(test_se), .CK(clock), .RN(
        n28), .Q(n177), .QN(n114) );
  SDFFR_X1 d_out_reg_5_ ( .D(n104), .SI(n179), .SE(test_se), .CK(clock), .RN(
        n28), .Q(n178), .QN(n124) );
  SDFFR_X1 d_out_reg_4_ ( .D(n105), .SI(n180), .SE(test_se), .CK(clock), .RN(
        n28), .Q(n179), .QN(n113) );
  SDFFR_X1 d_out_reg_3_ ( .D(n106), .SI(n181), .SE(test_se), .CK(clock), .RN(
        n28), .Q(n180), .QN(n123) );
  SDFFR_X1 d_out_reg_2_ ( .D(n107), .SI(n182), .SE(test_se), .CK(clock), .RN(
        n28), .Q(n181), .QN(n112) );
  SDFFR_X1 d_out_reg_1_ ( .D(n108), .SI(n165), .SE(test_se), .CK(clock), .RN(
        n28), .Q(n182), .QN(n111) );
  SDFFR_X1 d_out_reg_0_ ( .D(n109), .SI(n183), .SE(test_se), .CK(clock), .RN(
        n28), .Q(n165), .QN(n128) );
  SDFFR_X2 y_reg ( .D(n94), .SI(stato_1_), .SE(test_se), .CK(clock), .RN(n28), 
        .Q(y) );
  SDFFR_X2 old_reg_7_ ( .D(n95), .SI(n169), .SE(test_se), .CK(clock), .RN(n28), 
        .Q(n168), .QN(n118) );
  SDFFR_X2 old_reg_6_ ( .D(n96), .SI(n170), .SE(test_se), .CK(clock), .RN(n28), 
        .Q(n169), .QN(n117) );
  SDFFR_X2 old_reg_5_ ( .D(n97), .SI(n171), .SE(test_se), .CK(clock), .RN(n28), 
        .Q(n170), .QN(n116) );
  SDFFR_X2 old_reg_4_ ( .D(n98), .SI(n172), .SE(test_se), .CK(clock), .RN(n28), 
        .Q(n171), .QN(n115) );
  SDFFR_X2 old_reg_3_ ( .D(n99), .SI(n173), .SE(test_se), .CK(clock), .RN(n28), 
        .Q(n172), .QN(n122) );
  SDFFR_X2 old_reg_2_ ( .D(n100), .SI(n174), .SE(test_se), .CK(clock), .RN(n28), .Q(n173), .QN(n121) );
  SDFFR_X2 old_reg_1_ ( .D(n101), .SI(n175), .SE(test_se), .CK(clock), .RN(n28), .Q(n174), .QN(n120) );
  INV_X4 U96 ( .A(reset), .ZN(n28) );
  OAI22_X1 U97 ( .A1(n129), .A2(n122), .B1(n41), .B2(n130), .ZN(n99) );
  OAI22_X1 U98 ( .A1(n129), .A2(n115), .B1(n40), .B2(n130), .ZN(n98) );
  OAI22_X1 U99 ( .A1(n129), .A2(n116), .B1(n39), .B2(n130), .ZN(n97) );
  OAI22_X1 U100 ( .A1(n129), .A2(n117), .B1(n38), .B2(n130), .ZN(n96) );
  OAI22_X1 U101 ( .A1(n129), .A2(n118), .B1(n36), .B2(n130), .ZN(n95) );
  MUX2_X1 U102 ( .A(n131), .B(y), .S(n132), .Z(n94) );
  NOR2_X1 U103 ( .A1(n30), .A2(n133), .ZN(n132) );
  OAI21_X1 U104 ( .B1(n134), .B2(n135), .A(n136), .ZN(n131) );
  NAND3_X1 U105 ( .A1(n45), .A2(n137), .A3(n165), .ZN(n136) );
  AOI21_X1 U106 ( .B1(n125), .B2(n138), .A(n139), .ZN(n134) );
  OAI21_X1 U107 ( .B1(n140), .B2(n135), .A(n141), .ZN(n30) );
  NOR2_X1 U108 ( .A1(n142), .A2(n125), .ZN(n140) );
  OAI22_X1 U109 ( .A1(n129), .A2(n119), .B1(n44), .B2(n130), .ZN(n110) );
  OAI222_X1 U110 ( .A1(n44), .A2(n143), .B1(n144), .B2(n111), .C1(n128), .C2(
        n145), .ZN(n109) );
  OAI222_X1 U111 ( .A1(n43), .A2(n143), .B1(n144), .B2(n112), .C1(n111), .C2(
        n145), .ZN(n108) );
  OAI222_X1 U112 ( .A1(n42), .A2(n143), .B1(n144), .B2(n123), .C1(n145), .C2(
        n112), .ZN(n107) );
  OAI222_X1 U113 ( .A1(n41), .A2(n143), .B1(n144), .B2(n113), .C1(n145), .C2(
        n123), .ZN(n106) );
  OAI222_X1 U114 ( .A1(n40), .A2(n143), .B1(n144), .B2(n124), .C1(n145), .C2(
        n113), .ZN(n105) );
  OAI222_X1 U115 ( .A1(n39), .A2(n143), .B1(n144), .B2(n114), .C1(n145), .C2(
        n124), .ZN(n104) );
  OAI222_X1 U116 ( .A1(n38), .A2(n143), .B1(n144), .B2(n126), .C1(n145), .C2(
        n114), .ZN(n103) );
  NAND2_X1 U117 ( .A1(n137), .A2(n145), .ZN(n144) );
  OAI22_X1 U118 ( .A1(n145), .A2(n126), .B1(n36), .B2(n143), .ZN(n102) );
  NAND2_X1 U119 ( .A1(n146), .A2(n145), .ZN(n143) );
  NAND2_X1 U120 ( .A1(n147), .A2(n148), .ZN(n145) );
  MUX2_X1 U121 ( .A(n149), .B(n141), .S(n45), .Z(n147) );
  OAI22_X1 U122 ( .A1(n129), .A2(n120), .B1(n43), .B2(n130), .ZN(n101) );
  OAI22_X1 U123 ( .A1(n129), .A2(n121), .B1(n42), .B2(n130), .ZN(n100) );
  NAND2_X1 U124 ( .A1(n146), .A2(n129), .ZN(n130) );
  OAI21_X1 U125 ( .B1(n45), .B2(n135), .A(n148), .ZN(n129) );
  OAI22_X1 U126 ( .A1(n150), .A2(n151), .B1(n149), .B2(n45), .ZN(N49) );
  AOI21_X1 U127 ( .B1(n138), .B2(n142), .A(n139), .ZN(n149) );
  AOI211_X1 U128 ( .C1(n45), .C2(n142), .A(n137), .B(n139), .ZN(n151) );
  INV_X1 U129 ( .A(x), .ZN(n150) );
  NOR2_X1 U130 ( .A1(n36), .A2(n152), .ZN(N48) );
  NOR2_X1 U131 ( .A1(n38), .A2(n152), .ZN(N47) );
  NOR2_X1 U132 ( .A1(n39), .A2(n152), .ZN(N46) );
  NOR2_X1 U133 ( .A1(n40), .A2(n152), .ZN(N45) );
  NOR2_X1 U134 ( .A1(n41), .A2(n152), .ZN(N44) );
  NOR2_X1 U135 ( .A1(n42), .A2(n152), .ZN(N43) );
  NOR2_X1 U136 ( .A1(n43), .A2(n152), .ZN(N42) );
  NOR2_X1 U137 ( .A1(n44), .A2(n152), .ZN(N41) );
  AOI21_X1 U138 ( .B1(n146), .B2(n45), .A(n137), .ZN(n152) );
  INV_X1 U139 ( .A(n135), .ZN(n146) );
  OAI211_X1 U140 ( .C1(n153), .C2(n138), .A(n148), .B(n154), .ZN(N39) );
  MUX2_X1 U141 ( .A(n141), .B(n135), .S(n45), .Z(n154) );
  NOR2_X1 U142 ( .A1(n142), .A2(n139), .ZN(n135) );
  AND2_X1 U143 ( .A1(n166), .A2(n127), .ZN(n139) );
  INV_X1 U144 ( .A(n153), .ZN(n142) );
  INV_X1 U145 ( .A(n137), .ZN(n141) );
  NOR2_X1 U146 ( .A1(n127), .A2(n166), .ZN(n137) );
  INV_X1 U147 ( .A(n133), .ZN(n148) );
  NOR2_X1 U148 ( .A1(n166), .A2(stato_1_), .ZN(n133) );
  NAND2_X1 U149 ( .A1(n155), .A2(n156), .ZN(n138) );
  NOR4_X1 U150 ( .A1(n157), .A2(n158), .A3(n159), .A4(n160), .ZN(n156) );
  XOR2_X1 U151 ( .A(n115), .B(n40), .Z(n160) );
  XOR2_X1 U152 ( .A(n116), .B(n39), .Z(n159) );
  XOR2_X1 U153 ( .A(n117), .B(n38), .Z(n158) );
  XOR2_X1 U154 ( .A(n118), .B(n36), .Z(n157) );
  NOR4_X1 U155 ( .A1(n161), .A2(n162), .A3(n163), .A4(n164), .ZN(n155) );
  XOR2_X1 U156 ( .A(n119), .B(n44), .Z(n164) );
  XOR2_X1 U157 ( .A(n120), .B(n43), .Z(n163) );
  XOR2_X1 U158 ( .A(n121), .B(n42), .Z(n162) );
  XOR2_X1 U159 ( .A(n122), .B(n41), .Z(n161) );
  NAND2_X1 U160 ( .A1(stato_1_), .A2(n166), .ZN(n153) );

