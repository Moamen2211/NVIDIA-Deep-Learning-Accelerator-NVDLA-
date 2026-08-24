
module NV_NVDLA_NOCIF_DRAM_READ_IG_cvt_DP_OP_20J22_130_8077_J22_0 ( I1, I4, O1, 
        O3, I2, I3, I5, I6, I7, I8, O2 );
  input [1:0] I1;
  input [8:0] I4;
  output [9:0] O1;
  output [8:0] O3;
  input I2, I3, I5, I6, I7, I8;
  output O2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n107;
  assign n53 = I1[0];
  assign O3[0] = n75;
  assign O3[1] = n76;
  assign O3[2] = n77;
  assign O3[3] = n78;
  assign O3[4] = n79;
  assign O3[5] = n80;
  assign O3[6] = n81;
  assign O3[7] = n82;
  assign O3[8] = n83;
  assign O1[0] = n85;
  assign O1[1] = n86;
  assign O1[2] = n87;
  assign O1[3] = n88;
  assign O1[4] = n89;
  assign O1[5] = n90;
  assign O1[6] = n91;
  assign O1[7] = n92;
  assign O1[8] = n93;
  assign O1[9] = n94;
  assign n96 = I5;
  assign n97 = I4[0];
  assign n98 = I4[1];
  assign n99 = I4[2];
  assign n100 = I4[3];
  assign n101 = I4[4];
  assign n102 = I4[5];
  assign n103 = I4[6];
  assign n104 = I4[7];
  assign n105 = I4[8];
  assign n107 = I1[1];

  XOR2X1_RVT U1 ( .A1(n1), .A2(n62), .Y(n83) );
  HADDX1_RVT U2 ( .A0(n61), .B0(n2), .SO(n82), .C1(n1) );
  HADDX1_RVT U3 ( .A0(n60), .B0(n3), .SO(n81), .C1(n2) );
  HADDX1_RVT U4 ( .A0(n59), .B0(n4), .SO(n80), .C1(n3) );
  HADDX1_RVT U5 ( .A0(n58), .B0(n5), .SO(n79), .C1(n4) );
  HADDX1_RVT U6 ( .A0(n57), .B0(n6), .SO(n78), .C1(n5) );
  FADDX1_RVT U7 ( .A(n32), .B(n56), .CI(n7), .S(n77), .CO(n6) );
  FADDX1_RVT U8 ( .A(n38), .B(n55), .CI(n8), .S(n76), .CO(n7) );
  HADDX1_RVT U9 ( .A0(n68), .B0(n54), .SO(n75), .C1(n8) );
  XOR2X1_RVT U10 ( .A1(n9), .A2(n63), .Y(n94) );
  HADDX1_RVT U11 ( .A0(n62), .B0(n10), .SO(n93), .C1(n9) );
  HADDX1_RVT U12 ( .A0(n61), .B0(n11), .SO(n92), .C1(n10) );
  HADDX1_RVT U13 ( .A0(n60), .B0(n12), .SO(n91), .C1(n11) );
  HADDX1_RVT U14 ( .A0(n59), .B0(n13), .SO(n90), .C1(n12) );
  HADDX1_RVT U15 ( .A0(n58), .B0(n14), .SO(n89), .C1(n13) );
  HADDX1_RVT U16 ( .A0(n57), .B0(n15), .SO(n88), .C1(n14) );
  FADDX1_RVT U17 ( .A(n71), .B(n56), .CI(n16), .S(n87), .CO(n15) );
  FADDX1_RVT U18 ( .A(n70), .B(n55), .CI(n17), .S(n86), .CO(n16) );
  HADDX1_RVT U19 ( .A0(n69), .B0(n54), .SO(n85), .C1(n17) );
  INVX1_RVT U20 ( .A(n18), .Y(n63) );
  XNOR2X1_RVT U21 ( .A1(n19), .A2(n105), .Y(n62) );
  OR2X1_RVT U22 ( .A1(n105), .A2(n19), .Y(n18) );
  XNOR2X1_RVT U23 ( .A1(n20), .A2(n104), .Y(n61) );
  OR2X1_RVT U24 ( .A1(n104), .A2(n20), .Y(n19) );
  XNOR2X1_RVT U25 ( .A1(n21), .A2(n103), .Y(n60) );
  OR2X1_RVT U26 ( .A1(n103), .A2(n21), .Y(n20) );
  XNOR2X1_RVT U27 ( .A1(n22), .A2(n102), .Y(n59) );
  OR2X1_RVT U28 ( .A1(n102), .A2(n22), .Y(n21) );
  XNOR2X1_RVT U29 ( .A1(n23), .A2(n101), .Y(n58) );
  OR2X1_RVT U30 ( .A1(n101), .A2(n23), .Y(n22) );
  XNOR2X1_RVT U31 ( .A1(n24), .A2(n100), .Y(n57) );
  OR2X1_RVT U32 ( .A1(n100), .A2(n24), .Y(n23) );
  XNOR2X1_RVT U33 ( .A1(n25), .A2(n99), .Y(n56) );
  OR2X1_RVT U34 ( .A1(n99), .A2(n25), .Y(n24) );
  XNOR2X1_RVT U35 ( .A1(n26), .A2(n98), .Y(n55) );
  OR2X1_RVT U36 ( .A1(n98), .A2(n26), .Y(n25) );
  XNOR2X1_RVT U37 ( .A1(n27), .A2(n97), .Y(n54) );
  OR2X1_RVT U38 ( .A1(n97), .A2(n27), .Y(n26) );
  INVX1_RVT U39 ( .A(n96), .Y(n27) );
  INVX1_RVT U40 ( .A(n49), .Y(O2) );
  XNOR2X1_RVT U41 ( .A1(n48), .A2(n32), .Y(n52) );
  NOR2X1_RVT U42 ( .A1(n28), .A2(n40), .Y(n49) );
  OAI21X1_RVT U43 ( .A1(n28), .A2(n41), .A3(n29), .Y(n47) );
  NAND2X0_RVT U44 ( .A1(n30), .A2(n36), .Y(n28) );
  AOI21X1_RVT U45 ( .A1(n37), .A2(n30), .A3(n31), .Y(n29) );
  INVX1_RVT U46 ( .A(n32), .Y(n30) );
  INVX1_RVT U47 ( .A(n33), .Y(n31) );
  INVX1_RVT U48 ( .A(n32), .Y(n33) );
  XOR2X1_RVT U49 ( .A1(n41), .A2(n38), .Y(n51) );
  OAI21X1_RVT U50 ( .A1(n34), .A2(n41), .A3(n35), .Y(n48) );
  INVX1_RVT U51 ( .A(n36), .Y(n34) );
  INVX1_RVT U52 ( .A(n37), .Y(n35) );
  INVX1_RVT U53 ( .A(n38), .Y(n36) );
  INVX1_RVT U54 ( .A(n39), .Y(n37) );
  INVX1_RVT U55 ( .A(n38), .Y(n39) );
  NBUFFX2_RVT U56 ( .A(n44), .Y(n50) );
  INVX1_RVT U57 ( .A(n42), .Y(n40) );
  NOR2X1_RVT U58 ( .A1(n43), .A2(n42), .Y(n41) );
  INVX1_RVT U59 ( .A(n44), .Y(n42) );
  INVX1_RVT U60 ( .A(n45), .Y(n43) );
  XNOR2X1_RVT U61 ( .A1(n68), .A2(n46), .Y(n44) );
  NAND2X0_RVT U62 ( .A1(n46), .A2(n68), .Y(n45) );
  INVX1_RVT U63 ( .A(n96), .Y(n46) );
  AND2X1_RVT U64 ( .A1(n74), .A2(I6), .Y(n32) );
  AND2X1_RVT U65 ( .A1(n73), .A2(I6), .Y(n38) );
  AND2X1_RVT U66 ( .A1(n72), .A2(I6), .Y(n68) );
  AND2X1_RVT U67 ( .A1(n74), .A2(I2), .Y(n71) );
  AND2X1_RVT U68 ( .A1(n73), .A2(I2), .Y(n70) );
  AND2X1_RVT U69 ( .A1(n72), .A2(I2), .Y(n69) );
  HADDX1_RVT U70 ( .A0(n107), .B0(n53), .SO(n73), .C1(n74) );
  INVX1_RVT U71 ( .A(n53), .Y(n72) );
endmodule

