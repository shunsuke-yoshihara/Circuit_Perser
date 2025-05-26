/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP4
// Date      : Mon Jul  1 17:26:56 2024
/////////////////////////////////////////////////////////////


module b06 ( cc_mux, eql, uscite, clock, enable_count, ackout, reset, cont_eql, 
        test_si, test_so, test_se );
  output [2:1] cc_mux;
  output [2:1] uscite;
  input eql, clock, reset, cont_eql, test_si, test_se;
  output enable_count, ackout, test_so;
  wire   N36, N37, N38, N40, N41, N42, N43, n10, n16, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61;
  wire   [2:0] state;
  assign test_so = uscite[2];

  SDFFR_X2 state_reg_0_ ( .D(N40), .SI(enable_count), .SE(test_se), .CK(clock), 
        .RN(n10), .Q(state[0]) );
  SDFFR_X2 state_reg_1_ ( .D(N41), .SI(state[0]), .SE(test_se), .CK(clock), 
        .RN(n10), .Q(state[1]), .QN(n38) );
  SDFFR_X2 state_reg_2_ ( .D(N42), .SI(state[1]), .SE(test_se), .CK(clock), 
        .RN(n10), .Q(state[2]), .QN(n39) );
  SDFFR_X2 uscite_reg_2_ ( .D(n16), .SI(uscite[1]), .SE(test_se), .CK(clock), 
        .RN(n10), .Q(uscite[2]) );
  SDFFR_X2 uscite_reg_1_ ( .D(N38), .SI(state[2]), .SE(test_se), .CK(clock), 
        .RN(n10), .Q(uscite[1]) );
  SDFFR_X2 cc_mux_reg_2_ ( .D(N37), .SI(cc_mux[1]), .SE(test_se), .CK(clock), 
        .RN(n10), .Q(cc_mux[2]) );
  SDFFR_X2 cc_mux_reg_1_ ( .D(N36), .SI(ackout), .SE(test_se), .CK(clock), 
        .RN(n10), .Q(cc_mux[1]) );
  SDFFR_X2 enable_count_reg ( .D(N43), .SI(cc_mux[2]), .SE(test_se), .CK(clock), .RN(n10), .Q(enable_count) );
  SDFFR_X2 ackout_reg ( .D(N43), .SI(test_si), .SE(test_se), .CK(clock), .RN(
        n10), .Q(ackout) );
  INV_X4 U43 ( .A(reset), .ZN(n10) );
  INV_X1 U44 ( .A(n40), .ZN(n16) );
  OAI21_X1 U45 ( .B1(eql), .B2(n41), .A(cont_eql), .ZN(N43) );
  OAI21_X1 U46 ( .B1(eql), .B2(n42), .A(n43), .ZN(N42) );
  NAND3_X1 U47 ( .A1(n44), .A2(n41), .A3(n40), .ZN(N41) );
  MUX2_X1 U48 ( .A(n45), .B(n46), .S(eql), .Z(n40) );
  OAI21_X1 U49 ( .B1(n47), .B2(n48), .A(eql), .ZN(n44) );
  OAI21_X1 U50 ( .B1(eql), .B2(n46), .A(n49), .ZN(N40) );
  OAI211_X1 U51 ( .C1(eql), .C2(n45), .A(n46), .B(n49), .ZN(N38) );
  AND2_X1 U52 ( .A1(n50), .A2(n51), .ZN(n49) );
  OAI21_X1 U53 ( .B1(n47), .B2(n52), .A(n53), .ZN(n51) );
  INV_X1 U54 ( .A(n54), .ZN(n45) );
  OAI211_X1 U55 ( .C1(n53), .C2(n41), .A(n42), .B(n43), .ZN(N37) );
  NOR2_X1 U56 ( .A1(n54), .A2(n55), .ZN(n43) );
  AOI21_X1 U57 ( .B1(n56), .B2(n46), .A(n53), .ZN(n55) );
  INV_X1 U58 ( .A(eql), .ZN(n53) );
  NAND3_X1 U59 ( .A1(n50), .A2(n57), .A3(n58), .ZN(N36) );
  MUX2_X1 U60 ( .A(n46), .B(n59), .S(eql), .Z(n58) );
  NOR2_X1 U61 ( .A1(n54), .A2(n47), .ZN(n59) );
  INV_X1 U62 ( .A(n42), .ZN(n47) );
  NAND3_X1 U63 ( .A1(n38), .A2(n39), .A3(state[0]), .ZN(n42) );
  NOR3_X1 U64 ( .A1(state[0]), .A2(state[1]), .A3(n39), .ZN(n54) );
  OR3_X1 U65 ( .A1(n38), .A2(state[0]), .A3(n39), .ZN(n46) );
  INV_X1 U66 ( .A(n52), .ZN(n57) );
  NAND2_X1 U67 ( .A1(n56), .A2(n41), .ZN(n52) );
  OR2_X1 U68 ( .A1(n60), .A2(state[0]), .ZN(n41) );
  NAND3_X1 U69 ( .A1(state[2]), .A2(n38), .A3(state[0]), .ZN(n56) );
  MUX2_X1 U70 ( .A(n61), .B(n60), .S(state[0]), .Z(n50) );
  INV_X1 U71 ( .A(n48), .ZN(n60) );
  NOR2_X1 U72 ( .A1(n38), .A2(state[2]), .ZN(n48) );
  NAND2_X1 U73 ( .A1(n38), .A2(n39), .ZN(n61) );
endmodule

