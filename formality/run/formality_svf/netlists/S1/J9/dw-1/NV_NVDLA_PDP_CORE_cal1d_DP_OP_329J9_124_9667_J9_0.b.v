
module NV_NVDLA_PDP_CORE_cal1d_DP_OP_329J9_124_9667_J9_0 ( I1, I2, I3, O1, O2, 
        O3 );
  input [2:0] I1;
  input [2:0] I2;
  input [3:0] I3;
  output [3:0] O1;
  output [4:0] O2;
  output [4:0] O3;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40;
  assign n13 = I1[0];
  assign O3[0] = n18;
  assign O3[1] = n19;
  assign O3[2] = n20;
  assign O3[3] = n21;
  assign O3[4] = n22;
  assign O2[0] = n23;
  assign O2[1] = n24;
  assign O2[2] = n25;
  assign O2[3] = n26;
  assign O2[4] = n27;
  assign O1[0] = n28;
  assign O1[1] = n29;
  assign O1[2] = n30;
  assign O1[3] = n31;
  assign n32 = I3[0];
  assign n33 = I3[1];
  assign n34 = I3[2];
  assign n35 = I3[3];
  assign n36 = I2[0];
  assign n37 = I2[1];
  assign n38 = I2[2];
  assign n39 = I1[1];
  assign n40 = I1[2];

  NBUFFX4_RVT U1 ( .A(n1), .Y(n22) );
  FADDX1_RVT U2 ( .A(n35), .B(n31), .CI(n2), .S(n21), .CO(n1) );
  FADDX1_RVT U3 ( .A(n34), .B(n30), .CI(n3), .S(n20), .CO(n2) );
  FADDX1_RVT U4 ( .A(n33), .B(n4), .CI(n29), .S(n19), .CO(n3) );
  XNOR2X1_RVT U5 ( .A1(n28), .A2(n32), .Y(n18) );
  OR2X1_RVT U6 ( .A1(n32), .A2(n28), .Y(n4) );
  INVX1_RVT U7 ( .A(n5), .Y(n27) );
  XNOR2X1_RVT U8 ( .A1(n6), .A2(n31), .Y(n26) );
  OR2X1_RVT U9 ( .A1(n31), .A2(n6), .Y(n5) );
  FADDX1_RVT U10 ( .A(n9), .B(n30), .CI(n7), .S(n25), .CO(n6) );
  FADDX1_RVT U11 ( .A(n10), .B(n8), .CI(n29), .S(n24), .CO(n7) );
  XNOR2X1_RVT U12 ( .A1(n28), .A2(n11), .Y(n23) );
  OR2X1_RVT U13 ( .A1(n11), .A2(n28), .Y(n8) );
  INVX1_RVT U14 ( .A(n38), .Y(n9) );
  INVX1_RVT U15 ( .A(n37), .Y(n10) );
  INVX1_RVT U16 ( .A(n36), .Y(n11) );
  HADDX1_RVT U17 ( .A0(n40), .B0(n12), .SO(n30), .C1(n31) );
  HADDX1_RVT U18 ( .A0(n39), .B0(n13), .SO(n29), .C1(n12) );
  INVX1_RVT U19 ( .A(n13), .Y(n28) );
endmodule

