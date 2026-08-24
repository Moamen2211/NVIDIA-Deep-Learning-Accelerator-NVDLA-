
module NV_NVDLA_PDP_CORE_cal2d_DP_OP_826J5_132_8868_J5_0 ( I1, I2, I3, O1 );
  input [12:0] I1;
  input [2:0] I2;
  input [2:0] I3;
  output O1;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149;
  assign O1 = n130;
  assign n131 = I3[0];
  assign n132 = I3[1];
  assign n133 = I3[2];
  assign n134 = I2[0];
  assign n135 = I2[1];
  assign n136 = I2[2];
  assign n137 = I1[0];
  assign n138 = I1[1];
  assign n139 = I1[2];
  assign n140 = I1[3];
  assign n141 = I1[4];
  assign n142 = I1[5];
  assign n143 = I1[6];
  assign n144 = I1[7];
  assign n145 = I1[8];
  assign n146 = I1[9];
  assign n147 = I1[10];
  assign n148 = I1[11];
  assign n149 = I1[12];

  NBUFFX2_RVT U1 ( .A(n15), .Y(n130) );
  XOR2X1_RVT U2 ( .A1(n18), .A2(n1), .Y(n99) );
  NOR2X1_RVT U3 ( .A1(n16), .A2(n21), .Y(n15) );
  NAND2X0_RVT U4 ( .A1(n17), .A2(n20), .Y(n16) );
  INVX1_RVT U5 ( .A(n17), .Y(n1) );
  INVX1_RVT U6 ( .A(n129), .Y(n17) );
  XNOR2X1_RVT U7 ( .A1(n21), .A2(n2), .Y(n98) );
  NOR2X1_RVT U8 ( .A1(n19), .A2(n21), .Y(n18) );
  INVX1_RVT U9 ( .A(n20), .Y(n19) );
  INVX1_RVT U10 ( .A(n20), .Y(n2) );
  INVX1_RVT U11 ( .A(n128), .Y(n20) );
  XOR2X1_RVT U12 ( .A1(n25), .A2(n3), .Y(n97) );
  NAND2X0_RVT U13 ( .A1(n31), .A2(n22), .Y(n21) );
  NOR2X1_RVT U14 ( .A1(n28), .A2(n23), .Y(n22) );
  INVX1_RVT U15 ( .A(n24), .Y(n23) );
  INVX1_RVT U16 ( .A(n24), .Y(n3) );
  INVX1_RVT U17 ( .A(n127), .Y(n24) );
  XNOR2X1_RVT U18 ( .A1(n30), .A2(n4), .Y(n96) );
  NOR2X1_RVT U19 ( .A1(n26), .A2(n30), .Y(n25) );
  INVX1_RVT U20 ( .A(n27), .Y(n26) );
  INVX1_RVT U21 ( .A(n28), .Y(n27) );
  INVX1_RVT U22 ( .A(n29), .Y(n28) );
  INVX1_RVT U23 ( .A(n29), .Y(n4) );
  INVX1_RVT U24 ( .A(n126), .Y(n29) );
  XNOR2X1_RVT U25 ( .A1(n34), .A2(n5), .Y(n95) );
  INVX1_RVT U26 ( .A(n31), .Y(n30) );
  NOR2X1_RVT U27 ( .A1(n39), .A2(n32), .Y(n31) );
  NAND2X0_RVT U28 ( .A1(n37), .A2(n33), .Y(n32) );
  INVX1_RVT U29 ( .A(n33), .Y(n5) );
  INVX1_RVT U30 ( .A(n125), .Y(n33) );
  XOR2X1_RVT U31 ( .A1(n38), .A2(n6), .Y(n94) );
  NAND2X0_RVT U32 ( .A1(n35), .A2(n38), .Y(n34) );
  INVX1_RVT U33 ( .A(n36), .Y(n35) );
  INVX1_RVT U34 ( .A(n37), .Y(n36) );
  INVX1_RVT U35 ( .A(n37), .Y(n6) );
  INVX1_RVT U36 ( .A(n124), .Y(n37) );
  XOR2X1_RVT U37 ( .A1(n43), .A2(n7), .Y(n93) );
  INVX1_RVT U38 ( .A(n39), .Y(n38) );
  NAND2X0_RVT U39 ( .A1(n49), .A2(n40), .Y(n39) );
  NOR2X1_RVT U40 ( .A1(n46), .A2(n41), .Y(n40) );
  INVX1_RVT U41 ( .A(n42), .Y(n41) );
  INVX1_RVT U42 ( .A(n42), .Y(n7) );
  INVX1_RVT U43 ( .A(n123), .Y(n42) );
  XNOR2X1_RVT U44 ( .A1(n48), .A2(n8), .Y(n92) );
  NOR2X1_RVT U45 ( .A1(n44), .A2(n48), .Y(n43) );
  INVX1_RVT U46 ( .A(n45), .Y(n44) );
  INVX1_RVT U47 ( .A(n46), .Y(n45) );
  INVX1_RVT U48 ( .A(n47), .Y(n46) );
  INVX1_RVT U49 ( .A(n47), .Y(n8) );
  INVX1_RVT U50 ( .A(n122), .Y(n47) );
  XNOR2X1_RVT U51 ( .A1(n52), .A2(n9), .Y(n91) );
  INVX1_RVT U52 ( .A(n49), .Y(n48) );
  NOR2X1_RVT U53 ( .A1(n50), .A2(n57), .Y(n49) );
  NAND2X0_RVT U54 ( .A1(n55), .A2(n51), .Y(n50) );
  INVX1_RVT U55 ( .A(n51), .Y(n9) );
  INVX1_RVT U56 ( .A(n121), .Y(n51) );
  XOR2X1_RVT U57 ( .A1(n56), .A2(n10), .Y(n90) );
  NAND2X0_RVT U58 ( .A1(n53), .A2(n56), .Y(n52) );
  INVX1_RVT U59 ( .A(n54), .Y(n53) );
  INVX1_RVT U60 ( .A(n55), .Y(n54) );
  INVX1_RVT U61 ( .A(n55), .Y(n10) );
  INVX1_RVT U62 ( .A(n120), .Y(n55) );
  XOR2X1_RVT U63 ( .A1(n62), .A2(n11), .Y(n89) );
  INVX1_RVT U64 ( .A(n57), .Y(n56) );
  OAI21X1_RVT U65 ( .A1(n72), .A2(n58), .A3(n59), .Y(n57) );
  INVX1_RVT U66 ( .A(n67), .Y(n58) );
  NOR2X1_RVT U67 ( .A1(n68), .A2(n60), .Y(n59) );
  INVX1_RVT U68 ( .A(n61), .Y(n60) );
  INVX1_RVT U69 ( .A(n61), .Y(n11) );
  INVX1_RVT U70 ( .A(n119), .Y(n61) );
  XNOR2X1_RVT U71 ( .A1(n12), .A2(n71), .Y(n88) );
  AOI21X1_RVT U72 ( .A1(n63), .A2(n71), .A3(n64), .Y(n62) );
  INVX1_RVT U73 ( .A(n65), .Y(n63) );
  INVX1_RVT U74 ( .A(n66), .Y(n64) );
  INVX1_RVT U75 ( .A(n67), .Y(n65) );
  INVX1_RVT U76 ( .A(n68), .Y(n66) );
  INVX1_RVT U77 ( .A(n69), .Y(n67) );
  INVX1_RVT U78 ( .A(n70), .Y(n68) );
  NAND2X0_RVT U79 ( .A1(n80), .A2(n70), .Y(n12) );
  INVX1_RVT U80 ( .A(n69), .Y(n80) );
  NOR2X1_RVT U81 ( .A1(n83), .A2(n118), .Y(n69) );
  NAND2X0_RVT U82 ( .A1(n83), .A2(n118), .Y(n70) );
  XNOR2X1_RVT U83 ( .A1(n13), .A2(n77), .Y(n87) );
  INVX1_RVT U84 ( .A(n72), .Y(n71) );
  AOI21X1_RVT U85 ( .A1(n73), .A2(n77), .A3(n74), .Y(n72) );
  INVX1_RVT U86 ( .A(n75), .Y(n73) );
  INVX1_RVT U87 ( .A(n76), .Y(n74) );
  NAND2X0_RVT U88 ( .A1(n81), .A2(n76), .Y(n13) );
  INVX1_RVT U89 ( .A(n75), .Y(n81) );
  NOR2X1_RVT U90 ( .A1(n84), .A2(n117), .Y(n75) );
  NAND2X0_RVT U91 ( .A1(n84), .A2(n117), .Y(n76) );
  INVX1_RVT U92 ( .A(n14), .Y(n86) );
  INVX1_RVT U93 ( .A(n79), .Y(n77) );
  NAND2X0_RVT U94 ( .A1(n82), .A2(n79), .Y(n14) );
  INVX1_RVT U95 ( .A(n78), .Y(n82) );
  NOR2X1_RVT U96 ( .A1(n85), .A2(n116), .Y(n78) );
  NAND2X0_RVT U97 ( .A1(n85), .A2(n116), .Y(n79) );
  INVX1_RVT U98 ( .A(n133), .Y(n83) );
  INVX1_RVT U99 ( .A(n132), .Y(n84) );
  INVX1_RVT U100 ( .A(n131), .Y(n85) );
  HADDX1_RVT U101 ( .A0(n149), .B0(n100), .SO(n128), .C1(n129) );
  HADDX1_RVT U102 ( .A0(n148), .B0(n101), .SO(n127), .C1(n100) );
  HADDX1_RVT U103 ( .A0(n147), .B0(n102), .SO(n126), .C1(n101) );
  HADDX1_RVT U104 ( .A0(n146), .B0(n103), .SO(n125), .C1(n102) );
  HADDX1_RVT U105 ( .A0(n145), .B0(n104), .SO(n124), .C1(n103) );
  HADDX1_RVT U106 ( .A0(n144), .B0(n105), .SO(n123), .C1(n104) );
  HADDX1_RVT U107 ( .A0(n143), .B0(n106), .SO(n122), .C1(n105) );
  HADDX1_RVT U108 ( .A0(n142), .B0(n107), .SO(n121), .C1(n106) );
  HADDX1_RVT U109 ( .A0(n141), .B0(n108), .SO(n120), .C1(n107) );
  HADDX1_RVT U110 ( .A0(n140), .B0(n109), .SO(n119), .C1(n108) );
  FADDX1_RVT U111 ( .A(n136), .B(n139), .CI(n110), .S(n118), .CO(n109) );
  FADDX1_RVT U112 ( .A(n135), .B(n138), .CI(n111), .S(n117), .CO(n110) );
  HADDX1_RVT U113 ( .A0(n134), .B0(n137), .SO(n116), .C1(n111) );
endmodule

