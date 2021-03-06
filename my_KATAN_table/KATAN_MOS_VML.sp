* Nettran: AMD.64 Release B-2008.09.SP5.HF2.26004 2012/07/19
* Created:  6/06/2015  11:24
* Options: -verilog katan.v -outName katan.sp -verilog-b1 VDD -verilog-b0 GND -outType spice 

.GLOBAL VDD GND 

.SUBCKT katan clk start p[31] p[30] p[29] p[28] p[27] p[26] p[25] p[24] p[23] p[22] 
+ p[21] p[20] p[19] p[18] p[17] p[16] p[15] p[14] p[13] p[12] p[11] p[10] p[9] p[8] 
+ p[7] p[6] p[5] p[4] p[3] p[2] p[1] p[0] key[79] key[78] key[77] key[76] key[75] 
+ key[74] key[73] key[72] key[71] key[70] key[69] key[68] key[67] key[66] key[65] 
+ key[64] key[63] key[62] key[61] key[60] key[59] key[58] key[57] key[56] key[55] 
+ key[54] key[53] key[52] key[51] key[50] key[49] key[48] key[47] key[46] key[45] 
+ key[44] key[43] key[42] key[41] key[40] key[39] key[38] key[37] key[36] key[35] 
+ key[34] key[33] key[32] key[31] key[30] key[29] key[28] key[27] key[26] key[25] 
+ key[24] key[23] key[22] key[21] key[20] key[19] key[18] key[17] key[16] key[15] 
+ key[14] key[13] key[12] key[11] key[10] key[9] key[8] key[7] key[6] key[5] key[4] 
+ key[3] key[2] key[1] key[0] c[31] c[30] c[29] c[28] c[27] c[26] c[25] c[24] c[23] 
+ c[22] c[21] c[20] c[19] c[18] c[17] c[16] c[15] c[14] c[13] c[12] c[11] c[10] 
+ c[9] c[8] c[7] c[6] c[5] c[4] c[3] c[2] c[1] c[0] cycle_254 
XU627 p[19] L1_sig[0] start N10 MUX_X1 
XU626 key[58] key_sig[58] start N100 MUX_X1 
XU625 key[59] key_sig[59] start N101 MUX_X1 
XU624 key[60] key_sig[60] start N102 MUX_X1 
XU623 key[61] key_sig[61] start N103 MUX_X1 
XU622 key[62] key_sig[62] start N104 MUX_X1 
XU621 key[63] key_sig[63] start N105 MUX_X1 
XU620 key[64] key_sig[64] start N106 MUX_X1 
XU619 key[65] key_sig[65] start N107 MUX_X1 
XU618 key[66] key_sig[66] start N108 MUX_X1 
XU617 key[67] key_sig[67] start N109 MUX_X1 
XU616 p[20] c[19] start N11 MUX_X1 
XU615 key[68] key_sig[68] start N110 MUX_X1 
XU614 key[69] key_sig[69] start N111 MUX_X1 
XU613 key[70] key_sig[70] start N112 MUX_X1 
XU612 key[71] key_sig[71] start N113 MUX_X1 
XU611 key[72] key_sig[72] start N114 MUX_X1 
XU610 key[73] key_sig[73] start N115 MUX_X1 
XU609 key[74] key_sig[74] start N116 MUX_X1 
XU608 key[75] key_sig[75] start N117 MUX_X1 
XU607 key[76] key_sig[76] start N118 MUX_X1 
XU606 key[77] key_sig[77] start N119 MUX_X1 
XU605 p[21] c[20] start N12 MUX_X1 
XU604 key[78] key_sig[78] start N120 MUX_X1 
XU603 key[79] key_sig[79] start N121 MUX_X1 
XU602 p[22] c[21] start N13 MUX_X1 
XU601 n387 n386 n374 OR2_X1 
XU600 n374 N132 INV_X1 
XU599 c[22] T[7] N134 AND2_X1 
XU598 n385 n384 n373 OR2_X1 
XU597 n373 N137 INV_X1 
XU596 n383 n382 n372 OR2_X1 
XU595 n372 N139 INV_X1 
XU594 p[23] c[22] start N14 MUX_X1 
XU593 p[24] c[23] start N15 MUX_X1 
XU592 p[25] n371 INV_X1 
XU591 n371 n387 start N16 NMUX_X1 
XU590 p[26] c[25] start N17 MUX_X1 
XU589 p[27] c[26] start N18 MUX_X1 
XU588 p[28] n370 INV_X1 
XU587 n370 n386 start N19 NMUX_X1 
XU586 T_sig[0] start N2 AND2_X1 
XU585 p[29] c[28] start N20 MUX_X1 
XU584 p[30] c[29] start N21 MUX_X1 
XU583 p[31] c[30] start N22 MUX_X1 
XU582 p[0] L2_sig[0] start N23 MUX_X1 
XU581 p[1] c[0] start N24 MUX_X1 
XU580 p[2] c[1] start N25 MUX_X1 
XU579 p[3] c[2] start N26 MUX_X1 
XU578 p[4] n369 INV_X1 
XU577 n369 n383 start N27 NMUX_X1 
XU576 p[5] c[4] start N28 MUX_X1 
XU575 p[6] c[5] start N29 MUX_X1 
XU574 n381 start N3 NAND2_X1 
XU573 p[7] c[6] start N30 MUX_X1 
XU572 p[8] c[7] start N31 MUX_X1 
XU571 p[9] n368 INV_X1 
XU570 n368 n382 start N32 NMUX_X1 
XU569 p[10] c[9] start N33 MUX_X1 
XU568 p[11] n367 INV_X1 
XU567 n367 n385 start N34 NMUX_X1 
XU566 p[12] c[11] start N35 MUX_X1 
XU565 p[13] n366 INV_X1 
XU564 n366 n384 start N36 NMUX_X1 
XU563 p[14] c[13] start N37 MUX_X1 
XU562 p[15] c[14] start N38 MUX_X1 
XU561 p[16] c[15] start N39 MUX_X1 
XU560 n380 start N4 NAND2_X1 
XU559 p[17] c[16] start N40 MUX_X1 
XU558 p[18] c[17] start N41 MUX_X1 
XU557 key[0] key_sig[0] start N42 MUX_X1 
XU556 key[1] key_sig[1] start N43 MUX_X1 
XU555 key[2] key_sig[2] start N44 MUX_X1 
XU554 key[3] key_sig[3] start N45 MUX_X1 
XU553 key[4] key_sig[4] start N46 MUX_X1 
XU552 key[5] key_sig[5] start N47 MUX_X1 
XU551 key[6] key_sig[6] start N48 MUX_X1 
XU550 key[7] key_sig[7] start N49 MUX_X1 
XU549 n379 start N5 NAND2_X1 
XU548 key[8] key_sig[8] start N50 MUX_X1 
XU547 key[9] key_sig[9] start N51 MUX_X1 
XU546 key[10] key_sig[10] start N52 MUX_X1 
XU545 key[11] key_sig[11] start N53 MUX_X1 
XU544 key[12] key_sig[12] start N54 MUX_X1 
XU543 key[13] key_sig[13] start N55 MUX_X1 
XU542 key[14] key_sig[14] start N56 MUX_X1 
XU541 key[15] key_sig[15] start N57 MUX_X1 
XU540 key[16] key_sig[16] start N58 MUX_X1 
XU539 key[17] key_sig[17] start N59 MUX_X1 
XU538 n378 start N6 NAND2_X1 
XU537 key[18] key_sig[18] start N60 MUX_X1 
XU536 key[19] key_sig[19] start N61 MUX_X1 
XU535 key[20] key_sig[20] start N62 MUX_X1 
XU534 key[21] key_sig[21] start N63 MUX_X1 
XU533 key[22] key_sig[22] start N64 MUX_X1 
XU532 key[23] key_sig[23] start N65 MUX_X1 
XU531 key[24] key_sig[24] start N66 MUX_X1 
XU530 key[25] key_sig[25] start N67 MUX_X1 
XU529 key[26] key_sig[26] start N68 MUX_X1 
XU528 key[27] key_sig[27] start N69 MUX_X1 
XU527 n377 start N7 NAND2_X1 
XU526 key[28] key_sig[28] start N70 MUX_X1 
XU525 key[29] key_sig[29] start N71 MUX_X1 
XU524 key[30] key_sig[30] start N72 MUX_X1 
XU523 key[31] key_sig[31] start N73 MUX_X1 
XU522 key[32] key_sig[32] start N74 MUX_X1 
XU521 key[33] key_sig[33] start N75 MUX_X1 
XU520 key[34] key_sig[34] start N76 MUX_X1 
XU519 key[35] key_sig[35] start N77 MUX_X1 
XU518 key[36] key_sig[36] start N78 MUX_X1 
XU517 key[37] key_sig[37] start N79 MUX_X1 
XU516 n376 start N8 NAND2_X1 
XU515 key[38] key_sig[38] start N80 MUX_X1 
XU514 key[39] key_sig[39] start N81 MUX_X1 
XU513 key[40] key_sig[40] start N82 MUX_X1 
XU512 key[41] key_sig[41] start N83 MUX_X1 
XU511 key[42] key_sig[42] start N84 MUX_X1 
XU510 key[43] key_sig[43] start N85 MUX_X1 
XU509 key[44] key_sig[44] start N86 MUX_X1 
XU508 key[45] key_sig[45] start N87 MUX_X1 
XU507 key[46] key_sig[46] start N88 MUX_X1 
XU506 key[47] key_sig[47] start N89 MUX_X1 
XU505 n375 start N9 NAND2_X1 
XU504 key[48] key_sig[48] start N90 MUX_X1 
XU503 key[49] key_sig[49] start N91 MUX_X1 
XU502 key[50] key_sig[50] start N92 MUX_X1 
XU501 key[51] key_sig[51] start N93 MUX_X1 
XU500 key[52] key_sig[52] start N94 MUX_X1 
XU499 key[53] key_sig[53] start N95 MUX_X1 
XU498 key[54] key_sig[54] start N96 MUX_X1 
XU497 key[55] key_sig[55] start N97 MUX_X1 
XU496 key[56] key_sig[56] start N98 MUX_X1 
XU495 key[57] key_sig[57] start N99 MUX_X1 
XU494 T[7] n363 n361 T_sig[3] n364 AND4_X1 
XU493 n362 T_sig[5] n360 T_sig[7] n365 AND4_X1 
XU492 n364 n365 cycle_254 AND2_X1 
XU491 n349 n348 key_sig[1] XOR_X1 
XU490 key_sig[51] key_sig[14] n348 XOR_X1 
XU489 key_reg[79] key_sig[62] n349 XOR_X1 
XU488 n351 n350 key_sig[0] XOR_X1 
XU487 key_sig[50] key_sig[13] n350 XOR_X1 
XU486 key_reg[78] key_sig[61] n351 XOR_X1 
XU485 n353 n352 L2_sig[0] XOR_X1 
XU484 N134 n354 n352 XOR_X1 
XU483 c[26] N132 n353 XOR_X1 
XU482 key_reg[79] c[31] n354 XOR_X1 
XU481 n356 n355 L1_sig[0] XOR_X1 
XU480 N139 n357 n355 XOR_X1 
XU479 key_reg[78] N137 n356 XOR_X1 
XU478 c[18] c[7] n357 XOR_X1 
XU477 n359 n358 T_sig[0] XOR_X1 
XU476 T_sig[5] T_sig[3] n358 XOR_X1 
XU475 T[7] T_sig[7] n359 XOR_X1 
XL2_reg[18] N41 clk VDD VDD c[18] DFFRS1_X1 
XL2_reg[17] N40 clk VDD VDD c[17] DFFRS1_X1 
XL2_reg[16] N39 clk VDD VDD c[16] DFFRS1_X1 
XL2_reg[15] N38 clk VDD VDD c[15] DFFRS1_X1 
XL2_reg[14] N37 clk VDD VDD c[14] DFFRS1_X1 
XL2_reg[13] N36 clk VDD VDD c[13] DFFRS1_X1 
XL2_reg[12] N35 clk VDD VDD c[12] n384 DFFRS_X1
XL2_reg[11] N34 clk VDD VDD c[11] DFFRS1_X1 
XL2_reg[10] N33 clk VDD VDD c[10] n385 DFFRS_X1 
XL2_reg[9] N32 clk VDD VDD c[9] DFFRS1_X1 
XL2_reg[8] N31 clk VDD VDD c[8] n382 DFFRS_X1 
XL2_reg[7] N30 clk VDD VDD c[7] DFFRS1_X1 
XL2_reg[6] N29 clk VDD VDD c[6] DFFRS1_X1 
XL2_reg[5] N28 clk VDD VDD c[5] DFFRS1_X1 
XL2_reg[4] N27 clk VDD VDD c[4] DFFRS1_X1 
XL2_reg[3] N26 clk VDD VDD c[3] n383 DFFRS_X1 
XL2_reg[2] N25 clk VDD VDD c[2] DFFRS1_X1 
XL2_reg[1] N24 clk VDD VDD c[1] DFFRS1_X1 
XL2_reg[0] N23 clk VDD VDD c[0] DFFRS1_X1 
XL1_reg[12] N22 clk VDD VDD c[31] DFFRS1_X1 
XL1_reg[11] N21 clk VDD VDD c[30] DFFRS1_X1 
XL1_reg[10] N20 clk VDD VDD c[29] DFFRS1_X1 
XL1_reg[9] N19 clk VDD VDD c[28] DFFRS1_X1 
XL1_reg[8] N18 clk VDD VDD c[27] n386 DFFRS_X1 
XL1_reg[7] N17 clk VDD VDD c[26] DFFRS1_X1 
XL1_reg[6] N16 clk VDD VDD c[25] DFFRS1_X1 
XL1_reg[5] N15 clk VDD VDD c[24] n387 DFFRS_X1 
XL1_reg[4] N14 clk VDD VDD c[23] DFFRS1_X1 
XL1_reg[3] N13 clk VDD VDD c[22] DFFRS1_X1 
XL1_reg[2] N12 clk VDD VDD c[21] DFFRS1_X1 
XL1_reg[1] N11 clk VDD VDD c[20] DFFRS1_X1 
XL1_reg[0] N10 clk VDD VDD c[19] DFFRS1_X1 
XT_reg[7] N9 clk VDD VDD T[7] DFFRS1_X1 
XT_reg[6] N8 clk VDD VDD T_sig[7] n375 DFFRS_X1 
XT_reg[5] N7 clk VDD VDD n360 n376 DFFRS_X1 
XT_reg[4] N6 clk VDD VDD T_sig[5] n377 DFFRS_X1 
XT_reg[3] N5 clk VDD VDD n362 n378 DFFRS_X1 
XT_reg[2] N4 clk VDD VDD T_sig[3] n379 DFFRS_X1 
XT_reg[1] N3 clk VDD VDD n361 n380 DFFRS_X1 
XT_reg[0] N2 clk VDD VDD n363 n381 DFFRS_X1 
Xkey_reg_reg[78] N120 clk VDD VDD key_reg[78] DFFRS1_X1 
Xkey_reg_reg[76] N118 clk VDD VDD key_sig[78] DFFRS1_X1 
Xkey_reg_reg[74] N116 clk VDD VDD key_sig[76] DFFRS1_X1 
Xkey_reg_reg[72] N114 clk VDD VDD key_sig[74] DFFRS1_X1 
Xkey_reg_reg[70] N112 clk VDD VDD key_sig[72] DFFRS1_X1 
Xkey_reg_reg[68] N110 clk VDD VDD key_sig[70] DFFRS1_X1 
Xkey_reg_reg[66] N108 clk VDD VDD key_sig[68] DFFRS1_X1 
Xkey_reg_reg[64] N106 clk VDD VDD key_sig[66] DFFRS1_X1 
Xkey_reg_reg[62] N104 clk VDD VDD key_sig[64] DFFRS1_X1 
Xkey_reg_reg[79] N121 clk VDD VDD key_reg[79] DFFRS1_X1 
Xkey_reg_reg[77] N119 clk VDD VDD key_sig[79] DFFRS1_X1 
Xkey_reg_reg[75] N117 clk VDD VDD key_sig[77] DFFRS1_X1 
Xkey_reg_reg[73] N115 clk VDD VDD key_sig[75] DFFRS1_X1 
Xkey_reg_reg[71] N113 clk VDD VDD key_sig[73] DFFRS1_X1 
Xkey_reg_reg[69] N111 clk VDD VDD key_sig[71] DFFRS1_X1 
Xkey_reg_reg[67] N109 clk VDD VDD key_sig[69] DFFRS1_X1 
Xkey_reg_reg[65] N107 clk VDD VDD key_sig[67] DFFRS1_X1 
Xkey_reg_reg[63] N105 clk VDD VDD key_sig[65] DFFRS1_X1
Xkey_reg_reg[61] N103 clk VDD VDD key_sig[63] DFFRS1_X1
Xkey_reg_reg[59] N101 clk VDD VDD key_sig[61] DFFRS1_X1
Xkey_reg_reg[57] N99 clk VDD VDD key_sig[59] DFFRS1_X1
Xkey_reg_reg[55] N97 clk VDD VDD key_sig[57] DFFRS1_X1
Xkey_reg_reg[53] N95 clk VDD VDD key_sig[55] DFFRS1_X1
Xkey_reg_reg[51] N93 clk VDD VDD key_sig[53] DFFRS1_X1
Xkey_reg_reg[49] N91 clk VDD VDD key_sig[51] DFFRS1_X1 
Xkey_reg_reg[47] N89 clk VDD VDD key_sig[49] DFFRS1_X1
Xkey_reg_reg[45] N87 clk VDD VDD key_sig[47] DFFRS1_X1
Xkey_reg_reg[43] N85 clk VDD VDD key_sig[45] DFFRS1_X1
Xkey_reg_reg[41] N83 clk VDD VDD key_sig[43] DFFRS1_X1 
Xkey_reg_reg[39] N81 clk VDD VDD key_sig[41] DFFRS1_X1
Xkey_reg_reg[37] N79 clk VDD VDD key_sig[39] DFFRS1_X1
Xkey_reg_reg[35] N77 clk VDD VDD key_sig[37] DFFRS1_X1
Xkey_reg_reg[33] N75 clk VDD VDD key_sig[35] DFFRS1_X1
Xkey_reg_reg[31] N73 clk VDD VDD key_sig[33] DFFRS1_X1
Xkey_reg_reg[29] N71 clk VDD VDD key_sig[31] DFFRS1_X1 
Xkey_reg_reg[27] N69 clk VDD VDD key_sig[29] DFFRS1_X1
Xkey_reg_reg[25] N67 clk VDD VDD key_sig[27] DFFRS1_X1 
Xkey_reg_reg[23] N65 clk VDD VDD key_sig[25] DFFRS1_X1
Xkey_reg_reg[21] N63 clk VDD VDD key_sig[23] DFFRS1_X1
Xkey_reg_reg[19] N61 clk VDD VDD key_sig[21] DFFRS1_X1
Xkey_reg_reg[17] N59 clk VDD VDD key_sig[19] DFFRS1_X1
Xkey_reg_reg[15] N57 clk VDD VDD key_sig[17] DFFRS1_X1
Xkey_reg_reg[13] N55 clk VDD VDD key_sig[15] DFFRS1_X1
Xkey_reg_reg[11] N53 clk VDD VDD key_sig[13] DFFRS1_X1
Xkey_reg_reg[9] N51 clk VDD VDD key_sig[11] DFFRS1_X1
Xkey_reg_reg[7] N49 clk VDD VDD key_sig[9] DFFRS1_X1
Xkey_reg_reg[5] N47 clk VDD VDD key_sig[7] DFFRS1_X1
Xkey_reg_reg[3] N45 clk VDD VDD key_sig[5] DFFRS1_X1
Xkey_reg_reg[1] N43 clk VDD VDD key_sig[3] DFFRS1_X1
Xkey_reg_reg[60] N102 clk VDD VDD key_sig[62] DFFRS1_X1
Xkey_reg_reg[58] N100 clk VDD VDD key_sig[60] DFFRS1_X1
Xkey_reg_reg[56] N98 clk VDD VDD key_sig[58] DFFRS1_X1
Xkey_reg_reg[54] N96 clk VDD VDD key_sig[56] DFFRS1_X1
Xkey_reg_reg[52] N94 clk VDD VDD key_sig[54] DFFRS1_X1
Xkey_reg_reg[50] N92 clk VDD VDD key_sig[52] DFFRS1_X1
Xkey_reg_reg[48] N90 clk VDD VDD key_sig[50] DFFRS1_X1
Xkey_reg_reg[46] N88 clk VDD VDD key_sig[48] DFFRS1_X1
Xkey_reg_reg[44] N86 clk VDD VDD key_sig[46] DFFRS1_X1
Xkey_reg_reg[42] N84 clk VDD VDD key_sig[44] DFFRS1_X1
Xkey_reg_reg[40] N82 clk VDD VDD key_sig[42] DFFRS1_X1
Xkey_reg_reg[38] N80 clk VDD VDD key_sig[40] DFFRS1_X1 
Xkey_reg_reg[36] N78 clk VDD VDD key_sig[38] DFFRS1_X1 
Xkey_reg_reg[34] N76 clk VDD VDD key_sig[36] DFFRS1_X1 
Xkey_reg_reg[32] N74 clk VDD VDD key_sig[34] DFFRS1_X1 
Xkey_reg_reg[30] N72 clk VDD VDD key_sig[32] DFFRS1_X1 
Xkey_reg_reg[28] N70 clk VDD VDD key_sig[30] DFFRS1_X1 
Xkey_reg_reg[26] N68 clk VDD VDD key_sig[28] DFFRS1_X1 
Xkey_reg_reg[24] N66 clk VDD VDD key_sig[26] DFFRS1_X1 
Xkey_reg_reg[22] N64 clk VDD VDD key_sig[24] DFFRS1_X1 
Xkey_reg_reg[20] N62 clk VDD VDD key_sig[22] DFFRS1_X1 
Xkey_reg_reg[18] N60 clk VDD VDD key_sig[20] DFFRS1_X1 
Xkey_reg_reg[16] N58 clk VDD VDD key_sig[18] DFFRS1_X1 
Xkey_reg_reg[14] N56 clk VDD VDD key_sig[16] DFFRS1_X1 
Xkey_reg_reg[12] N54 clk VDD VDD key_sig[14] DFFRS1_X1 
Xkey_reg_reg[10] N52 clk VDD VDD key_sig[12] DFFRS1_X1 
Xkey_reg_reg[8] N50 clk VDD VDD key_sig[10] DFFRS1_X1 
Xkey_reg_reg[6] N48 clk VDD VDD key_sig[8] DFFRS1_X1 
Xkey_reg_reg[4] N46 clk VDD VDD key_sig[6] DFFRS1_X1 
Xkey_reg_reg[2] N44 clk VDD VDD key_sig[4] DFFRS1_X1 
Xkey_reg_reg[0] N42 clk VDD VDD key_sig[2] DFFRS1_X1 
.ENDS




