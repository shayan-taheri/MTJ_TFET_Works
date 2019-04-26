
module InstructionBuffer ( clk, reset, flush_i, stall_i, decodeReady_i, 
        decodedVector_i, decodedPacket0_i, decodedPacket1_i, decodedPacket2_i, 
        decodedPacket3_i, decodedPacket4_i, decodedPacket5_i, decodedPacket6_i, 
        decodedPacket7_i, stallFetch_o, instBufferReady_o, decodedPacket0_o, 
        decodedPacket1_o, decodedPacket2_o, decodedPacket3_o, branchCount_o );
  input [7:0] decodedVector_i;
  input [125:0] decodedPacket0_i;
  input [125:0] decodedPacket1_i;
  input [125:0] decodedPacket2_i;
  input [125:0] decodedPacket3_i;
  input [125:0] decodedPacket4_i;
  input [125:0] decodedPacket5_i;
  input [125:0] decodedPacket6_i;
  input [125:0] decodedPacket7_i;
  output [125:0] decodedPacket0_o;
  output [125:0] decodedPacket1_o;
  output [125:0] decodedPacket2_o;
  output [125:0] decodedPacket3_o;
  output [2:0] branchCount_o;
  input clk, reset, flush_i, stall_i, decodeReady_i;
  output stallFetch_o, instBufferReady_o;
  wire   N46, N47, N48, N49, N50, N53, N54, N55, N56, N61, N62, N63, N64, N65,
         \dp_cluster_0/N30 , \dp_cluster_0/N29 , \dp_cluster_0/N28 ,
         \dp_cluster_0/N27 , \dp_cluster_0/N26 , \dp_cluster_0/N22 ,
         \dp_cluster_0/N21 , \dp_cluster_0/N17 , \dp_cluster_0/N16 ,
         \dp_cluster_0/N15 , \dp_cluster_0/N14 , \dp_cluster_0/N13 ,
         \dp_cluster_0/N12 , \dp_cluster_0/N11 , n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107;
  wire   [4:0] instCount;
  wire   [4:0] instcnt_f;

  DFFX1_RVT instCount_reg_0_ ( .D(n62), .CLK(clk), .Q(instCount[0]) );
  DFFX1_RVT instCount_reg_1_ ( .D(n60), .CLK(clk), .Q(instCount[1]) );
  DFFX1_RVT instCount_reg_2_ ( .D(N63), .CLK(clk), .Q(instCount[2]) );
  DFFX1_RVT instCount_reg_3_ ( .D(N64), .CLK(clk), .Q(instCount[3]) );
  DFFX1_RVT instCount_reg_4_ ( .D(N65), .CLK(clk), .Q(instCount[4]) );
  AND2X1_RVT U9 ( .A1(instcnt_f[4]), .A2(n63), .Y(N65) );
  AND2X1_RVT U10 ( .A1(instcnt_f[3]), .A2(n63), .Y(N64) );
  AND2X1_RVT U11 ( .A1(instcnt_f[2]), .A2(n63), .Y(N63) );
  AND2X1_RVT U12 ( .A1(instcnt_f[1]), .A2(n63), .Y(N62) );
  AND2X1_RVT U13 ( .A1(instcnt_f[0]), .A2(n63), .Y(N61) );
  OR2X1_RVT U14 ( .A1(flush_i), .A2(reset), .Y(n31) );
  AND2X1_RVT U15 ( .A1(instBufferReady_o), .A2(n65), .Y(N56) );
  OR2X1_RVT U16 ( .A1(instCount[2]), .A2(n32), .Y(instBufferReady_o) );
  OR2X1_RVT U17 ( .A1(instCount[4]), .A2(instCount[3]), .Y(n32) );
  OR2X1_RVT U18 ( .A1(n33), .A2(n34), .Y(N55) );
  AND2X1_RVT U19 ( .A1(N50), .A2(n35), .Y(n34) );
  AND2X1_RVT U20 ( .A1(instCount[4]), .A2(n68), .Y(n33) );
  OR2X1_RVT U21 ( .A1(n36), .A2(n37), .Y(N54) );
  AND2X1_RVT U22 ( .A1(N49), .A2(n35), .Y(n37) );
  AND2X1_RVT U23 ( .A1(instCount[3]), .A2(n68), .Y(n36) );
  OR2X1_RVT U24 ( .A1(n38), .A2(n39), .Y(N53) );
  AND2X1_RVT U25 ( .A1(N48), .A2(n35), .Y(n39) );
  AND2X1_RVT U26 ( .A1(instCount[2]), .A2(n68), .Y(n38) );
  OR2X1_RVT U27 ( .A1(n40), .A2(n41), .Y(instcnt_f[1]) );
  AND2X1_RVT U28 ( .A1(N47), .A2(n35), .Y(n41) );
  AND2X1_RVT U29 ( .A1(instCount[1]), .A2(n68), .Y(n40) );
  OR2X1_RVT U30 ( .A1(n42), .A2(n43), .Y(instcnt_f[0]) );
  AND2X1_RVT U31 ( .A1(N46), .A2(n35), .Y(n43) );
  AND2X1_RVT U32 ( .A1(instCount[0]), .A2(n68), .Y(n42) );
  AND2X1_RVT U33 ( .A1(decodeReady_i), .A2(n69), .Y(n35) );
  INVX1_RVT U44 ( .A(1'b1), .Y(branchCount_o[0]) );
  INVX1_RVT U46 ( .A(1'b1), .Y(branchCount_o[1]) );
  INVX1_RVT U48 ( .A(1'b1), .Y(branchCount_o[2]) );
  INVX1_RVT U50 ( .A(N62), .Y(n59) );
  INVX1_RVT U51 ( .A(n59), .Y(n60) );
  INVX1_RVT U52 ( .A(N61), .Y(n61) );
  INVX1_RVT U53 ( .A(n61), .Y(n62) );
  INVX1_RVT U54 ( .A(n31), .Y(n63) );
  INVX1_RVT U55 ( .A(N56), .Y(n64) );
  INVX1_RVT U56 ( .A(stall_i), .Y(n65) );
  INVX1_RVT U57 ( .A(N53), .Y(n66) );
  INVX1_RVT U58 ( .A(n76), .Y(n67) );
  INVX1_RVT U59 ( .A(n35), .Y(n68) );
  INVX1_RVT U60 ( .A(stallFetch_o), .Y(n69) );
  OR2X1_RVT U61 ( .A1(instCount[2]), .A2(instCount[1]), .Y(n70) );
  OR2X1_RVT U62 ( .A1(instCount[0]), .A2(n70), .Y(n71) );
  AND2X1_RVT U63 ( .A1(instCount[3]), .A2(n71), .Y(n72) );
  OR2X1_RVT U64 ( .A1(n72), .A2(instCount[4]), .Y(stallFetch_o) );
  XOR2X1_RVT U65 ( .A1(n64), .A2(n66), .Y(instcnt_f[2]) );
  AND2X1_RVT U66 ( .A1(N54), .A2(n64), .Y(n75) );
  AND2X1_RVT U67 ( .A1(N56), .A2(n66), .Y(n73) );
  MUX21X1_RVT U68 ( .A1(n73), .A2(N53), .S0(N54), .Y(n74) );
  OR2X1_RVT U69 ( .A1(n75), .A2(n74), .Y(instcnt_f[3]) );
  OR2X1_RVT U70 ( .A1(N54), .A2(N53), .Y(n76) );
  AND2X1_RVT U71 ( .A1(N56), .A2(n67), .Y(n78) );
  OR2X1_RVT U72 ( .A1(n76), .A2(n64), .Y(n77) );
  MUX21X1_RVT U73 ( .A1(n78), .A2(n77), .S0(N55), .Y(instcnt_f[4]) );
  XOR2X1_RVT U74 ( .A1(decodedVector_i[3]), .A2(decodedVector_i[4]), .Y(n79)
         );
  XOR2X1_RVT U75 ( .A1(decodedVector_i[2]), .A2(n79), .Y(\dp_cluster_0/N16 )
         );
  AND2X1_RVT U76 ( .A1(decodedVector_i[2]), .A2(n79), .Y(n81) );
  AND2X1_RVT U77 ( .A1(decodedVector_i[3]), .A2(decodedVector_i[4]), .Y(n80)
         );
  OR2X1_RVT U78 ( .A1(n81), .A2(n80), .Y(\dp_cluster_0/N17 ) );
  XOR2X1_RVT U79 ( .A1(instCount[0]), .A2(decodedVector_i[1]), .Y(n82) );
  XOR2X1_RVT U80 ( .A1(decodedVector_i[0]), .A2(n82), .Y(\dp_cluster_0/N11 )
         );
  AND2X1_RVT U81 ( .A1(decodedVector_i[0]), .A2(n82), .Y(n84) );
  AND2X1_RVT U82 ( .A1(instCount[0]), .A2(decodedVector_i[1]), .Y(n83) );
  OR2X1_RVT U83 ( .A1(n84), .A2(n83), .Y(n87) );
  XOR2X1_RVT U84 ( .A1(n87), .A2(instCount[1]), .Y(\dp_cluster_0/N12 ) );
  AND2X1_RVT U85 ( .A1(n87), .A2(instCount[1]), .Y(n85) );
  XOR2X1_RVT U86 ( .A1(instCount[2]), .A2(n85), .Y(\dp_cluster_0/N13 ) );
  AND2X1_RVT U87 ( .A1(n85), .A2(instCount[2]), .Y(n86) );
  XOR2X1_RVT U88 ( .A1(instCount[3]), .A2(n86), .Y(\dp_cluster_0/N14 ) );
  AND4X1_RVT U89 ( .A1(instCount[1]), .A2(instCount[3]), .A3(instCount[2]), 
        .A4(n87), .Y(n88) );
  XOR2X1_RVT U90 ( .A1(instCount[4]), .A2(n88), .Y(\dp_cluster_0/N15 ) );
  XOR2X1_RVT U91 ( .A1(\dp_cluster_0/N16 ), .A2(\dp_cluster_0/N11 ), .Y(
        \dp_cluster_0/N26 ) );
  AND2X1_RVT U92 ( .A1(\dp_cluster_0/N11 ), .A2(\dp_cluster_0/N16 ), .Y(n91)
         );
  XOR2X1_RVT U93 ( .A1(\dp_cluster_0/N17 ), .A2(\dp_cluster_0/N12 ), .Y(n89)
         );
  XOR2X1_RVT U94 ( .A1(n91), .A2(n89), .Y(\dp_cluster_0/N27 ) );
  OR2X1_RVT U95 ( .A1(n91), .A2(\dp_cluster_0/N12 ), .Y(n90) );
  AND2X1_RVT U96 ( .A1(\dp_cluster_0/N17 ), .A2(n90), .Y(n93) );
  AND2X1_RVT U97 ( .A1(\dp_cluster_0/N12 ), .A2(n91), .Y(n92) );
  OR2X1_RVT U98 ( .A1(n93), .A2(n92), .Y(n94) );
  XOR2X1_RVT U99 ( .A1(n94), .A2(\dp_cluster_0/N13 ), .Y(\dp_cluster_0/N28 )
         );
  AND2X1_RVT U100 ( .A1(\dp_cluster_0/N13 ), .A2(n94), .Y(n95) );
  XOR2X1_RVT U101 ( .A1(n95), .A2(\dp_cluster_0/N14 ), .Y(\dp_cluster_0/N29 )
         );
  AND2X1_RVT U102 ( .A1(\dp_cluster_0/N14 ), .A2(n95), .Y(n96) );
  XOR2X1_RVT U103 ( .A1(n96), .A2(\dp_cluster_0/N15 ), .Y(\dp_cluster_0/N30 )
         );
  XOR2X1_RVT U104 ( .A1(decodedVector_i[6]), .A2(decodedVector_i[7]), .Y(n97)
         );
  XOR2X1_RVT U105 ( .A1(decodedVector_i[5]), .A2(n97), .Y(\dp_cluster_0/N21 )
         );
  AND2X1_RVT U106 ( .A1(decodedVector_i[5]), .A2(n97), .Y(n99) );
  AND2X1_RVT U107 ( .A1(decodedVector_i[6]), .A2(decodedVector_i[7]), .Y(n98)
         );
  OR2X1_RVT U108 ( .A1(n99), .A2(n98), .Y(\dp_cluster_0/N22 ) );
  XOR2X1_RVT U109 ( .A1(\dp_cluster_0/N26 ), .A2(\dp_cluster_0/N21 ), .Y(N46)
         );
  AND2X1_RVT U110 ( .A1(\dp_cluster_0/N21 ), .A2(\dp_cluster_0/N26 ), .Y(n102)
         );
  XOR2X1_RVT U111 ( .A1(\dp_cluster_0/N27 ), .A2(\dp_cluster_0/N22 ), .Y(n100)
         );
  XOR2X1_RVT U112 ( .A1(n102), .A2(n100), .Y(N47) );
  OR2X1_RVT U113 ( .A1(n102), .A2(\dp_cluster_0/N22 ), .Y(n101) );
  AND2X1_RVT U114 ( .A1(\dp_cluster_0/N27 ), .A2(n101), .Y(n104) );
  AND2X1_RVT U115 ( .A1(\dp_cluster_0/N22 ), .A2(n102), .Y(n103) );
  OR2X1_RVT U116 ( .A1(n104), .A2(n103), .Y(n105) );
  XOR2X1_RVT U117 ( .A1(n105), .A2(\dp_cluster_0/N28 ), .Y(N48) );
  AND2X1_RVT U118 ( .A1(\dp_cluster_0/N28 ), .A2(n105), .Y(n106) );
  XOR2X1_RVT U119 ( .A1(n106), .A2(\dp_cluster_0/N29 ), .Y(N49) );
  AND2X1_RVT U120 ( .A1(\dp_cluster_0/N29 ), .A2(n106), .Y(n107) );
  XOR2X1_RVT U121 ( .A1(n107), .A2(\dp_cluster_0/N30 ), .Y(N50) );
endmodule

