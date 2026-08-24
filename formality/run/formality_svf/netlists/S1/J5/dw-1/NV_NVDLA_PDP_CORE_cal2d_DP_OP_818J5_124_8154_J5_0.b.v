
module NV_NVDLA_PDP_CORE_cal2d_DP_OP_818J5_124_8154_J5_0 ( I1, I2, I3, I4, O2, 
        O1 );
  input [2:0] I1;
  input [2:0] I2;
  input [2:0] I3;
  input [2:0] I4;
  output [5:0] O2;
  output O1;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74;
  assign O2[0] = n56;
  assign O2[1] = n57;
  assign O2[2] = n58;
  assign O2[3] = n59;
  assign O2[4] = n60;
  assign O2[5] = n61;
  assign O1 = n62;
  assign n63 = I4[0];
  assign n64 = I4[1];
  assign n65 = I4[2];
  assign n66 = I3[0];
  assign n67 = I3[1];
  assign n68 = I3[2];
  assign n69 = I2[0];
  assign n70 = I2[1];
  assign n71 = I2[2];
  assign n72 = I1[0];
  assign n73 = I1[1];
  assign n74 = I1[2];

  INVX1_RVT U1 ( .A(n1), .Y(n61) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(n8), .Y(n60) );
  OR2X1_RVT U3 ( .A1(n8), .A2(n2), .Y(n1) );
  FADDX1_RVT U4 ( .A(n9), .B(n55), .CI(n3), .S(n59), .CO(n2) );
  FADDX1_RVT U5 ( .A(n10), .B(n54), .CI(n4), .S(n58), .CO(n3) );
  FADDX1_RVT U6 ( .A(n12), .B(n5), .CI(n53), .S(n57), .CO(n4) );
  FADDX1_RVT U7 ( .A(n63), .B(n66), .CI(n6), .S(n56), .CO(n5) );
  INVX4_RVT U8 ( .A(n7), .Y(n6) );
  INVX4_RVT U9 ( .A(n52), .Y(n7) );
  INVX1_RVT U10 ( .A(n8), .Y(n9) );
  FADDX1_RVT U11 ( .A(n65), .B(n13), .CI(n11), .S(n10), .CO(n8) );
  FADDX1_RVT U12 ( .A(n64), .B(n14), .CI(n15), .S(n12), .CO(n11) );
  INVX1_RVT U13 ( .A(n68), .Y(n13) );
  INVX1_RVT U14 ( .A(n67), .Y(n14) );
  INVX1_RVT U15 ( .A(n66), .Y(n15) );
  NBUFFX2_RVT U16 ( .A(n20), .Y(n62) );
  XOR2X1_RVT U17 ( .A1(n24), .A2(n16), .Y(n45) );
  AOI21X1_RVT U18 ( .A1(n21), .A2(n29), .A3(n22), .Y(n20) );
  INVX1_RVT U19 ( .A(n27), .Y(n21) );
  NAND2X0_RVT U20 ( .A1(n23), .A2(n28), .Y(n22) );
  INVX1_RVT U21 ( .A(n23), .Y(n16) );
  INVX1_RVT U22 ( .A(n55), .Y(n23) );
  XNOR2X1_RVT U23 ( .A1(n17), .A2(n29), .Y(n44) );
  AOI21X1_RVT U24 ( .A1(n29), .A2(n25), .A3(n26), .Y(n24) );
  INVX1_RVT U25 ( .A(n27), .Y(n25) );
  INVX1_RVT U26 ( .A(n28), .Y(n26) );
  NAND2X0_RVT U27 ( .A1(n36), .A2(n28), .Y(n17) );
  INVX1_RVT U28 ( .A(n27), .Y(n36) );
  NOR2X1_RVT U29 ( .A1(n39), .A2(n54), .Y(n27) );
  NAND2X0_RVT U30 ( .A1(n39), .A2(n54), .Y(n28) );
  XOR2X1_RVT U31 ( .A1(n18), .A2(n32), .Y(n43) );
  OAI21X1_RVT U32 ( .A1(n32), .A2(n30), .A3(n31), .Y(n29) );
  NAND2X0_RVT U33 ( .A1(n37), .A2(n31), .Y(n18) );
  INVX1_RVT U34 ( .A(n30), .Y(n37) );
  NOR2X1_RVT U35 ( .A1(n40), .A2(n53), .Y(n30) );
  NAND2X0_RVT U36 ( .A1(n40), .A2(n53), .Y(n31) );
  NBUFFX2_RVT U37 ( .A(n19), .Y(n42) );
  INVX1_RVT U38 ( .A(n33), .Y(n32) );
  NAND2X0_RVT U39 ( .A1(n35), .A2(n34), .Y(n33) );
  NAND2X0_RVT U40 ( .A1(n38), .A2(n35), .Y(n19) );
  INVX1_RVT U41 ( .A(n34), .Y(n38) );
  NOR2X1_RVT U42 ( .A1(n41), .A2(n52), .Y(n34) );
  NAND2X0_RVT U43 ( .A1(n41), .A2(n52), .Y(n35) );
  INVX1_RVT U44 ( .A(n68), .Y(n39) );
  INVX1_RVT U45 ( .A(n67), .Y(n40) );
  INVX1_RVT U46 ( .A(n66), .Y(n41) );
  FADDX1_RVT U47 ( .A(n71), .B(n74), .CI(n46), .S(n54), .CO(n55) );
  FADDX1_RVT U48 ( .A(n70), .B(n73), .CI(n47), .S(n53), .CO(n46) );
  HADDX1_RVT U49 ( .A0(n69), .B0(n72), .SO(n52), .C1(n47) );
endmodule

