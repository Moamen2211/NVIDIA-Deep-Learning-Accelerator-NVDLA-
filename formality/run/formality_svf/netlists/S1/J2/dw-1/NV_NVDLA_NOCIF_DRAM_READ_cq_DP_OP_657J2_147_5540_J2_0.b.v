
module NV_NVDLA_NOCIF_DRAM_READ_cq_DP_OP_657J2_147_5540_J2_0 ( I1, O1, I2 );
  input [8:0] I1;
  output [8:0] O1;
  input I2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31;
  assign n9 = I1[0];
  assign O1[0] = n14;
  assign O1[1] = n15;
  assign O1[2] = n16;
  assign O1[3] = n17;
  assign O1[4] = n18;
  assign O1[5] = n19;
  assign O1[6] = n20;
  assign O1[7] = n21;
  assign O1[8] = n22;
  assign n23 = I2;
  assign n24 = I1[1];
  assign n25 = I1[2];
  assign n26 = I1[3];
  assign n27 = I1[4];
  assign n28 = I1[5];
  assign n29 = I1[6];
  assign n30 = I1[7];
  assign n31 = I1[8];

  XOR2X1_RVT U1 ( .A1(n2), .A2(n1), .Y(n22) );
  XOR2X1_RVT U2 ( .A1(n23), .A2(n31), .Y(n1) );
  FADDX1_RVT U3 ( .A(n30), .B(n23), .CI(n3), .S(n21), .CO(n2) );
  FADDX1_RVT U4 ( .A(n29), .B(n23), .CI(n4), .S(n20), .CO(n3) );
  FADDX1_RVT U5 ( .A(n28), .B(n23), .CI(n5), .S(n19), .CO(n4) );
  FADDX1_RVT U6 ( .A(n27), .B(n23), .CI(n6), .S(n18), .CO(n5) );
  FADDX1_RVT U7 ( .A(n26), .B(n23), .CI(n7), .S(n17), .CO(n6) );
  FADDX1_RVT U8 ( .A(n25), .B(n23), .CI(n8), .S(n16), .CO(n7) );
  FADDX1_RVT U9 ( .A(n24), .B(n23), .CI(n9), .S(n15), .CO(n8) );
  INVX1_RVT U10 ( .A(n9), .Y(n14) );
endmodule

