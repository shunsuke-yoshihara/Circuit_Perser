/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP4
// Date      : Mon Jul  1 17:27:19 2024
/////////////////////////////////////////////////////////////

  input  I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7];
  output  O[0], O[1], O[2], O[3];
  input CLOCK, RESET, START, test_si, test_se;
  output test_so;
  wire   STATO_0_, n21, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n127, n128, n129, n130, n131, n132, n133;
  wire    MAR[0], MAR[1], MAR[2];
  wire    IN_R[0], IN_R[1], IN_R[2], IN_R[3], IN_R[4], IN_R[5], IN_R[6], IN_R[7];

  SDFFR_X2 MAR_reg_0_ ( .D(n125), .SI(n132), .SE(test_se), .CK(CLOCK), .RN(n21), .Q(MAR[0]), .QN(n41) );
  SDFFR_X2 MAR_reg_2_ ( .D(n124), .SI(MAR[1]), .SE(test_se), .CK(CLOCK), .RN(
        n21), .Q(MAR[2]), .QN(n39) );
  SDFFR_X2 STATO_reg_0_ ( .D(n122), .SI(O[3]), .SE(test_se), .CK(CLOCK), .RN(
        n21), .Q(STATO_0_), .QN(n127) );
  SDFFR_X2 STATO_reg_1_ ( .D(n123), .SI(n127), .SE(test_se), .CK(CLOCK), .RN(
        n21), .Q(test_so), .QN(n31) );
  SDFFR_X2 MAR_reg_1_ ( .D(n121), .SI(MAR[0]), .SE(test_se), .CK(CLOCK), .RN(
        n21), .Q(MAR[1]), .QN(n40) );
  SDFFR_X2 IN_R_reg_7_ ( .D(n28), .SI(IN_R[6]), .SE(test_se), .CK(CLOCK), .RN(
        n21), .Q(IN_R[7]), .QN(n132) );
  SDFFR_X2 IN_R_reg_6_ ( .D(n120), .SI(IN_R[5]), .SE(test_se), .CK(CLOCK), 
        .RN(n21), .Q(IN_R[6]), .QN(n42) );
  SDFFR_X2 IN_R_reg_5_ ( .D(n119), .SI(IN_R[4]), .SE(test_se), .CK(CLOCK), 
        .RN(n21), .Q(IN_R[5]), .QN(n43) );
  SDFFR_X2 IN_R_reg_4_ ( .D(n118), .SI(n133), .SE(test_se), .CK(CLOCK), .RN(
        n21), .Q(IN_R[4]), .QN(n44) );
  SDFFR_X1 IN_R_reg_3_ ( .D(n117), .SI(IN_R[2]), .SE(test_se), .CK(CLOCK), 
        .RN(n21), .Q(n133), .QN(n45) );
  SDFFR_X2 IN_R_reg_2_ ( .D(n116), .SI(IN_R[1]), .SE(test_se), .CK(CLOCK), 
        .RN(n21), .Q(IN_R[2]), .QN(n46) );
  SDFFR_X2 IN_R_reg_1_ ( .D(n115), .SI(IN_R[0]), .SE(test_se), .CK(CLOCK), 
        .RN(n21), .Q(IN_R[1]), .QN(n47) );
  SDFFR_X2 IN_R_reg_0_ ( .D(n114), .SI(test_si), .SE(test_se), .CK(CLOCK), 
        .RN(n21), .Q(IN_R[0]), .QN(n48) );
  SDFFR_X1 OUT_R_reg_3_ ( .D(n107), .SI(n129), .SE(test_se), .CK(CLOCK), .RN(
        n21), .Q(n128), .QN(n49) );
  SDFFR_X1 O_reg_3_ ( .D(n106), .SI(O[2]), .SE(test_se), .CK(CLOCK), .RN(n21), 
        .Q(O[3]), .QN(n23) );
  SDFFR_X1 OUT_R_reg_2_ ( .D(n109), .SI(n130), .SE(test_se), .CK(CLOCK), .RN(
        n21), .Q(n129), .QN(n50) );
  SDFFR_X1 O_reg_2_ ( .D(n108), .SI(O[1]), .SE(test_se), .CK(CLOCK), .RN(n21), 
        .Q(O[2]), .QN(n24) );
  SDFFR_X1 OUT_R_reg_1_ ( .D(n111), .SI(n131), .SE(test_se), .CK(CLOCK), .RN(
        n21), .Q(n130), .QN(n51) );
  SDFFR_X1 O_reg_1_ ( .D(n110), .SI(O[0]), .SE(test_se), .CK(CLOCK), .RN(n21), 
        .Q(O[1]), .QN(n25) );
  SDFFR_X1 OUT_R_reg_0_ ( .D(n113), .SI(MAR[2]), .SE(test_se), .CK(CLOCK), 
        .RN(n21), .Q(n131), .QN(n52) );
  SDFFR_X1 O_reg_0_ ( .D(n112), .SI(n128), .SE(test_se), .CK(CLOCK), .RN(n21), 
        .Q(O[0]), .QN(n26) );
  INV_X4 U23 ( .A(RESET), .ZN(n21) );
  OAI22_X2 U25 ( .A1(n61), .A2(n49), .B1(n32), .B2(n23), .ZN(n106) );
  OAI221_X2 U26 ( .B1(n62), .B2(n63), .C1(n64), .C2(n49), .A(n65), .ZN(n107)
         );
  OAI22_X2 U27 ( .A1(n61), .A2(n50), .B1(n32), .B2(n24), .ZN(n108) );
  OAI22_X2 U28 ( .A1(n64), .A2(n50), .B1(n66), .B2(n63), .ZN(n109) );
  OAI22_X2 U30 ( .A1(n61), .A2(n51), .B1(n32), .B2(n25), .ZN(n110) );
  OAI221_X2 U31 ( .B1(MAR[2]), .B2(n63), .C1(n64), .C2(n51), .A(n65), .ZN(n111) );
  OAI22_X2 U32 ( .A1(n61), .A2(n52), .B1(n32), .B2(n26), .ZN(n112) );
  NAND3_X2 U33 ( .A1(n33), .A2(n53), .A3(n67), .ZN(n61) );
  OAI22_X2 U34 ( .A1(n64), .A2(n52), .B1(n40), .B2(n65), .ZN(n113) );
  OR2_X2 U35 ( .A1(n63), .A2(MAR[0]), .ZN(n65) );
  NAND2_X2 U36 ( .A1(n68), .A2(n69), .ZN(n63) );
  NOR2_X2 U37 ( .A1(n68), .A2(n30), .ZN(n64) );
  NAND4_X2 U39 ( .A1(n68), .A2(n73), .A3(n74), .A4(n75), .ZN(n71) );
  OAI22_X2 U40 ( .A1(n76), .A2(n44), .B1(IN_R[4]), .B2(n77), .ZN(n75) );
  OAI22_X2 U42 ( .A1(n78), .A2(n46), .B1(IN_R[2]), .B2(n79), .ZN(n74) );
  AOI22_X2 U43 ( .A1(MAR[0]), .A2(n80), .B1(n41), .B2(n40), .ZN(n78) );
  OAI22_X2 U44 ( .A1(IN_R[1]), .A2(n34), .B1(n81), .B2(n47), .ZN(n73) );
  AOI22_X2 U45 ( .A1(MAR[0]), .A2(n80), .B1(n82), .B2(n41), .ZN(n81) );
  NAND4_X2 U46 ( .A1(n84), .A2(n85), .A3(n86), .A4(n87), .ZN(n70) );
  NOR2_X2 U47 ( .A1(n88), .A2(n89), .ZN(n87) );
  AOI22_X2 U48 ( .A1(n80), .A2(n43), .B1(IN_R[5]), .B2(n83), .ZN(n89) );
  NAND2_X2 U49 ( .A1(n90), .A2(MAR[2]), .ZN(n83) );
  AOI22_X2 U50 ( .A1(IN_R[6]), .A2(n36), .B1(n91), .B2(n42), .ZN(n88) );
  NOR2_X2 U54 ( .A1(n62), .A2(n41), .ZN(n79) );
  OAI22_X2 U55 ( .A1(n90), .A2(n48), .B1(IN_R[0]), .B2(n94), .ZN(n86) );
  NAND2_X2 U60 ( .A1(n39), .A2(n40), .ZN(n80) );
  NOR2_X2 U61 ( .A1(n40), .A2(MAR[0]), .ZN(n90) );
  OAI22_X2 U65 ( .A1(n29), .A2(n48), .B1(n72), .B2(n60), .ZN(n114) );
  OAI22_X2 U66 ( .A1(n29), .A2(n47), .B1(n72), .B2(n59), .ZN(n115) );
  OAI22_X2 U67 ( .A1(n29), .A2(n46), .B1(n72), .B2(n58), .ZN(n116) );
  OAI22_X2 U68 ( .A1(n29), .A2(n45), .B1(n72), .B2(n57), .ZN(n117) );
  OAI22_X2 U69 ( .A1(n29), .A2(n44), .B1(n72), .B2(n56), .ZN(n118) );
  OAI22_X2 U70 ( .A1(n29), .A2(n43), .B1(n72), .B2(n55), .ZN(n119) );
  OAI22_X2 U71 ( .A1(n29), .A2(n42), .B1(n72), .B2(n54), .ZN(n120) );
  AOI22_X2 U72 ( .A1(n72), .A2(IN_R[7]), .B1(n29), .B2(I[7]), .ZN(n98) );
  NAND3_X2 U74 ( .A1(MAR[0]), .A2(n40), .A3(n33), .ZN(n99) );
  XOR2_X2 U75 ( .A(n101), .B(STATO_0_), .Z(n122) );
  OAI221_X2 U77 ( .B1(STATO_0_), .B2(n53), .C1(START), .C2(n103), .A(n102), 
        .ZN(n101) );
  NOR2_X2 U78 ( .A1(n104), .A2(n68), .ZN(n102) );
  NOR2_X2 U79 ( .A1(n31), .A2(STATO_0_), .ZN(n68) );
  OAI22_X2 U80 ( .A1(n103), .A2(n35), .B1(n105), .B2(n39), .ZN(n124) );
  NOR2_X2 U81 ( .A1(n33), .A2(n100), .ZN(n105) );
  NOR2_X2 U83 ( .A1(n82), .A2(n41), .ZN(n77) );
  NAND2_X2 U84 ( .A1(MAR[1]), .A2(n39), .ZN(n82) );
  OAI22_X2 U85 ( .A1(n41), .A2(n104), .B1(MAR[0]), .B2(n103), .ZN(n125) );
  NAND2_X2 U88 ( .A1(test_so), .A2(STATO_0_), .ZN(n103) );
  NOR3_X2 U89 ( .A1(n40), .A2(n41), .A3(n39), .ZN(n67) );
  INV_X4 U90 ( .A(n100), .ZN(n27) );
  INV_X4 U91 ( .A(n98), .ZN(n28) );
  INV_X4 U92 ( .A(n72), .ZN(n29) );
  INV_X4 U93 ( .A(n69), .ZN(n30) );
  INV_X4 U94 ( .A(n61), .ZN(n32) );
  INV_X4 U95 ( .A(n103), .ZN(n33) );
  INV_X4 U96 ( .A(n83), .ZN(n34) );
  INV_X4 U97 ( .A(n77), .ZN(n35) );
  INV_X4 U98 ( .A(n93), .ZN(n36) );
  INV_X4 U99 ( .A(n62), .ZN(n37) );
  INV_X4 U100 ( .A(n80), .ZN(n38) );
  INV_X4 U101 ( .A(START), .ZN(n53) );
  INV_X4 U102 ( .A(I[6]), .ZN(n54) );
  INV_X4 U103 ( .A(I[5]), .ZN(n55) );
  INV_X4 U104 ( .A(I[4]), .ZN(n56) );
  INV_X4 U105 ( .A(I[3]), .ZN(n57) );
  INV_X4 U106 ( .A(I[2]), .ZN(n58) );
  INV_X4 U107 ( .A(I[1]), .ZN(n59) );
  INV_X4 U108 ( .A(I[0]), .ZN(n60) );
  OAI21_X2 U109 ( .B1(n67), .B2(n103), .A(n72), .ZN(n104) );
  OAI21_X2 U110 ( .B1(MAR[0]), .B2(n103), .A(n104), .ZN(n100) );
  OAI21_X2 U111 ( .B1(n40), .B2(n39), .A(n80), .ZN(n62) );
  OAI21_X2 U112 ( .B1(n70), .B2(n71), .A(n72), .ZN(n69) );
  OAI21_X2 U113 ( .B1(MAR[0]), .B2(n38), .A(n92), .ZN(n91) );
  AOI21_X2 U114 ( .B1(n41), .B2(n82), .A(n79), .ZN(n93) );
  AOI21_X2 U115 ( .B1(MAR[0]), .B2(n39), .A(n40), .ZN(n76) );
  OAI21_X2 U116 ( .B1(IN_R[7]), .B2(n95), .A(n96), .ZN(n85) );
  AOI21_X2 U117 ( .B1(MAR[0]), .B2(n82), .A(n97), .ZN(n95) );
  OAI21_X2 U118 ( .B1(n90), .B2(n37), .A(IN_R[7]), .ZN(n96) );
  AOI21_X2 U119 ( .B1(MAR[2]), .B2(MAR[1]), .A(MAR[0]), .ZN(n97) );
  AOI21_X2 U120 ( .B1(n37), .B2(n41), .A(n67), .ZN(n66) );
  OAI21_X2 U121 ( .B1(MAR[1]), .B2(n39), .A(MAR[0]), .ZN(n92) );
  AOI21_X2 U122 ( .B1(n41), .B2(n39), .A(MAR[1]), .ZN(n94) );
  OAI211_X2 U123 ( .C1(n41), .C2(n39), .A(n82), .B(n45), .ZN(n84) );
  OAI21_X2 U124 ( .B1(n31), .B2(n101), .A(n102), .ZN(n123) );
  NAND2_X2 U125 ( .A1(STATO_0_), .A2(n31), .ZN(n72) );
  OAI21_X2 U126 ( .B1(n27), .B2(n40), .A(n99), .ZN(n121) );