Xadder clk start p[31] p[30] p[29] p[28] p[27] p[26] p[25] p[24] p[23] p[22] 
+ p[21] p[20] p[19] p[18] p[17] p[16] p[15] p[14] p[13] p[12] p[11] p[10] p[9] p[8] 
+ p[7] p[6] p[5] p[4] p[3] p[2] p[1] p[0] key[79] key[78] key[77] key[76] key[75] 
+ key[74] key[73] key[72] key[71] key[70] key[69] key[68] key[67] key[66] key[65] 
+ key[64] key[63] key[62] key[61] key[60] key[59] key[58] key[57] key[56] key[55] 
+ key[54] key[53] key[52] key[51] key[50] key[49] key[48] key[47] key[46] key[45] 
+ key[44] key[43] key[42] key[41] key[40] key[39] key[38] key[37] key[36] key[35] 
+ key[34] key[33] key[32] key[31] key[30] key[29] key[28] key[27] key[26] key[25] 
+ key[24] key[23] key[22] key[21] key[20] key[19] key[18] key[17] key[16] key[15] 
+ key[14] key[13] key[12] key[11] key[10] key[9] key[8] key[7] key[6] key[5] key[4] 
+ key[3] key[2] key[1] key[0] c[31] c[30] c[29] c[28] c[27] c[26] c[25] c[24] c[23] 
+ c[22] c[21] c[20] c[19] c[18] c[17] c[16] c[15] c[14] c[13] c[12] c[11] c[10] 
+ c[9] c[8] c[7] c[6] c[5] c[4] c[3] c[2] c[1] c[0] cycle_254   katan

