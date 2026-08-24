
module NV_NVDLA_PDP_CORE_cal1d_DP_OP_328J9_123_6252_J9_0 ( I1, I2, I3, O1, O2
 );
  input [9:0] I1;
  input [3:0] I2;
  input [2:0] I3;
  output [10:0] O1;
  output O2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116;
  assign O2 = n88;
  assign O1[0] = n89;
  assign O1[1] = n90;
  assign O1[2] = n91;
  assign O1[3] = n92;
  assign O1[4] = n93;
  assign O1[5] = n94;
  assign O1[6] = n95;
  assign O1[7] = n96;
  assign O1[8] = n97;
  assign O1[9] = n98;
  assign O1[10] = n99;
  assign n100 = I3[0];
  assign n101 = I3[1];
  assign n102 = I3[2];
  assign n103 = I2[0];
  assign n104 = I2[1];
  assign n105 = I2[2];
  assign n106 = I2[3];
  assign n107 = I1[0];
  assign n108 = I1[1];
  assign n109 = I1[2];
  assign n110 = I1[3];
  assign n111 = I1[4];
  assign n112 = I1[5];
  assign n113 = I1[6];
  assign n114 = I1[7];
  assign n115 = I1[8];
  assign n116 = I1[9];

  NBUFFX2_RVT U1 ( .A(n12), .Y(n88) );
  XOR2X1_RVT U2 ( .A1(n15), .A2(n1), .Y(n74) );
  NOR2X1_RVT U3 ( .A1(n13), .A2(n18), .Y(n12) );
  NAND2X0_RVT U4 ( .A1(n14), .A2(n17), .Y(n13) );
  INVX1_RVT U5 ( .A(n14), .Y(n1) );
  INVX1_RVT U6 ( .A(n99), .Y(n14) );
  XNOR2X1_RVT U7 ( .A1(n18), .A2(n2), .Y(n73) );
  NOR2X1_RVT U8 ( .A1(n16), .A2(n18), .Y(n15) );
  INVX1_RVT U9 ( .A(n17), .Y(n16) );
  INVX1_RVT U10 ( .A(n17), .Y(n2) );
  INVX1_RVT U11 ( .A(n98), .Y(n17) );
  XOR2X1_RVT U12 ( .A1(n22), .A2(n3), .Y(n72) );
  NAND2X0_RVT U13 ( .A1(n28), .A2(n19), .Y(n18) );
  NOR2X1_RVT U14 ( .A1(n25), .A2(n20), .Y(n19) );
  INVX1_RVT U15 ( .A(n21), .Y(n20) );
  INVX1_RVT U16 ( .A(n21), .Y(n3) );
  INVX1_RVT U17 ( .A(n97), .Y(n21) );
  XNOR2X1_RVT U18 ( .A1(n27), .A2(n4), .Y(n71) );
  NOR2X1_RVT U19 ( .A1(n23), .A2(n27), .Y(n22) );
  INVX1_RVT U20 ( .A(n24), .Y(n23) );
  INVX1_RVT U21 ( .A(n25), .Y(n24) );
  INVX1_RVT U22 ( .A(n26), .Y(n25) );
  INVX1_RVT U23 ( .A(n26), .Y(n4) );
  INVX1_RVT U24 ( .A(n96), .Y(n26) );
  XNOR2X1_RVT U25 ( .A1(n31), .A2(n5), .Y(n70) );
  INVX1_RVT U26 ( .A(n28), .Y(n27) );
  NOR2X1_RVT U27 ( .A1(n36), .A2(n29), .Y(n28) );
  NAND2X0_RVT U28 ( .A1(n34), .A2(n30), .Y(n29) );
  INVX1_RVT U29 ( .A(n30), .Y(n5) );
  INVX1_RVT U30 ( .A(n95), .Y(n30) );
  XOR2X1_RVT U31 ( .A1(n35), .A2(n6), .Y(n69) );
  NAND2X0_RVT U32 ( .A1(n32), .A2(n35), .Y(n31) );
  INVX1_RVT U33 ( .A(n33), .Y(n32) );
  INVX1_RVT U34 ( .A(n34), .Y(n33) );
  INVX1_RVT U35 ( .A(n34), .Y(n6) );
  INVX1_RVT U36 ( .A(n94), .Y(n34) );
  XOR2X1_RVT U37 ( .A1(n40), .A2(n7), .Y(n68) );
  INVX1_RVT U38 ( .A(n36), .Y(n35) );
  NAND2X0_RVT U39 ( .A1(n46), .A2(n37), .Y(n36) );
  NOR2X1_RVT U40 ( .A1(n43), .A2(n38), .Y(n37) );
  INVX1_RVT U41 ( .A(n39), .Y(n38) );
  INVX1_RVT U42 ( .A(n39), .Y(n7) );
  INVX1_RVT U43 ( .A(n93), .Y(n39) );
  XNOR2X1_RVT U44 ( .A1(n45), .A2(n8), .Y(n67) );
  NOR2X1_RVT U45 ( .A1(n41), .A2(n45), .Y(n40) );
  INVX1_RVT U46 ( .A(n42), .Y(n41) );
  INVX1_RVT U47 ( .A(n43), .Y(n42) );
  INVX1_RVT U48 ( .A(n44), .Y(n43) );
  INVX1_RVT U49 ( .A(n44), .Y(n8) );
  INVX1_RVT U50 ( .A(n92), .Y(n44) );
  XNOR2X1_RVT U51 ( .A1(n9), .A2(n51), .Y(n66) );
  INVX1_RVT U52 ( .A(n46), .Y(n45) );
  AOI21X1_RVT U53 ( .A1(n51), .A2(n47), .A3(n48), .Y(n46) );
  INVX1_RVT U54 ( .A(n49), .Y(n47) );
  INVX1_RVT U55 ( .A(n50), .Y(n48) );
  NAND2X0_RVT U56 ( .A1(n58), .A2(n50), .Y(n9) );
  INVX1_RVT U57 ( .A(n49), .Y(n58) );
  NOR2X1_RVT U58 ( .A1(n61), .A2(n91), .Y(n49) );
  NAND2X0_RVT U59 ( .A1(n61), .A2(n91), .Y(n50) );
  XOR2X1_RVT U60 ( .A1(n10), .A2(n54), .Y(n65) );
  OAI21X1_RVT U61 ( .A1(n54), .A2(n52), .A3(n53), .Y(n51) );
  NAND2X0_RVT U62 ( .A1(n59), .A2(n53), .Y(n10) );
  INVX1_RVT U63 ( .A(n52), .Y(n59) );
  NOR2X1_RVT U64 ( .A1(n62), .A2(n90), .Y(n52) );
  NAND2X0_RVT U65 ( .A1(n62), .A2(n90), .Y(n53) );
  NBUFFX2_RVT U66 ( .A(n11), .Y(n64) );
  INVX1_RVT U67 ( .A(n55), .Y(n54) );
  NAND2X0_RVT U68 ( .A1(n57), .A2(n56), .Y(n55) );
  NAND2X0_RVT U69 ( .A1(n60), .A2(n57), .Y(n11) );
  INVX1_RVT U70 ( .A(n56), .Y(n60) );
  NOR2X1_RVT U71 ( .A1(n63), .A2(n89), .Y(n56) );
  NAND2X0_RVT U72 ( .A1(n63), .A2(n89), .Y(n57) );
  INVX1_RVT U73 ( .A(n102), .Y(n61) );
  INVX1_RVT U74 ( .A(n101), .Y(n62) );
  INVX1_RVT U75 ( .A(n100), .Y(n63) );
  HADDX1_RVT U76 ( .A0(n116), .B0(n75), .SO(n98), .C1(n99) );
  HADDX1_RVT U77 ( .A0(n115), .B0(n76), .SO(n97), .C1(n75) );
  HADDX1_RVT U78 ( .A0(n114), .B0(n77), .SO(n96), .C1(n76) );
  HADDX1_RVT U79 ( .A0(n113), .B0(n78), .SO(n95), .C1(n77) );
  HADDX1_RVT U80 ( .A0(n112), .B0(n79), .SO(n94), .C1(n78) );
  HADDX1_RVT U81 ( .A0(n111), .B0(n80), .SO(n93), .C1(n79) );
  FADDX1_RVT U82 ( .A(n106), .B(n110), .CI(n81), .S(n92), .CO(n80) );
  FADDX1_RVT U83 ( .A(n105), .B(n109), .CI(n82), .S(n91), .CO(n81) );
  FADDX1_RVT U84 ( .A(n104), .B(n108), .CI(n83), .S(n90), .CO(n82) );
  HADDX1_RVT U85 ( .A0(n103), .B0(n107), .SO(n89), .C1(n83) );
endmodule

