
module NV_NVDLA_PDP_CORE_cal1d_DP_OP_339J9_129_8838_J9_0 ( I1, I2, O1, I3 );
  input [4:0] I1;
  input [3:0] I2;
  output [5:0] O1;
  input I3;
  wire   n1, n2, n3, n4, n5, n6, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30;
  assign O1[0] = n15;
  assign O1[1] = n16;
  assign O1[2] = n17;
  assign O1[3] = n18;
  assign O1[4] = n19;
  assign O1[5] = n20;
  assign n21 = I3;
  assign n22 = I2[0];
  assign n23 = I2[1];
  assign n24 = I2[2];
  assign n25 = I2[3];
  assign n26 = I1[0];
  assign n27 = I1[1];
  assign n28 = I1[2];
  assign n29 = I1[3];
  assign n30 = I1[4];

  XNOR2X1_RVT U1 ( .A1(n1), .A2(n6), .Y(n20) );
  FADDX1_RVT U2 ( .A(n30), .B(n21), .CI(n2), .S(n19), .CO(n1) );
  FADDX1_RVT U3 ( .A(n29), .B(n11), .CI(n3), .S(n18), .CO(n2) );
  FADDX1_RVT U4 ( .A(n28), .B(n12), .CI(n4), .S(n17), .CO(n3) );
  FADDX1_RVT U5 ( .A(n27), .B(n13), .CI(n5), .S(n16), .CO(n4) );
  FADDX1_RVT U6 ( .A(n21), .B(n26), .CI(n14), .S(n15), .CO(n5) );
  INVX4_RVT U7 ( .A(n21), .Y(n6) );
  XOR2X1_RVT U10 ( .A1(n21), .A2(n25), .Y(n11) );
  XOR2X1_RVT U11 ( .A1(n21), .A2(n24), .Y(n12) );
  XOR2X1_RVT U12 ( .A1(n21), .A2(n23), .Y(n13) );
  XOR2X1_RVT U13 ( .A1(n21), .A2(n22), .Y(n14) );
endmodule

