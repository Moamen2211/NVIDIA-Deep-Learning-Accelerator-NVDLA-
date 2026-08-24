
module NV_NVDLA_PDP_CORE_cal1d_DP_OP_332J9_127_8318_J9_0 ( I1, I3, O1, I2 );
  input [10:0] I1;
  input [10:0] I3;
  output [10:0] O1;
  input I2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76;
  assign n35 = I1[10];
  assign n36 = I1[9];
  assign n37 = I1[8];
  assign n38 = I1[7];
  assign n39 = I1[6];
  assign n40 = I1[5];
  assign n41 = I1[4];
  assign n42 = I1[3];
  assign n43 = I1[2];
  assign n44 = I1[1];
  assign n45 = I1[0];
  assign n46 = I2;
  assign O1[0] = n55;
  assign O1[1] = n56;
  assign O1[2] = n57;
  assign O1[3] = n58;
  assign O1[4] = n59;
  assign O1[5] = n60;
  assign O1[6] = n61;
  assign O1[7] = n62;
  assign O1[8] = n63;
  assign O1[9] = n64;
  assign O1[10] = n65;
  assign n66 = I3[0];
  assign n67 = I3[1];
  assign n68 = I3[2];
  assign n69 = I3[3];
  assign n70 = I3[4];
  assign n71 = I3[5];
  assign n72 = I3[6];
  assign n73 = I3[7];
  assign n74 = I3[8];
  assign n75 = I3[9];
  assign n76 = I3[10];

  XOR2X1_RVT U1 ( .A1(n2), .A2(n1), .Y(n65) );
  XOR2X1_RVT U2 ( .A1(n13), .A2(n76), .Y(n1) );
  FADDX1_RVT U3 ( .A(n75), .B(n14), .CI(n3), .S(n64), .CO(n2) );
  FADDX1_RVT U4 ( .A(n74), .B(n15), .CI(n4), .S(n63), .CO(n3) );
  FADDX1_RVT U5 ( .A(n73), .B(n16), .CI(n5), .S(n62), .CO(n4) );
  FADDX1_RVT U6 ( .A(n72), .B(n17), .CI(n6), .S(n61), .CO(n5) );
  FADDX1_RVT U7 ( .A(n71), .B(n18), .CI(n7), .S(n60), .CO(n6) );
  FADDX1_RVT U8 ( .A(n70), .B(n19), .CI(n8), .S(n59), .CO(n7) );
  FADDX1_RVT U9 ( .A(n69), .B(n20), .CI(n9), .S(n58), .CO(n8) );
  FADDX1_RVT U10 ( .A(n68), .B(n21), .CI(n10), .S(n57), .CO(n9) );
  FADDX1_RVT U11 ( .A(n67), .B(n22), .CI(n11), .S(n56), .CO(n10) );
  HADDX1_RVT U12 ( .A0(n66), .B0(n23), .SO(n55), .C1(n11) );
  OAI22X1_RVT U13 ( .A1(n24), .A2(n48), .A3(n25), .A4(n47), .Y(n13) );
  OAI22X1_RVT U14 ( .A1(n25), .A2(n48), .A3(n26), .A4(n47), .Y(n14) );
  OAI22X1_RVT U15 ( .A1(n26), .A2(n48), .A3(n27), .A4(n47), .Y(n15) );
  OAI22X1_RVT U16 ( .A1(n27), .A2(n48), .A3(n28), .A4(n47), .Y(n16) );
  OAI22X1_RVT U17 ( .A1(n28), .A2(n48), .A3(n29), .A4(n47), .Y(n17) );
  OAI22X1_RVT U18 ( .A1(n29), .A2(n48), .A3(n30), .A4(n47), .Y(n18) );
  OAI22X1_RVT U19 ( .A1(n30), .A2(n48), .A3(n31), .A4(n47), .Y(n19) );
  OAI22X1_RVT U20 ( .A1(n31), .A2(n48), .A3(n32), .A4(n47), .Y(n20) );
  OAI22X1_RVT U21 ( .A1(n32), .A2(n48), .A3(n33), .A4(n47), .Y(n21) );
  OAI22X1_RVT U22 ( .A1(n33), .A2(n48), .A3(n34), .A4(n47), .Y(n22) );
  AND2X1_RVT U23 ( .A1(n45), .A2(n12), .Y(n23) );
  INVX1_RVT U24 ( .A(n48), .Y(n12) );
  INVX1_RVT U25 ( .A(n35), .Y(n24) );
  INVX1_RVT U26 ( .A(n36), .Y(n25) );
  INVX1_RVT U27 ( .A(n37), .Y(n26) );
  INVX1_RVT U28 ( .A(n38), .Y(n27) );
  INVX1_RVT U29 ( .A(n39), .Y(n28) );
  INVX1_RVT U30 ( .A(n40), .Y(n29) );
  INVX1_RVT U31 ( .A(n41), .Y(n30) );
  INVX1_RVT U32 ( .A(n42), .Y(n31) );
  INVX1_RVT U33 ( .A(n43), .Y(n32) );
  INVX1_RVT U34 ( .A(n44), .Y(n33) );
  INVX1_RVT U35 ( .A(n45), .Y(n34) );
  NBUFFX4_RVT U36 ( .A(n49), .Y(n47) );
  NBUFFX4_RVT U37 ( .A(n50), .Y(n48) );
  NAND2X0_RVT U38 ( .A1(n50), .A2(n46), .Y(n49) );
  INVX1_RVT U39 ( .A(n46), .Y(n50) );
endmodule

