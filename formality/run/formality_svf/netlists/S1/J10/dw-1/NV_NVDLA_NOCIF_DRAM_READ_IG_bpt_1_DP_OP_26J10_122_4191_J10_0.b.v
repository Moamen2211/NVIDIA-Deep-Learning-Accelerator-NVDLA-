
module NV_NVDLA_NOCIF_DRAM_READ_IG_bpt_1_DP_OP_26J10_122_4191_J10_0 ( I1, O1, 
        I2, I3 );
  input [7:0] I1;
  output [7:0] O1;
  input I2, I3;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30;
  assign O1[0] = n13;
  assign O1[1] = n14;
  assign O1[2] = n15;
  assign O1[3] = n16;
  assign O1[4] = n17;
  assign O1[5] = n18;
  assign O1[6] = n19;
  assign O1[7] = n20;
  assign n21 = I3;
  assign n22 = I2;
  assign n23 = I1[0];
  assign n24 = I1[1];
  assign n25 = I1[2];
  assign n26 = I1[3];
  assign n27 = I1[4];
  assign n28 = I1[5];
  assign n29 = I1[6];
  assign n30 = I1[7];

  XOR2X1_RVT U1 ( .A1(n2), .A2(n1), .Y(n20) );
  XOR2X1_RVT U2 ( .A1(n21), .A2(n30), .Y(n1) );
  FADDX1_RVT U3 ( .A(n29), .B(n21), .CI(n3), .S(n19), .CO(n2) );
  FADDX1_RVT U4 ( .A(n28), .B(n21), .CI(n4), .S(n18), .CO(n3) );
  FADDX1_RVT U5 ( .A(n27), .B(n21), .CI(n5), .S(n17), .CO(n4) );
  FADDX1_RVT U6 ( .A(n26), .B(n21), .CI(n6), .S(n16), .CO(n5) );
  FADDX1_RVT U7 ( .A(n25), .B(n21), .CI(n7), .S(n15), .CO(n6) );
  FADDX1_RVT U8 ( .A(n24), .B(n21), .CI(n8), .S(n14), .CO(n7) );
  FADDX1_RVT U9 ( .A(n22), .B(n23), .CI(n21), .S(n13), .CO(n8) );
endmodule

