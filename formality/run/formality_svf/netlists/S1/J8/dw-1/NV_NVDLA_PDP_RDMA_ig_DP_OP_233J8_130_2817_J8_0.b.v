
module NV_NVDLA_PDP_RDMA_ig_DP_OP_233J8_130_2817_J8_0 ( I1, I2, O1, I3 );
  input [9:0] I1;
  input [3:0] I2;
  output [11:0] O1;
  input I3;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47;
  assign O1[0] = n21;
  assign O1[1] = n22;
  assign O1[2] = n23;
  assign O1[3] = n24;
  assign O1[4] = n25;
  assign O1[5] = n26;
  assign O1[6] = n27;
  assign O1[7] = n28;
  assign O1[8] = n29;
  assign O1[9] = n30;
  assign O1[10] = n31;
  assign O1[11] = n32;
  assign n33 = I3;
  assign n34 = I2[0];
  assign n35 = I2[1];
  assign n36 = I2[2];
  assign n37 = I2[3];
  assign n38 = I1[0];
  assign n39 = I1[1];
  assign n40 = I1[2];
  assign n41 = I1[3];
  assign n42 = I1[4];
  assign n43 = I1[5];
  assign n44 = I1[6];
  assign n45 = I1[7];
  assign n46 = I1[8];
  assign n47 = I1[9];

  INVX1_RVT U1 ( .A(n1), .Y(n32) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(n12), .Y(n31) );
  OR2X1_RVT U3 ( .A1(n12), .A2(n2), .Y(n1) );
  FADDX1_RVT U4 ( .A(n47), .B(n33), .CI(n3), .S(n30), .CO(n2) );
  FADDX1_RVT U5 ( .A(n46), .B(n33), .CI(n4), .S(n29), .CO(n3) );
  FADDX1_RVT U6 ( .A(n45), .B(n33), .CI(n5), .S(n28), .CO(n4) );
  FADDX1_RVT U7 ( .A(n44), .B(n33), .CI(n6), .S(n27), .CO(n5) );
  FADDX1_RVT U8 ( .A(n43), .B(n33), .CI(n7), .S(n26), .CO(n6) );
  FADDX1_RVT U9 ( .A(n42), .B(n33), .CI(n8), .S(n25), .CO(n7) );
  FADDX1_RVT U10 ( .A(n41), .B(n17), .CI(n9), .S(n24), .CO(n8) );
  FADDX1_RVT U11 ( .A(n40), .B(n18), .CI(n10), .S(n23), .CO(n9) );
  FADDX1_RVT U12 ( .A(n39), .B(n19), .CI(n11), .S(n22), .CO(n10) );
  FADDX1_RVT U13 ( .A(n33), .B(n38), .CI(n20), .S(n21), .CO(n11) );
  INVX4_RVT U14 ( .A(n33), .Y(n12) );
  XOR2X1_RVT U17 ( .A1(n33), .A2(n37), .Y(n17) );
  XOR2X1_RVT U18 ( .A1(n33), .A2(n36), .Y(n18) );
  XOR2X1_RVT U19 ( .A1(n33), .A2(n35), .Y(n19) );
  XOR2X1_RVT U20 ( .A1(n33), .A2(n34), .Y(n20) );
endmodule

