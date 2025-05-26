/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP4
// Date      : Mon Jul  1 17:26:34 2024
/////////////////////////////////////////////////////////////


module b02 ( reset, clock, linea, u, test_si, test_so, test_se );
  input reset, clock, linea, test_si, test_se;
  output u, test_so;
  wire   u, N33, N34, N35, N36, n4, n18, n19, n20, n21, n22, n23, n24, n25,
         n26;
  wire   [2:0] stato;
  assign test_so = u;

  SDFFR_X2 stato_reg_0_ ( .D(N33), .SI(test_si), .SE(test_se), .CK(clock), 
        .RN(n4), .Q(stato[0]) );
  SDFFR_X2 stato_reg_1_ ( .D(N34), .SI(stato[0]), .SE(test_se), .CK(clock), 
        .RN(n4), .Q(stato[1]), .QN(n18) );
  SDFFR_X2 stato_reg_2_ ( .D(N35), .SI(stato[1]), .SE(test_se), .CK(clock), 
        .RN(n4), .Q(stato[2]), .QN(n19) );
  SDFFR_X2 u_reg ( .D(N36), .SI(stato[2]), .SE(test_se), .CK(clock), .RN(n4), 
        .Q(u) );
  INV_X1 U21 ( .A(reset), .ZN(n4) );
  NOR3_X1 U22 ( .A1(n19), .A2(stato[1]), .A3(stato[0]), .ZN(N36) );
  OAI221_X1 U23 ( .B1(n18), .B2(n20), .C1(n21), .C2(n22), .A(n23), .ZN(N35) );
  INV_X1 U24 ( .A(linea), .ZN(n22) );
  XOR2_X1 U25 ( .A(stato[2]), .B(n24), .Z(n20) );
  OAI221_X1 U26 ( .B1(n18), .B2(n25), .C1(linea), .C2(n21), .A(n23), .ZN(N34)
         );
  OR2_X1 U27 ( .A1(n21), .A2(n19), .ZN(n23) );
  NAND2_X1 U28 ( .A1(stato[0]), .A2(n18), .ZN(n21) );
  OR2_X1 U29 ( .A1(stato[0]), .A2(stato[2]), .ZN(n25) );
  OAI22_X1 U30 ( .A1(stato[1]), .A2(stato[0]), .B1(stato[2]), .B2(n26), .ZN(
        N33) );
  AOI21_X1 U31 ( .B1(linea), .B2(n18), .A(n24), .ZN(n26) );
  NOR2_X1 U32 ( .A1(stato[0]), .A2(linea), .ZN(n24) );
endmodule

