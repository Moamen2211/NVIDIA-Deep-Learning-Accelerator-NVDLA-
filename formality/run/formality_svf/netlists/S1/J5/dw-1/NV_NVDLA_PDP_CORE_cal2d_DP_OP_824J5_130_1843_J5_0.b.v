
module NV_NVDLA_PDP_CORE_cal2d_DP_OP_824J5_130_1843_J5_0 ( I1, I2, O1 );
  input [2:0] I1;
  input [2:0] I2;
  output O1;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n36, n37, n38, n39, n40, n41, n42, n43;
  assign n31 = I1[1];
  assign n36 = I1[0];
  assign O1 = n39;
  assign n40 = I2[0];
  assign n41 = I2[1];
  assign n42 = I2[2];
  assign n43 = I1[2];

  INVX1_RVT U1 ( .A(n1), .Y(n39) );
  INVX1_RVT U2 ( .A(n7), .Y(n26) );
  INVX1_RVT U3 ( .A(n2), .Y(n25) );
  XOR2X1_RVT U4 ( .A1(n7), .A2(n5), .Y(n30) );
  NAND2X0_RVT U5 ( .A1(n12), .A2(n3), .Y(n1) );
  AOI21X1_RVT U6 ( .A1(n3), .A2(n13), .A3(n4), .Y(n2) );
  NOR2X1_RVT U7 ( .A1(n5), .A2(n10), .Y(n3) );
  OAI21X1_RVT U8 ( .A1(n5), .A2(n11), .A3(n6), .Y(n4) );
  INVX1_RVT U9 ( .A(n5), .Y(n6) );
  XNOR2X1_RVT U10 ( .A1(n13), .A2(n10), .Y(n29) );
  AOI21X1_RVT U11 ( .A1(n13), .A2(n8), .A3(n9), .Y(n7) );
  INVX1_RVT U12 ( .A(n10), .Y(n8) );
  INVX1_RVT U13 ( .A(n11), .Y(n9) );
  XNOR2X1_RVT U14 ( .A1(n38), .A2(n22), .Y(n10) );
  NAND2X0_RVT U15 ( .A1(n22), .A2(n38), .Y(n11) );
  XOR2X1_RVT U16 ( .A1(n17), .A2(n14), .Y(n28) );
  NOR2X1_RVT U17 ( .A1(n14), .A2(n16), .Y(n12) );
  OAI21X1_RVT U18 ( .A1(n14), .A2(n17), .A3(n15), .Y(n13) );
  XNOR2X1_RVT U19 ( .A1(n37), .A2(n23), .Y(n14) );
  NAND2X0_RVT U20 ( .A1(n23), .A2(n37), .Y(n15) );
  NBUFFX2_RVT U21 ( .A(n20), .Y(n27) );
  INVX1_RVT U22 ( .A(n18), .Y(n16) );
  INVX1_RVT U23 ( .A(n19), .Y(n17) );
  INVX1_RVT U24 ( .A(n20), .Y(n18) );
  NAND2X0_RVT U25 ( .A1(n21), .A2(n20), .Y(n19) );
  XNOR2X1_RVT U26 ( .A1(n24), .A2(n36), .Y(n20) );
  NAND2X0_RVT U27 ( .A1(n36), .A2(n24), .Y(n21) );
  INVX1_RVT U28 ( .A(n42), .Y(n22) );
  INVX1_RVT U29 ( .A(n41), .Y(n23) );
  INVX1_RVT U30 ( .A(n40), .Y(n24) );
  XNOR2X1_RVT U31 ( .A1(n31), .A2(n43), .Y(n38) );
  OR2X1_RVT U32 ( .A1(n43), .A2(n31), .Y(n5) );
  INVX1_RVT U33 ( .A(n31), .Y(n37) );
endmodule

