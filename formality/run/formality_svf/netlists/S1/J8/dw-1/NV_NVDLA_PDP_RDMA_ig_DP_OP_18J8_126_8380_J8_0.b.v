
module NV_NVDLA_PDP_RDMA_ig_DP_OP_18J8_126_8380_J8_0 ( I1, O1 );
  input [9:0] I1;
  output [10:0] O1;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34;
  assign n10 = I1[0];
  assign O1[0] = n15;
  assign O1[1] = n16;
  assign O1[2] = n17;
  assign O1[3] = n18;
  assign O1[4] = n19;
  assign O1[5] = n20;
  assign O1[6] = n21;
  assign O1[7] = n22;
  assign O1[8] = n23;
  assign O1[9] = n24;
  assign O1[10] = n25;
  assign n26 = I1[1];
  assign n27 = I1[2];
  assign n28 = I1[3];
  assign n29 = I1[4];
  assign n30 = I1[5];
  assign n31 = I1[6];
  assign n32 = I1[7];
  assign n33 = I1[8];
  assign n34 = I1[9];

  NBUFFX4_RVT U1 ( .A(n1), .Y(n25) );
  HADDX1_RVT U2 ( .A0(n34), .B0(n2), .SO(n24), .C1(n1) );
  HADDX1_RVT U3 ( .A0(n33), .B0(n3), .SO(n23), .C1(n2) );
  HADDX1_RVT U4 ( .A0(n32), .B0(n4), .SO(n22), .C1(n3) );
  HADDX1_RVT U5 ( .A0(n31), .B0(n5), .SO(n21), .C1(n4) );
  HADDX1_RVT U6 ( .A0(n30), .B0(n6), .SO(n20), .C1(n5) );
  HADDX1_RVT U7 ( .A0(n29), .B0(n7), .SO(n19), .C1(n6) );
  HADDX1_RVT U8 ( .A0(n28), .B0(n8), .SO(n18), .C1(n7) );
  HADDX1_RVT U9 ( .A0(n27), .B0(n9), .SO(n17), .C1(n8) );
  HADDX1_RVT U10 ( .A0(n26), .B0(n10), .SO(n16), .C1(n9) );
  INVX1_RVT U11 ( .A(n10), .Y(n15) );
endmodule

