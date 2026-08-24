
module NV_NVDLA_PDP_CORE_cal2d_DP_OP_820J5_139_2700_J5_0 ( I1, O1 );
  input [7:0] I1;
  output [8:0] O1;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28;
  assign n8 = I1[0];
  assign O1[0] = n13;
  assign O1[1] = n14;
  assign O1[2] = n15;
  assign O1[3] = n16;
  assign O1[4] = n17;
  assign O1[5] = n18;
  assign O1[6] = n19;
  assign O1[7] = n20;
  assign O1[8] = n21;
  assign n22 = I1[1];
  assign n23 = I1[2];
  assign n24 = I1[3];
  assign n25 = I1[4];
  assign n26 = I1[5];
  assign n27 = I1[6];
  assign n28 = I1[7];

  NBUFFX4_RVT U1 ( .A(n1), .Y(n21) );
  HADDX1_RVT U2 ( .A0(n28), .B0(n2), .C1(n1), .SO(n20) );
  HADDX1_RVT U3 ( .A0(n27), .B0(n3), .C1(n2), .SO(n19) );
  HADDX1_RVT U4 ( .A0(n26), .B0(n4), .C1(n3), .SO(n18) );
  HADDX1_RVT U5 ( .A0(n25), .B0(n5), .C1(n4), .SO(n17) );
  HADDX1_RVT U6 ( .A0(n24), .B0(n6), .C1(n5), .SO(n16) );
  HADDX1_RVT U7 ( .A0(n23), .B0(n7), .C1(n6), .SO(n15) );
  HADDX1_RVT U8 ( .A0(n22), .B0(n8), .C1(n7), .SO(n14) );
  INVX1_RVT U9 ( .A(n8), .Y(n13) );
endmodule