.GLOBAL  VDD  GND 

.inc "/lhome/shayan/PTM-MG/modelfiles/lstp/20nfet.pm"
.inc "/lhome/shayan/PTM-MG/modelfiles/lstp/20pfet.pm"
*.option finesim_ouput=tr0
*.option finesim_mode=spicead
*.inc "/home/yu755606/device_model/PTMstdcells/includelist.txt"

*************************************************************************************
*
*Subckt netlists
*
*************************************************************************************

.subckt  AND2_X1  A  B  Y 
M1  Y1  A  VDD  VDD  pfet nfin=2  l=24n
M2  Y1  B  VDD  VDD  pfet nfin=2  l=24n
M3  Y1  A  1  GND  nfet nfin=1  l=24n
M4  1  B  GND  GND  nfet nfin=1  l=24n
M5  Y  Y1  VDD  VDD  pfet nfin=2  l=24n
M6  Y  Y1  GND  GND  nfet nfin=1  l=24n
.ends 

.subckt  DFFRS_X1 D  clk  clr  pr  Q  Qbar 
X1  pr  4  2  1  NAND3_X1 
X2  1  clr  clk  2  NAND3_X1 
X3  2  clk  4  3  NAND3_X1 
X4  3  clr  D  4  NAND3_X1 
X5  pr  2  Qbar  Q  NAND3_X1 
X6  Q  clr  3  Qbar  NAND3_X1 
.ends 

