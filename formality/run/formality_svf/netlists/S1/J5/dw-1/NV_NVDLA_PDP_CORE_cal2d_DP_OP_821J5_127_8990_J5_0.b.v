
module NV_NVDLA_PDP_CORE_cal2d_DP_OP_821J5_127_8990_J5_0 ( I1, I2, O1, O2 );
  input [2:0] I1;
  input [2:0] I2;
  output [3:0] O1;
  output O2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46;
  assign n32 = I1[0];
  assign O2 = n37;
  assign O1[0] = n38;
  assign O1[1] = n39;
  assign O1[2] = n40;
  assign O1[3] = n41;
  assign n42 = I2[0];
  assign n43 = I2[1];
  assign n44 = I2[2];
  assign n45 = I1[1];
  assign n46 = I1[2];

  INVX1_RVT U1 ( .A(n1), .Y(n37) );
  INVX1_RVT U2 ( .A(n7), .Y(n26) );
  INVX1_RVT U3 ( .A(n2), .Y(n25) );
  XOR2X1_RVT U4 ( .A1(n7), .A2(n5), .Y(n30) );
  NAND2X0_RVT U5 ( .A1(n12), .A2(n3), .Y(n1) );
  AOI21X1_RVT U6 ( .A1(n13), .A2(n3), .A3(n4), .Y(n2) );
  NOR2X1_RVT U7 ( .A1(n5), .A2(n10), .Y(n3) );
  OAI21X1_RVT U8 ( .A1(n5), .A2(n11), .A3(n6), .Y(n4) );
  NBUFFX2_RVT U9 ( .A(n41), .Y(n5) );
  INVX1_RVT U10 ( .A(n41), .Y(n6) );
  XNOR2X1_RVT U11 ( .A1(n13), .A2(n10), .Y(n29) );
  AOI21X1_RVT U12 ( .A1(n13), .A2(n8), .A3(n9), .Y(n7) );
  INVX1_RVT U13 ( .A(n10), .Y(n8) );
  INVX1_RVT U14 ( .A(n11), .Y(n9) );
  XNOR2X1_RVT U15 ( .A1(n40), .A2(n22), .Y(n10) );
  NAND2X0_RVT U16 ( .A1(n22), .A2(n40), .Y(n11) );
  XOR2X1_RVT U17 ( .A1(n14), .A2(n17), .Y(n28) );
  NOR2X1_RVT U18 ( .A1(n16), .A2(n14), .Y(n12) );
  OAI21X1_RVT U19 ( .A1(n17), .A2(n14), .A3(n15), .Y(n13) );
  XNOR2X1_RVT U20 ( .A1(n39), .A2(n23), .Y(n14) );
  NAND2X0_RVT U21 ( .A1(n23), .A2(n39), .Y(n15) );
  NBUFFX2_RVT U22 ( .A(n20), .Y(n27) );
  INVX1_RVT U23 ( .A(n18), .Y(n16) );
  INVX1_RVT U24 ( .A(n19), .Y(n17) );
  INVX1_RVT U25 ( .A(n20), .Y(n18) );
  NAND2X0_RVT U26 ( .A1(n21), .A2(n20), .Y(n19) );
  XNOR2X1_RVT U27 ( .A1(n38), .A2(n24), .Y(n20) );
  NAND2X0_RVT U28 ( .A1(n24), .A2(n38), .Y(n21) );
  INVX1_RVT U29 ( .A(n44), .Y(n22) );
  INVX1_RVT U30 ( .A(n43), .Y(n23) );
  INVX1_RVT U31 ( .A(n42), .Y(n24) );
  HADDX1_RVT U32 ( .A0(n46), .B0(n31), .SO(n40), .C1(n41) );
  XNOR2X1_RVT U33 ( .A1(n32), .A2(n45), .Y(n39) );
  OR2X1_RVT U34 ( .A1(n45), .A2(n32), .Y(n31) );
  INVX1_RVT U35 ( .A(n32), .Y(n38) );
endmodule

