
module NV_NVDLA_PDP_RDMA_ig_DP_OP_226J8_122_1082_J8_0 ( I1, O1, O2, I2 );
  input [12:0] I1;
  output [13:0] O1;
  output [10:0] O2;
  input I2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64;
  assign n22 = I1[0];
  assign O2[0] = n27;
  assign O2[1] = n28;
  assign O2[2] = n29;
  assign O2[3] = n30;
  assign O2[4] = n31;
  assign O2[5] = n32;
  assign O2[6] = n33;
  assign O2[7] = n34;
  assign O2[8] = n35;
  assign O2[9] = n36;
  assign O2[10] = n37;
  assign O1[0] = n38;
  assign O1[1] = n39;
  assign O1[2] = n40;
  assign O1[3] = n41;
  assign O1[4] = n42;
  assign O1[5] = n43;
  assign O1[6] = n44;
  assign O1[7] = n45;
  assign O1[8] = n46;
  assign O1[9] = n47;
  assign O1[10] = n48;
  assign O1[11] = n49;
  assign O1[12] = n50;
  assign O1[13] = n51;
  assign n52 = I2;
  assign n53 = I1[1];
  assign n54 = I1[2];
  assign n55 = I1[3];
  assign n56 = I1[4];
  assign n57 = I1[5];
  assign n58 = I1[6];
  assign n59 = I1[7];
  assign n60 = I1[8];
  assign n61 = I1[9];
  assign n62 = I1[10];
  assign n63 = I1[11];
  assign n64 = I1[12];

  XOR2X1_RVT U1 ( .A1(n1), .A2(n51), .Y(n37) );
  HADDX1_RVT U2 ( .A0(n50), .B0(n2), .SO(n36), .C1(n1) );
  HADDX1_RVT U3 ( .A0(n49), .B0(n3), .SO(n35), .C1(n2) );
  HADDX1_RVT U4 ( .A0(n48), .B0(n4), .SO(n34), .C1(n3) );
  HADDX1_RVT U5 ( .A0(n47), .B0(n5), .SO(n33), .C1(n4) );
  HADDX1_RVT U6 ( .A0(n46), .B0(n6), .SO(n32), .C1(n5) );
  HADDX1_RVT U7 ( .A0(n45), .B0(n7), .SO(n31), .C1(n6) );
  HADDX1_RVT U8 ( .A0(n44), .B0(n8), .SO(n30), .C1(n7) );
  HADDX1_RVT U9 ( .A0(n43), .B0(n9), .SO(n29), .C1(n8) );
  HADDX1_RVT U10 ( .A0(n42), .B0(n10), .SO(n28), .C1(n9) );
  HADDX1_RVT U11 ( .A0(n52), .B0(n41), .SO(n27), .C1(n10) );
  HADDX1_RVT U12 ( .A0(n64), .B0(n11), .SO(n50), .C1(n51) );
  HADDX1_RVT U13 ( .A0(n63), .B0(n12), .SO(n49), .C1(n11) );
  HADDX1_RVT U14 ( .A0(n62), .B0(n13), .SO(n48), .C1(n12) );
  HADDX1_RVT U15 ( .A0(n61), .B0(n14), .SO(n47), .C1(n13) );
  HADDX1_RVT U16 ( .A0(n60), .B0(n15), .SO(n46), .C1(n14) );
  HADDX1_RVT U17 ( .A0(n59), .B0(n16), .SO(n45), .C1(n15) );
  HADDX1_RVT U18 ( .A0(n58), .B0(n17), .SO(n44), .C1(n16) );
  HADDX1_RVT U19 ( .A0(n57), .B0(n18), .SO(n43), .C1(n17) );
  HADDX1_RVT U20 ( .A0(n56), .B0(n19), .SO(n42), .C1(n18) );
  HADDX1_RVT U21 ( .A0(n55), .B0(n20), .SO(n41), .C1(n19) );
  HADDX1_RVT U22 ( .A0(n54), .B0(n21), .SO(n40), .C1(n20) );
  HADDX1_RVT U23 ( .A0(n53), .B0(n22), .SO(n39), .C1(n21) );
  INVX1_RVT U24 ( .A(n22), .Y(n38) );
endmodule