.subckt  DFFRS1_X1 D  clk  clr  pr  Q
Xd1  pr  4  2  1  NAND3_X1 
Xd2  1  clr  clk  2  NAND3_X1 
Xd3  2  clk  4  3  NAND3_X1 
Xd4  3  clr  D  4  NAND3_X1 
Xd5  pr  2  Qbar  Q  NAND3_X1 
Xd6  Q  clr  3  Qbar  NAND3_X1 
.ends


.SUBCKT  NAND3_X1  A  B  C  Y 
M1  Y  A  VDD  VDD  pfet nfin=2  l=24n
M2  Y  B  VDD  VDD  pfet nfin=2  l=24n
M3  Y  C  VDD  VDD  pfet nfin=2  l=24n
M4  Y  A  1  GND  nfet nfin=1  l=24n
M5  1  B  2  GND  nfet nfin=1  l=24n
M6  2  C  GND  GND  nfet nfin=1  l=24n
.ends


.subckt  AND4_X1  A  B  C  D  Y 
M1  Y1  A  VDD  VDD  pfet nfin=2  l=24n
M2  Y1  B  VDD  VDD  pfet nfin=2  l=24n
M3  Y1  C  VDD  VDD  pfet nfin=2  l=24n
M4  Y1  D  VDD  VDD  pfet nfin=2  l=24n
M5  Y1  A  1  GND  nfet nfin=1  l=24n
M6  1  B  2  GND  nfet nfin=1  l=24n
M7  2  C  3  GND  nfet nfin=1  l=24n
M8  3  D  GND  GND  nfet nfin=1  l=24n
M9  Y  Y1  VDD  VDD  pfet nfin=2  l=24n
M10  Y  Y1  GND  GND  nfet nfin=1  l=24n
.ends 

