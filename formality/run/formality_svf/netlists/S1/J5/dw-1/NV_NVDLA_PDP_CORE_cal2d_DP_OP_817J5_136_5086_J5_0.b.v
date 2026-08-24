
module NV_NVDLA_PDP_CORE_cal2d_DP_OP_817J5_136_5086_J5_0 ( I1, O1 );
  input [10:0] I1;
  output [11:0] O1;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37;
  assign n11 = I1[0];
  assign O1[0] = n16;
  assign O1[1] = n17;
  assign O1[2] = n18;
  assign O1[3] = n19;
  assign O1[4] = n20;
  assign O1[5] = n21;
  assign O1[6] = n22;
  assign O1[7] = n23;
  assign O1[8] = n24;
  assign O1[9] = n25;
  assign O1[10] = n26;
  assign O1[11] = n27;
  assign n28 = I1[1];
  assign n29 = I1[2];
  assign n30 = I1[3];
  assign n31 = I1[4];
  assign n32 = I1[5];
  assign n33 = I1[6];
  assign n34 = I1[7];
  assign n35 = I1[8];
  assign n36 = I1[9];
  assign n37 = I1[10];

  NBUFFX4_RVT U1 ( .A(n1), .Y(n27) );
  HADDX1_RVT U2 ( .A0(n37), .B0(n2), .C1(n1), .SO(n26) );
  HADDX1_RVT U3 ( .A0(n36), .B0(n3), .C1(n2), .SO(n25) );
  HADDX1_RVT U4 ( .A0(n35), .B0(n4), .C1(n3), .SO(n24) );
  HADDX1_RVT U5 ( .A0(n34), .B0(n5), .C1(n4), .SO(n23) );
  HADDX1_RVT U6 ( .A0(n33), .B0(n6), .C1(n5), .SO(n22) );
  HADDX1_RVT U7 ( .A0(n32), .B0(n7), .C1(n6), .SO(n21) );
  HADDX1_RVT U8 ( .A0(n31), .B0(n8), .C1(n7), .SO(n20) );
  HADDX1_RVT U9 ( .A0(n30), .B0(n9), .C1(n8), .SO(n19) );
  HADDX1_RVT U10 ( .A0(n29), .B0(n10), .C1(n9), .SO(n18) );
  HADDX1_RVT U11 ( .A0(n28), .B0(n11), .C1(n10), .SO(n17) );
  INVX1_RVT U12 ( .A(n11), .Y(n16) );
endmodule

