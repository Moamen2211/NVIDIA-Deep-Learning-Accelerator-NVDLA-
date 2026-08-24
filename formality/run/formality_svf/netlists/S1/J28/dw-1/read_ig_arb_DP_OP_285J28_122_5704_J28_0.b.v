
module read_ig_arb_DP_OP_285J28_122_5704_J28_0 ( I1, O1 );
  input [7:0] I1;
  output [7:0] O1;
  wire   n1, n2, n3, n4, n5, n6, n7, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26;
  assign n7 = I1[0];
  assign O1[0] = n12;
  assign O1[1] = n13;
  assign O1[2] = n14;
  assign O1[3] = n15;
  assign O1[4] = n16;
  assign O1[5] = n17;
  assign O1[6] = n18;
  assign O1[7] = n19;
  assign n20 = I1[1];
  assign n21 = I1[2];
  assign n22 = I1[3];
  assign n23 = I1[4];
  assign n24 = I1[5];
  assign n25 = I1[6];
  assign n26 = I1[7];

  XNOR2X1_RVT U1 ( .A1(n1), .A2(n26), .Y(n19) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(n25), .Y(n18) );
  OR2X1_RVT U3 ( .A1(n25), .A2(n2), .Y(n1) );
  XNOR2X1_RVT U4 ( .A1(n3), .A2(n24), .Y(n17) );
  OR2X1_RVT U5 ( .A1(n24), .A2(n3), .Y(n2) );
  XNOR2X1_RVT U6 ( .A1(n4), .A2(n23), .Y(n16) );
  OR2X1_RVT U7 ( .A1(n23), .A2(n4), .Y(n3) );
  XNOR2X1_RVT U8 ( .A1(n5), .A2(n22), .Y(n15) );
  OR2X1_RVT U9 ( .A1(n22), .A2(n5), .Y(n4) );
  XNOR2X1_RVT U10 ( .A1(n6), .A2(n21), .Y(n14) );
  OR2X1_RVT U11 ( .A1(n21), .A2(n6), .Y(n5) );
  XNOR2X1_RVT U12 ( .A1(n7), .A2(n20), .Y(n13) );
  OR2X1_RVT U13 ( .A1(n20), .A2(n7), .Y(n6) );
  INVX1_RVT U14 ( .A(n7), .Y(n12) );
endmodule

