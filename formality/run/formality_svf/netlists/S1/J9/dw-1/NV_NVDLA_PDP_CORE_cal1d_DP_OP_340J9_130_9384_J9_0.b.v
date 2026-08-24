
module NV_NVDLA_PDP_CORE_cal1d_DP_OP_340J9_130_9384_J9_0 ( I1, I2, I3, O1 );
  input [2:0] I1;
  input [2:0] I2;
  input [5:0] I3;
  output [7:0] O1;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41;
  assign n8 = I3[5];
  assign n10 = I3[4];
  assign n12 = I3[3];
  assign O1[0] = n25;
  assign O1[1] = n26;
  assign O1[2] = n27;
  assign O1[3] = n28;
  assign O1[4] = n29;
  assign O1[5] = n30;
  assign O1[6] = n31;
  assign O1[7] = n32;
  assign n33 = I3[0];
  assign n34 = I3[1];
  assign n35 = I3[2];
  assign n36 = I2[0];
  assign n37 = I2[1];
  assign n38 = I2[2];
  assign n39 = I1[0];
  assign n40 = I1[1];
  assign n41 = I1[2];

  INVX1_RVT U1 ( .A(n1), .Y(n32) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(n8), .Y(n31) );
  OR2X1_RVT U3 ( .A1(n8), .A2(n2), .Y(n1) );
  FADDX1_RVT U4 ( .A(n10), .B(n9), .CI(n3), .S(n30), .CO(n2) );
  FADDX1_RVT U5 ( .A(n12), .B(n11), .CI(n4), .S(n29), .CO(n3) );
  FADDX1_RVT U6 ( .A(n13), .B(n14), .CI(n5), .S(n28), .CO(n4) );
  FADDX1_RVT U7 ( .A(n16), .B(n15), .CI(n6), .S(n27), .CO(n5) );
  FADDX1_RVT U8 ( .A(n20), .B(n7), .CI(n17), .S(n26), .CO(n6) );
  FADDX1_RVT U9 ( .A(n36), .B(n33), .CI(n39), .S(n25), .CO(n7) );
  INVX1_RVT U10 ( .A(n8), .Y(n9) );
  INVX1_RVT U11 ( .A(n10), .Y(n11) );
  INVX1_RVT U12 ( .A(n12), .Y(n13) );
  FADDX1_RVT U13 ( .A(n38), .B(n35), .CI(n18), .S(n15), .CO(n14) );
  FADDX1_RVT U14 ( .A(n37), .B(n34), .CI(n19), .S(n17), .CO(n16) );
  INVX1_RVT U15 ( .A(n41), .Y(n18) );
  INVX1_RVT U16 ( .A(n40), .Y(n19) );
  INVX1_RVT U17 ( .A(n39), .Y(n20) );
endmodule

