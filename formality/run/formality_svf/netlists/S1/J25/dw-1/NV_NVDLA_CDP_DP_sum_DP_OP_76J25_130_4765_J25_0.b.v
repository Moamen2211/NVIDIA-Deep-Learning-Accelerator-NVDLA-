
module NV_NVDLA_CDP_DP_sum_DP_OP_76J25_130_4765_J25_0 ( I1, I3, O1, I2, I4 );
  input [7:0] I1;
  input [8:0] I3;
  output [17:0] O1;
  input I2, I4;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n167, n168, n169, n170,
         n171, n172, n173;
  assign n124 = I1[0];
  assign O1[1] = 1'b0;
  assign O1[0] = n139;
  assign O1[2] = n140;
  assign O1[3] = n141;
  assign O1[4] = n142;
  assign O1[5] = n143;
  assign O1[6] = n144;
  assign O1[7] = n145;
  assign O1[8] = n146;
  assign O1[9] = n147;
  assign O1[10] = n148;
  assign O1[11] = n149;
  assign O1[12] = n150;
  assign O1[13] = n151;
  assign O1[14] = n152;
  assign O1[15] = n153;
  assign O1[16] = n154;
  assign O1[17] = n155;
  assign n167 = I1[1];
  assign n168 = I1[2];
  assign n169 = I1[3];
  assign n170 = I1[4];
  assign n171 = I1[5];
  assign n172 = I1[6];
  assign n173 = I1[7];

  NBUFFX4_RVT U1 ( .A(n1), .Y(n155) );
  FADDX1_RVT U2 ( .A(n110), .B(n58), .CI(n2), .S(n154), .CO(n1) );
  FADDX1_RVT U3 ( .A(n59), .B(n16), .CI(n3), .S(n153), .CO(n2) );
  FADDX1_RVT U4 ( .A(n17), .B(n18), .CI(n4), .S(n152), .CO(n3) );
  FADDX1_RVT U5 ( .A(n20), .B(n19), .CI(n5), .S(n151), .CO(n4) );
  FADDX1_RVT U6 ( .A(n24), .B(n21), .CI(n6), .S(n150), .CO(n5) );
  FADDX1_RVT U7 ( .A(n28), .B(n25), .CI(n7), .S(n149), .CO(n6) );
  FADDX1_RVT U8 ( .A(n34), .B(n29), .CI(n8), .S(n148), .CO(n7) );
  FADDX1_RVT U9 ( .A(n37), .B(n35), .CI(n9), .S(n147), .CO(n8) );
  FADDX1_RVT U10 ( .A(n43), .B(n41), .CI(n10), .S(n146), .CO(n9) );
  FADDX1_RVT U11 ( .A(n50), .B(n47), .CI(n11), .S(n145), .CO(n10) );
  FADDX1_RVT U12 ( .A(n83), .B(n12), .CI(n51), .S(n144), .CO(n11) );
  FADDX1_RVT U13 ( .A(n87), .B(n55), .CI(n13), .S(n143), .CO(n12) );
  FADDX1_RVT U14 ( .A(n90), .B(n14), .CI(n57), .S(n142), .CO(n13) );
  HADDX1_RVT U15 ( .A0(n15), .B0(n92), .SO(n141), .C1(n14) );
  HADDX1_RVT U16 ( .A0(n117), .B0(n93), .SO(n140), .C1(n15) );
  FADDX1_RVT U17 ( .A(n60), .B(n111), .CI(n66), .S(n17), .CO(n16) );
  FADDX1_RVT U18 ( .A(n61), .B(n67), .CI(n22), .S(n19), .CO(n18) );
  FADDX1_RVT U19 ( .A(n68), .B(n26), .CI(n23), .S(n21), .CO(n20) );
  FADDX1_RVT U20 ( .A(n112), .B(n73), .CI(n62), .S(n23), .CO(n22) );
  FADDX1_RVT U21 ( .A(n32), .B(n30), .CI(n27), .S(n25), .CO(n24) );
  FADDX1_RVT U22 ( .A(n74), .B(n63), .CI(n69), .S(n27), .CO(n26) );
  FADDX1_RVT U23 ( .A(n36), .B(n33), .CI(n31), .S(n29), .CO(n28) );
  FADDX1_RVT U24 ( .A(n38), .B(n64), .CI(n70), .S(n31), .CO(n30) );
  FADDX1_RVT U25 ( .A(n113), .B(n79), .CI(n75), .S(n33), .CO(n32) );
  FADDX1_RVT U26 ( .A(n71), .B(n42), .CI(n40), .S(n35), .CO(n34) );
  FADDX1_RVT U27 ( .A(n76), .B(n65), .CI(n39), .S(n37), .CO(n36) );
  HADDX1_RVT U28 ( .A0(n80), .B0(n44), .SO(n39), .C1(n38) );
  FADDX1_RVT U29 ( .A(n77), .B(n72), .CI(n46), .S(n41), .CO(n40) );
  FADDX1_RVT U30 ( .A(n81), .B(n48), .CI(n45), .S(n43), .CO(n42) );
  HADDX1_RVT U31 ( .A0(n114), .B0(n84), .SO(n45), .C1(n44) );
  FADDX1_RVT U32 ( .A(n82), .B(n49), .CI(n78), .S(n47), .CO(n46) );
  HADDX1_RVT U33 ( .A0(n52), .B0(n85), .SO(n49), .C1(n48) );
  FADDX1_RVT U34 ( .A(n86), .B(n54), .CI(n53), .S(n51), .CO(n50) );
  HADDX1_RVT U35 ( .A0(n115), .B0(n88), .SO(n53), .C1(n52) );
  HADDX1_RVT U36 ( .A0(n89), .B0(n56), .SO(n55), .C1(n54) );
  HADDX1_RVT U37 ( .A0(n116), .B0(n91), .SO(n57), .C1(n56) );
  NOR2X1_RVT U38 ( .A1(n102), .A2(n94), .Y(n58) );
  NOR2X1_RVT U39 ( .A1(n95), .A2(n102), .Y(n59) );
  NOR2X1_RVT U40 ( .A1(n96), .A2(n102), .Y(n60) );
  NOR2X1_RVT U41 ( .A1(n97), .A2(n102), .Y(n61) );
  NOR2X1_RVT U42 ( .A1(n98), .A2(n102), .Y(n62) );
  NOR2X1_RVT U43 ( .A1(n99), .A2(n102), .Y(n63) );
  NOR2X1_RVT U44 ( .A1(n100), .A2(n102), .Y(n64) );
  NOR2X1_RVT U45 ( .A1(n101), .A2(n102), .Y(n65) );
  NOR2X1_RVT U46 ( .A1(n95), .A2(n103), .Y(n66) );
  NOR2X1_RVT U47 ( .A1(n96), .A2(n103), .Y(n67) );
  NOR2X1_RVT U48 ( .A1(n97), .A2(n103), .Y(n68) );
  NOR2X1_RVT U49 ( .A1(n98), .A2(n103), .Y(n69) );
  NOR2X1_RVT U50 ( .A1(n99), .A2(n103), .Y(n70) );
  NOR2X1_RVT U51 ( .A1(n100), .A2(n103), .Y(n71) );
  NOR2X1_RVT U52 ( .A1(n101), .A2(n103), .Y(n72) );
  NOR2X1_RVT U53 ( .A1(n96), .A2(n104), .Y(n73) );
  NOR2X1_RVT U54 ( .A1(n97), .A2(n104), .Y(n74) );
  NOR2X1_RVT U55 ( .A1(n98), .A2(n104), .Y(n75) );
  NOR2X1_RVT U56 ( .A1(n99), .A2(n104), .Y(n76) );
  NOR2X1_RVT U57 ( .A1(n100), .A2(n104), .Y(n77) );
  NOR2X1_RVT U58 ( .A1(n101), .A2(n104), .Y(n78) );
  NOR2X1_RVT U59 ( .A1(n97), .A2(n105), .Y(n79) );
  NOR2X1_RVT U60 ( .A1(n98), .A2(n105), .Y(n80) );
  NOR2X1_RVT U61 ( .A1(n99), .A2(n105), .Y(n81) );
  NOR2X1_RVT U62 ( .A1(n100), .A2(n105), .Y(n82) );
  NOR2X1_RVT U63 ( .A1(n101), .A2(n105), .Y(n83) );
  NOR2X1_RVT U64 ( .A1(n98), .A2(n106), .Y(n84) );
  NOR2X1_RVT U65 ( .A1(n99), .A2(n106), .Y(n85) );
  NOR2X1_RVT U66 ( .A1(n100), .A2(n106), .Y(n86) );
  NOR2X1_RVT U67 ( .A1(n101), .A2(n106), .Y(n87) );
  NOR2X1_RVT U68 ( .A1(n99), .A2(n107), .Y(n88) );
  NOR2X1_RVT U69 ( .A1(n100), .A2(n107), .Y(n89) );
  NOR2X1_RVT U70 ( .A1(n101), .A2(n107), .Y(n90) );
  NOR2X1_RVT U71 ( .A1(n100), .A2(n108), .Y(n91) );
  NOR2X1_RVT U72 ( .A1(n101), .A2(n108), .Y(n92) );
  NOR2X1_RVT U73 ( .A1(n101), .A2(n109), .Y(n93) );
  INVX4_RVT U74 ( .A(n111), .Y(n94) );
  INVX4_RVT U75 ( .A(n112), .Y(n95) );
  INVX4_RVT U76 ( .A(n113), .Y(n96) );
  INVX4_RVT U77 ( .A(n114), .Y(n97) );
  INVX4_RVT U78 ( .A(n115), .Y(n98) );
  INVX4_RVT U79 ( .A(n116), .Y(n99) );
  INVX4_RVT U80 ( .A(n117), .Y(n100) );
  INVX4_RVT U81 ( .A(n129), .Y(n101) );
  INVX4_RVT U82 ( .A(n110), .Y(n102) );
  INVX4_RVT U83 ( .A(n111), .Y(n103) );
  INVX4_RVT U84 ( .A(n112), .Y(n104) );
  INVX4_RVT U85 ( .A(n113), .Y(n105) );
  INVX4_RVT U86 ( .A(n114), .Y(n106) );
  INVX4_RVT U87 ( .A(n115), .Y(n107) );
  INVX4_RVT U88 ( .A(n116), .Y(n108) );
  INVX4_RVT U89 ( .A(n117), .Y(n109) );
  NBUFFX4_RVT U90 ( .A(n129), .Y(n139) );
  AO22X1_RVT U91 ( .A1(I4), .A2(I3[8]), .A3(n138), .A4(I2), .Y(n110) );
  AO22X1_RVT U92 ( .A1(I4), .A2(I3[7]), .A3(n137), .A4(I2), .Y(n111) );
  AO22X1_RVT U93 ( .A1(I4), .A2(I3[6]), .A3(n136), .A4(I2), .Y(n112) );
  AO22X1_RVT U94 ( .A1(I4), .A2(I3[5]), .A3(n135), .A4(I2), .Y(n113) );
  AO22X1_RVT U95 ( .A1(I4), .A2(I3[4]), .A3(n134), .A4(I2), .Y(n114) );
  AO22X1_RVT U96 ( .A1(I4), .A2(I3[3]), .A3(n133), .A4(I2), .Y(n115) );
  AO22X1_RVT U97 ( .A1(I4), .A2(I3[2]), .A3(n132), .A4(I2), .Y(n116) );
  AO22X1_RVT U98 ( .A1(I4), .A2(I3[1]), .A3(n131), .A4(I2), .Y(n117) );
  AO22X1_RVT U99 ( .A1(I4), .A2(I3[0]), .A3(n130), .A4(I2), .Y(n129) );
  HADDX1_RVT U100 ( .A0(n173), .B0(n118), .SO(n137), .C1(n138) );
  HADDX1_RVT U101 ( .A0(n172), .B0(n119), .SO(n136), .C1(n118) );
  HADDX1_RVT U102 ( .A0(n171), .B0(n120), .SO(n135), .C1(n119) );
  HADDX1_RVT U103 ( .A0(n170), .B0(n121), .SO(n134), .C1(n120) );
  HADDX1_RVT U104 ( .A0(n169), .B0(n122), .SO(n133), .C1(n121) );
  HADDX1_RVT U105 ( .A0(n168), .B0(n123), .SO(n132), .C1(n122) );
  HADDX1_RVT U106 ( .A0(n167), .B0(n124), .SO(n131), .C1(n123) );
  INVX1_RVT U107 ( .A(n124), .Y(n130) );
endmodule

