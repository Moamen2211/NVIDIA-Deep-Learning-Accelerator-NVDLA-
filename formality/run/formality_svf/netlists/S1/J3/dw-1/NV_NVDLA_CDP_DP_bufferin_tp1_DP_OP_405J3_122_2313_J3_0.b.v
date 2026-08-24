
module NV_NVDLA_CDP_DP_bufferin_tp1_DP_OP_405J3_122_2313_J3_0 ( I1, I2, O1, O2, 
        O3 );
  input [3:0] I1;
  input [3:0] I2;
  output [3:0] O1;
  output [3:0] O2;
  output O3;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n40, n41, n42, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56;
  assign O1[0] = n34;
  assign n37 = I1[0];
  assign O1[1] = n40;
  assign O1[2] = n41;
  assign O1[3] = n42;
  assign O3 = n45;
  assign O2[0] = n46;
  assign O2[1] = n47;
  assign O2[2] = n48;
  assign O2[3] = n49;
  assign n50 = I2[0];
  assign n51 = I2[1];
  assign n52 = I2[2];
  assign n53 = I2[3];
  assign n54 = I1[1];
  assign n55 = I1[2];
  assign n56 = I1[3];

  INVX1_RVT U1 ( .A(n1), .Y(n45) );
  INVX1_RVT U2 ( .A(n7), .Y(n27) );
  INVX1_RVT U3 ( .A(n2), .Y(n26) );
  XOR2X1_RVT U4 ( .A1(n7), .A2(n5), .Y(n31) );
  NAND2X0_RVT U5 ( .A1(n12), .A2(n3), .Y(n1) );
  AOI21X1_RVT U6 ( .A1(n3), .A2(n13), .A3(n4), .Y(n2) );
  NOR2X1_RVT U7 ( .A1(n10), .A2(n5), .Y(n3) );
  OAI21X1_RVT U8 ( .A1(n11), .A2(n5), .A3(n6), .Y(n4) );
  XNOR2X1_RVT U9 ( .A1(n22), .A2(n53), .Y(n5) );
  NAND2X0_RVT U10 ( .A1(n53), .A2(n22), .Y(n6) );
  XNOR2X1_RVT U11 ( .A1(n13), .A2(n10), .Y(n30) );
  AOI21X1_RVT U12 ( .A1(n13), .A2(n8), .A3(n9), .Y(n7) );
  INVX1_RVT U13 ( .A(n10), .Y(n8) );
  INVX1_RVT U14 ( .A(n11), .Y(n9) );
  XNOR2X1_RVT U15 ( .A1(n23), .A2(n52), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n52), .A2(n23), .Y(n11) );
  XOR2X1_RVT U17 ( .A1(n14), .A2(n17), .Y(n29) );
  NOR2X1_RVT U18 ( .A1(n16), .A2(n14), .Y(n12) );
  OAI21X1_RVT U19 ( .A1(n17), .A2(n14), .A3(n15), .Y(n13) );
  XNOR2X1_RVT U20 ( .A1(n24), .A2(n51), .Y(n14) );
  NAND2X0_RVT U21 ( .A1(n51), .A2(n24), .Y(n15) );
  NBUFFX2_RVT U22 ( .A(n20), .Y(n28) );
  INVX1_RVT U23 ( .A(n18), .Y(n16) );
  INVX1_RVT U24 ( .A(n19), .Y(n17) );
  INVX1_RVT U25 ( .A(n20), .Y(n18) );
  NAND2X0_RVT U26 ( .A1(n21), .A2(n20), .Y(n19) );
  XNOR2X1_RVT U27 ( .A1(n25), .A2(n50), .Y(n20) );
  NAND2X0_RVT U28 ( .A1(n50), .A2(n25), .Y(n21) );
  INVX1_RVT U29 ( .A(n42), .Y(n22) );
  INVX1_RVT U30 ( .A(n41), .Y(n23) );
  INVX1_RVT U31 ( .A(n40), .Y(n24) );
  INVX1_RVT U32 ( .A(n34), .Y(n25) );
  XOR2X1_RVT U33 ( .A1(n32), .A2(n42), .Y(n49) );
  HADDX1_RVT U34 ( .A0(n41), .B0(n33), .SO(n48), .C1(n32) );
  HADDX1_RVT U35 ( .A0(n34), .B0(n40), .SO(n47), .C1(n33) );
  INVX1_RVT U36 ( .A(n34), .Y(n46) );
  XNOR2X1_RVT U37 ( .A1(n35), .A2(n56), .Y(n42) );
  XNOR2X1_RVT U38 ( .A1(n36), .A2(n55), .Y(n41) );
  OR2X1_RVT U39 ( .A1(n55), .A2(n36), .Y(n35) );
  XNOR2X1_RVT U40 ( .A1(n37), .A2(n54), .Y(n40) );
  OR2X1_RVT U41 ( .A1(n54), .A2(n37), .Y(n36) );
  INVX1_RVT U42 ( .A(n37), .Y(n34) );
endmodule

