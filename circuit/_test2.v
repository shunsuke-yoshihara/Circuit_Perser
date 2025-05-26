/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP4
// Date      : Mon Jul  1 17:26:34 2024
/////////////////////////////////////////////////////////////

input A, B, C, clock, si, se, reset;
output X, Y, Z, XYZ, XYZ2;
wire w_[1], w_[2], w_[3];

SDFFR_X2   FF1  ( .D(w_[1]), .SI(si), .SE(se), .CK(clock), .RN(
        reset), .Q(X), .QN(Y) );
NAND2_X1   G1   ( .A1(A), .A2(B), .ZN(w_[1]) );
XNOR2_X1   G2   ( .A(B), .B(C), .ZN(w_[2]) );
INV_X1     G3   ( .A(w_[2]), .ZN(w_[3]) );
AOI21_X1   GG1  ( .B1(B), .B2(w_[1]), .A(w_[3]), .ZN(Z) );
INV_X1     G4   ( .A(Z), .ZN(XYZ) );
