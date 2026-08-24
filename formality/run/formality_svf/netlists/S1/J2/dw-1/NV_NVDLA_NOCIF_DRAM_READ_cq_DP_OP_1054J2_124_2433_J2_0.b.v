
module NV_NVDLA_NOCIF_DRAM_READ_cq_DP_OP_1054J2_124_2433_J2_0 ( I1, O1, O2, I2
 );
  input [8:0] I1;
  output [8:0] O1;
  output [8:0] O2;
  input I2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47;
  assign O1[0] = n8;
  assign O2[0] = n21;
  assign O2[1] = n22;
  assign O2[2] = n23;
  assign O2[3] = n24;
  assign O2[4] = n25;
  assign O2[5] = n26;
  assign O2[6] = n27;
  assign O2[7] = n28;
  assign O2[8] = n29;
  assign O1[1] = n30;
  assign O1[2] = n31;
  assign O1[3] = n32;
  assign O1[4] = n33;
  assign O1[5] = n34;
  assign O1[6] = n35;
  assign O1[7] = n36;
  assign O1[8] = n37;
  assign n38 = I2;
  assign n39 = I1[0];
  assign n40 = I1[1];
  assign n41 = I1[2];
  assign n42 = I1[3];
  assign n43 = I1[4];
  assign n44 = I1[5];
  assign n45 = I1[6];
  assign n46 = I1[7];
  assign n47 = I1[8];

  XNOR2X1_RVT U1 ( .A1(n37), .A2(n1), .Y(n29) );
  XNOR2X1_RVT U2 ( .A1(n36), .A2(n2), .Y(n28) );
  OR2X1_RVT U3 ( .A1(n2), .A2(n36), .Y(n1) );
  XNOR2X1_RVT U4 ( .A1(n35), .A2(n3), .Y(n27) );
  OR2X1_RVT U5 ( .A1(n3), .A2(n35), .Y(n2) );
  XNOR2X1_RVT U6 ( .A1(n34), .A2(n4), .Y(n26) );
  OR2X1_RVT U7 ( .A1(n4), .A2(n34), .Y(n3) );
  XNOR2X1_RVT U8 ( .A1(n33), .A2(n5), .Y(n25) );
  OR2X1_RVT U9 ( .A1(n5), .A2(n33), .Y(n4) );
  XNOR2X1_RVT U10 ( .A1(n32), .A2(n6), .Y(n24) );
  OR2X1_RVT U11 ( .A1(n6), .A2(n32), .Y(n5) );
  XNOR2X1_RVT U12 ( .A1(n31), .A2(n7), .Y(n23) );
  OR2X1_RVT U13 ( .A1(n7), .A2(n31), .Y(n6) );
  XNOR2X1_RVT U14 ( .A1(n30), .A2(n8), .Y(n22) );
  OR2X1_RVT U15 ( .A1(n8), .A2(n30), .Y(n7) );
  INVX1_RVT U16 ( .A(n8), .Y(n21) );
  XOR2X1_RVT U17 ( .A1(n9), .A2(n47), .Y(n37) );
  HADDX1_RVT U18 ( .A0(n46), .B0(n10), .SO(n36), .C1(n9) );
  HADDX1_RVT U19 ( .A0(n45), .B0(n11), .SO(n35), .C1(n10) );
  HADDX1_RVT U20 ( .A0(n44), .B0(n12), .SO(n34), .C1(n11) );
  HADDX1_RVT U21 ( .A0(n43), .B0(n13), .SO(n33), .C1(n12) );
  HADDX1_RVT U22 ( .A0(n42), .B0(n14), .SO(n32), .C1(n13) );
  HADDX1_RVT U23 ( .A0(n41), .B0(n15), .SO(n31), .C1(n14) );
  HADDX1_RVT U24 ( .A0(n40), .B0(n16), .SO(n30), .C1(n15) );
  HADDX1_RVT U25 ( .A0(n38), .B0(n39), .SO(n8), .C1(n16) );
endmodule

