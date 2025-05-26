input   A, B ,CLOCK, SI1, SI2, se, RESET;
output  X, Y, Z;
wire    w1, w2, w3, w4, w5, w6, w7, w8, w9, w10;

SDFFR_X2   FF1  ( .D(w7), .SI(SI1), .SE(se), .CK(CLOCK), .RN(
        RESET), .Q(w8), .QN(w9) );
SDFFR_X1   FF2  ( .D(A), .SI(SI2), .SE(se), .CK(CLOCK),
        .RN(RESET), .Q(w8), .QN(X) );
NAND2_X1   G1   ( .A1(A), .A2(B), .ZN(w1) );
MUX2_X1    M1   ( .A(w1), .B(w2), .S(w4), .Z(w5) );
XNOR2_X1   G2   ( .A(A), .B(B), .ZN(w2) );
INV_X1     G3   ( .A(B), .ZN(w3) );
NOR3_X1    G4   ( .A1(A), .A2(B), .A3(w3), .ZN(w4) );
AOI21_X1   GG1  ( .B1(w4), .B2(w5), .A(B), .ZN(w6) );
OAI211_X1  GG2  ( .C1(w4), .C2(w5), .A(B), .B(A), .ZN(w7) );
NAND3_X1   G5   ( .A1(w6), .A2(w7), .A3(w8), .ZN(w10) );
OAI21_X1   GG3  ( .B1(w8), .B2(w9), .A(w10), .ZN(Y) );
NOR2_X1    G6   ( .A1(w8), .A2(w10), .ZN(Z) );