.subckt  INV_X1 A Y 
M1  Y  A  VDD  VDD  pfet nfin=2  l=24n
M2  Y  A  GND  GND  nfet nfin=1  l=24n
.ends 

.subckt  MUX_X1 A  B  S  Y 
M1  Sb  S  VDD  VDD  pfet nfin=2  l=24n
M2  Sb  S  GND  GND  nfet nfin=1  l=24n
M3  Y1  Sb  n4  VDD  pfet nfin=2  l=24n
M4  Y1  S  n3  VDD  pfet nfin=2  l=24n
M5  n4  B  VDD  VDD  pfet nfin=2  l=24n
M6  n3  A  VDD  VDD  pfet nfin=2  l=24n
M7  Y1  Sb  n2  GND  nfet nfin=1  l=24n
M8  Y1  S  n1  GND  nfet nfin=1  l=24n
M9  n2  A  GND  GND  nfet nfin=1  l=24n
M10  n1  B  GND  GND  nfet nfin=1  l=24n
M11  Y  Y1  VDD  VDD  pfet nfin=2  l=24n
M12  Y  Y1  GND  GND  nfet nfin=1  l=24n
.ends 


.subckt  NAND2_X1  A  B  Y 
M1  Y  A  VDD  VDD  pfet nfin=2  l=24n
M2  Y  B  VDD  VDD  pfet nfin=2  l=24n
M3  Y  A  1  GND  nfet nfin=1  l=24n
M4  1  B  GND  GND  nfet nfin=1  l=24n
.ends 

