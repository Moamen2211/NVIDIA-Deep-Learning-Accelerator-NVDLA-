
module NV_NVDLA_PDP_CORE_cal2d_DP_OP_816J5_122_2234_J5_0 ( I1, I2, O1, O2, O3
 );
  input [2:0] I1;
  input [2:0] I2;
  output [3:0] O1;
  output [4:0] O2;
  output [3:0] O3;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34;
  assign n12 = I1[0];
  assign O3[0] = n17;
  assign O3[1] = n18;
  assign O3[2] = n19;
  assign O3[3] = n20;
  assign O2[0] = n21;
  assign O2[1] = n22;
  assign O2[2] = n23;
  assign O2[3] = n24;
  assign O2[4] = n25;
  assign O1[0] = n26;
  assign O1[1] = n27;
  assign O1[2] = n28;
  assign O1[3] = n29;
  assign n30 = I2[0];
  assign n31 = I2[1];
  assign n32 = I2[2];
  assign n33 = I1[1];
  assign n34 = I1[2];

  XNOR2X1_RVT U1 ( .A1(n1), .A2(n29), .Y(n20) );
  FADDX1_RVT U2 ( .A(n4), .B(n28), .CI(n2), .S(n19), .CO(n1) );
  FADDX1_RVT U3 ( .A(n5), .B(n3), .CI(n27), .S(n18), .CO(n2) );
  XNOR2X1_RVT U4 ( .A1(n26), .A2(n6), .Y(n17) );
  OR2X1_RVT U5 ( .A1(n6), .A2(n26), .Y(n3) );
  INVX1_RVT U6 ( .A(n32), .Y(n4) );
  INVX1_RVT U7 ( .A(n31), .Y(n5) );
  INVX1_RVT U8 ( .A(n30), .Y(n6) );
  NBUFFX4_RVT U9 ( .A(n7), .Y(n25) );
  HADDX1_RVT U10 ( .A0(n29), .B0(n8), .SO(n24), .C1(n7) );
  HADDX1_RVT U11 ( .A0(n9), .B0(n28), .SO(n23), .C1(n8) );
  HADDX1_RVT U12 ( .A0(n10), .B0(n27), .SO(n22), .C1(n9) );
  INVX1_RVT U13 ( .A(n26), .Y(n21) );
  NBUFFX4_RVT U14 ( .A(n26), .Y(n10) );
  HADDX1_RVT U15 ( .A0(n34), .B0(n11), .SO(n28), .C1(n29) );
  HADDX1_RVT U16 ( .A0(n33), .B0(n12), .SO(n27), .C1(n11) );
  INVX1_RVT U17 ( .A(n12), .Y(n26) );
endmodule

