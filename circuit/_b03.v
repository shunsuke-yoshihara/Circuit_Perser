/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP4
// Date      : Mon Jul  1 17:31:27 2024
/////////////////////////////////////////////////////////////


module b03 ( clock, reset, request1, request2, request3, request4, grant_o, 
        test_si, test_so, test_se );
  output [3:0] grant_o;
  input clock, reset, request1, request2, request3, request4, test_si, test_se;
  output test_so;
  wire   stato_0_, ru1, ru2, ru3, ru4, N70, n30, n35, n36, n37, n38, n39, n40,
         n41, n54, n56, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n155,
         n156, n157, n158, n159, n160, n161, n162, n163;

  SDFFR_X2 stato_reg_0_ ( .D(n38), .SI(ru4), .SE(test_se), .CK(clock), .RN(n30), .Q(stato_0_), .QN(n38) );
  SDFFR_X2 stato_reg_1_ ( .D(N70), .SI(stato_0_), .SE(test_se), .CK(clock), 
        .RN(n30), .Q(test_so) );
  SDFFR_X2 ru1_reg ( .D(n37), .SI(n151), .SE(test_se), .CK(clock), .RN(n30), 
        .Q(ru1) );
  SDFFR_X1 fu1_reg ( .D(n112), .SI(n155), .SE(test_se), .CK(clock), .RN(n30), 
        .Q(n153) );
  SDFFR_X2 ru2_reg ( .D(n36), .SI(ru1), .SE(test_se), .CK(clock), .RN(n30), 
        .Q(ru2), .QN(n128) );
  SDFFR_X2 fu2_reg ( .D(n111), .SI(n153), .SE(test_se), .CK(clock), .RN(n30), 
        .Q(n120), .QN(n54) );
  SDFFR_X2 ru3_reg ( .D(n35), .SI(ru2), .SE(test_se), .CK(clock), .RN(n30), 
        .Q(ru3), .QN(n122) );
  SDFFR_X2 fu3_reg ( .D(n110), .SI(n120), .SE(test_se), .CK(clock), .RN(n30), 
        .Q(n123), .QN(n56) );
  SDFFR_X2 ru4_reg ( .D(n109), .SI(ru3), .SE(test_se), .CK(clock), .RN(n30), 
        .Q(ru4), .QN(n129) );
  SDFFR_X1 fu4_reg ( .D(n108), .SI(n123), .SE(test_se), .CK(clock), .RN(n30), 
        .Q(n152) );
  SDFFR_X1 coda1_reg_1_ ( .D(n105), .SI(n163), .SE(test_se), .CK(clock), .RN(
        n30), .Q(n162), .QN(n115) );
  SDFFR_X1 coda2_reg_1_ ( .D(n100), .SI(n160), .SE(test_se), .CK(clock), .RN(
        n30), .Q(n159), .QN(n119) );
  SDFFR_X1 coda3_reg_1_ ( .D(n97), .SI(n157), .SE(test_se), .CK(clock), .RN(
        n30), .Q(n156), .QN(n126) );
  SDFFR_X2 coda0_reg_1_ ( .D(n102), .SI(n121), .SE(test_se), .CK(clock), .RN(
        n30), .Q(n127), .QN(n40) );
  SDFFR_X1 coda1_reg_0_ ( .D(n106), .SI(n116), .SE(test_se), .CK(clock), .RN(
        n30), .Q(n163), .QN(n114) );
  SDFFR_X1 coda2_reg_0_ ( .D(n101), .SI(n161), .SE(test_se), .CK(clock), .RN(
        n30), .Q(n160), .QN(n118) );
  SDFFR_X1 coda3_reg_0_ ( .D(n98), .SI(n158), .SE(test_se), .CK(clock), .RN(
        n30), .Q(n157), .QN(n125) );
  SDFFR_X2 coda0_reg_0_ ( .D(n103), .SI(test_si), .SE(test_se), .CK(clock), 
        .RN(n30), .Q(n121), .QN(n41) );
  SDFFR_X2 coda0_reg_2_ ( .D(n107), .SI(n127), .SE(test_se), .CK(clock), .RN(
        n30), .Q(n116), .QN(n39) );
  SDFFR_X1 coda1_reg_2_ ( .D(n104), .SI(n162), .SE(test_se), .CK(clock), .RN(
        n30), .Q(n161), .QN(n113) );
  SDFFR_X1 coda2_reg_2_ ( .D(n99), .SI(n159), .SE(test_se), .CK(clock), .RN(
        n30), .Q(n158), .QN(n117) );
  SDFFR_X1 coda3_reg_2_ ( .D(n96), .SI(n156), .SE(test_se), .CK(clock), .RN(
        n30), .Q(n155), .QN(n124) );
  SDFFR_X1 grant_reg_3_ ( .D(n95), .SI(n150), .SE(test_se), .CK(clock), .RN(
        n30), .Q(n151) );
  SDFFR_X2 grant_o_reg_3_ ( .D(n94), .SI(grant_o[2]), .SE(test_se), .CK(clock), 
        .RN(n30), .Q(grant_o[3]) );
  SDFFR_X1 grant_reg_2_ ( .D(n93), .SI(n149), .SE(test_se), .CK(clock), .RN(
        n30), .Q(n150) );
  SDFFR_X2 grant_o_reg_2_ ( .D(n92), .SI(grant_o[1]), .SE(test_se), .CK(clock), 
        .RN(n30), .Q(grant_o[2]) );
  SDFFR_X1 grant_reg_1_ ( .D(n91), .SI(n148), .SE(test_se), .CK(clock), .RN(
        n30), .Q(n149) );
  SDFFR_X2 grant_o_reg_1_ ( .D(n90), .SI(grant_o[0]), .SE(test_se), .CK(clock), 
        .RN(n30), .Q(grant_o[1]) );
  SDFFR_X1 grant_reg_0_ ( .D(n89), .SI(grant_o[3]), .SE(test_se), .CK(clock), 
        .RN(n30), .Q(n148) );
  SDFFR_X2 grant_o_reg_0_ ( .D(n88), .SI(n152), .SE(test_se), .CK(clock), .RN(
        n30), .Q(grant_o[0]) );
  INV_X4 U91 ( .A(reset), .ZN(n30) );
  OAI222_X1 U92 ( .A1(n130), .A2(n113), .B1(n131), .B2(n124), .C1(n132), .C2(
        n117), .ZN(n99) );
  OAI22_X1 U93 ( .A1(n132), .A2(n125), .B1(n130), .B2(n118), .ZN(n98) );
  OAI22_X1 U94 ( .A1(n132), .A2(n126), .B1(n130), .B2(n119), .ZN(n97) );
  OAI22_X1 U95 ( .A1(n124), .A2(n132), .B1(n130), .B2(n117), .ZN(n96) );
  MUX2_X1 U96 ( .A(n133), .B(n151), .S(n134), .Z(n95) );
  NOR3_X1 U97 ( .A1(n121), .A2(n39), .A3(n127), .ZN(n133) );
  MUX2_X1 U98 ( .A(grant_o[3]), .B(n151), .S(N70), .Z(n94) );
  MUX2_X1 U99 ( .A(n135), .B(n150), .S(n134), .Z(n93) );
  NOR3_X1 U100 ( .A1(n116), .A2(n40), .A3(n121), .ZN(n135) );
  MUX2_X1 U101 ( .A(grant_o[2]), .B(n150), .S(N70), .Z(n92) );
  MUX2_X1 U102 ( .A(n136), .B(n149), .S(n134), .Z(n91) );
  NOR3_X1 U103 ( .A1(n116), .A2(n41), .A3(n127), .ZN(n136) );
  MUX2_X1 U104 ( .A(grant_o[1]), .B(n149), .S(N70), .Z(n90) );
  MUX2_X1 U105 ( .A(n137), .B(n148), .S(n134), .Z(n89) );
  NOR3_X1 U106 ( .A1(n39), .A2(n41), .A3(n40), .ZN(n137) );
  MUX2_X1 U107 ( .A(grant_o[0]), .B(n148), .S(N70), .Z(n88) );
  MUX2_X1 U108 ( .A(request1), .B(ru1), .S(stato_0_), .Z(n37) );
  MUX2_X1 U109 ( .A(request2), .B(ru2), .S(stato_0_), .Z(n36) );
  MUX2_X1 U110 ( .A(request3), .B(ru3), .S(stato_0_), .Z(n35) );
  MUX2_X1 U111 ( .A(n153), .B(ru1), .S(N70), .Z(n112) );
  MUX2_X1 U112 ( .A(n120), .B(ru2), .S(N70), .Z(n111) );
  MUX2_X1 U113 ( .A(n123), .B(ru3), .S(N70), .Z(n110) );
  MUX2_X1 U114 ( .A(request4), .B(ru4), .S(stato_0_), .Z(n109) );
  MUX2_X1 U115 ( .A(n152), .B(ru4), .S(N70), .Z(n108) );
  OAI222_X1 U116 ( .A1(n131), .A2(n113), .B1(n138), .B2(n130), .C1(n39), .C2(
        n132), .ZN(n107) );
  AOI21_X1 U117 ( .B1(n128), .B2(n122), .A(ru1), .ZN(n138) );
  OAI222_X1 U118 ( .A1(n41), .A2(n130), .B1(n131), .B2(n118), .C1(n132), .C2(
        n114), .ZN(n106) );
  OAI222_X1 U119 ( .A1(n40), .A2(n130), .B1(n131), .B2(n119), .C1(n132), .C2(
        n115), .ZN(n105) );
  OAI222_X1 U120 ( .A1(n39), .A2(n130), .B1(n131), .B2(n117), .C1(n113), .C2(
        n132), .ZN(n104) );
  OAI221_X1 U121 ( .B1(n131), .B2(n114), .C1(n41), .C2(n132), .A(n139), .ZN(
        n103) );
  OR3_X1 U122 ( .A1(ru1), .A2(ru2), .A3(n130), .ZN(n139) );
  OAI221_X1 U123 ( .B1(n131), .B2(n115), .C1(n40), .C2(n132), .A(n140), .ZN(
        n102) );
  OR3_X1 U124 ( .A1(n141), .A2(ru1), .A3(n130), .ZN(n140) );
  OAI222_X1 U125 ( .A1(n130), .A2(n114), .B1(n131), .B2(n125), .C1(n132), .C2(
        n118), .ZN(n101) );
  OAI222_X1 U126 ( .A1(n130), .A2(n115), .B1(n131), .B2(n126), .C1(n132), .C2(
        n119), .ZN(n100) );
  NAND2_X1 U127 ( .A1(n132), .A2(n38), .ZN(n131) );
  NAND2_X1 U128 ( .A1(N70), .A2(n132), .ZN(n130) );
  OAI21_X1 U129 ( .B1(n142), .B2(n143), .A(n134), .ZN(n132) );
  NAND3_X1 U130 ( .A1(n144), .A2(n38), .A3(test_so), .ZN(n134) );
  OR4_X1 U131 ( .A1(n120), .A2(n123), .A3(n153), .A4(n152), .ZN(n144) );
  MUX2_X1 U132 ( .A(n145), .B(n153), .S(ru1), .Z(n143) );
  AOI21_X1 U133 ( .B1(n56), .B2(n141), .A(n146), .ZN(n145) );
  MUX2_X1 U134 ( .A(n147), .B(n54), .S(ru2), .Z(n146) );
  NOR3_X1 U135 ( .A1(n129), .A2(ru3), .A3(n152), .ZN(n147) );
  NOR2_X1 U136 ( .A1(n122), .A2(ru2), .ZN(n141) );
  INV_X1 U137 ( .A(N70), .ZN(n142) );
  NOR2_X1 U138 ( .A1(n38), .A2(test_so), .ZN(N70) );
endmodule