.subckt  NMUX_X1 A  B  S  Y 
M1  Sb  S  VDD  VDD  pfet nfin=2  l=24n
M2  Sb  S  GND  GND  nfet nfin=1  l=24n
M3  Y  Sb  n4  VDD  pfet nfin=2  l=24n
M4  Y  S  n3  VDD  pfet nfin=2  l=24n
M5  n4  B  VDD  VDD  pfet nfin=2  l=24n
M6  n3  A  VDD  VDD  pfet nfin=2  l=24n
M7  Y  Sb  n2  GND  nfet nfin=1  l=24n
M8  Y  S  n1  GND  nfet nfin=1  l=24n
M9  n2  A  GND  GND  nfet nfin=1  l=24n
M10  n1  B  GND  GND  nfet nfin=1  l=24n
.ends 

.subckt  NOR2_X1  A  B  Y 
M1  1  A  VDD  VDD  pfet nfin=2  l=24n
M2  Y  B  1  VDD  pfet nfin=2  l=24n
M3  Y  A  GND  GND  nfet nfin=1  l=24n
M4  Y  B  GND  GND  nfet nfin=1  l=24n
.ends 


.subckt  OR2_X1  A  B  Y 
M1  1  A  VDD  VDD  pfet nfin=2  l=24n
M2  Y1  B  1  VDD  pfet nfin=2  l=24n
M3  Y1  A  GND  GND  nfet nfin=1  l=24n
M4  Y1  B  GND  GND  nfet nfin=1  l=24n
M5  Y  Y1  VDD  VDD  pfet nfin=2  l=24n
M6  Y  Y1  GND  GND  nfet nfin=1  l=24n
.ends 


