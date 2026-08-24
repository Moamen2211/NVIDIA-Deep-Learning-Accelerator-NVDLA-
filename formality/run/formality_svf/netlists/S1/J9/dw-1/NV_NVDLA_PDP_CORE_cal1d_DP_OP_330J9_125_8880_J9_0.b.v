
module NV_NVDLA_PDP_CORE_cal1d_DP_OP_330J9_125_8880_J9_0 ( I1, I3, O1, I2 );
  input [3:0] I1;
  input [4:0] I3;
  output [4:0] O1;
  input I2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32;
  assign O1[0] = n18;
  assign O1[1] = n19;
  assign O1[2] = n20;
  assign O1[3] = n21;
  assign O1[4] = n22;
  assign n23 = I3[0];
  assign n24 = I3[1];
  assign n25 = I3[2];
  assign n26 = I3[3];
  assign n27 = I3[4];
  assign n28 = I2;
  assign n29 = I1[0];
  assign n30 = I1[1];
  assign n31 = I1[2];
  assign n32 = I1[3];

  XOR2X1_RVT U1 ( .A1(n1), .A2(n27), .Y(n22) );
  FADDX1_RVT U2 ( .A(n26), .B(n5), .CI(n2), .S(n21), .CO(n1) );
  FADDX1_RVT U3 ( .A(n25), .B(n6), .CI(n3), .S(n20), .CO(n2) );
  FADDX1_RVT U4 ( .A(n24), .B(n7), .CI(n4), .S(n19), .CO(n3) );
  XNOR2X1_RVT U5 ( .A1(n8), .A2(n23), .Y(n18) );
  OR2X1_RVT U6 ( .A1(n23), .A2(n8), .Y(n4) );
  NOR2X1_RVT U7 ( .A1(n9), .A2(n13), .Y(n5) );
  NOR2X1_RVT U8 ( .A1(n10), .A2(n13), .Y(n6) );
  NOR2X1_RVT U9 ( .A1(n11), .A2(n13), .Y(n7) );
  NOR2X1_RVT U10 ( .A1(n12), .A2(n13), .Y(n8) );
  INVX4_RVT U11 ( .A(n32), .Y(n9) );
  INVX4_RVT U12 ( .A(n31), .Y(n10) );
  INVX4_RVT U13 ( .A(n30), .Y(n11) );
  INVX4_RVT U14 ( .A(n29), .Y(n12) );
  INVX4_RVT U15 ( .A(n28), .Y(n13) );
endmodule