.subckt  XNOR_X1   A  B  Y 
X1  A  Ab  INV_X1 
X2  B  Bb  INV_X1 
M3  n3  A  VDD  VDD  pfet nfin=2  l=24n
M4  n3  Bb  VDD  VDD  pfet nfin=2  l=24n
M5  Y  Ab  n3  VDD  pfet nfin=2  l=24n
M6  Y  B  n3  VDD  pfet nfin=2  l=24n
M7  Y  Ab  n1  GND  nfet nfin=1  l=24n
M8  Y  Bb  n2  GND  nfet nfin=1  l=24n
M9  n2  A  GND  GND  nfet nfin=1  l=24n
M10  n1  B  GND  GND  nfet nfin=1  l=24n
.ends 

.subckt  XOR_X1  A  B  Y 
X1  A  Ab  INV_X1 
X2  B  Bb  INV_X1 
M3  n3  A  VDD  VDD  pfet nfin=2  l=24n
M4  n3  B  VDD  VDD  pfet nfin=2  l=24n
M5  Y  Ab  n3  VDD  pfet nfin=2  l=24n
M6  Y  Bb  n3  VDD  pfet nfin=2  l=24n
M7  Y  Ab  n1  GND  nfet nfin=1  l=24n
M8  Y  B  n2  GND  nfet nfin=1  l=24n
M9  n2  A  GND  GND  nfet nfin=1  l=24n
M10  n1  Bb  GND  GND  nfet nfin=1  l=24n
.ends 


*.hdl "/lhome/kavehshamsi/home/models/GaSbTFETorg/GaSb-InAs-HPTFET-Lg-20nm.va"
*.hdl "/lhome/kavehshamsi/home/models/GaSbTFETorg/GaSb-InAs-HNTFET-Lg-20nm.va"

*.include "/lhome/kavehshamsi/home/models/NDTFET/TFET/ntfet_v1.0.2.lib"
*.vec "./addervec.vec"
VDD VDD GND 0.6V

Vkey0	key[0] GND 0V
Vkey1	key[1] GND 0V
Vkey2	key[2] GND 0V
Vkey3	key[3] GND 0V
Vkey4	key[4] GND 0V
Vkey5	key[5] GND 0V
Vkey6	key[6] GND 0V
Vkey7	key[7] GND 0V
Vkey8	key[8] GND 0V
Vkey9	key[9] GND 0V
Vkey10	key[10] GND 0V
Vkey11	key[11] GND 0V
Vkey12	key[12] GND 0V
Vkey13	key[13] GND 0V
Vkey14	key[14] GND 0V
Vkey15	key[15] GND 0V
Vkey16	key[16] GND 0V
Vkey17	key[17] GND 0V
Vkey18	key[18] GND 0V
Vkey19	key[19] GND 0V
Vkey20	key[20] GND 0V
Vkey21	key[21] GND 0V
Vkey22	key[22] GND 0V
Vkey23	key[23] GND 0V
Vkey24	key[24] GND 0V
Vkey25	key[25] GND 0V
Vkey26	key[26] GND 0V
Vkey27	key[27] GND 0V
Vkey28	key[28] GND 0V
Vkey29	key[29] GND 0V
Vkey30	key[30] GND 0V
Vkey31	key[31] GND 0V
Vkey32	key[32] GND 0V
Vkey33	key[33] GND 0V
Vkey34	key[34] GND 0V
Vkey35	key[35] GND 0V
Vkey36	key[36] GND 0V
Vkey37	key[37] GND 0V
Vkey38	key[38] GND 0V
Vkey39	key[39] GND 0V
Vkey40	key[40] GND 0V
Vkey41	key[41] GND 0V
Vkey42	key[42] GND 0V
Vkey43	key[43] GND 0V
Vkey44	key[44] GND 0V
Vkey45	key[45] GND 0V
Vkey46	key[46] GND 0V
Vkey47	key[47] GND 0V
Vkey48	key[48] GND 0V
Vkey49	key[49] GND 0V
Vkey50	key[50] GND 0V
Vkey51	key[51] GND 0V
Vkey52	key[52] GND 0V
Vkey53	key[53] GND 0V
Vkey54	key[54] GND 0V
Vkey55	key[55] GND 0V
Vkey56	key[56] GND 0V
Vkey57	key[57] GND 0V
Vkey58	key[58] GND 0V
Vkey59	key[59] GND 0V
Vkey60	key[60] GND 0V
Vkey61	key[61] GND 0V
Vkey62	key[62] GND 0V
Vkey63	key[63] GND 0V
Vkey64	key[64] GND 0V
Vkey65	key[65] GND 0V
Vkey66	key[66] GND 0V
Vkey67	key[67] GND 0V
Vkey68	key[68] GND 0V
Vkey69	key[69] GND 0V
Vkey70	key[70] GND 0V
Vkey71	key[71] GND 0V
Vkey72	key[72] GND 0V
Vkey73	key[73] GND 0V
Vkey74	key[74] GND 0V
Vkey75	key[75] GND 0V
Vkey76	key[76] GND 0V
Vkey77	key[77] GND 0V
Vkey78	key[78] GND 0V
Vkey79	key[79] GND 0V

Vp0	p[0] GND 0.6V
Vp1	p[1] GND 0.6V
Vp2	p[2] GND 0.6V
Vp3	p[3] GND 0.6V
Vp4	p[4] GND 0.6V
Vp5	p[5] GND 0.6V
Vp6	p[6] GND 0.6V
Vp7	p[7] GND 0.6V
Vp8	p[8] GND 0.6V
Vp9	p[9] GND 0.6V
Vp10	p[10] GND 0.6V
Vp11	p[11] GND 0.6V
Vp12	p[12] GND 0.6V
Vp13	p[13] GND 0.6V
Vp14	p[14] GND 0.6V
Vp15	p[15] GND 0.6V
Vp16	p[16] GND 0.6V
Vp17	p[17] GND 0.6V
Vp18	p[18] GND 0.6V
Vp19	p[19] GND 0.6V
Vp20	p[20] GND 0.6V
Vp21	p[21] GND 0.6V
Vp22	p[22] GND 0.6V
Vp23	p[23] GND 0.6V
Vp24	p[24] GND 0.6V
Vp25	p[25] GND 0.6V
Vp26	p[26] GND 0.6V
Vp27	p[27] GND 0.6V
Vp28	p[28] GND 0.6V
Vp29	p[29] GND 0.6V
Vp30	p[30] GND 0.6V
Vp31	p[31] GND 0.6V


Vstart  start  GND pwl 0 0v 3ns 0v 3.001ns 0.6v 40ns 0.6v
Vclk  clk GND pulse 0v 0.6v 1ns 0.005ns 0.005ns 5ns 10ns


*Vstart start GND pwl 0 0V 1ps 0V 1.5ps 0.6V 47ns 0.6V
*Vclk clk GND pulse 0 0.6V 5ps 5ps 5ps 91ps 182ps

.print I(VDD)

*.tran 1ns 2560n start=500ns

.tran 0.1ns 2560ns

.options post

.meas tran avgval AVG i(vdd) from=20ns to=27ns

.end


