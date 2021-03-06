* Nettran: AMD.64 Release B-2008.09.SP5.HF2.26004 2012/07/19
* Created:  3/08/2016  16:58
* Options: -verilog netlist.v -outName netlist.sp -verilog-b1 VDD -verilog-b0 GND -outType spice 

************* TEST VECTORS ************* --> 0.6v and 0.33v

Vin0	in[0] GND 0.33v
Vin1	in[1] GND 0.33v
Vin2	in[2] GND 0.33v
Vin3	in[3] GND 0.33v
Vin4	in[4] GND 0.33v
Vin5	in[5] GND 0.33v
Vin6	in[6] GND 0.6v
Vin7	in[7] GND 0.6v

Vin0_b	in[0]_b GND 0.6v
Vin1_b	in[1]_b GND 0.6v
Vin2_b	in[2]_b GND 0.6v
Vin3_b	in[3]_b GND 0.6v
Vin4_b	in[4]_b GND 0.6v
Vin5_b	in[5]_b GND 0.6v
Vin6_b	in[6]_b GND 0.33v
Vin7_b	in[7]_b GND 0.33v

*******************************************************************************
* Sub-Circuit Netlist:                                                        *
* Block: OR2_X1                                                               *
*******************************************************************************
.subckt OR2X1_RVT A B Y Ab Bb Yb vp vn
Mp1 Yb vp VDD pfet  l=24n nfin=1
Mp2 Y  vp VDD pfet  l=24n nfin=1
Mn1 Yb B   1   nfet  l=24n nfin=1 
Mn2 Y  Bb  1   nfet  l=24n nfin=1
Mn3 1  B   3   nfet  l=24n nfin=1
Mn4 Yb A   2   nfet  l=24n nfin=1
Mn5 Y  Ab  2   nfet  l=24n nfin=1
Mn6 2  Bb  3   nfet  l=24n nfin=1
Mn7 3  vn GND nfet  l=24n nfin=1
.ends


*******************************************************************************
* Sub-Circuit Netlist:                                                        *
* Block: NAND2_X1                                                             *
*******************************************************************************
.subckt NAND2X1_RVT A B Y Ab Bb Yb vp vn
* NAND2
Mp1 Y1  vp VDD pfet  l=24n nfin=1
Mp2 Y1b vp VDD pfet  l=24n nfin=1
Mn1 Y1  B   1   nfet  l=24n nfin=1
Mn2 Y1b Bb  1   nfet  l=24n nfin=1
Mn3 1   A   3   nfet  l=24n nfin=1
Mn4 Y1  A   2   nfet  l=24n nfin=1
Mn5 Y1b Ab  2   nfet  l=24n nfin=1
Mn6 2   Ab  3   nfet  l=24n nfin=1
Mn7 3  vn GND nfet  l=24n nfin=1
* buffer
Mbp4 Yb vp VDD pfet  l=24n nfin=1
Mbp5 Y  vp VDD pfet  l=24n nfin=1
Mbn4 Yb Y1  4   nfet  l=24n nfin=1
Mbn5 Y  Y1b 4   nfet  l=24n nfin=1
Mbn6 4  vn GND nfet  l=24n nfin=1
.ends


*******************************************************************************
* Sub-Circuit Netlist:                                                        *
* Block: AND2_X1                                                              *
*******************************************************************************
.subckt AND2X1_RVT A B Y Ab Bb Yb vp vn
* AND2
Mp1 Y1b vp VDD pfet  l=24n nfin=1
Mp2 Y1  vp VDD pfet  l=24n nfin=1
Mn1 Y1b B   1   nfet  l=24n nfin=1
Mn2 Y1  Bb  1   nfet  l=24n nfin=1
Mn3 1   A   3   nfet  l=24n nfin=1
Mn4 Y1b A   2   nfet  l=24n nfin=1
Mn5 Y1  Ab  2   nfet  l=24n nfin=1
Mn6 2   Ab  3   nfet  l=24n nfin=1
Mn7 3   vn GND nfet  l=24n nfin=1
* buffer
Mbp1 Y2b vp VDD pfet  l=24n nfin=1
Mbp2 Y2  vp VDD pfet  l=24n nfin=1
Mbn1 Y2b Y1  4   nfet  l=24n nfin=1
Mbn2 Y2  Y1b 4   nfet  l=24n nfin=1
Mbn3 4  vn GND nfet  l=24n nfin=1
* buffer
Mbp4 Yb vp VDD pfet  l=24n nfin=1
Mbp5 Y  vp VDD pfet  l=24n nfin=1
Mbn4 Yb Y2  5   nfet  l=24n nfin=1
Mbn5 Y  Y2b 5   nfet  l=24n nfin=1
Mbn6 5  vn GND nfet  l=24n nfin=1
.ends


*******************************************************************************
* Sub-Circuit Netlist:                                                        *
* Block: AND2_X2                                                              *
*******************************************************************************
.subckt AND2_X2 A B Ab Bb vp vn Y Yb
* AND2
Mp1 Y1b vp VDD pfet  l=24n nfin=1
Mp2 Y1  vp VDD pfet  l=24n nfin=1
Mn1 Y1b B   1   nfet  l=24n nfin=1
Mn2 Y1  Bb  1   nfet  l=24n nfin=1
Mn3 1   A   3   nfet  l=24n nfin=1
Mn4 Y1b A   2   nfet  l=24n nfin=1
Mn5 Y1  Ab  2   nfet  l=24n nfin=1
Mn6 2   Ab  3   nfet  l=24n nfin=1
Mn7 3   vn GND nfet  l=24n nfin=1
* buffer
Mbp1 Y2b vp VDD pfet  l=24n nfin=1
Mbp2 Y2  vp VDD pfet  l=24n nfin=1
Mbn1 Y2b Y1  4   nfet  l=24n nfin=1
Mbn2 Y2  Y1b 4   nfet  l=24n nfin=1
Mbn3 4  vn GND nfet  l=24n nfin=1
* buffer
Mbp4 Yb vp VDD pfet  l=24n nfin=1
Mbp5 Y  vp VDD pfet  l=24n nfin=1
Mbn4 Yb Y2  5   nfet  l=24n nfin=1
Mbn5 Y  Y2b 5   nfet  l=24n nfin=1
Mbn6 5  vn GND nfet  l=24n nfin=1
.ends



*******************************************************************************
* Sub-Circuit Netlist:                                                        *
* Block: AND4_X1                                                              *
*******************************************************************************
.subckt AND4X1_RVT A B C D Y Ab Bb Cb Db Yb vp vn
X1 A B out1 Ab Bb out1b vp vn AND2X1_RVT
X3 C D out2 Cb Db out2b vp vn AND2X1_RVT
X5 out1 out2 Y out1b out2b Yb vp vn AND2X1_RVT
.ends


*******************************************************************************
* Sub-Circuit Netlist:                                                        *
* Block: INV_X1                                                               *
*******************************************************************************
.subckt INVX1_RVT IN Y INb Yb vp vn
Mp1 Y  vp VDD pfet  l=24n nfin=1
Mp2 Yb vp VDD pfet  l=24n nfin=1
Mn1 Y  IN  1   nfet  l=24n nfin=1
Mn2 Yb INb 1   nfet  l=24n nfin=1
Mn3 1  vn GND nfet  l=24n nfin=1
.ends


*******************************************************************************
* Sub-Circuit Netlist:                                                        *
* Block: XOR2_X1                                                              *
*******************************************************************************
.subckt XOR2X1_RVT A B Y Ab Bb Yb vp vn
Mp1 Yb vp VDD pfet  l=24n nfin=1
Mp2 Y  vp VDD pfet  l=24n nfin=1
Mn1 Y  B   1   nfet  l=24n nfin=1 
Mn2 Yb Bb  1   nfet  l=24n nfin=1
Mn3 1  A   3   nfet  l=24n nfin=1
Mn4 Y  Bb  2   nfet  l=24n nfin=1
Mn5 Yb B   2   nfet  l=24n nfin=1
Mn6 2  Ab  3   nfet  l=24n nfin=1
Mn7 3  vn GND nfet  l=24n nfin=1
.ends


*******************************************************************************
* Sub-Circuit Netlist:                                                        *
* Block: DLATCH_X1                                                            *
*******************************************************************************
.subckt DLATCH_X1 D Db CLK CLKb vp vn Q Qb
Mp1 Qb vp VDD pfet  l=24n nfin=1
Mp2 Q  vp VDD pfet  l=24n nfin=1
Mn1 Qb D   1   nfet  l=24n nfin=1
Mn2 Q  Db  1   nfet  l=24n nfin=1
Mn3 1  CLKb 3   nfet  l=24n nfin=1
Mn4 Qb Q   2   nfet  l=24n nfin=1
Mn5 Q  Qb  2   nfet  l=24n nfin=1
Mn6 2  CLK 3   nfet  l=24n nfin=1
Mn7 3  vn GND nfet  l=24n nfin=1
.ends


*******************************************************************************
* Sub-Circuit Netlist:                                                        *
* Block: DFF_X1                                                               *
*******************************************************************************
.subckt DFFX1_RVT D CLK Q Db CLKb Qb vp vn
X_dlatch1 D  Db  CLK  CLKb vp  vn Qm Qmb DLATCH_X1
X_dlatch2 Qm Qmb CLKb CLK  vp  vn Q  Qb  DLATCH_X1
.ends


*******************************************************************************
* Sub-Circuit Netlist:                                                        *
* Block: MUX2_X1                                                              *
*******************************************************************************
.subckt MUX21X1_RVT A B SEL Y Ab Bb SELb Yb vp vn
Mp1 Y  vp VDD pfet  l=24n nfin=1
Mp2 Yb vp VDD pfet  l=24n nfin=1
Mn1 Yb A   1   nfet  l=24n nfin=1
Mn2 Y  Ab  1   nfet  l=24n nfin=1
Mn3 1  SELb 3   nfet  l=24n nfin=1
Mn4 Yb B   2   nfet  l=24n nfin=1
Mn5 Y  Bb  2   nfet  l=24n nfin=1
Mn6 2  SEL  3   nfet  l=24n nfin=1
Mn7 3  vn GND nfet  l=24n nfin=1
.ends


*******************************************************************************
* Sub-Circuit Netlist:                                                        *
* Block: NMUX2_X1                                                             *
*******************************************************************************
.subckt NMUX2_X1 A B Ab Bb SEL SELb vp vn Y Yb
Mp1 Yb vp VDD pfet  l=24n nfin=1
Mp2 Y  vp VDD pfet  l=24n nfin=1
Mn1 Y  A   1   nfet  l=24n nfin=1
Mn2 Yb Ab  1   nfet  l=24n nfin=1
Mn3 1  SELb 3  nfet  l=24n nfin=1
Mn4 Y  B   2   nfet  l=24n nfin=1
Mn5 Yb Bb  2   nfet  l=24n nfin=1
Mn6 2  SEL 3   nfet  l=24n nfin=1
Mn7 3  vn GND nfet  l=24n nfin=1
.ends

.SUBCKT S_Box clk clk_b in[7] in[6] in[5] in[4] in[3] in[2] in[1] in[0] 
+ in[7]_b in[6]_b in[5]_b in[4]_b in[3]_b in[2]_b in[1]_b in[0]_b 
+ out[7] out[6] out[5] out[4] out[3] out[2] out[1] out[0] 
+ out[7]_b out[6]_b out[5]_b out[4]_b out[3]_b out[2]_b out[1]_b out[0]_b 
+ vp vn 

XU797 in[0] n795 in[0]_b n795_b vp vn INVX1_RVT
XU796 in[0] n794 in[0]_b n794_b vp vn INVX1_RVT
XU795 in[5] n35 n125 in[5]_b n35_b n125_b vp vn OR2X1_RVT
XU794 in[2] n44 n136 in[2]_b n44_b n136_b vp vn OR2X1_RVT
XU793 in[0] n136 n202 in[0]_b n136_b n202_b vp vn OR2X1_RVT
XU792 n125 n202 n786 n125_b n202_b n786_b vp vn OR2X1_RVT
XU791 n40 n35 n111 n40_b n35_b n111_b vp vn OR2X1_RVT
XU790 in[0] in[1] n470 in[0]_b in[1]_b n470_b vp vn AND2X1_RVT
XU789 n111 n41 n787 n111_b n41_b n787_b vp vn OR2X1_RVT
XU788 n40 n44 n126 n40_b n44_b n126_b vp vn OR2X1_RVT
XU787 in[5] in[3] n551 in[5]_b in[3]_b n551_b vp vn AND2X1_RVT
XU786 n126 n28 n520 n126_b n28_b n520_b vp vn OR2X1_RVT
XU785 in[4] n27 n165 in[4]_b n27_b n165_b vp vn OR2X1_RVT
XU784 in[3] in[2] n88 in[3]_b in[2]_b n88_b vp vn OR2X1_RVT
XU783 n165 n88 n789 n165_b n88_b n789_b vp vn OR2X1_RVT
XU782 n44 in[0] n94 n44_b in[0]_b n94_b vp vn AND2X1_RVT
XU781 in[2] n795 n78 in[2]_b n795_b n78_b vp vn OR2X1_RVT
XU780 n42 n78 n227 n42_b n78_b n227_b vp vn AND2X1_RVT
XU779 n35 in[4] n176 n35_b in[4]_b n176_b vp vn AND2X1_RVT
XU778 n227 n31 n790 n227_b n31_b n790_b vp vn OR2X1_RVT
XU777 in[2] n30 n446 in[2]_b n30_b n446_b vp vn OR2X1_RVT
XU776 n88 n446 n793 n88_b n446_b n793_b vp vn AND2X1_RVT
XU775 n793 n42 n791 n793_b n42_b n791_b vp vn OR2X1_RVT
XU774 in[1] n27 n792 in[1]_b n27_b n792_b vp vn OR2X1_RVT
XU773 n78 n792 n607 n78_b n792_b n607_b vp vn OR2X1_RVT
XU772 n789 n790 n791 n607 n788 n789_b n790_b n791_b n607_b n788_b vp vn AND4X1_RVT
XU771 n786 n787 n520 n788 n785 n786_b n787_b n520_b n788_b n785_b vp vn AND4X1_RVT
XU770 n21 in[6] n553 n21_b in[6]_b n553_b vp vn AND2X1_RVT
XU769 n785 n17 n766 n785_b n17_b n766_b vp vn OR2X1_RVT
XU768 n24 n21 n63 n24_b n21_b n63_b vp vn OR2X1_RVT
XU767 n27 n30 n460 n27_b n30_b n460_b vp vn AND2X1_RVT
XU766 n63 n26 n214 n63_b n26_b n214_b vp vn OR2X1_RVT
XU765 n126 n214 n767 n126_b n214_b n767_b vp vn OR2X1_RVT
XU764 in[2] n35 n145 in[2]_b n35_b n145_b vp vn OR2X1_RVT
XU763 in[5] in[4] n640 in[5]_b in[4]_b n640_b vp vn AND2X1_RVT
XU762 n25 n17 n85 n25_b n17_b n85_b vp vn OR2X1_RVT
XU761 n145 n85 n777 n145_b n85_b n777_b vp vn OR2X1_RVT
XU760 n21 n24 n59 n21_b n24_b n59_b vp vn AND2X1_RVT
XU759 n26 n19 n213 n26_b n19_b n213_b vp vn OR2X1_RVT
XU758 n63 n25 n79 n63_b n25_b n79_b vp vn OR2X1_RVT
XU757 n213 n79 n784 n213_b n79_b n784_b vp vn AND2X1_RVT
XU756 n784 n111 n778 n784_b n111_b n778_b vp vn OR2X1_RVT
XU755 n24 n27 n95 n24_b n27_b n95_b vp vn AND2X1_RVT
XU754 in[7] n23 n782 in[7]_b n23_b n782_b vp vn OR2X1_RVT
XU753 n35 n30 n58 n35_b n30_b n58_b vp vn OR2X1_RVT
XU752 n27 in[7] n637 n27_b in[7]_b n637_b vp vn AND2X1_RVT
XU751 n58 n14 n783 n58_b n14_b n783_b vp vn OR2X1_RVT
XU750 n782 n783 n781 n782_b n783_b n781_b vp vn AND2X1_RVT
XU749 n44 in[2] n463 n44_b in[2]_b n463_b vp vn AND2X1_RVT
XU748 n781 n37 n779 n781_b n37_b n779_b vp vn OR2X1_RVT
XU747 n40 n44 n552 n40_b n44_b n552_b vp vn AND2X1_RVT
XU746 in[4] n21 n287 in[4]_b n21_b n287_b vp vn OR2X1_RVT
XU745 n38 n287 n780 n38_b n287_b n780_b vp vn OR2X1_RVT
XU744 n777 n778 n779 n780 n776 n777_b n778_b n779_b n780_b n776_b vp vn AND4X1_RVT
XU743 in[0] n776 n768 in[0]_b n776_b n768_b vp vn OR2X1_RVT
XU742 n28 n136 n771 n28_b n136_b n771_b vp vn OR2X1_RVT
XU741 n37 n125 n772 n37_b n125_b n772_b vp vn OR2X1_RVT
XU740 n35 in[2] n459 n35_b in[2]_b n459_b vp vn AND2X1_RVT
XU739 n34 n41 n773 n34_b n41_b n773_b vp vn OR2X1_RVT
XU738 n40 n795 n177 n40_b n795_b n177_b vp vn AND2X1_RVT
XU737 n39 n145 n775 n39_b n145_b n775_b vp vn AND2X1_RVT
XU736 in[5] n30 n259 in[5]_b n30_b n259_b vp vn OR2X1_RVT
XU735 n775 n259 n774 n775_b n259_b n774_b vp vn OR2X1_RVT
XU734 n771 n772 n773 n774 n770 n771_b n772_b n773_b n774_b n770_b vp vn AND4X1_RVT
XU733 n770 n19 n769 n770_b n19_b n769_b vp vn OR2X1_RVT
XU732 n766 n767 n768 n769 n714 n766_b n767_b n768_b n769_b n714_b vp vn AND4X1_RVT
XU731 n40 n30 n185 n40_b n30_b n185_b vp vn OR2X1_RVT
XU730 n185 n41 n199 n185_b n41_b n199_b vp vn OR2X1_RVT
XU729 n23 n199 n747 n23_b n199_b n747_b vp vn OR2X1_RVT
XU728 n165 n19 n96 n165_b n19_b n96_b vp vn OR2X1_RVT
XU727 n24 in[7] n178 n24_b in[7]_b n178_b vp vn AND2X1_RVT
XU726 n11 n259 n247 n11_b n259_b n247_b vp vn OR2X1_RVT
XU725 n96 n247 n765 n96_b n247_b n765_b vp vn AND2X1_RVT
XU724 n765 n34 n764 n765_b n34_b n764_b vp vn OR2X1_RVT
XU723 n165 n63 n272 n165_b n63_b n272_b vp vn OR2X1_RVT
XU722 n272 n145 n268 n272_b n145_b n268_b vp vn OR2X1_RVT
XU721 n764 n268 n763 n764_b n268_b n763_b vp vn AND2X1_RVT
XU720 n26 n17 n71 n26_b n17_b n71_b vp vn OR2X1_RVT
XU719 n71 n145 n541 n71_b n145_b n541_b vp vn OR2X1_RVT
XU718 n763 n541 n762 n763_b n541_b n762_b vp vn AND2X1_RVT
XU717 n762 n44 n748 n762_b n44_b n748_b vp vn OR2X1_RVT
XU716 in[5] n24 n114 in[5]_b n24_b n114_b vp vn OR2X1_RVT
XU715 in[2] in[0] n636 in[2]_b in[0]_b n636_b vp vn AND2X1_RVT
XU714 n114 n36 n759 n114_b n36_b n759_b vp vn OR2X1_RVT
XU713 n14 n38 n760 n14_b n38_b n760_b vp vn OR2X1_RVT
XU712 in[6] n27 n415 in[6]_b n27_b n415_b vp vn OR2X1_RVT
XU711 n42 n415 n761 n42_b n415_b n761_b vp vn OR2X1_RVT
XU710 n44 n794 n530 n44_b n794_b n530_b vp vn AND2X1_RVT
XU709 n21 n27 n184 n21_b n27_b n184_b vp vn OR2X1_RVT
XU708 n43 n184 n87 n43_b n184_b n87_b vp vn OR2X1_RVT
XU707 n759 n760 n761 n87 n758 n759_b n760_b n761_b n87_b n758_b vp vn AND4X1_RVT
XU706 in[4] n35 n116 in[4]_b n35_b n116_b vp vn OR2X1_RVT
XU705 n758 n116 n756 n758_b n116_b n756_b vp vn OR2X1_RVT
XU704 in[0] n44 n56 in[0]_b n44_b n56_b vp vn OR2X1_RVT
XU703 n11 n56 n566 n11_b n56_b n566_b vp vn OR2X1_RVT
XU702 n28 n566 n757 n28_b n566_b n757_b vp vn OR2X1_RVT
XU701 n756 n757 n749 n756_b n757_b n749_b vp vn AND2X1_RVT
XU700 in[3] in[1] n639 in[3]_b in[1]_b n639_b vp vn AND2X1_RVT
XU699 n63 n259 n86 n63_b n259_b n86_b vp vn OR2X1_RVT
XU698 n32 n86 n540 n32_b n86_b n540_b vp vn OR2X1_RVT
XU697 in[4] n24 n755 in[4]_b n24_b n755_b vp vn OR2X1_RVT
XU696 n126 n755 n752 n126_b n755_b n752_b vp vn OR2X1_RVT
XU695 in[5] in[3] n239 in[5]_b in[3]_b n239_b vp vn OR2X1_RVT
XU694 n11 n239 n754 n11_b n239_b n754_b vp vn OR2X1_RVT
XU693 n136 n754 n753 n136_b n754_b n753_b vp vn OR2X1_RVT
XU692 in[7] n27 n189 in[7]_b n27_b n189_b vp vn OR2X1_RVT
XU691 n31 n189 n80 n31_b n189_b n80_b vp vn OR2X1_RVT
XU690 n540 n752 n753 n80 n751 n540_b n752_b n753_b n80_b n751_b vp vn AND4X1_RVT
XU689 n751 n795 n750 n751_b n795_b n750_b vp vn OR2X1_RVT
XU688 n747 n748 n749 n750 n715 n747_b n748_b n749_b n750_b n715_b vp vn AND4X1_RVT
XU687 n38 n39 n728 n38_b n39_b n728_b vp vn AND2X1_RVT
XU686 n728 n189 n744 n728_b n189_b n744_b vp vn OR2X1_RVT
XU685 n126 n36 n746 n126_b n36_b n746_b vp vn AND2X1_RVT
XU684 n746 n63 n745 n746_b n63_b n745_b vp vn OR2X1_RVT
XU683 n744 n745 n742 n744_b n745_b n742_b vp vn AND2X1_RVT
XU682 n37 n794 n82 n37_b n794_b n82_b vp vn OR2X1_RVT
XU681 n14 n82 n743 n14_b n82_b n743_b vp vn OR2X1_RVT
XU680 n742 n743 n741 n742_b n743_b n741_b vp vn AND2X1_RVT
XU679 n30 n35 n201 n30_b n35_b n201_b vp vn AND2X1_RVT
XU678 n741 n29 n732 n741_b n29_b n732_b vp vn OR2X1_RVT
XU677 n31 n184 n137 n31_b n184_b n137_b vp vn OR2X1_RVT
XU676 n111 n86 n740 n111_b n86_b n740_b vp vn OR2X1_RVT
XU675 n137 n740 n739 n137_b n740_b n739_b vp vn AND2X1_RVT
XU674 in[1] n739 n733 in[1]_b n739_b n733_b vp vn OR2X1_RVT
XU673 in[0] n126 n166 in[0]_b n126_b n166_b vp vn OR2X1_RVT
XU672 n114 n166 n738 n114_b n166_b n738_b vp vn OR2X1_RVT
XU671 n24 n27 n149 n24_b n27_b n149_b vp vn OR2X1_RVT
XU670 n37 n149 n119 n37_b n149_b n119_b vp vn OR2X1_RVT
XU669 n738 n119 n737 n738_b n119_b n737_b vp vn AND2X1_RVT
XU668 n737 n31 n734 n737_b n31_b n734_b vp vn OR2X1_RVT
XU667 n31 n415 n611 n31_b n415_b n611_b vp vn OR2X1_RVT
XU666 n85 n611 n736 n85_b n611_b n736_b vp vn AND2X1_RVT
XU665 n736 n36 n735 n736_b n36_b n735_b vp vn OR2X1_RVT
XU664 n732 n733 n734 n735 n716 n732_b n733_b n734_b n735_b n716_b vp vn AND4X1_RVT
XU663 in[3] n86 n206 in[3]_b n86_b n206_b vp vn OR2X1_RVT
XU662 in[6] n30 n731 in[6]_b n30_b n731_b vp vn OR2X1_RVT
XU661 n145 n731 n730 n145_b n731_b n730_b vp vn OR2X1_RVT
XU660 n206 n730 n729 n206_b n730_b n729_b vp vn AND2X1_RVT
XU659 n729 n56 n718 n729_b n56_b n718_b vp vn OR2X1_RVT
XU658 in[3] n27 n190 in[3]_b n27_b n190_b vp vn OR2X1_RVT
XU657 n728 n63 n727 n728_b n63_b n727_b vp vn OR2X1_RVT
XU656 n190 n727 n719 n190_b n727_b n719_b vp vn OR2X1_RVT
XU655 n149 n23 n726 n149_b n23_b n726_b vp vn AND2X1_RVT
XU654 n726 n42 n725 n726_b n42_b n725_b vp vn OR2X1_RVT
XU653 n446 n725 n723 n446_b n725_b n723_b vp vn OR2X1_RVT
XU652 n25 n111 n724 n25_b n111_b n724_b vp vn OR2X1_RVT
XU651 n19 n724 n103 n19_b n724_b n103_b vp vn OR2X1_RVT
XU650 in[0] n103 n180 in[0]_b n103_b n180_b vp vn OR2X1_RVT
XU649 n723 n180 n720 n723_b n180_b n720_b vp vn AND2X1_RVT
XU648 n58 n136 n722 n58_b n136_b n722_b vp vn OR2X1_RVT
XU647 n415 n722 n721 n415_b n722_b n721_b vp vn OR2X1_RVT
XU646 n718 n719 n720 n721 n717 n718_b n719_b n720_b n721_b n717_b vp vn AND4X1_RVT
XU645 n714 n715 n716 n717 n713 n714_b n715_b n716_b n717_b n713_b vp vn AND4X1_RVT
XU644 n17 n259 n75 n17_b n259_b n75_b vp vn OR2X1_RVT
XU643 n111 n75 n703 n111_b n75_b n703_b vp vn OR2X1_RVT
XU642 n177 n35 n711 n177_b n35_b n711_b vp vn AND2X1_RVT
XU641 n639 n795 n712 n639_b n795_b n712_b vp vn AND2X1_RVT
XU640 n711 n712 n710 n711_b n712_b n710_b vp vn OR2X1_RVT
XU639 n33 n85 n704 n33_b n85_b n704_b vp vn OR2X1_RVT
XU638 n272 n37 n705 n272_b n37_b n705_b vp vn OR2X1_RVT
XU637 n19 n239 n84 n19_b n239_b n84_b vp vn OR2X1_RVT
XU636 n84 n40 n708 n84_b n40_b n708_b vp vn OR2X1_RVT
XU635 n38 n75 n709 n38_b n75_b n709_b vp vn OR2X1_RVT
XU634 n708 n709 n263 n708_b n709_b n263_b vp vn AND2X1_RVT
XU633 n166 n137 n707 n166_b n137_b n707_b vp vn OR2X1_RVT
XU632 n263 n707 n706 n263_b n707_b n706_b vp vn AND2X1_RVT
XU631 n703 n704 n705 n706 n626 n703_b n704_b n705_b n706_b n626_b vp vn AND4X1_RVT
XU630 n78 n611 n694 n78_b n611_b n694_b vp vn OR2X1_RVT
XU629 n795 n38 n426 n795_b n38_b n426_b vp vn OR2X1_RVT
XU628 n190 n426 n699 n190_b n426_b n699_b vp vn OR2X1_RVT
XU627 in[0] n28 n702 in[0]_b n28_b n702_b vp vn OR2X1_RVT
XU626 n116 n702 n701 n116_b n702_b n701_b vp vn AND2X1_RVT
XU625 n701 n37 n700 n701_b n37_b n700_b vp vn OR2X1_RVT
XU624 n699 n700 n697 n699_b n700_b n697_b vp vn AND2X1_RVT
XU623 n259 n126 n698 n259_b n126_b n698_b vp vn OR2X1_RVT
XU622 n697 n698 n696 n697_b n698_b n696_b vp vn AND2X1_RVT
XU621 n696 n19 n695 n696_b n19_b n695_b vp vn OR2X1_RVT
XU620 n694 n695 n666 n694_b n695_b n666_b vp vn AND2X1_RVT
XU619 in[0] n40 n693 in[0]_b n40_b n693_b vp vn OR2X1_RVT
XU618 n23 n693 n685 n23_b n693_b n685_b vp vn OR2X1_RVT
XU617 n636 n637 in[1] in[6] n692 n636_b n637_b in[1]_b in[6]_b n692_b vp vn AND4X1_RVT
XU616 in[7] in[5] n373 in[7]_b in[5]_b n373_b vp vn OR2X1_RVT
XU615 n166 n373 n686 n166_b n373_b n686_b vp vn OR2X1_RVT
XU614 in[1] n149 n690 in[1]_b n149_b n690_b vp vn OR2X1_RVT
XU613 n43 n11 n691 n43_b n11_b n691_b vp vn OR2X1_RVT
XU612 n690 n691 n688 n690_b n691_b n688_b vp vn AND2X1_RVT
XU611 n19 n126 n689 n19_b n126_b n689_b vp vn OR2X1_RVT
XU610 n688 n689 n687 n688_b n689_b n687_b vp vn AND2X1_RVT
XU609 n685 n15 n686 n687 n684 n685_b n15_b n686_b n687_b n684_b vp vn AND4X1_RVT
XU608 n684 n29 n667 n684_b n29_b n667_b vp vn OR2X1_RVT
XU607 n36 n202 n683 n36_b n202_b n683_b vp vn AND2X1_RVT
XU606 n683 in[3] n682 n683_b in[3]_b n682_b vp vn AND2X1_RVT
XU605 n682 n213 n678 n682_b n213_b n678_b vp vn OR2X1_RVT
XU604 n145 n42 n681 n145_b n42_b n681_b vp vn AND2X1_RVT
XU603 n681 n38 n680 n681_b n38_b n680_b vp vn AND2X1_RVT
XU602 n11 n25 n148 n11_b n25_b n148_b vp vn OR2X1_RVT
XU601 n680 n148 n679 n680_b n148_b n679_b vp vn OR2X1_RVT
XU600 n678 n679 n668 n678_b n679_b n668_b vp vn AND2X1_RVT
XU599 n38 n28 n673 n38_b n28_b n673_b vp vn OR2X1_RVT
XU598 n111 n44 n676 n111_b n44_b n676_b vp vn OR2X1_RVT
XU597 n794 n126 n677 n794_b n126_b n677_b vp vn OR2X1_RVT
XU596 n676 n677 n675 n676_b n677_b n675_b vp vn AND2X1_RVT
XU595 n675 n165 n674 n675_b n165_b n674_b vp vn OR2X1_RVT
XU594 n673 n674 n671 n673_b n674_b n671_b vp vn AND2X1_RVT
XU593 in[1] n58 n672 in[1]_b n58_b n672_b vp vn OR2X1_RVT
XU592 n671 n672 n670 n671_b n672_b n670_b vp vn AND2X1_RVT
XU591 n670 n11 n669 n670_b n11_b n669_b vp vn OR2X1_RVT
XU590 n666 n667 n668 n669 n627 n666_b n667_b n668_b n669_b n627_b vp vn AND4X1_RVT
XU589 n373 n58 n665 n373_b n58_b n665_b vp vn OR2X1_RVT
XU588 n665 n214 n568 n665_b n214_b n568_b vp vn AND2X1_RVT
XU587 n568 n426 n651 n568_b n426_b n651_b vp vn OR2X1_RVT
XU586 n58 n36 n441 n58_b n36_b n441_b vp vn OR2X1_RVT
XU585 n43 n78 n378 n43_b n78_b n378_b vp vn AND2X1_RVT
XU584 n378 n165 n662 n378_b n165_b n662_b vp vn OR2X1_RVT
XU583 in[5] n40 n664 in[5]_b n40_b n664_b vp vn OR2X1_RVT
XU582 n42 n664 n663 n42_b n664_b n663_b vp vn OR2X1_RVT
XU581 n441 n662 n663 n199 n661 n441_b n662_b n663_b n199_b n661_b vp vn AND4X1_RVT
XU580 n661 n17 n652 n661_b n17_b n652_b vp vn OR2X1_RVT
XU579 n44 n145 n444 n44_b n145_b n444_b vp vn OR2X1_RVT
XU578 n96 n444 n659 n96_b n444_b n659_b vp vn OR2X1_RVT
XU577 in[0] n86 n329 in[0]_b n86_b n329_b vp vn OR2X1_RVT
XU576 n34 n329 n660 n34_b n329_b n660_b vp vn OR2X1_RVT
XU575 n659 n660 n653 n659_b n660_b n653_b vp vn AND2X1_RVT
XU574 n14 n114 n478 n14_b n114_b n478_b vp vn AND2X1_RVT
XU573 n478 n116 n658 n478_b n116_b n658_b vp vn OR2X1_RVT
XU572 n63 n125 n274 n63_b n125_b n274_b vp vn OR2X1_RVT
XU571 n658 n274 n656 n658_b n274_b n656_b vp vn AND2X1_RVT
XU570 n31 n23 n657 n31_b n23_b n657_b vp vn OR2X1_RVT
XU569 n656 n657 n655 n656_b n657_b n655_b vp vn AND2X1_RVT
XU568 n655 n39 n654 n655_b n39_b n654_b vp vn OR2X1_RVT
XU567 n651 n652 n653 n654 n628 n651_b n652_b n653_b n654_b n628_b vp vn AND4X1_RVT
XU566 n14 n116 n650 n14_b n116_b n650_b vp vn OR2X1_RVT
XU565 n206 n650 n649 n206_b n650_b n649_b vp vn AND2X1_RVT
XU564 n649 n43 n630 n649_b n43_b n630_b vp vn OR2X1_RVT
XU563 n111 n42 n647 n111_b n42_b n647_b vp vn OR2X1_RVT
XU562 n43 n145 n648 n43_b n145_b n648_b vp vn OR2X1_RVT
XU561 n647 n648 n646 n647_b n648_b n646_b vp vn AND2X1_RVT
XU560 n646 n21 n645 n646_b n21_b n645_b vp vn OR2X1_RVT
XU559 n30 n645 n631 n30_b n645_b n631_b vp vn OR2X1_RVT
XU558 n184 n116 n106 n184_b n116_b n106_b vp vn OR2X1_RVT
XU557 n259 n23 n644 n259_b n23_b n644_b vp vn AND2X1_RVT
XU556 n644 n88 n643 n644_b n88_b n643_b vp vn OR2X1_RVT
XU555 n106 n643 n642 n106_b n643_b n642_b vp vn AND2X1_RVT
XU554 n642 n41 n632 n642_b n41_b n632_b vp vn OR2X1_RVT
XU553 n27 n63 n641 n27_b n63_b n641_b vp vn OR2X1_RVT
XU552 n31 n641 n554 n31_b n641_b n554_b vp vn OR2X1_RVT
XU551 n36 n554 n548 n36_b n554_b n548_b vp vn OR2X1_RVT
XU550 n639 in[0] n59 n640 n638 n639_b in[0]_b n59_b n640_b n638_b vp vn AND4X1_RVT
XU549 n548 n20 n634 n548_b n20_b n634_b vp vn AND2X1_RVT
XU548 n636 n637 in[3] n24 n635 n636_b n637_b in[3]_b n24_b n635_b vp vn AND4X1_RVT
XU547 n634 n16 n633 n634_b n16_b n633_b vp vn AND2X1_RVT
XU546 n630 n631 n632 n633 n629 n630_b n631_b n632_b n633_b n629_b vp vn AND4X1_RVT
XU545 n626 n627 n628 n629 n625 n626_b n627_b n628_b n629_b n625_b vp vn AND4X1_RVT
XU544 n166 n85 n612 n166_b n85_b n612_b vp vn OR2X1_RVT
XU543 in[4] n40 n354 in[4]_b n40_b n354_b vp vn OR2X1_RVT
XU542 n354 n116 n623 n354_b n116_b n623_b vp vn AND2X1_RVT
XU541 in[5] n32 n624 in[5]_b n32_b n624_b vp vn OR2X1_RVT
XU540 n623 n624 n622 n623_b n624_b n622_b vp vn AND2X1_RVT
XU539 n622 n19 n615 n622_b n19_b n615_b vp vn OR2X1_RVT
XU538 n23 n116 n621 n23_b n116_b n621_b vp vn OR2X1_RVT
XU537 n84 n621 n620 n84_b n621_b n620_b vp vn AND2X1_RVT
XU536 n620 n37 n616 n620_b n37_b n616_b vp vn OR2X1_RVT
XU535 in[7] n26 n619 in[7]_b n26_b n619_b vp vn OR2X1_RVT
XU534 n111 n619 n617 n111_b n619_b n617_b vp vn OR2X1_RVT
XU533 n40 n58 n465 n40_b n58_b n465_b vp vn OR2X1_RVT
XU532 n184 n465 n618 n184_b n465_b n618_b vp vn OR2X1_RVT
XU531 n615 n616 n617 n618 n614 n615_b n616_b n617_b n618_b n614_b vp vn AND4X1_RVT
XU530 in[0] n614 n613 in[0]_b n614_b n613_b vp vn OR2X1_RVT
XU529 n612 n613 n596 n612_b n613_b n596_b vp vn AND2X1_RVT
XU528 n136 n148 n597 n136_b n148_b n597_b vp vn OR2X1_RVT
XU527 n56 in[2] n62 n56_b in[2]_b n62_b vp vn AND2X1_RVT
XU526 n63 n239 n246 n63_b n239_b n246_b vp vn OR2X1_RVT
XU525 n62 n246 n609 n62_b n246_b n609_b vp vn OR2X1_RVT
XU524 n202 n611 n610 n202_b n611_b n610_b vp vn OR2X1_RVT
XU523 n609 n610 n598 n609_b n610_b n598_b vp vn AND2X1_RVT
XU522 n78 n116 n514 n78_b n116_b n514_b vp vn OR2X1_RVT
XU521 n227 n28 n601 n227_b n28_b n601_b vp vn OR2X1_RVT
XU520 n29 n202 n602 n29_b n202_b n602_b vp vn OR2X1_RVT
XU519 in[4] n795 n608 in[4]_b n795_b n608_b vp vn OR2X1_RVT
XU518 n28 n608 n425 n28_b n608_b n425_b vp vn OR2X1_RVT
XU517 n425 n607 n604 n425_b n607_b n604_b vp vn AND2X1_RVT
XU516 in[3] n165 n606 in[3]_b n165_b n606_b vp vn OR2X1_RVT
XU515 n56 n606 n605 n56_b n606_b n605_b vp vn OR2X1_RVT
XU514 n604 n605 n603 n604_b n605_b n603_b vp vn AND2X1_RVT
XU513 n514 n601 n602 n603 n600 n514_b n601_b n602_b n603_b n600_b vp vn AND4X1_RVT
XU512 n600 n17 n599 n600_b n17_b n599_b vp vn OR2X1_RVT
XU511 n596 n597 n598 n599 n543 n596_b n597_b n598_b n599_b n543_b vp vn AND4X1_RVT
XU510 n795 n71 n592 n795_b n71_b n592_b vp vn OR2X1_RVT
XU509 n44 n85 n593 n44_b n85_b n593_b vp vn OR2X1_RVT
XU508 n470 n75 n594 n470_b n75_b n594_b vp vn OR2X1_RVT
XU507 in[1] n247 n595 in[1]_b n247_b n595_b vp vn OR2X1_RVT
XU506 n592 n593 n594 n595 n591 n592_b n593_b n594_b n595_b n591_b vp vn AND4X1_RVT
XU505 n591 n34 n576 n591_b n34_b n576_b vp vn OR2X1_RVT
XU504 in[7] n165 n353 in[7]_b n165_b n353_b vp vn OR2X1_RVT
XU503 n78 n353 n577 n78_b n353_b n577_b vp vn OR2X1_RVT
XU502 n165 n145 n164 n165_b n145_b n164_b vp vn OR2X1_RVT
XU501 n11 n116 n587 n11_b n116_b n587_b vp vn OR2X1_RVT
XU500 n373 n446 n590 n373_b n446_b n590_b vp vn OR2X1_RVT
XU499 in[4] in[2] n484 in[4]_b in[2]_b n484_b vp vn OR2X1_RVT
XU498 n23 n484 n182 n23_b n484_b n182_b vp vn OR2X1_RVT
XU497 n590 n182 n588 n590_b n182_b n588_b vp vn AND2X1_RVT
XU496 in[3] n148 n589 in[3]_b n148_b n589_b vp vn OR2X1_RVT
XU495 n164 n587 n588 n589 n586 n164_b n587_b n588_b n589_b n586_b vp vn AND4X1_RVT
XU494 n586 n41 n578 n586_b n41_b n578_b vp vn OR2X1_RVT
XU493 in[3] n43 n70 in[3]_b n43_b n70_b vp vn OR2X1_RVT
XU492 n70 n247 n580 n70_b n247_b n580_b vp vn OR2X1_RVT
XU491 n19 n29 n267 n19_b n29_b n267_b vp vn OR2X1_RVT
XU490 in[1] n267 n581 in[1]_b n267_b n581_b vp vn OR2X1_RVT
XU489 n32 n88 n585 n32_b n88_b n585_b vp vn AND2X1_RVT
XU488 n585 n213 n582 n585_b n213_b n582_b vp vn OR2X1_RVT
XU487 n78 n38 n584 n78_b n38_b n584_b vp vn AND2X1_RVT
XU486 n584 n86 n583 n584_b n86_b n583_b vp vn OR2X1_RVT
XU485 n580 n581 n582 n583 n579 n580_b n581_b n582_b n583_b n579_b vp vn AND4X1_RVT
XU484 n576 n577 n578 n579 n544 n576_b n577_b n578_b n579_b n544_b vp vn AND4X1_RVT
XU483 in[3] n79 n574 in[3]_b n79_b n574_b vp vn OR2X1_RVT
XU482 n114 n354 n575 n114_b n354_b n575_b vp vn OR2X1_RVT
XU481 n574 n575 n573 n574_b n575_b n573_b vp vn AND2X1_RVT
XU480 n573 n42 n569 n573_b n42_b n569_b vp vn OR2X1_RVT
XU479 n37 n415 n479 n37_b n415_b n479_b vp vn OR2X1_RVT
XU478 n19 n82 n572 n19_b n82_b n572_b vp vn OR2X1_RVT
XU477 n479 n572 n571 n479_b n572_b n571_b vp vn AND2X1_RVT
XU476 n571 n58 n570 n571_b n58_b n570_b vp vn OR2X1_RVT
XU475 n569 n570 n555 n569_b n570_b n555_b vp vn AND2X1_RVT
XU474 n568 n148 n567 n568_b n148_b n567_b vp vn AND2X1_RVT
XU473 n567 n39 n556 n567_b n39_b n556_b vp vn OR2X1_RVT
XU472 n145 n165 n565 n145_b n165_b n565_b vp vn AND2X1_RVT
XU471 n565 n566 n562 n565_b n566_b n562_b vp vn OR2X1_RVT
XU470 n11 n125 n564 n11_b n125_b n564_b vp vn OR2X1_RVT
XU469 n426 n564 n563 n426_b n564_b n563_b vp vn OR2X1_RVT
XU468 n562 n563 n557 n562_b n563_b n557_b vp vn AND2X1_RVT
XU467 n29 n38 n560 n29_b n38_b n560_b vp vn OR2X1_RVT
XU466 n58 n111 n285 n58_b n111_b n285_b vp vn AND2X1_RVT
XU465 n285 n56 n561 n285_b n56_b n561_b vp vn OR2X1_RVT
XU464 n560 n561 n559 n560_b n561_b n559_b vp vn AND2X1_RVT
XU463 n559 n184 n558 n559_b n184_b n558_b vp vn OR2X1_RVT
XU462 n555 n556 n557 n558 n545 n555_b n556_b n557_b n558_b n545_b vp vn AND4X1_RVT
XU461 n37 n554 n179 n37_b n554_b n179_b vp vn OR2X1_RVT
XU460 n70 n272 n55 n70_b n272_b n55_b vp vn OR2X1_RVT
XU459 n551 n552 n553 in[4] n550 n551_b n552_b n553_b in[4]_b n550_b vp vn AND4X1_RVT
XU458 n30 n41 n549 n30_b n41_b n549_b vp vn OR2X1_RVT
XU457 n84 n549 n461 n84_b n549_b n461_b vp vn OR2X1_RVT
XU456 n18 n461 n548 n20 n547 n18_b n461_b n548_b n20_b n547_b vp vn AND4X1_RVT
XU455 n179 n55 n103 n547 n546 n179_b n55_b n103_b n547_b n546_b vp vn AND4X1_RVT
XU454 n543 n544 n545 n546 n542 n543_b n544_b n545_b n546_b n542_b vp vn AND4X1_RVT
XU453 n78 n274 n536 n78_b n274_b n536_b vp vn OR2X1_RVT
XU452 in[1] n35 n151 in[1]_b n35_b n151_b vp vn OR2X1_RVT
XU451 n85 n151 n537 n85_b n151_b n537_b vp vn OR2X1_RVT
XU450 n272 n36 n538 n272_b n36_b n538_b vp vn OR2X1_RVT
XU449 n540 n541 n539 n540_b n541_b n539_b vp vn AND2X1_RVT
XU448 n536 n537 n538 n539 n451 n536_b n537_b n538_b n539_b n451_b vp vn AND4X1_RVT
XU447 n32 n202 n535 n32_b n202_b n535_b vp vn AND2X1_RVT
XU446 n535 n26 n534 n535_b n26_b n534_b vp vn OR2X1_RVT
XU445 n41 n354 n208 n41_b n354_b n208_b vp vn OR2X1_RVT
XU444 n534 n208 n532 n534_b n208_b n532_b vp vn AND2X1_RVT
XU443 n190 n202 n533 n190_b n202_b n533_b vp vn OR2X1_RVT
XU442 n532 n533 n531 n532_b n533_b n531_b vp vn AND2X1_RVT
XU441 n531 n11 n488 n531_b n11_b n488_b vp vn OR2X1_RVT
XU440 n272 n44 n526 n272_b n44_b n526_b vp vn OR2X1_RVT
XU439 n530 n213 n527 n530_b n213_b n527_b vp vn OR2X1_RVT
XU438 in[5] in[1] n529 in[5]_b in[1]_b n529_b vp vn OR2X1_RVT
XU437 n63 n529 n528 n63_b n529_b n528_b vp vn OR2X1_RVT
XU436 n526 n527 n528 n329 n525 n526_b n527_b n528_b n329_b n525_b vp vn AND4X1_RVT
XU435 n525 n88 n489 n525_b n88_b n489_b vp vn OR2X1_RVT
XU434 n37 n190 n516 n37_b n190_b n516_b vp vn OR2X1_RVT
XU433 in[5] n37 n523 in[5]_b n37_b n523_b vp vn OR2X1_RVT
XU432 n111 n259 n524 n111_b n259_b n524_b vp vn OR2X1_RVT
XU431 n523 n524 n522 n523_b n524_b n522_b vp vn AND2X1_RVT
XU430 in[0] n522 n517 in[0]_b n522_b n517_b vp vn OR2X1_RVT
XU429 n58 n426 n518 n58_b n426_b n518_b vp vn OR2X1_RVT
XU428 n43 n116 n521 n43_b n116_b n521_b vp vn OR2X1_RVT
XU427 n520 n521 n519 n520_b n521_b n519_b vp vn AND2X1_RVT
XU426 n516 n517 n518 n519 n515 n516_b n517_b n518_b n519_b n515_b vp vn AND4X1_RVT
XU425 n515 n19 n490 n515_b n19_b n490_b vp vn OR2X1_RVT
XU424 n37 n28 n513 n37_b n28_b n513_b vp vn OR2X1_RVT
XU423 n513 n514 n505 n513_b n514_b n505_b vp vn AND2X1_RVT
XU422 n31 n126 n506 n31_b n126_b n506_b vp vn OR2X1_RVT
XU421 n27 n40 n129 n27_b n40_b n129_b vp vn OR2X1_RVT
XU420 n58 n129 n512 n58_b n129_b n512_b vp vn AND2X1_RVT
XU419 n512 n56 n509 n512_b n56_b n509_b vp vn OR2X1_RVT
XU418 in[0] n38 n511 in[0]_b n38_b n511_b vp vn OR2X1_RVT
XU417 n190 n511 n510 n190_b n511_b n510_b vp vn OR2X1_RVT
XU416 n509 n510 n507 n509_b n510_b n507_b vp vn AND2X1_RVT
XU415 n484 n41 n508 n484_b n41_b n508_b vp vn OR2X1_RVT
XU414 n505 n506 n507 n508 n504 n505_b n506_b n507_b n508_b n504_b vp vn AND4X1_RVT
XU413 n504 n17 n492 n504_b n17_b n492_b vp vn OR2X1_RVT
XU412 n96 n32 n135 n96_b n32_b n135_b vp vn OR2X1_RVT
XU411 n136 n247 n495 n136_b n247_b n495_b vp vn OR2X1_RVT
XU410 in[6] in[4] n502 in[6]_b in[4]_b n502_b vp vn OR2X1_RVT
XU409 in[5] n11 n503 in[5]_b n11_b n503_b vp vn OR2X1_RVT
XU408 n502 n503 n501 n502_b n503_b n501_b vp vn AND2X1_RVT
XU407 n501 n111 n498 n501_b n111_b n498_b vp vn OR2X1_RVT
XU406 in[7] n30 n500 in[7]_b n30_b n500_b vp vn OR2X1_RVT
XU405 n34 n500 n499 n34_b n500_b n499_b vp vn OR2X1_RVT
XU404 n498 n499 n496 n498_b n499_b n496_b vp vn AND2X1_RVT
XU403 n184 n151 n497 n184_b n151_b n497_b vp vn OR2X1_RVT
XU402 n135 n495 n496 n497 n494 n135_b n495_b n496_b n497_b n494_b vp vn AND4X1_RVT
XU401 n494 n795 n493 n494_b n795_b n493_b vp vn OR2X1_RVT
XU400 n492 n493 n491 n492_b n493_b n491_b vp vn AND2X1_RVT
XU399 n488 n489 n490 n491 n452 n488_b n489_b n490_b n491_b n452_b vp vn AND4X1_RVT
XU398 n114 n38 n486 n114_b n38_b n486_b vp vn OR2X1_RVT
XU397 n14 n166 n487 n14_b n166_b n487_b vp vn OR2X1_RVT
XU396 n486 n487 n485 n486_b n487_b n485_b vp vn AND2X1_RVT
XU395 n485 n31 n472 n485_b n31_b n472_b vp vn OR2X1_RVT
XU394 n63 n116 n349 n63_b n116_b n349_b vp vn OR2X1_RVT
XU393 n184 n484 n483 n184_b n484_b n483_b vp vn OR2X1_RVT
XU392 n349 n483 n482 n349_b n483_b n482_b vp vn AND2X1_RVT
XU391 n482 n42 n473 n482_b n42_b n473_b vp vn OR2X1_RVT
XU390 n111 n247 n481 n111_b n247_b n481_b vp vn OR2X1_RVT
XU389 n268 n481 n480 n268_b n481_b n480_b vp vn AND2X1_RVT
XU388 in[1] n480 n474 in[1]_b n480_b n474_b vp vn OR2X1_RVT
XU387 n116 n479 n476 n116_b n479_b n476_b vp vn OR2X1_RVT
XU386 n478 n444 n477 n478_b n444_b n477_b vp vn OR2X1_RVT
XU385 n476 n477 n475 n476_b n477_b n475_b vp vn AND2X1_RVT
XU384 n472 n473 n474 n475 n453 n472_b n473_b n474_b n475_b n453_b vp vn AND4X1_RVT
XU383 n82 n202 n471 n82_b n202_b n471_b vp vn AND2X1_RVT
XU382 n471 n148 n467 n471_b n148_b n467_b vp vn OR2X1_RVT
XU381 in[3] n470 n469 in[3]_b n470_b n469_b vp vn OR2X1_RVT
XU380 n96 n469 n468 n96_b n469_b n468_b vp vn OR2X1_RVT
XU379 n467 n468 n455 n467_b n468_b n455_b vp vn AND2X1_RVT
XU378 n43 n185 n466 n43_b n185_b n466_b vp vn OR2X1_RVT
XU377 n465 n466 n464 n465_b n466_b n464_b vp vn AND2X1_RVT
XU376 n464 n149 n456 n464_b n149_b n456_b vp vn OR2X1_RVT
XU375 n460 n178 n463 n35 n462 n460_b n178_b n463_b n35_b n462_b vp vn AND4X1_RVT
XU374 n12 n461 n457 n12_b n461_b n457_b vp vn AND2X1_RVT
XU373 n459 n460 in[6] n795 n458 n459_b n460_b in[6]_b n795_b n458_b vp vn AND4X1_RVT
XU372 n455 n456 n457 n22 n454 n455_b n456_b n457_b n22_b n454_b vp vn AND4X1_RVT
XU371 n451 n452 n453 n454 n450 n451_b n452_b n453_b n454_b n450_b vp vn AND4X1_RVT
XU370 n111 n214 n429 n111_b n214_b n429_b vp vn OR2X1_RVT
XU369 n33 n79 n430 n33_b n79_b n430_b vp vn OR2X1_RVT
XU368 n44 n88 n449 n44_b n88_b n449_b vp vn OR2X1_RVT
XU367 n202 n449 n448 n202_b n449_b n448_b vp vn AND2X1_RVT
XU366 n448 n165 n436 n448_b n165_b n436_b vp vn OR2X1_RVT
XU365 n43 n28 n447 n43_b n28_b n447_b vp vn OR2X1_RVT
XU364 n446 n447 n437 n446_b n447_b n437_b vp vn OR2X1_RVT
XU363 n82 n56 n445 n82_b n56_b n445_b vp vn AND2X1_RVT
XU362 n445 n125 n438 n445_b n125_b n438_b vp vn OR2X1_RVT
XU361 n129 n41 n442 n129_b n41_b n442_b vp vn OR2X1_RVT
XU360 n26 n444 n443 n26_b n444_b n443_b vp vn OR2X1_RVT
XU359 n442 n443 n440 n442_b n443_b n440_b vp vn AND2X1_RVT
XU358 n440 n441 n439 n440_b n441_b n439_b vp vn AND2X1_RVT
XU357 n436 n437 n438 n439 n435 n436_b n437_b n438_b n439_b n435_b vp vn AND4X1_RVT
XU356 n435 n11 n431 n435_b n11_b n431_b vp vn OR2X1_RVT
XU355 n137 n41 n433 n137_b n41_b n433_b vp vn OR2X1_RVT
XU354 n246 n426 n434 n246_b n426_b n434_b vp vn OR2X1_RVT
XU353 n433 n434 n432 n433_b n434_b n432_b vp vn AND2X1_RVT
XU352 n429 n430 n431 n432 n356 n429_b n430_b n431_b n432_b n356_b vp vn AND4X1_RVT
XU351 n27 n82 n427 n27_b n82_b n427_b vp vn OR2X1_RVT
XU350 n39 n58 n428 n39_b n58_b n428_b vp vn OR2X1_RVT
XU349 n427 n428 n420 n427_b n428_b n420_b vp vn AND2X1_RVT
XU348 n29 n136 n421 n29_b n136_b n421_b vp vn OR2X1_RVT
XU347 n125 n426 n424 n125_b n426_b n424_b vp vn OR2X1_RVT
XU346 n424 n425 n422 n424_b n425_b n422_b vp vn AND2X1_RVT
XU345 n88 n41 n423 n88_b n41_b n423_b vp vn OR2X1_RVT
XU344 n420 n421 n422 n423 n419 n420_b n421_b n422_b n423_b n419_b vp vn AND4X1_RVT
XU343 n419 n17 n404 n419_b n17_b n404_b vp vn OR2X1_RVT
XU342 n63 n43 n411 n63_b n43_b n411_b vp vn OR2X1_RVT
XU341 n56 n85 n412 n56_b n85_b n412_b vp vn OR2X1_RVT
XU340 n19 n259 n418 n19_b n259_b n418_b vp vn OR2X1_RVT
XU339 n71 n418 n417 n71_b n418_b n417_b vp vn AND2X1_RVT
XU338 in[1] n417 n416 in[1]_b n417_b n416_b vp vn OR2X1_RVT
XU337 n416 n87 n413 n416_b n87_b n413_b vp vn AND2X1_RVT
XU336 n41 n415 n414 n41_b n415_b n414_b vp vn OR2X1_RVT
XU335 n411 n412 n413 n414 n410 n411_b n412_b n413_b n414_b n410_b vp vn AND4X1_RVT
XU334 n410 n34 n405 n410_b n34_b n405_b vp vn OR2X1_RVT
XU333 n14 n199 n408 n14_b n199_b n408_b vp vn OR2X1_RVT
XU332 n63 n28 n107 n63_b n28_b n107_b vp vn OR2X1_RVT
XU331 n78 n107 n409 n78_b n107_b n409_b vp vn OR2X1_RVT
XU330 n408 n409 n406 n408_b n409_b n406_b vp vn AND2X1_RVT
XU329 n41 n126 n381 n41_b n126_b n381_b vp vn AND2X1_RVT
XU328 n381 n274 n407 n381_b n274_b n407_b vp vn OR2X1_RVT
XU327 n404 n405 n406 n407 n357 n404_b n405_b n406_b n407_b n357_b vp vn AND4X1_RVT
XU326 n272 n40 n401 n272_b n40_b n401_b vp vn OR2X1_RVT
XU325 in[4] n111 n403 in[4]_b n111_b n403_b vp vn OR2X1_RVT
XU324 n373 n403 n402 n373_b n403_b n402_b vp vn OR2X1_RVT
XU323 n401 n402 n399 n401_b n402_b n399_b vp vn AND2X1_RVT
XU322 in[3] n71 n400 in[3]_b n71_b n400_b vp vn OR2X1_RVT
XU321 n399 n400 n398 n399_b n400_b n398_b vp vn AND2X1_RVT
XU320 in[0] n398 n383 in[0]_b n398_b n383_b vp vn OR2X1_RVT
XU319 n42 n29 n395 n42_b n29_b n395_b vp vn OR2X1_RVT
XU318 n259 n185 n397 n259_b n185_b n397_b vp vn AND2X1_RVT
XU317 n397 n43 n396 n397_b n43_b n396_b vp vn OR2X1_RVT
XU316 n395 n396 n394 n395_b n396_b n394_b vp vn AND2X1_RVT
XU315 n394 n19 n384 n394_b n19_b n384_b vp vn OR2X1_RVT
XU314 n38 n349 n390 n38_b n349_b n390_b vp vn OR2X1_RVT
XU313 n42 n353 n156 n42_b n353_b n156_b vp vn OR2X1_RVT
XU312 in[4] n56 n393 in[4]_b n56_b n393_b vp vn OR2X1_RVT
XU311 n373 n393 n298 n373_b n393_b n298_b vp vn OR2X1_RVT
XU310 n156 n298 n392 n156_b n298_b n392_b vp vn AND2X1_RVT
XU309 n392 n40 n391 n392_b n40_b n391_b vp vn OR2X1_RVT
XU308 n390 n391 n385 n390_b n391_b n385_b vp vn AND2X1_RVT
XU307 n36 n111 n388 n36_b n111_b n388_b vp vn AND2X1_RVT
XU306 n795 n151 n389 n795_b n151_b n389_b vp vn OR2X1_RVT
XU305 n388 n389 n387 n388_b n389_b n387_b vp vn AND2X1_RVT
XU304 n387 n247 n386 n387_b n247_b n386_b vp vn OR2X1_RVT
XU303 n383 n384 n385 n386 n358 n383_b n384_b n385_b n386_b n358_b vp vn AND4X1_RVT
XU302 n794 n88 n382 n794_b n88_b n382_b vp vn OR2X1_RVT
XU301 n381 n382 n380 n381_b n382_b n380_b vp vn AND2X1_RVT
XU300 n380 n148 n360 n380_b n148_b n360_b vp vn OR2X1_RVT
XU299 n35 n36 n379 n35_b n36_b n379_b vp vn AND2X1_RVT
XU298 n379 n75 n361 n379_b n75_b n361_b vp vn OR2X1_RVT
XU297 n42 n149 n376 n42_b n149_b n376_b vp vn OR2X1_RVT
XU296 n378 n14 n377 n378_b n14_b n377_b vp vn OR2X1_RVT
XU295 n376 n377 n375 n376_b n377_b n375_b vp vn AND2X1_RVT
XU294 n375 n29 n362 n375_b n29_b n362_b vp vn OR2X1_RVT
XU293 in[3] n272 n374 in[3]_b n272_b n374_b vp vn OR2X1_RVT
XU292 n56 n374 n367 n56_b n374_b n367_b vp vn OR2X1_RVT
XU291 in[3] n259 n371 in[3]_b n259_b n371_b vp vn OR2X1_RVT
XU290 n795 n373 n372 n795_b n373_b n372_b vp vn OR2X1_RVT
XU289 n371 n372 n370 n371_b n372_b n370_b vp vn AND2X1_RVT
XU288 in[6] n370 n369 in[6]_b n370_b n369_b vp vn OR2X1_RVT
XU287 n136 n369 n368 n136_b n369_b n368_b vp vn OR2X1_RVT
XU286 n367 n368 n364 n367_b n368_b n364_b vp vn AND2X1_RVT
XU285 n149 n116 n366 n149_b n116_b n366_b vp vn OR2X1_RVT
XU284 n126 n366 n365 n126_b n366_b n365_b vp vn OR2X1_RVT
XU283 n364 n365 n363 n364_b n365_b n363_b vp vn AND2X1_RVT
XU282 n360 n361 n362 n363 n359 n360_b n361_b n362_b n363_b n359_b vp vn AND4X1_RVT
XU281 n356 n357 n358 n359 n355 n356_b n357_b n358_b n359_b n355_b vp vn AND4X1_RVT
XU280 n126 n86 n338 n126_b n86_b n338_b vp vn OR2X1_RVT
XU279 in[0] n148 n339 in[0]_b n148_b n339_b vp vn OR2X1_RVT
XU278 n44 n246 n340 n44_b n246_b n340_b vp vn OR2X1_RVT
XU277 n11 n354 n351 n11_b n354_b n351_b vp vn OR2X1_RVT
XU276 in[3] n353 n352 in[3]_b n353_b n352_b vp vn OR2X1_RVT
XU275 n351 n352 n343 n351_b n352_b n343_b vp vn AND2X1_RVT
XU274 n19 n190 n344 n19_b n190_b n344_b vp vn OR2X1_RVT
XU273 n34 n129 n350 n34_b n129_b n350_b vp vn AND2X1_RVT
XU272 n350 n17 n348 n350_b n17_b n348_b vp vn OR2X1_RVT
XU271 n348 n349 n345 n348_b n349_b n345_b vp vn AND2X1_RVT
XU270 n86 n267 n347 n86_b n267_b n347_b vp vn AND2X1_RVT
XU269 in[2] n347 n346 in[2]_b n347_b n346_b vp vn OR2X1_RVT
XU268 n343 n344 n345 n346 n342 n343_b n344_b n345_b n346_b n342_b vp vn AND4X1_RVT
XU267 n342 n42 n341 n342_b n42_b n341_b vp vn OR2X1_RVT
XU266 n338 n339 n340 n341 n276 n338_b n339_b n340_b n341_b n276_b vp vn AND4X1_RVT
XU265 n136 n214 n313 n136_b n214_b n313_b vp vn OR2X1_RVT
XU264 n31 n136 n331 n31_b n136_b n331_b vp vn OR2X1_RVT
XU263 n58 n38 n332 n58_b n38_b n332_b vp vn OR2X1_RVT
XU262 in[3] n794 n257 in[3]_b n794_b n257_b vp vn OR2X1_RVT
XU261 n257 n145 n337 n257_b n145_b n337_b vp vn AND2X1_RVT
XU260 n337 in[1] n336 n337_b in[1]_b n336_b vp vn AND2X1_RVT
XU259 n336 n26 n333 n336_b n26_b n333_b vp vn OR2X1_RVT
XU258 in[0] n27 n335 in[0]_b n27_b n335_b vp vn OR2X1_RVT
XU257 n32 n335 n334 n32_b n335_b n334_b vp vn OR2X1_RVT
XU256 n331 n332 n333 n334 n330 n331_b n332_b n333_b n334_b n330_b vp vn AND4X1_RVT
XU255 n330 n11 n314 n330_b n11_b n314_b vp vn OR2X1_RVT
XU254 n44 n71 n326 n44_b n71_b n326_b vp vn OR2X1_RVT
XU253 in[1] n272 n327 in[1]_b n272_b n327_b vp vn OR2X1_RVT
XU252 n795 n75 n328 n795_b n75_b n328_b vp vn OR2X1_RVT
XU251 n326 n327 n328 n329 n325 n326_b n327_b n328_b n329_b n325_b vp vn AND4X1_RVT
XU250 n325 n111 n323 n325_b n111_b n323_b vp vn OR2X1_RVT
XU249 n36 n107 n324 n36_b n107_b n324_b vp vn OR2X1_RVT
XU248 n323 n324 n315 n323_b n324_b n315_b vp vn AND2X1_RVT
XU247 n44 n79 n318 n44_b n79_b n318_b vp vn OR2X1_RVT
XU246 in[0] n96 n319 in[0]_b n96_b n319_b vp vn OR2X1_RVT
XU245 n43 n189 n320 n43_b n189_b n320_b vp vn OR2X1_RVT
XU244 n63 n114 n322 n63_b n114_b n322_b vp vn AND2X1_RVT
XU243 n322 n56 n321 n322_b n56_b n321_b vp vn OR2X1_RVT
XU242 n318 n319 n320 n321 n317 n318_b n319_b n320_b n321_b n317_b vp vn AND4X1_RVT
XU241 n317 n145 n316 n317_b n145_b n316_b vp vn OR2X1_RVT
XU240 n313 n314 n315 n316 n277 n313_b n314_b n315_b n316_b n277_b vp vn AND4X1_RVT
XU239 n38 n190 n312 n38_b n190_b n312_b vp vn OR2X1_RVT
XU238 n312 n208 n310 n312_b n208_b n310_b vp vn AND2X1_RVT
XU237 n56 n34 n311 n56_b n34_b n311_b vp vn OR2X1_RVT
XU236 n310 n311 n309 n310_b n311_b n309_b vp vn AND2X1_RVT
XU235 n309 n19 n288 n309_b n19_b n288_b vp vn OR2X1_RVT
XU234 n36 n190 n306 n36_b n190_b n306_b vp vn OR2X1_RVT
XU233 n165 n78 n308 n165_b n78_b n308_b vp vn OR2X1_RVT
XU232 n32 n308 n307 n32_b n308_b n307_b vp vn OR2X1_RVT
XU231 n306 n307 n304 n306_b n307_b n304_b vp vn AND2X1_RVT
XU230 n116 n166 n305 n116_b n166_b n305_b vp vn OR2X1_RVT
XU229 n304 n305 n303 n304_b n305_b n303_b vp vn AND2X1_RVT
XU228 n303 n17 n289 n303_b n17_b n289_b vp vn OR2X1_RVT
XU227 n24 n31 n301 n24_b n31_b n301_b vp vn OR2X1_RVT
XU226 n30 n23 n302 n30_b n23_b n302_b vp vn OR2X1_RVT
XU225 n301 n302 n300 n301_b n302_b n300_b vp vn AND2X1_RVT
XU224 n300 n41 n299 n300_b n41_b n299_b vp vn OR2X1_RVT
XU223 n298 n299 n297 n298_b n299_b n297_b vp vn AND2X1_RVT
XU222 in[2] n297 n294 in[2]_b n297_b n294_b vp vn OR2X1_RVT
XU221 n37 n43 n296 n37_b n43_b n296_b vp vn AND2X1_RVT
XU220 n296 n137 n295 n296_b n137_b n295_b vp vn OR2X1_RVT
XU219 n294 n295 n290 n294_b n295_b n290_b vp vn AND2X1_RVT
XU218 n34 n38 n293 n34_b n38_b n293_b vp vn AND2X1_RVT
XU217 n293 n257 n292 n293_b n257_b n292_b vp vn AND2X1_RVT
XU216 n292 n96 n291 n292_b n96_b n291_b vp vn OR2X1_RVT
XU215 n288 n289 n290 n291 n278 n288_b n289_b n290_b n291_b n278_b vp vn AND4X1_RVT
XU214 n103 n794 n54 n103_b n794_b n54_b vp vn OR2X1_RVT
XU213 n44 n34 n76 n44_b n34_b n76_b vp vn OR2X1_RVT
XU212 n76 n287 n280 n76_b n287_b n280_b vp vn OR2X1_RVT
XU211 n40 n14 n286 n40_b n14_b n286_b vp vn OR2X1_RVT
XU210 n29 n286 n282 n29_b n286_b n282_b vp vn OR2X1_RVT
XU209 in[1] n285 n284 in[1]_b n285_b n284_b vp vn OR2X1_RVT
XU208 n23 n284 n283 n23_b n284_b n283_b vp vn OR2X1_RVT
XU207 n282 n283 n281 n282_b n283_b n281_b vp vn AND2X1_RVT
XU206 n54 n18 n280 n281 n279 n54_b n18_b n280_b n281_b n279_b vp vn AND4X1_RVT
XU205 n276 n277 n278 n279 n275 n276_b n277_b n278_b n279_b n275_b vp vn AND4X1_RVT
XU204 n17 n190 n141 n17_b n190_b n141_b vp vn OR2X1_RVT
XU203 n274 n141 n273 n274_b n141_b n273_b vp vn AND2X1_RVT
XU202 n273 n37 n269 n273_b n37_b n269_b vp vn OR2X1_RVT
XU201 n272 n75 n271 n272_b n75_b n271_b vp vn AND2X1_RVT
XU200 n271 n151 n270 n271_b n151_b n270_b vp vn OR2X1_RVT
XU199 n269 n270 n262 n269_b n270_b n262_b vp vn AND2X1_RVT
XU198 n267 n268 n264 n267_b n268_b n264_b vp vn AND2X1_RVT
XU197 in[7] in[4] n266 in[7]_b in[4]_b n266_b vp vn OR2X1_RVT
XU196 n34 n266 n265 n34_b n266_b n265_b vp vn OR2X1_RVT
XU195 n262 n263 n264 n265 n261 n262_b n263_b n264_b n265_b n261_b vp vn AND4X1_RVT
XU194 in[0] n261 n240 in[0]_b n261_b n240_b vp vn OR2X1_RVT
XU193 n125 n190 n260 n125_b n190_b n260_b vp vn AND2X1_RVT
XU192 n260 n136 n249 n260_b n136_b n249_b vp vn OR2X1_RVT
XU191 in[1] n259 n258 in[1]_b n259_b n258_b vp vn OR2X1_RVT
XU190 n88 n258 n250 n88_b n258_b n250_b vp vn OR2X1_RVT
XU189 n151 n78 n256 n151_b n78_b n256_b vp vn AND2X1_RVT
XU188 n256 n257 n255 n256_b n257_b n255_b vp vn AND2X1_RVT
XU187 n255 n25 n251 n255_b n25_b n251_b vp vn OR2X1_RVT
XU186 n37 n29 n253 n37_b n29_b n253_b vp vn OR2X1_RVT
XU185 n56 n125 n254 n56_b n125_b n254_b vp vn OR2X1_RVT
XU184 n253 n254 n252 n253_b n254_b n252_b vp vn AND2X1_RVT
XU183 n249 n250 n251 n252 n248 n249_b n250_b n251_b n252_b n248_b vp vn AND4X1_RVT
XU182 n248 n19 n241 n248_b n19_b n241_b vp vn OR2X1_RVT
XU181 n151 n247 n242 n151_b n247_b n242_b vp vn OR2X1_RVT
XU180 n136 n213 n244 n136_b n213_b n244_b vp vn OR2X1_RVT
XU179 n36 n246 n245 n36_b n246_b n245_b vp vn OR2X1_RVT
XU178 n244 n245 n243 n244_b n245_b n243_b vp vn AND2X1_RVT
XU177 n240 n241 n242 n243 n168 n240_b n241_b n242_b n243_b n168_b vp vn AND4X1_RVT
XU176 n37 n239 n229 n37_b n239_b n229_b vp vn OR2X1_RVT
XU175 n28 n165 n238 n28_b n165_b n238_b vp vn AND2X1_RVT
XU174 n238 n78 n230 n238_b n78_b n230_b vp vn OR2X1_RVT
XU173 n145 n58 n236 n145_b n58_b n236_b vp vn AND2X1_RVT
XU172 n27 n29 n237 n27_b n29_b n237_b vp vn OR2X1_RVT
XU171 n236 n237 n235 n236_b n237_b n235_b vp vn AND2X1_RVT
XU170 n235 n42 n231 n235_b n42_b n231_b vp vn OR2X1_RVT
XU169 n125 n185 n233 n125_b n185_b n233_b vp vn OR2X1_RVT
XU168 n56 n88 n234 n56_b n88_b n234_b vp vn OR2X1_RVT
XU167 n233 n234 n232 n233_b n234_b n232_b vp vn AND2X1_RVT
XU166 n229 n230 n231 n232 n228 n229_b n230_b n231_b n232_b n228_b vp vn AND4X1_RVT
XU165 n228 n11 n215 n228_b n11_b n215_b vp vn OR2X1_RVT
XU164 n41 n214 n216 n41_b n214_b n216_b vp vn OR2X1_RVT
XU163 n38 n106 n225 n38_b n106_b n225_b vp vn OR2X1_RVT
XU162 n227 n71 n226 n227_b n71_b n226_b vp vn OR2X1_RVT
XU161 n225 n226 n217 n225_b n226_b n217_b vp vn AND2X1_RVT
XU160 n125 n38 n220 n125_b n38_b n220_b vp vn OR2X1_RVT
XU159 n165 n136 n221 n165_b n136_b n221_b vp vn OR2X1_RVT
XU158 n78 n190 n222 n78_b n190_b n222_b vp vn OR2X1_RVT
XU157 n28 n116 n224 n28_b n116_b n224_b vp vn AND2X1_RVT
XU156 n224 n56 n223 n224_b n56_b n223_b vp vn OR2X1_RVT
XU155 n220 n221 n222 n223 n219 n220_b n221_b n222_b n223_b n219_b vp vn AND4X1_RVT
XU154 n219 n17 n218 n219_b n17_b n218_b vp vn OR2X1_RVT
XU153 n215 n216 n217 n218 n169 n215_b n216_b n217_b n218_b n169_b vp vn AND4X1_RVT
XU152 n63 n41 n210 n63_b n41_b n210_b vp vn OR2X1_RVT
XU151 n794 n85 n211 n794_b n85_b n211_b vp vn OR2X1_RVT
XU150 n44 n214 n212 n44_b n214_b n212_b vp vn OR2X1_RVT
XU149 n210 n211 n212 n213 n209 n210_b n211_b n212_b n213_b n209_b vp vn AND4X1_RVT
XU148 n209 n111 n192 n209_b n111_b n192_b vp vn OR2X1_RVT
XU147 n14 n208 n193 n14_b n208_b n193_b vp vn OR2X1_RVT
XU146 n86 n76 n203 n86_b n76_b n203_b vp vn OR2X1_RVT
XU145 n32 n79 n207 n32_b n79_b n207_b vp vn OR2X1_RVT
XU144 n206 n207 n205 n206_b n207_b n205_b vp vn AND2X1_RVT
XU143 n205 n795 n204 n205_b n795_b n204_b vp vn OR2X1_RVT
XU142 n203 n204 n194 n203_b n204_b n194_b vp vn AND2X1_RVT
XU141 n202 n58 n197 n202_b n58_b n197_b vp vn OR2X1_RVT
XU140 n201 n177 in[7] n44 n200 n201_b n177_b in[7]_b n44_b n200_b vp vn AND4X1_RVT
XU139 n199 n4 n198 n199_b n4_b n198_b vp vn AND2X1_RVT
XU138 n197 n198 n196 n197_b n198_b n196_b vp vn AND2X1_RVT
XU137 n114 n196 n195 n114_b n196_b n195_b vp vn OR2X1_RVT
XU136 n192 n193 n194 n195 n170 n192_b n193_b n194_b n195_b n170_b vp vn AND4X1_RVT
XU135 n63 n166 n191 n63_b n166_b n191_b vp vn OR2X1_RVT
XU134 n190 n191 n186 n190_b n191_b n186_b vp vn OR2X1_RVT
XU133 n58 n189 n188 n58_b n189_b n188_b vp vn OR2X1_RVT
XU132 n42 n188 n187 n42_b n188_b n187_b vp vn OR2X1_RVT
XU131 n186 n187 n172 n186_b n187_b n172_b vp vn AND2X1_RVT
XU130 n184 n185 n183 n184_b n185_b n183_b vp vn OR2X1_RVT
XU129 n182 n183 n181 n182_b n183_b n181_b vp vn AND2X1_RVT
XU128 n181 n56 n173 n181_b n56_b n173_b vp vn OR2X1_RVT
XU127 n179 n180 n174 n179_b n180_b n174_b vp vn AND2X1_RVT
XU126 n176 n177 n178 in[5] n175 n176_b n177_b n178_b in[5]_b n175_b vp vn AND4X1_RVT
XU125 n172 n173 n174 n13 n171 n172_b n173_b n174_b n13_b n171_b vp vn AND4X1_RVT
XU124 n168 n169 n170 n171 n167 n168_b n169_b n170_b n171_b n167_b vp vn AND4X1_RVT
XU123 n28 n166 n158 n28_b n166_b n158_b vp vn OR2X1_RVT
XU122 n31 n38 n159 n31_b n38_b n159_b vp vn OR2X1_RVT
XU121 n165 n34 n160 n165_b n34_b n160_b vp vn OR2X1_RVT
XU120 in[5] n88 n163 in[5]_b n88_b n163_b vp vn OR2X1_RVT
XU119 n163 n164 n162 n163_b n164_b n162_b vp vn AND2X1_RVT
XU118 in[1] n162 n161 in[1]_b n162_b n161_b vp vn OR2X1_RVT
XU117 n158 n159 n160 n161 n157 n158_b n159_b n160_b n161_b n157_b vp vn AND4X1_RVT
XU116 n157 n17 n130 n157_b n17_b n130_b vp vn OR2X1_RVT
XU115 in[3] n156 n131 in[3]_b n156_b n131_b vp vn OR2X1_RVT
XU114 in[4] n145 n154 in[4]_b n145_b n154_b vp vn OR2X1_RVT
XU113 n23 n136 n155 n23_b n136_b n155_b vp vn OR2X1_RVT
XU112 n154 n155 n153 n154_b n155_b n153_b vp vn AND2X1_RVT
XU111 in[7] n153 n139 in[7]_b n153_b n139_b vp vn OR2X1_RVT
XU110 n11 n35 n152 n11_b n35_b n152_b vp vn OR2X1_RVT
XU109 n151 n152 n150 n151_b n152_b n150_b vp vn AND2X1_RVT
XU108 n150 n26 n140 n150_b n26_b n140_b vp vn OR2X1_RVT
XU107 n149 n136 n146 n149_b n136_b n146_b vp vn OR2X1_RVT
XU106 n34 n148 n147 n34_b n148_b n147_b vp vn OR2X1_RVT
XU105 n146 n147 n143 n146_b n147_b n143_b vp vn AND2X1_RVT
XU104 n114 n145 n144 n114_b n145_b n144_b vp vn OR2X1_RVT
XU103 n143 n144 n142 n143_b n144_b n142_b vp vn AND2X1_RVT
XU102 n139 n140 n141 n142 n138 n139_b n140_b n141_b n142_b n138_b vp vn AND4X1_RVT
XU101 n138 n794 n132 n138_b n794_b n132_b vp vn OR2X1_RVT
XU100 n136 n137 n134 n136_b n137_b n134_b vp vn OR2X1_RVT
XU99 n134 n135 n133 n134_b n135_b n133_b vp vn AND2X1_RVT
XU98 n130 n131 n132 n133 n47 n130_b n131_b n132_b n133_b n47_b vp vn AND4X1_RVT
XU97 n42 n116 n127 n42_b n116_b n127_b vp vn OR2X1_RVT
XU96 n43 n129 n128 n43_b n129_b n128_b vp vn OR2X1_RVT
XU95 n127 n128 n123 n127_b n128_b n123_b vp vn AND2X1_RVT
XU94 n125 n126 n124 n125_b n126_b n124_b vp vn OR2X1_RVT
XU93 n123 n124 n122 n123_b n124_b n122_b vp vn AND2X1_RVT
XU92 n122 n11 n97 n122_b n11_b n97_b vp vn OR2X1_RVT
XU91 n39 n36 n121 n39_b n36_b n121_b vp vn AND2X1_RVT
XU90 n121 n23 n120 n121_b n23_b n120_b vp vn OR2X1_RVT
XU89 n119 n120 n118 n119_b n120_b n118_b vp vn AND2X1_RVT
XU88 n118 n29 n98 n118_b n29_b n98_b vp vn OR2X1_RVT
XU87 n19 n58 n117 n19_b n58_b n117_b vp vn OR2X1_RVT
XU86 n38 n117 n112 n38_b n117_b n112_b vp vn OR2X1_RVT
XU85 n40 n116 n115 n40_b n116_b n115_b vp vn OR2X1_RVT
XU84 n114 n115 n113 n114_b n115_b n113_b vp vn OR2X1_RVT
XU83 n112 n113 n109 n112_b n113_b n109_b vp vn AND2X1_RVT
XU82 n111 n96 n110 n111_b n96_b n110_b vp vn OR2X1_RVT
XU81 n109 n110 n108 n109_b n110_b n108_b vp vn AND2X1_RVT
XU80 in[0] n108 n99 in[0]_b n108_b n99_b vp vn OR2X1_RVT
XU79 n39 n107 n104 n39_b n107_b n104_b vp vn OR2X1_RVT
XU78 n106 n36 n105 n106_b n36_b n105_b vp vn OR2X1_RVT
XU77 n104 n105 n101 n104_b n105_b n101_b vp vn AND2X1_RVT
XU76 in[1] n103 n102 in[1]_b n103_b n102_b vp vn OR2X1_RVT
XU75 n101 n102 n100 n101_b n102_b n100_b vp vn AND2X1_RVT
XU74 n97 n98 n99 n100 n48 n97_b n98_b n99_b n100_b n48_b vp vn AND4X1_RVT
XU73 n96 in[1] n90 n96_b in[1]_b n90_b vp vn OR2X1_RVT
XU72 n94 n95 in[4] in[7] n93 n94_b n95_b in[4]_b in[7]_b n93_b vp vn AND4X1_RVT
XU71 n14 n56 n92 n14_b n56_b n92_b vp vn OR2X1_RVT
XU70 n2 n92 n91 n2_b n92_b n91_b vp vn AND2X1_RVT
XU69 n90 n91 n89 n90_b n91_b n89_b vp vn AND2X1_RVT
XU68 n88 n89 n64 n88_b n89_b n64_b vp vn OR2X1_RVT
XU67 n34 n87 n65 n34_b n87_b n65_b vp vn OR2X1_RVT
XU66 n85 n86 n83 n85_b n86_b n83_b vp vn AND2X1_RVT
XU65 n83 n84 n81 n83_b n84_b n81_b vp vn AND2X1_RVT
XU64 n81 n82 n66 n81_b n82_b n66_b vp vn OR2X1_RVT
XU63 n79 n80 n77 n79_b n80_b n77_b vp vn AND2X1_RVT
XU62 n77 n78 n72 n77_b n78_b n72_b vp vn OR2X1_RVT
XU61 n41 n76 n74 n41_b n76_b n74_b vp vn AND2X1_RVT
XU60 n74 n75 n73 n74_b n75_b n73_b vp vn OR2X1_RVT
XU59 n72 n73 n68 n72_b n73_b n68_b vp vn AND2X1_RVT
XU58 n70 n71 n69 n70_b n71_b n69_b vp vn OR2X1_RVT
XU57 n68 n69 n67 n68_b n69_b n67_b vp vn AND2X1_RVT
XU56 n64 n65 n66 n67 n49 n64_b n65_b n66_b n67_b n49_b vp vn AND4X1_RVT
XU55 n62 n63 n61 n62_b n63_b n61_b vp vn OR2X1_RVT
XU54 n58 n61 n60 n58_b n61_b n60_b vp vn OR2X1_RVT
XU53 n60 n13 n51 n60_b n13_b n51_b vp vn AND2X1_RVT
XU52 n58 n59 n57 n58_b n59_b n57_b vp vn NAND2X1_RVT
XU51 n56 n57 n52 n56_b n57_b n52_b vp vn OR2X1_RVT
XU50 n12 n55 n53 n12_b n55_b n53_b vp vn AND2X1_RVT
XU49 n51 n52 n53 n54 n50 n51_b n52_b n53_b n54_b n50_b vp vn AND4X1_RVT
XU48 n47 n48 n49 n50 n46 n47_b n48_b n49_b n50_b n46_b vp vn AND4X1_RVT
XU46 in[1] n44 in[1]_b n44_b vp vn INVX1_RVT
XU45 n530 n43 n530_b n43_b vp vn INVX1_RVT
XU44 n94 n42 n94_b n42_b vp vn INVX1_RVT
XU43 n470 n41 n470_b n41_b vp vn INVX1_RVT
XU42 in[2] n40 in[2]_b n40_b vp vn INVX1_RVT
XU41 n177 n39 n177_b n39_b vp vn INVX1_RVT
XU40 n552 n38 n552_b n38_b vp vn INVX1_RVT
XU39 n463 n37 n463_b n37_b vp vn INVX1_RVT
XU38 n636 n36 n636_b n36_b vp vn INVX1_RVT
XU37 in[3] n35 in[3]_b n35_b vp vn INVX1_RVT
XU36 n459 n34 n459_b n34_b vp vn INVX1_RVT
XU35 n710 n33 n710_b n33_b vp vn INVX1_RVT
XU34 n639 n32 n639_b n32_b vp vn INVX1_RVT
XU33 n176 n31 n176_b n31_b vp vn INVX1_RVT
XU32 in[4] n30 in[4]_b n30_b vp vn INVX1_RVT
XU31 n201 n29 n201_b n29_b vp vn INVX1_RVT
XU30 n551 n28 n551_b n28_b vp vn INVX1_RVT
XU29 in[5] n27 in[5]_b n27_b vp vn INVX1_RVT
XU28 n460 n26 n460_b n26_b vp vn INVX1_RVT
XU27 n640 n25 n640_b n25_b vp vn INVX1_RVT
XU26 in[6] n24 in[6]_b n24_b vp vn INVX1_RVT
XU25 n95 n23 n95_b n23_b vp vn INVX1_RVT
XU24 n458 n22 n458_b n22_b vp vn INVX1_RVT
XU23 in[7] n21 in[7]_b n21_b vp vn INVX1_RVT
XU22 n638 n20 n638_b n20_b vp vn INVX1_RVT
XU21 n59 n19 n59_b n19_b vp vn INVX1_RVT
XU20 n550 n18 n550_b n18_b vp vn INVX1_RVT
XU19 n553 n17 n553_b n17_b vp vn INVX1_RVT
XU18 n635 n16 n635_b n16_b vp vn INVX1_RVT
XU17 n692 n15 n692_b n15_b vp vn INVX1_RVT
XU16 n637 n14 n637_b n14_b vp vn INVX1_RVT
XU15 n175 n13 n175_b n13_b vp vn INVX1_RVT
XU14 n462 n12 n462_b n12_b vp vn INVX1_RVT
XU13 n178 n11 n178_b n11_b vp vn INVX1_RVT
XU12 n713 n10 n713_b n10_b vp vn INVX1_RVT
XU11 n625 n9 n625_b n9_b vp vn INVX1_RVT
XU10 n275 n8 n275_b n8_b vp vn INVX1_RVT
XU9 n355 n7 n355_b n7_b vp vn INVX1_RVT
XU8 n542 n6 n542_b n6_b vp vn INVX1_RVT
XU7 n450 n5 n450_b n5_b vp vn INVX1_RVT
XU6 n200 n4 n200_b n4_b vp vn INVX1_RVT
XU5 n167 n3 n167_b n3_b vp vn INVX1_RVT
XU4 n93 n2 n93_b n2_b vp vn INVX1_RVT
XU3 n46 n1 n46_b n1_b vp vn INVX1_RVT
Xout_reg_0_ n1 clk out[0] n1_b clk_b out[0]_b vp vn DFFX1_RVT
Xout_reg_1_ n3 clk out[1] n3_b clk_b out[1]_b vp vn DFFX1_RVT
Xout_reg_2_ n8 clk out[2] n8_b clk_b out[2]_b vp vn DFFX1_RVT
Xout_reg_3_ n7 clk out[3] n7_b clk_b out[3]_b vp vn DFFX1_RVT
Xout_reg_4_ n5 clk out[4] n5_b clk_b out[4]_b vp vn DFFX1_RVT
Xout_reg_5_ n6 clk out[5] n6_b clk_b out[5]_b vp vn DFFX1_RVT
Xout_reg_6_ n9 clk out[6] n9_b clk_b out[6]_b vp vn DFFX1_RVT
Xout_reg_7_ n10 clk out[7] n10_b clk_b out[7]_b vp vn DFFX1_RVT
.ENDS

Xs_box_test clk clk_b in[7] in[6] in[5] in[4] in[3] in[2] in[1] in[0] 
+ in[7]_b in[6]_b in[5]_b in[4]_b in[3]_b in[2]_b in[1]_b in[0]_b 
+ out[7] out[6] out[5] out[4] out[3] out[2] out[1] out[0] 
+ out[7]_b out[6]_b out[5]_b out[4]_b out[3]_b out[2]_b out[1]_b out[0]_b 
+ vp vn S_Box

.GLOBAL  VDD  GND 

VDD VDD GND 0.6v
V5 vp   GND 0.2v
V6 vn GND 0.4v

Vclk clk GND pulse (0v 0.6v 1ns 0.005ns 0.005ns 5ns 10ns)

Vclkb clk_b GND pulse (0.6v 0v 1ns 0.005ns 0.005ns 5ns 10ns)

.inc "/lhome/shayan/PTM-MG/modelfiles/lstp/20nfet.pm"
.inc "/lhome/shayan/PTM-MG/modelfiles/lstp/20pfet.pm"

* .options post
.options post probe
.probe v(*) i(VDD)

.temp 25
.option captab

.tran 0.1ns 2560ns

.measure tran avgval_1 avg i(vdd) FROM=0ps TO=5ps
.measure tran avgval_2 avg i(vdd) FROM=5ps TO=10ps
.measure tran avgval_3 avg i(vdd) FROM=10ps TO=15ps
.measure tran avgval_4 avg i(vdd) FROM=15ps TO=20ps
.measure tran avgval_5 avg i(vdd) FROM=20ps TO=25ps
.measure tran avgval_6 avg i(vdd) FROM=25ps TO=30ps
.measure tran avgval_7 avg i(vdd) FROM=30ps TO=35ps
.measure tran avgval_8 avg i(vdd) FROM=35ps TO=40ps
.measure tran avgval_9 avg i(vdd) FROM=40ps TO=45ps
.measure tran avgval_10 avg i(vdd) FROM=45ps TO=50ps
.measure tran avgval_11 avg i(vdd) FROM=50ps TO=55ps
.measure tran avgval_12 avg i(vdd) FROM=55ps TO=60ps
.measure tran avgval_13 avg i(vdd) FROM=60ps TO=65ps
.measure tran avgval_14 avg i(vdd) FROM=65ps TO=70ps
.measure tran avgval_15 avg i(vdd) FROM=70ps TO=75ps
.measure tran avgval_16 avg i(vdd) FROM=75ps TO=80ps
.measure tran avgval_17 avg i(vdd) FROM=80ps TO=85ps
.measure tran avgval_18 avg i(vdd) FROM=85ps TO=90ps
.measure tran avgval_19 avg i(vdd) FROM=90ps TO=95ps
.measure tran avgval_20 avg i(vdd) FROM=95ps TO=100ps
.measure tran avgval_21 avg i(vdd) FROM=100ps TO=105ps
.measure tran avgval_22 avg i(vdd) FROM=105ps TO=110ps
.measure tran avgval_23 avg i(vdd) FROM=110ps TO=115ps
.measure tran avgval_24 avg i(vdd) FROM=115ps TO=120ps
.measure tran avgval_25 avg i(vdd) FROM=120ps TO=125ps
.measure tran avgval_26 avg i(vdd) FROM=125ps TO=130ps
.measure tran avgval_27 avg i(vdd) FROM=130ps TO=135ps
.measure tran avgval_28 avg i(vdd) FROM=135ps TO=140ps
.measure tran avgval_29 avg i(vdd) FROM=140ps TO=145ps
.measure tran avgval_30 avg i(vdd) FROM=145ps TO=150ps
.measure tran avgval_31 avg i(vdd) FROM=150ps TO=155ps
.measure tran avgval_32 avg i(vdd) FROM=155ps TO=160ps
.measure tran avgval_33 avg i(vdd) FROM=160ps TO=165ps
.measure tran avgval_34 avg i(vdd) FROM=165ps TO=170ps
.measure tran avgval_35 avg i(vdd) FROM=170ps TO=175ps
.measure tran avgval_36 avg i(vdd) FROM=175ps TO=180ps
.measure tran avgval_37 avg i(vdd) FROM=180ps TO=185ps
.measure tran avgval_38 avg i(vdd) FROM=185ps TO=190ps
.measure tran avgval_39 avg i(vdd) FROM=190ps TO=195ps
.measure tran avgval_40 avg i(vdd) FROM=195ps TO=200ps
.measure tran avgval_41 avg i(vdd) FROM=200ps TO=205ps
.measure tran avgval_42 avg i(vdd) FROM=205ps TO=210ps
.measure tran avgval_43 avg i(vdd) FROM=210ps TO=215ps
.measure tran avgval_44 avg i(vdd) FROM=215ps TO=220ps
.measure tran avgval_45 avg i(vdd) FROM=220ps TO=225ps
.measure tran avgval_46 avg i(vdd) FROM=225ps TO=230ps
.measure tran avgval_47 avg i(vdd) FROM=230ps TO=235ps
.measure tran avgval_48 avg i(vdd) FROM=235ps TO=240ps
.measure tran avgval_49 avg i(vdd) FROM=240ps TO=245ps
.measure tran avgval_50 avg i(vdd) FROM=245ps TO=250ps
.measure tran avgval_51 avg i(vdd) FROM=250ps TO=255ps
.measure tran avgval_52 avg i(vdd) FROM=255ps TO=260ps
.measure tran avgval_53 avg i(vdd) FROM=260ps TO=265ps
.measure tran avgval_54 avg i(vdd) FROM=265ps TO=270ps
.measure tran avgval_55 avg i(vdd) FROM=270ps TO=275ps
.measure tran avgval_56 avg i(vdd) FROM=275ps TO=280ps
.measure tran avgval_57 avg i(vdd) FROM=280ps TO=285ps
.measure tran avgval_58 avg i(vdd) FROM=285ps TO=290ps
.measure tran avgval_59 avg i(vdd) FROM=290ps TO=295ps
.measure tran avgval_60 avg i(vdd) FROM=295ps TO=300ps
.measure tran avgval_61 avg i(vdd) FROM=300ps TO=305ps
.measure tran avgval_62 avg i(vdd) FROM=305ps TO=310ps
.measure tran avgval_63 avg i(vdd) FROM=310ps TO=315ps
.measure tran avgval_64 avg i(vdd) FROM=315ps TO=320ps
.measure tran avgval_65 avg i(vdd) FROM=320ps TO=325ps
.measure tran avgval_66 avg i(vdd) FROM=325ps TO=330ps
.measure tran avgval_67 avg i(vdd) FROM=330ps TO=335ps
.measure tran avgval_68 avg i(vdd) FROM=335ps TO=340ps
.measure tran avgval_69 avg i(vdd) FROM=340ps TO=345ps
.measure tran avgval_70 avg i(vdd) FROM=345ps TO=350ps
.measure tran avgval_71 avg i(vdd) FROM=350ps TO=355ps
.measure tran avgval_72 avg i(vdd) FROM=355ps TO=360ps
.measure tran avgval_73 avg i(vdd) FROM=360ps TO=365ps
.measure tran avgval_74 avg i(vdd) FROM=365ps TO=370ps
.measure tran avgval_75 avg i(vdd) FROM=370ps TO=375ps
.measure tran avgval_76 avg i(vdd) FROM=375ps TO=380ps
.measure tran avgval_77 avg i(vdd) FROM=380ps TO=385ps
.measure tran avgval_78 avg i(vdd) FROM=385ps TO=390ps
.measure tran avgval_79 avg i(vdd) FROM=390ps TO=395ps
.measure tran avgval_80 avg i(vdd) FROM=395ps TO=400ps
.measure tran avgval_81 avg i(vdd) FROM=400ps TO=405ps
.measure tran avgval_82 avg i(vdd) FROM=405ps TO=410ps
.measure tran avgval_83 avg i(vdd) FROM=410ps TO=415ps
.measure tran avgval_84 avg i(vdd) FROM=415ps TO=420ps
.measure tran avgval_85 avg i(vdd) FROM=420ps TO=425ps
.measure tran avgval_86 avg i(vdd) FROM=425ps TO=430ps
.measure tran avgval_87 avg i(vdd) FROM=430ps TO=435ps
.measure tran avgval_88 avg i(vdd) FROM=435ps TO=440ps
.measure tran avgval_89 avg i(vdd) FROM=440ps TO=445ps
.measure tran avgval_90 avg i(vdd) FROM=445ps TO=450ps
.measure tran avgval_91 avg i(vdd) FROM=450ps TO=455ps
.measure tran avgval_92 avg i(vdd) FROM=455ps TO=460ps
.measure tran avgval_93 avg i(vdd) FROM=460ps TO=465ps
.measure tran avgval_94 avg i(vdd) FROM=465ps TO=470ps
.measure tran avgval_95 avg i(vdd) FROM=470ps TO=475ps
.measure tran avgval_96 avg i(vdd) FROM=475ps TO=480ps
.measure tran avgval_97 avg i(vdd) FROM=480ps TO=485ps
.measure tran avgval_98 avg i(vdd) FROM=485ps TO=490ps
.measure tran avgval_99 avg i(vdd) FROM=490ps TO=495ps
.measure tran avgval_100 avg i(vdd) FROM=495ps TO=500ps
.measure tran avgval_101 avg i(vdd) FROM=500ps TO=505ps
.measure tran avgval_102 avg i(vdd) FROM=505ps TO=510ps
.measure tran avgval_103 avg i(vdd) FROM=510ps TO=515ps
.measure tran avgval_104 avg i(vdd) FROM=515ps TO=520ps
.measure tran avgval_105 avg i(vdd) FROM=520ps TO=525ps
.measure tran avgval_106 avg i(vdd) FROM=525ps TO=530ps
.measure tran avgval_107 avg i(vdd) FROM=530ps TO=535ps
.measure tran avgval_108 avg i(vdd) FROM=535ps TO=540ps
.measure tran avgval_109 avg i(vdd) FROM=540ps TO=545ps
.measure tran avgval_110 avg i(vdd) FROM=545ps TO=550ps
.measure tran avgval_111 avg i(vdd) FROM=550ps TO=555ps
.measure tran avgval_112 avg i(vdd) FROM=555ps TO=560ps
.measure tran avgval_113 avg i(vdd) FROM=560ps TO=565ps
.measure tran avgval_114 avg i(vdd) FROM=565ps TO=570ps
.measure tran avgval_115 avg i(vdd) FROM=570ps TO=575ps
.measure tran avgval_116 avg i(vdd) FROM=575ps TO=580ps
.measure tran avgval_117 avg i(vdd) FROM=580ps TO=585ps
.measure tran avgval_118 avg i(vdd) FROM=585ps TO=590ps
.measure tran avgval_119 avg i(vdd) FROM=590ps TO=595ps
.measure tran avgval_120 avg i(vdd) FROM=595ps TO=600ps
.measure tran avgval_121 avg i(vdd) FROM=600ps TO=605ps
.measure tran avgval_122 avg i(vdd) FROM=605ps TO=610ps
.measure tran avgval_123 avg i(vdd) FROM=610ps TO=615ps
.measure tran avgval_124 avg i(vdd) FROM=615ps TO=620ps
.measure tran avgval_125 avg i(vdd) FROM=620ps TO=625ps
.measure tran avgval_126 avg i(vdd) FROM=625ps TO=630ps
.measure tran avgval_127 avg i(vdd) FROM=630ps TO=635ps
.measure tran avgval_128 avg i(vdd) FROM=635ps TO=640ps
.measure tran avgval_129 avg i(vdd) FROM=640ps TO=645ps
.measure tran avgval_130 avg i(vdd) FROM=645ps TO=650ps
.measure tran avgval_131 avg i(vdd) FROM=650ps TO=655ps
.measure tran avgval_132 avg i(vdd) FROM=655ps TO=660ps
.measure tran avgval_133 avg i(vdd) FROM=660ps TO=665ps
.measure tran avgval_134 avg i(vdd) FROM=665ps TO=670ps
.measure tran avgval_135 avg i(vdd) FROM=670ps TO=675ps
.measure tran avgval_136 avg i(vdd) FROM=675ps TO=680ps
.measure tran avgval_137 avg i(vdd) FROM=680ps TO=685ps
.measure tran avgval_138 avg i(vdd) FROM=685ps TO=690ps
.measure tran avgval_139 avg i(vdd) FROM=690ps TO=695ps
.measure tran avgval_140 avg i(vdd) FROM=695ps TO=700ps
.measure tran avgval_141 avg i(vdd) FROM=700ps TO=705ps
.measure tran avgval_142 avg i(vdd) FROM=705ps TO=710ps
.measure tran avgval_143 avg i(vdd) FROM=710ps TO=715ps
.measure tran avgval_144 avg i(vdd) FROM=715ps TO=720ps
.measure tran avgval_145 avg i(vdd) FROM=720ps TO=725ps
.measure tran avgval_146 avg i(vdd) FROM=725ps TO=730ps
.measure tran avgval_147 avg i(vdd) FROM=730ps TO=735ps
.measure tran avgval_148 avg i(vdd) FROM=735ps TO=740ps
.measure tran avgval_149 avg i(vdd) FROM=740ps TO=745ps
.measure tran avgval_150 avg i(vdd) FROM=745ps TO=750ps
.measure tran avgval_151 avg i(vdd) FROM=750ps TO=755ps
.measure tran avgval_152 avg i(vdd) FROM=755ps TO=760ps
.measure tran avgval_153 avg i(vdd) FROM=760ps TO=765ps
.measure tran avgval_154 avg i(vdd) FROM=765ps TO=770ps
.measure tran avgval_155 avg i(vdd) FROM=770ps TO=775ps
.measure tran avgval_156 avg i(vdd) FROM=775ps TO=780ps
.measure tran avgval_157 avg i(vdd) FROM=780ps TO=785ps
.measure tran avgval_158 avg i(vdd) FROM=785ps TO=790ps
.measure tran avgval_159 avg i(vdd) FROM=790ps TO=795ps
.measure tran avgval_160 avg i(vdd) FROM=795ps TO=800ps
.measure tran avgval_161 avg i(vdd) FROM=800ps TO=805ps
.measure tran avgval_162 avg i(vdd) FROM=805ps TO=810ps
.measure tran avgval_163 avg i(vdd) FROM=810ps TO=815ps
.measure tran avgval_164 avg i(vdd) FROM=815ps TO=820ps
.measure tran avgval_165 avg i(vdd) FROM=820ps TO=825ps
.measure tran avgval_166 avg i(vdd) FROM=825ps TO=830ps
.measure tran avgval_167 avg i(vdd) FROM=830ps TO=835ps
.measure tran avgval_168 avg i(vdd) FROM=835ps TO=840ps
.measure tran avgval_169 avg i(vdd) FROM=840ps TO=845ps
.measure tran avgval_170 avg i(vdd) FROM=845ps TO=850ps
.measure tran avgval_171 avg i(vdd) FROM=850ps TO=855ps
.measure tran avgval_172 avg i(vdd) FROM=855ps TO=860ps
.measure tran avgval_173 avg i(vdd) FROM=860ps TO=865ps
.measure tran avgval_174 avg i(vdd) FROM=865ps TO=870ps
.measure tran avgval_175 avg i(vdd) FROM=870ps TO=875ps
.measure tran avgval_176 avg i(vdd) FROM=875ps TO=880ps
.measure tran avgval_177 avg i(vdd) FROM=880ps TO=885ps
.measure tran avgval_178 avg i(vdd) FROM=885ps TO=890ps
.measure tran avgval_179 avg i(vdd) FROM=890ps TO=895ps
.measure tran avgval_180 avg i(vdd) FROM=895ps TO=900ps
.measure tran avgval_181 avg i(vdd) FROM=900ps TO=905ps
.measure tran avgval_182 avg i(vdd) FROM=905ps TO=910ps
.measure tran avgval_183 avg i(vdd) FROM=910ps TO=915ps
.measure tran avgval_184 avg i(vdd) FROM=915ps TO=920ps
.measure tran avgval_185 avg i(vdd) FROM=920ps TO=925ps
.measure tran avgval_186 avg i(vdd) FROM=925ps TO=930ps
.measure tran avgval_187 avg i(vdd) FROM=930ps TO=935ps
.measure tran avgval_188 avg i(vdd) FROM=935ps TO=940ps
.measure tran avgval_189 avg i(vdd) FROM=940ps TO=945ps
.measure tran avgval_190 avg i(vdd) FROM=945ps TO=950ps
.measure tran avgval_191 avg i(vdd) FROM=950ps TO=955ps
.measure tran avgval_192 avg i(vdd) FROM=955ps TO=960ps
.measure tran avgval_193 avg i(vdd) FROM=960ps TO=965ps
.measure tran avgval_194 avg i(vdd) FROM=965ps TO=970ps
.measure tran avgval_195 avg i(vdd) FROM=970ps TO=975ps
.measure tran avgval_196 avg i(vdd) FROM=975ps TO=980ps
.measure tran avgval_197 avg i(vdd) FROM=980ps TO=985ps
.measure tran avgval_198 avg i(vdd) FROM=985ps TO=990ps
.measure tran avgval_199 avg i(vdd) FROM=990ps TO=995ps
.measure tran avgval_200 avg i(vdd) FROM=995ps TO=1000ps
.measure tran avgval_201 avg i(vdd) FROM=1000ps TO=1005ps
.measure tran avgval_202 avg i(vdd) FROM=1005ps TO=1010ps
.measure tran avgval_203 avg i(vdd) FROM=1010ps TO=1015ps
.measure tran avgval_204 avg i(vdd) FROM=1015ps TO=1020ps
.measure tran avgval_205 avg i(vdd) FROM=1020ps TO=1025ps
.measure tran avgval_206 avg i(vdd) FROM=1025ps TO=1030ps
.measure tran avgval_207 avg i(vdd) FROM=1030ps TO=1035ps
.measure tran avgval_208 avg i(vdd) FROM=1035ps TO=1040ps
.measure tran avgval_209 avg i(vdd) FROM=1040ps TO=1045ps
.measure tran avgval_210 avg i(vdd) FROM=1045ps TO=1050ps
.measure tran avgval_211 avg i(vdd) FROM=1050ps TO=1055ps
.measure tran avgval_212 avg i(vdd) FROM=1055ps TO=1060ps
.measure tran avgval_213 avg i(vdd) FROM=1060ps TO=1065ps
.measure tran avgval_214 avg i(vdd) FROM=1065ps TO=1070ps
.measure tran avgval_215 avg i(vdd) FROM=1070ps TO=1075ps
.measure tran avgval_216 avg i(vdd) FROM=1075ps TO=1080ps
.measure tran avgval_217 avg i(vdd) FROM=1080ps TO=1085ps
.measure tran avgval_218 avg i(vdd) FROM=1085ps TO=1090ps
.measure tran avgval_219 avg i(vdd) FROM=1090ps TO=1095ps
.measure tran avgval_220 avg i(vdd) FROM=1095ps TO=1100ps
.measure tran avgval_221 avg i(vdd) FROM=1100ps TO=1105ps
.measure tran avgval_222 avg i(vdd) FROM=1105ps TO=1110ps
.measure tran avgval_223 avg i(vdd) FROM=1110ps TO=1115ps
.measure tran avgval_224 avg i(vdd) FROM=1115ps TO=1120ps
.measure tran avgval_225 avg i(vdd) FROM=1120ps TO=1125ps
.measure tran avgval_226 avg i(vdd) FROM=1125ps TO=1130ps
.measure tran avgval_227 avg i(vdd) FROM=1130ps TO=1135ps
.measure tran avgval_228 avg i(vdd) FROM=1135ps TO=1140ps
.measure tran avgval_229 avg i(vdd) FROM=1140ps TO=1145ps
.measure tran avgval_230 avg i(vdd) FROM=1145ps TO=1150ps
.measure tran avgval_231 avg i(vdd) FROM=1150ps TO=1155ps
.measure tran avgval_232 avg i(vdd) FROM=1155ps TO=1160ps
.measure tran avgval_233 avg i(vdd) FROM=1160ps TO=1165ps
.measure tran avgval_234 avg i(vdd) FROM=1165ps TO=1170ps
.measure tran avgval_235 avg i(vdd) FROM=1170ps TO=1175ps
.measure tran avgval_236 avg i(vdd) FROM=1175ps TO=1180ps
.measure tran avgval_237 avg i(vdd) FROM=1180ps TO=1185ps
.measure tran avgval_238 avg i(vdd) FROM=1185ps TO=1190ps
.measure tran avgval_239 avg i(vdd) FROM=1190ps TO=1195ps
.measure tran avgval_240 avg i(vdd) FROM=1195ps TO=1200ps
.measure tran avgval_241 avg i(vdd) FROM=1200ps TO=1205ps
.measure tran avgval_242 avg i(vdd) FROM=1205ps TO=1210ps
.measure tran avgval_243 avg i(vdd) FROM=1210ps TO=1215ps
.measure tran avgval_244 avg i(vdd) FROM=1215ps TO=1220ps
.measure tran avgval_245 avg i(vdd) FROM=1220ps TO=1225ps
.measure tran avgval_246 avg i(vdd) FROM=1225ps TO=1230ps
.measure tran avgval_247 avg i(vdd) FROM=1230ps TO=1235ps
.measure tran avgval_248 avg i(vdd) FROM=1235ps TO=1240ps
.measure tran avgval_249 avg i(vdd) FROM=1240ps TO=1245ps
.measure tran avgval_250 avg i(vdd) FROM=1245ps TO=1250ps
.measure tran avgval_251 avg i(vdd) FROM=1250ps TO=1255ps
.measure tran avgval_252 avg i(vdd) FROM=1255ps TO=1260ps
.measure tran avgval_253 avg i(vdd) FROM=1260ps TO=1265ps
.measure tran avgval_254 avg i(vdd) FROM=1265ps TO=1270ps
.measure tran avgval_255 avg i(vdd) FROM=1270ps TO=1275ps
.measure tran avgval_256 avg i(vdd) FROM=1275ps TO=1280ps
.measure tran avgval_257 avg i(vdd) FROM=1280ps TO=1285ps
.measure tran avgval_258 avg i(vdd) FROM=1285ps TO=1290ps
.measure tran avgval_259 avg i(vdd) FROM=1290ps TO=1295ps
.measure tran avgval_260 avg i(vdd) FROM=1295ps TO=1300ps
.measure tran avgval_261 avg i(vdd) FROM=1300ps TO=1305ps
.measure tran avgval_262 avg i(vdd) FROM=1305ps TO=1310ps
.measure tran avgval_263 avg i(vdd) FROM=1310ps TO=1315ps
.measure tran avgval_264 avg i(vdd) FROM=1315ps TO=1320ps
.measure tran avgval_265 avg i(vdd) FROM=1320ps TO=1325ps
.measure tran avgval_266 avg i(vdd) FROM=1325ps TO=1330ps
.measure tran avgval_267 avg i(vdd) FROM=1330ps TO=1335ps
.measure tran avgval_268 avg i(vdd) FROM=1335ps TO=1340ps
.measure tran avgval_269 avg i(vdd) FROM=1340ps TO=1345ps
.measure tran avgval_270 avg i(vdd) FROM=1345ps TO=1350ps
.measure tran avgval_271 avg i(vdd) FROM=1350ps TO=1355ps
.measure tran avgval_272 avg i(vdd) FROM=1355ps TO=1360ps
.measure tran avgval_273 avg i(vdd) FROM=1360ps TO=1365ps
.measure tran avgval_274 avg i(vdd) FROM=1365ps TO=1370ps
.measure tran avgval_275 avg i(vdd) FROM=1370ps TO=1375ps
.measure tran avgval_276 avg i(vdd) FROM=1375ps TO=1380ps
.measure tran avgval_277 avg i(vdd) FROM=1380ps TO=1385ps
.measure tran avgval_278 avg i(vdd) FROM=1385ps TO=1390ps
.measure tran avgval_279 avg i(vdd) FROM=1390ps TO=1395ps
.measure tran avgval_280 avg i(vdd) FROM=1395ps TO=1400ps
.measure tran avgval_281 avg i(vdd) FROM=1400ps TO=1405ps
.measure tran avgval_282 avg i(vdd) FROM=1405ps TO=1410ps
.measure tran avgval_283 avg i(vdd) FROM=1410ps TO=1415ps
.measure tran avgval_284 avg i(vdd) FROM=1415ps TO=1420ps
.measure tran avgval_285 avg i(vdd) FROM=1420ps TO=1425ps
.measure tran avgval_286 avg i(vdd) FROM=1425ps TO=1430ps
.measure tran avgval_287 avg i(vdd) FROM=1430ps TO=1435ps
.measure tran avgval_288 avg i(vdd) FROM=1435ps TO=1440ps
.measure tran avgval_289 avg i(vdd) FROM=1440ps TO=1445ps
.measure tran avgval_290 avg i(vdd) FROM=1445ps TO=1450ps
.measure tran avgval_291 avg i(vdd) FROM=1450ps TO=1455ps
.measure tran avgval_292 avg i(vdd) FROM=1455ps TO=1460ps
.measure tran avgval_293 avg i(vdd) FROM=1460ps TO=1465ps
.measure tran avgval_294 avg i(vdd) FROM=1465ps TO=1470ps
.measure tran avgval_295 avg i(vdd) FROM=1470ps TO=1475ps
.measure tran avgval_296 avg i(vdd) FROM=1475ps TO=1480ps
.measure tran avgval_297 avg i(vdd) FROM=1480ps TO=1485ps
.measure tran avgval_298 avg i(vdd) FROM=1485ps TO=1490ps
.measure tran avgval_299 avg i(vdd) FROM=1490ps TO=1495ps
.measure tran avgval_300 avg i(vdd) FROM=1495ps TO=1500ps
.measure tran avgval_301 avg i(vdd) FROM=1500ps TO=1505ps
.measure tran avgval_302 avg i(vdd) FROM=1505ps TO=1510ps
.measure tran avgval_303 avg i(vdd) FROM=1510ps TO=1515ps
.measure tran avgval_304 avg i(vdd) FROM=1515ps TO=1520ps
.measure tran avgval_305 avg i(vdd) FROM=1520ps TO=1525ps
.measure tran avgval_306 avg i(vdd) FROM=1525ps TO=1530ps
.measure tran avgval_307 avg i(vdd) FROM=1530ps TO=1535ps
.measure tran avgval_308 avg i(vdd) FROM=1535ps TO=1540ps
.measure tran avgval_309 avg i(vdd) FROM=1540ps TO=1545ps
.measure tran avgval_310 avg i(vdd) FROM=1545ps TO=1550ps
.measure tran avgval_311 avg i(vdd) FROM=1550ps TO=1555ps
.measure tran avgval_312 avg i(vdd) FROM=1555ps TO=1560ps
.measure tran avgval_313 avg i(vdd) FROM=1560ps TO=1565ps
.measure tran avgval_314 avg i(vdd) FROM=1565ps TO=1570ps
.measure tran avgval_315 avg i(vdd) FROM=1570ps TO=1575ps
.measure tran avgval_316 avg i(vdd) FROM=1575ps TO=1580ps
.measure tran avgval_317 avg i(vdd) FROM=1580ps TO=1585ps
.measure tran avgval_318 avg i(vdd) FROM=1585ps TO=1590ps
.measure tran avgval_319 avg i(vdd) FROM=1590ps TO=1595ps
.measure tran avgval_320 avg i(vdd) FROM=1595ps TO=1600ps
.measure tran avgval_321 avg i(vdd) FROM=1600ps TO=1605ps
.measure tran avgval_322 avg i(vdd) FROM=1605ps TO=1610ps
.measure tran avgval_323 avg i(vdd) FROM=1610ps TO=1615ps
.measure tran avgval_324 avg i(vdd) FROM=1615ps TO=1620ps
.measure tran avgval_325 avg i(vdd) FROM=1620ps TO=1625ps
.measure tran avgval_326 avg i(vdd) FROM=1625ps TO=1630ps
.measure tran avgval_327 avg i(vdd) FROM=1630ps TO=1635ps
.measure tran avgval_328 avg i(vdd) FROM=1635ps TO=1640ps
.measure tran avgval_329 avg i(vdd) FROM=1640ps TO=1645ps
.measure tran avgval_330 avg i(vdd) FROM=1645ps TO=1650ps
.measure tran avgval_331 avg i(vdd) FROM=1650ps TO=1655ps
.measure tran avgval_332 avg i(vdd) FROM=1655ps TO=1660ps
.measure tran avgval_333 avg i(vdd) FROM=1660ps TO=1665ps
.measure tran avgval_334 avg i(vdd) FROM=1665ps TO=1670ps
.measure tran avgval_335 avg i(vdd) FROM=1670ps TO=1675ps
.measure tran avgval_336 avg i(vdd) FROM=1675ps TO=1680ps
.measure tran avgval_337 avg i(vdd) FROM=1680ps TO=1685ps
.measure tran avgval_338 avg i(vdd) FROM=1685ps TO=1690ps
.measure tran avgval_339 avg i(vdd) FROM=1690ps TO=1695ps
.measure tran avgval_340 avg i(vdd) FROM=1695ps TO=1700ps
.measure tran avgval_341 avg i(vdd) FROM=1700ps TO=1705ps
.measure tran avgval_342 avg i(vdd) FROM=1705ps TO=1710ps
.measure tran avgval_343 avg i(vdd) FROM=1710ps TO=1715ps
.measure tran avgval_344 avg i(vdd) FROM=1715ps TO=1720ps
.measure tran avgval_345 avg i(vdd) FROM=1720ps TO=1725ps
.measure tran avgval_346 avg i(vdd) FROM=1725ps TO=1730ps
.measure tran avgval_347 avg i(vdd) FROM=1730ps TO=1735ps
.measure tran avgval_348 avg i(vdd) FROM=1735ps TO=1740ps
.measure tran avgval_349 avg i(vdd) FROM=1740ps TO=1745ps
.measure tran avgval_350 avg i(vdd) FROM=1745ps TO=1750ps
.measure tran avgval_351 avg i(vdd) FROM=1750ps TO=1755ps
.measure tran avgval_352 avg i(vdd) FROM=1755ps TO=1760ps
.measure tran avgval_353 avg i(vdd) FROM=1760ps TO=1765ps
.measure tran avgval_354 avg i(vdd) FROM=1765ps TO=1770ps
.measure tran avgval_355 avg i(vdd) FROM=1770ps TO=1775ps
.measure tran avgval_356 avg i(vdd) FROM=1775ps TO=1780ps
.measure tran avgval_357 avg i(vdd) FROM=1780ps TO=1785ps
.measure tran avgval_358 avg i(vdd) FROM=1785ps TO=1790ps
.measure tran avgval_359 avg i(vdd) FROM=1790ps TO=1795ps
.measure tran avgval_360 avg i(vdd) FROM=1795ps TO=1800ps
.measure tran avgval_361 avg i(vdd) FROM=1800ps TO=1805ps
.measure tran avgval_362 avg i(vdd) FROM=1805ps TO=1810ps
.measure tran avgval_363 avg i(vdd) FROM=1810ps TO=1815ps
.measure tran avgval_364 avg i(vdd) FROM=1815ps TO=1820ps
.measure tran avgval_365 avg i(vdd) FROM=1820ps TO=1825ps
.measure tran avgval_366 avg i(vdd) FROM=1825ps TO=1830ps
.measure tran avgval_367 avg i(vdd) FROM=1830ps TO=1835ps
.measure tran avgval_368 avg i(vdd) FROM=1835ps TO=1840ps
.measure tran avgval_369 avg i(vdd) FROM=1840ps TO=1845ps
.measure tran avgval_370 avg i(vdd) FROM=1845ps TO=1850ps
.measure tran avgval_371 avg i(vdd) FROM=1850ps TO=1855ps
.measure tran avgval_372 avg i(vdd) FROM=1855ps TO=1860ps
.measure tran avgval_373 avg i(vdd) FROM=1860ps TO=1865ps
.measure tran avgval_374 avg i(vdd) FROM=1865ps TO=1870ps
.measure tran avgval_375 avg i(vdd) FROM=1870ps TO=1875ps
.measure tran avgval_376 avg i(vdd) FROM=1875ps TO=1880ps
.measure tran avgval_377 avg i(vdd) FROM=1880ps TO=1885ps
.measure tran avgval_378 avg i(vdd) FROM=1885ps TO=1890ps
.measure tran avgval_379 avg i(vdd) FROM=1890ps TO=1895ps
.measure tran avgval_380 avg i(vdd) FROM=1895ps TO=1900ps
.measure tran avgval_381 avg i(vdd) FROM=1900ps TO=1905ps
.measure tran avgval_382 avg i(vdd) FROM=1905ps TO=1910ps
.measure tran avgval_383 avg i(vdd) FROM=1910ps TO=1915ps
.measure tran avgval_384 avg i(vdd) FROM=1915ps TO=1920ps
.measure tran avgval_385 avg i(vdd) FROM=1920ps TO=1925ps
.measure tran avgval_386 avg i(vdd) FROM=1925ps TO=1930ps
.measure tran avgval_387 avg i(vdd) FROM=1930ps TO=1935ps
.measure tran avgval_388 avg i(vdd) FROM=1935ps TO=1940ps
.measure tran avgval_389 avg i(vdd) FROM=1940ps TO=1945ps
.measure tran avgval_390 avg i(vdd) FROM=1945ps TO=1950ps
.measure tran avgval_391 avg i(vdd) FROM=1950ps TO=1955ps
.measure tran avgval_392 avg i(vdd) FROM=1955ps TO=1960ps
.measure tran avgval_393 avg i(vdd) FROM=1960ps TO=1965ps
.measure tran avgval_394 avg i(vdd) FROM=1965ps TO=1970ps
.measure tran avgval_395 avg i(vdd) FROM=1970ps TO=1975ps
.measure tran avgval_396 avg i(vdd) FROM=1975ps TO=1980ps
.measure tran avgval_397 avg i(vdd) FROM=1980ps TO=1985ps
.measure tran avgval_398 avg i(vdd) FROM=1985ps TO=1990ps
.measure tran avgval_399 avg i(vdd) FROM=1990ps TO=1995ps
.measure tran avgval_400 avg i(vdd) FROM=1995ps TO=2000ps
.measure tran avgval_401 avg i(vdd) FROM=2000ps TO=2005ps
.measure tran avgval_402 avg i(vdd) FROM=2005ps TO=2010ps
.measure tran avgval_403 avg i(vdd) FROM=2010ps TO=2015ps
.measure tran avgval_404 avg i(vdd) FROM=2015ps TO=2020ps
.measure tran avgval_405 avg i(vdd) FROM=2020ps TO=2025ps
.measure tran avgval_406 avg i(vdd) FROM=2025ps TO=2030ps
.measure tran avgval_407 avg i(vdd) FROM=2030ps TO=2035ps
.measure tran avgval_408 avg i(vdd) FROM=2035ps TO=2040ps
.measure tran avgval_409 avg i(vdd) FROM=2040ps TO=2045ps
.measure tran avgval_410 avg i(vdd) FROM=2045ps TO=2050ps
.measure tran avgval_411 avg i(vdd) FROM=2050ps TO=2055ps
.measure tran avgval_412 avg i(vdd) FROM=2055ps TO=2060ps
.measure tran avgval_413 avg i(vdd) FROM=2060ps TO=2065ps
.measure tran avgval_414 avg i(vdd) FROM=2065ps TO=2070ps
.measure tran avgval_415 avg i(vdd) FROM=2070ps TO=2075ps
.measure tran avgval_416 avg i(vdd) FROM=2075ps TO=2080ps
.measure tran avgval_417 avg i(vdd) FROM=2080ps TO=2085ps
.measure tran avgval_418 avg i(vdd) FROM=2085ps TO=2090ps
.measure tran avgval_419 avg i(vdd) FROM=2090ps TO=2095ps
.measure tran avgval_420 avg i(vdd) FROM=2095ps TO=2100ps
.measure tran avgval_421 avg i(vdd) FROM=2100ps TO=2105ps
.measure tran avgval_422 avg i(vdd) FROM=2105ps TO=2110ps
.measure tran avgval_423 avg i(vdd) FROM=2110ps TO=2115ps
.measure tran avgval_424 avg i(vdd) FROM=2115ps TO=2120ps
.measure tran avgval_425 avg i(vdd) FROM=2120ps TO=2125ps
.measure tran avgval_426 avg i(vdd) FROM=2125ps TO=2130ps
.measure tran avgval_427 avg i(vdd) FROM=2130ps TO=2135ps
.measure tran avgval_428 avg i(vdd) FROM=2135ps TO=2140ps
.measure tran avgval_429 avg i(vdd) FROM=2140ps TO=2145ps
.measure tran avgval_430 avg i(vdd) FROM=2145ps TO=2150ps
.measure tran avgval_431 avg i(vdd) FROM=2150ps TO=2155ps
.measure tran avgval_432 avg i(vdd) FROM=2155ps TO=2160ps
.measure tran avgval_433 avg i(vdd) FROM=2160ps TO=2165ps
.measure tran avgval_434 avg i(vdd) FROM=2165ps TO=2170ps
.measure tran avgval_435 avg i(vdd) FROM=2170ps TO=2175ps
.measure tran avgval_436 avg i(vdd) FROM=2175ps TO=2180ps
.measure tran avgval_437 avg i(vdd) FROM=2180ps TO=2185ps
.measure tran avgval_438 avg i(vdd) FROM=2185ps TO=2190ps
.measure tran avgval_439 avg i(vdd) FROM=2190ps TO=2195ps
.measure tran avgval_440 avg i(vdd) FROM=2195ps TO=2200ps
.measure tran avgval_441 avg i(vdd) FROM=2200ps TO=2205ps
.measure tran avgval_442 avg i(vdd) FROM=2205ps TO=2210ps
.measure tran avgval_443 avg i(vdd) FROM=2210ps TO=2215ps
.measure tran avgval_444 avg i(vdd) FROM=2215ps TO=2220ps
.measure tran avgval_445 avg i(vdd) FROM=2220ps TO=2225ps
.measure tran avgval_446 avg i(vdd) FROM=2225ps TO=2230ps
.measure tran avgval_447 avg i(vdd) FROM=2230ps TO=2235ps
.measure tran avgval_448 avg i(vdd) FROM=2235ps TO=2240ps
.measure tran avgval_449 avg i(vdd) FROM=2240ps TO=2245ps
.measure tran avgval_450 avg i(vdd) FROM=2245ps TO=2250ps
.measure tran avgval_451 avg i(vdd) FROM=2250ps TO=2255ps
.measure tran avgval_452 avg i(vdd) FROM=2255ps TO=2260ps
.measure tran avgval_453 avg i(vdd) FROM=2260ps TO=2265ps
.measure tran avgval_454 avg i(vdd) FROM=2265ps TO=2270ps
.measure tran avgval_455 avg i(vdd) FROM=2270ps TO=2275ps
.measure tran avgval_456 avg i(vdd) FROM=2275ps TO=2280ps
.measure tran avgval_457 avg i(vdd) FROM=2280ps TO=2285ps
.measure tran avgval_458 avg i(vdd) FROM=2285ps TO=2290ps
.measure tran avgval_459 avg i(vdd) FROM=2290ps TO=2295ps
.measure tran avgval_460 avg i(vdd) FROM=2295ps TO=2300ps
.measure tran avgval_461 avg i(vdd) FROM=2300ps TO=2305ps
.measure tran avgval_462 avg i(vdd) FROM=2305ps TO=2310ps
.measure tran avgval_463 avg i(vdd) FROM=2310ps TO=2315ps
.measure tran avgval_464 avg i(vdd) FROM=2315ps TO=2320ps
.measure tran avgval_465 avg i(vdd) FROM=2320ps TO=2325ps
.measure tran avgval_466 avg i(vdd) FROM=2325ps TO=2330ps
.measure tran avgval_467 avg i(vdd) FROM=2330ps TO=2335ps
.measure tran avgval_468 avg i(vdd) FROM=2335ps TO=2340ps
.measure tran avgval_469 avg i(vdd) FROM=2340ps TO=2345ps
.measure tran avgval_470 avg i(vdd) FROM=2345ps TO=2350ps
.measure tran avgval_471 avg i(vdd) FROM=2350ps TO=2355ps
.measure tran avgval_472 avg i(vdd) FROM=2355ps TO=2360ps
.measure tran avgval_473 avg i(vdd) FROM=2360ps TO=2365ps
.measure tran avgval_474 avg i(vdd) FROM=2365ps TO=2370ps
.measure tran avgval_475 avg i(vdd) FROM=2370ps TO=2375ps
.measure tran avgval_476 avg i(vdd) FROM=2375ps TO=2380ps
.measure tran avgval_477 avg i(vdd) FROM=2380ps TO=2385ps
.measure tran avgval_478 avg i(vdd) FROM=2385ps TO=2390ps
.measure tran avgval_479 avg i(vdd) FROM=2390ps TO=2395ps
.measure tran avgval_480 avg i(vdd) FROM=2395ps TO=2400ps
.measure tran avgval_481 avg i(vdd) FROM=2400ps TO=2405ps
.measure tran avgval_482 avg i(vdd) FROM=2405ps TO=2410ps
.measure tran avgval_483 avg i(vdd) FROM=2410ps TO=2415ps
.measure tran avgval_484 avg i(vdd) FROM=2415ps TO=2420ps
.measure tran avgval_485 avg i(vdd) FROM=2420ps TO=2425ps
.measure tran avgval_486 avg i(vdd) FROM=2425ps TO=2430ps
.measure tran avgval_487 avg i(vdd) FROM=2430ps TO=2435ps
.measure tran avgval_488 avg i(vdd) FROM=2435ps TO=2440ps
.measure tran avgval_489 avg i(vdd) FROM=2440ps TO=2445ps
.measure tran avgval_490 avg i(vdd) FROM=2445ps TO=2450ps
.measure tran avgval_491 avg i(vdd) FROM=2450ps TO=2455ps
.measure tran avgval_492 avg i(vdd) FROM=2455ps TO=2460ps
.measure tran avgval_493 avg i(vdd) FROM=2460ps TO=2465ps
.measure tran avgval_494 avg i(vdd) FROM=2465ps TO=2470ps
.measure tran avgval_495 avg i(vdd) FROM=2470ps TO=2475ps
.measure tran avgval_496 avg i(vdd) FROM=2475ps TO=2480ps
.measure tran avgval_497 avg i(vdd) FROM=2480ps TO=2485ps
.measure tran avgval_498 avg i(vdd) FROM=2485ps TO=2490ps
.measure tran avgval_499 avg i(vdd) FROM=2490ps TO=2495ps
.measure tran avgval_500 avg i(vdd) FROM=2495ps TO=2500ps
.measure tran avgval_501 avg i(vdd) FROM=2500ps TO=2505ps
.measure tran avgval_502 avg i(vdd) FROM=2505ps TO=2510ps
.measure tran avgval_503 avg i(vdd) FROM=2510ps TO=2515ps
.measure tran avgval_504 avg i(vdd) FROM=2515ps TO=2520ps
.measure tran avgval_505 avg i(vdd) FROM=2520ps TO=2525ps
.measure tran avgval_506 avg i(vdd) FROM=2525ps TO=2530ps
.measure tran avgval_507 avg i(vdd) FROM=2530ps TO=2535ps
.measure tran avgval_508 avg i(vdd) FROM=2535ps TO=2540ps
.measure tran avgval_509 avg i(vdd) FROM=2540ps TO=2545ps
.measure tran avgval_510 avg i(vdd) FROM=2545ps TO=2550ps
.measure tran avgval_511 avg i(vdd) FROM=2550ps TO=2555ps
.measure tran avgval_512 avg i(vdd) FROM=2555ps TO=2560ps
.measure tran avgval_513 avg i(vdd) FROM=2560ps TO=2565ps
.measure tran avgval_514 avg i(vdd) FROM=2565ps TO=2570ps
.measure tran avgval_515 avg i(vdd) FROM=2570ps TO=2575ps
.measure tran avgval_516 avg i(vdd) FROM=2575ps TO=2580ps
.measure tran avgval_517 avg i(vdd) FROM=2580ps TO=2585ps
.measure tran avgval_518 avg i(vdd) FROM=2585ps TO=2590ps
.measure tran avgval_519 avg i(vdd) FROM=2590ps TO=2595ps
.measure tran avgval_520 avg i(vdd) FROM=2595ps TO=2600ps
.measure tran avgval_521 avg i(vdd) FROM=2600ps TO=2605ps
.measure tran avgval_522 avg i(vdd) FROM=2605ps TO=2610ps
.measure tran avgval_523 avg i(vdd) FROM=2610ps TO=2615ps
.measure tran avgval_524 avg i(vdd) FROM=2615ps TO=2620ps
.measure tran avgval_525 avg i(vdd) FROM=2620ps TO=2625ps
.measure tran avgval_526 avg i(vdd) FROM=2625ps TO=2630ps
.measure tran avgval_527 avg i(vdd) FROM=2630ps TO=2635ps
.measure tran avgval_528 avg i(vdd) FROM=2635ps TO=2640ps
.measure tran avgval_529 avg i(vdd) FROM=2640ps TO=2645ps
.measure tran avgval_530 avg i(vdd) FROM=2645ps TO=2650ps
.measure tran avgval_531 avg i(vdd) FROM=2650ps TO=2655ps
.measure tran avgval_532 avg i(vdd) FROM=2655ps TO=2660ps
.measure tran avgval_533 avg i(vdd) FROM=2660ps TO=2665ps
.measure tran avgval_534 avg i(vdd) FROM=2665ps TO=2670ps
.measure tran avgval_535 avg i(vdd) FROM=2670ps TO=2675ps
.measure tran avgval_536 avg i(vdd) FROM=2675ps TO=2680ps
.measure tran avgval_537 avg i(vdd) FROM=2680ps TO=2685ps
.measure tran avgval_538 avg i(vdd) FROM=2685ps TO=2690ps
.measure tran avgval_539 avg i(vdd) FROM=2690ps TO=2695ps
.measure tran avgval_540 avg i(vdd) FROM=2695ps TO=2700ps
.measure tran avgval_541 avg i(vdd) FROM=2700ps TO=2705ps
.measure tran avgval_542 avg i(vdd) FROM=2705ps TO=2710ps
.measure tran avgval_543 avg i(vdd) FROM=2710ps TO=2715ps
.measure tran avgval_544 avg i(vdd) FROM=2715ps TO=2720ps
.measure tran avgval_545 avg i(vdd) FROM=2720ps TO=2725ps
.measure tran avgval_546 avg i(vdd) FROM=2725ps TO=2730ps
.measure tran avgval_547 avg i(vdd) FROM=2730ps TO=2735ps
.measure tran avgval_548 avg i(vdd) FROM=2735ps TO=2740ps
.measure tran avgval_549 avg i(vdd) FROM=2740ps TO=2745ps
.measure tran avgval_550 avg i(vdd) FROM=2745ps TO=2750ps
.measure tran avgval_551 avg i(vdd) FROM=2750ps TO=2755ps
.measure tran avgval_552 avg i(vdd) FROM=2755ps TO=2760ps
.measure tran avgval_553 avg i(vdd) FROM=2760ps TO=2765ps
.measure tran avgval_554 avg i(vdd) FROM=2765ps TO=2770ps
.measure tran avgval_555 avg i(vdd) FROM=2770ps TO=2775ps
.measure tran avgval_556 avg i(vdd) FROM=2775ps TO=2780ps
.measure tran avgval_557 avg i(vdd) FROM=2780ps TO=2785ps
.measure tran avgval_558 avg i(vdd) FROM=2785ps TO=2790ps
.measure tran avgval_559 avg i(vdd) FROM=2790ps TO=2795ps
.measure tran avgval_560 avg i(vdd) FROM=2795ps TO=2800ps
.measure tran avgval_561 avg i(vdd) FROM=2800ps TO=2805ps
.measure tran avgval_562 avg i(vdd) FROM=2805ps TO=2810ps
.measure tran avgval_563 avg i(vdd) FROM=2810ps TO=2815ps
.measure tran avgval_564 avg i(vdd) FROM=2815ps TO=2820ps
.measure tran avgval_565 avg i(vdd) FROM=2820ps TO=2825ps
.measure tran avgval_566 avg i(vdd) FROM=2825ps TO=2830ps
.measure tran avgval_567 avg i(vdd) FROM=2830ps TO=2835ps
.measure tran avgval_568 avg i(vdd) FROM=2835ps TO=2840ps
.measure tran avgval_569 avg i(vdd) FROM=2840ps TO=2845ps
.measure tran avgval_570 avg i(vdd) FROM=2845ps TO=2850ps
.measure tran avgval_571 avg i(vdd) FROM=2850ps TO=2855ps
.measure tran avgval_572 avg i(vdd) FROM=2855ps TO=2860ps
.measure tran avgval_573 avg i(vdd) FROM=2860ps TO=2865ps
.measure tran avgval_574 avg i(vdd) FROM=2865ps TO=2870ps
.measure tran avgval_575 avg i(vdd) FROM=2870ps TO=2875ps
.measure tran avgval_576 avg i(vdd) FROM=2875ps TO=2880ps
.measure tran avgval_577 avg i(vdd) FROM=2880ps TO=2885ps
.measure tran avgval_578 avg i(vdd) FROM=2885ps TO=2890ps
.measure tran avgval_579 avg i(vdd) FROM=2890ps TO=2895ps
.measure tran avgval_580 avg i(vdd) FROM=2895ps TO=2900ps
.measure tran avgval_581 avg i(vdd) FROM=2900ps TO=2905ps
.measure tran avgval_582 avg i(vdd) FROM=2905ps TO=2910ps
.measure tran avgval_583 avg i(vdd) FROM=2910ps TO=2915ps
.measure tran avgval_584 avg i(vdd) FROM=2915ps TO=2920ps
.measure tran avgval_585 avg i(vdd) FROM=2920ps TO=2925ps
.measure tran avgval_586 avg i(vdd) FROM=2925ps TO=2930ps
.measure tran avgval_587 avg i(vdd) FROM=2930ps TO=2935ps
.measure tran avgval_588 avg i(vdd) FROM=2935ps TO=2940ps
.measure tran avgval_589 avg i(vdd) FROM=2940ps TO=2945ps
.measure tran avgval_590 avg i(vdd) FROM=2945ps TO=2950ps
.measure tran avgval_591 avg i(vdd) FROM=2950ps TO=2955ps
.measure tran avgval_592 avg i(vdd) FROM=2955ps TO=2960ps
.measure tran avgval_593 avg i(vdd) FROM=2960ps TO=2965ps
.measure tran avgval_594 avg i(vdd) FROM=2965ps TO=2970ps
.measure tran avgval_595 avg i(vdd) FROM=2970ps TO=2975ps
.measure tran avgval_596 avg i(vdd) FROM=2975ps TO=2980ps
.measure tran avgval_597 avg i(vdd) FROM=2980ps TO=2985ps
.measure tran avgval_598 avg i(vdd) FROM=2985ps TO=2990ps
.measure tran avgval_599 avg i(vdd) FROM=2990ps TO=2995ps
.measure tran avgval_600 avg i(vdd) FROM=2995ps TO=3000ps
.measure tran avgval_601 avg i(vdd) FROM=3000ps TO=3005ps
.measure tran avgval_602 avg i(vdd) FROM=3005ps TO=3010ps
.measure tran avgval_603 avg i(vdd) FROM=3010ps TO=3015ps
.measure tran avgval_604 avg i(vdd) FROM=3015ps TO=3020ps
.measure tran avgval_605 avg i(vdd) FROM=3020ps TO=3025ps
.measure tran avgval_606 avg i(vdd) FROM=3025ps TO=3030ps
.measure tran avgval_607 avg i(vdd) FROM=3030ps TO=3035ps
.measure tran avgval_608 avg i(vdd) FROM=3035ps TO=3040ps
.measure tran avgval_609 avg i(vdd) FROM=3040ps TO=3045ps
.measure tran avgval_610 avg i(vdd) FROM=3045ps TO=3050ps
.measure tran avgval_611 avg i(vdd) FROM=3050ps TO=3055ps
.measure tran avgval_612 avg i(vdd) FROM=3055ps TO=3060ps
.measure tran avgval_613 avg i(vdd) FROM=3060ps TO=3065ps
.measure tran avgval_614 avg i(vdd) FROM=3065ps TO=3070ps
.measure tran avgval_615 avg i(vdd) FROM=3070ps TO=3075ps
.measure tran avgval_616 avg i(vdd) FROM=3075ps TO=3080ps
.measure tran avgval_617 avg i(vdd) FROM=3080ps TO=3085ps
.measure tran avgval_618 avg i(vdd) FROM=3085ps TO=3090ps
.measure tran avgval_619 avg i(vdd) FROM=3090ps TO=3095ps
.measure tran avgval_620 avg i(vdd) FROM=3095ps TO=3100ps
.measure tran avgval_621 avg i(vdd) FROM=3100ps TO=3105ps
.measure tran avgval_622 avg i(vdd) FROM=3105ps TO=3110ps
.measure tran avgval_623 avg i(vdd) FROM=3110ps TO=3115ps
.measure tran avgval_624 avg i(vdd) FROM=3115ps TO=3120ps
.measure tran avgval_625 avg i(vdd) FROM=3120ps TO=3125ps
.measure tran avgval_626 avg i(vdd) FROM=3125ps TO=3130ps
.measure tran avgval_627 avg i(vdd) FROM=3130ps TO=3135ps
.measure tran avgval_628 avg i(vdd) FROM=3135ps TO=3140ps
.measure tran avgval_629 avg i(vdd) FROM=3140ps TO=3145ps
.measure tran avgval_630 avg i(vdd) FROM=3145ps TO=3150ps
.measure tran avgval_631 avg i(vdd) FROM=3150ps TO=3155ps
.measure tran avgval_632 avg i(vdd) FROM=3155ps TO=3160ps
.measure tran avgval_633 avg i(vdd) FROM=3160ps TO=3165ps
.measure tran avgval_634 avg i(vdd) FROM=3165ps TO=3170ps
.measure tran avgval_635 avg i(vdd) FROM=3170ps TO=3175ps
.measure tran avgval_636 avg i(vdd) FROM=3175ps TO=3180ps
.measure tran avgval_637 avg i(vdd) FROM=3180ps TO=3185ps
.measure tran avgval_638 avg i(vdd) FROM=3185ps TO=3190ps
.measure tran avgval_639 avg i(vdd) FROM=3190ps TO=3195ps
.measure tran avgval_640 avg i(vdd) FROM=3195ps TO=3200ps
.measure tran avgval_641 avg i(vdd) FROM=3200ps TO=3205ps
.measure tran avgval_642 avg i(vdd) FROM=3205ps TO=3210ps
.measure tran avgval_643 avg i(vdd) FROM=3210ps TO=3215ps
.measure tran avgval_644 avg i(vdd) FROM=3215ps TO=3220ps
.measure tran avgval_645 avg i(vdd) FROM=3220ps TO=3225ps
.measure tran avgval_646 avg i(vdd) FROM=3225ps TO=3230ps
.measure tran avgval_647 avg i(vdd) FROM=3230ps TO=3235ps
.measure tran avgval_648 avg i(vdd) FROM=3235ps TO=3240ps
.measure tran avgval_649 avg i(vdd) FROM=3240ps TO=3245ps
.measure tran avgval_650 avg i(vdd) FROM=3245ps TO=3250ps
.measure tran avgval_651 avg i(vdd) FROM=3250ps TO=3255ps
.measure tran avgval_652 avg i(vdd) FROM=3255ps TO=3260ps
.measure tran avgval_653 avg i(vdd) FROM=3260ps TO=3265ps
.measure tran avgval_654 avg i(vdd) FROM=3265ps TO=3270ps
.measure tran avgval_655 avg i(vdd) FROM=3270ps TO=3275ps
.measure tran avgval_656 avg i(vdd) FROM=3275ps TO=3280ps
.measure tran avgval_657 avg i(vdd) FROM=3280ps TO=3285ps
.measure tran avgval_658 avg i(vdd) FROM=3285ps TO=3290ps
.measure tran avgval_659 avg i(vdd) FROM=3290ps TO=3295ps
.measure tran avgval_660 avg i(vdd) FROM=3295ps TO=3300ps
.measure tran avgval_661 avg i(vdd) FROM=3300ps TO=3305ps
.measure tran avgval_662 avg i(vdd) FROM=3305ps TO=3310ps
.measure tran avgval_663 avg i(vdd) FROM=3310ps TO=3315ps
.measure tran avgval_664 avg i(vdd) FROM=3315ps TO=3320ps
.measure tran avgval_665 avg i(vdd) FROM=3320ps TO=3325ps
.measure tran avgval_666 avg i(vdd) FROM=3325ps TO=3330ps
.measure tran avgval_667 avg i(vdd) FROM=3330ps TO=3335ps
.measure tran avgval_668 avg i(vdd) FROM=3335ps TO=3340ps
.measure tran avgval_669 avg i(vdd) FROM=3340ps TO=3345ps
.measure tran avgval_670 avg i(vdd) FROM=3345ps TO=3350ps
.measure tran avgval_671 avg i(vdd) FROM=3350ps TO=3355ps
.measure tran avgval_672 avg i(vdd) FROM=3355ps TO=3360ps
.measure tran avgval_673 avg i(vdd) FROM=3360ps TO=3365ps
.measure tran avgval_674 avg i(vdd) FROM=3365ps TO=3370ps
.measure tran avgval_675 avg i(vdd) FROM=3370ps TO=3375ps
.measure tran avgval_676 avg i(vdd) FROM=3375ps TO=3380ps
.measure tran avgval_677 avg i(vdd) FROM=3380ps TO=3385ps
.measure tran avgval_678 avg i(vdd) FROM=3385ps TO=3390ps
.measure tran avgval_679 avg i(vdd) FROM=3390ps TO=3395ps
.measure tran avgval_680 avg i(vdd) FROM=3395ps TO=3400ps
.measure tran avgval_681 avg i(vdd) FROM=3400ps TO=3405ps
.measure tran avgval_682 avg i(vdd) FROM=3405ps TO=3410ps
.measure tran avgval_683 avg i(vdd) FROM=3410ps TO=3415ps
.measure tran avgval_684 avg i(vdd) FROM=3415ps TO=3420ps
.measure tran avgval_685 avg i(vdd) FROM=3420ps TO=3425ps
.measure tran avgval_686 avg i(vdd) FROM=3425ps TO=3430ps
.measure tran avgval_687 avg i(vdd) FROM=3430ps TO=3435ps
.measure tran avgval_688 avg i(vdd) FROM=3435ps TO=3440ps
.measure tran avgval_689 avg i(vdd) FROM=3440ps TO=3445ps
.measure tran avgval_690 avg i(vdd) FROM=3445ps TO=3450ps
.measure tran avgval_691 avg i(vdd) FROM=3450ps TO=3455ps
.measure tran avgval_692 avg i(vdd) FROM=3455ps TO=3460ps
.measure tran avgval_693 avg i(vdd) FROM=3460ps TO=3465ps
.measure tran avgval_694 avg i(vdd) FROM=3465ps TO=3470ps
.measure tran avgval_695 avg i(vdd) FROM=3470ps TO=3475ps
.measure tran avgval_696 avg i(vdd) FROM=3475ps TO=3480ps
.measure tran avgval_697 avg i(vdd) FROM=3480ps TO=3485ps
.measure tran avgval_698 avg i(vdd) FROM=3485ps TO=3490ps
.measure tran avgval_699 avg i(vdd) FROM=3490ps TO=3495ps
.measure tran avgval_700 avg i(vdd) FROM=3495ps TO=3500ps
.measure tran avgval_701 avg i(vdd) FROM=3500ps TO=3505ps
.measure tran avgval_702 avg i(vdd) FROM=3505ps TO=3510ps
.measure tran avgval_703 avg i(vdd) FROM=3510ps TO=3515ps
.measure tran avgval_704 avg i(vdd) FROM=3515ps TO=3520ps
.measure tran avgval_705 avg i(vdd) FROM=3520ps TO=3525ps
.measure tran avgval_706 avg i(vdd) FROM=3525ps TO=3530ps
.measure tran avgval_707 avg i(vdd) FROM=3530ps TO=3535ps
.measure tran avgval_708 avg i(vdd) FROM=3535ps TO=3540ps
.measure tran avgval_709 avg i(vdd) FROM=3540ps TO=3545ps
.measure tran avgval_710 avg i(vdd) FROM=3545ps TO=3550ps
.measure tran avgval_711 avg i(vdd) FROM=3550ps TO=3555ps
.measure tran avgval_712 avg i(vdd) FROM=3555ps TO=3560ps
.measure tran avgval_713 avg i(vdd) FROM=3560ps TO=3565ps
.measure tran avgval_714 avg i(vdd) FROM=3565ps TO=3570ps
.measure tran avgval_715 avg i(vdd) FROM=3570ps TO=3575ps
.measure tran avgval_716 avg i(vdd) FROM=3575ps TO=3580ps
.measure tran avgval_717 avg i(vdd) FROM=3580ps TO=3585ps
.measure tran avgval_718 avg i(vdd) FROM=3585ps TO=3590ps
.measure tran avgval_719 avg i(vdd) FROM=3590ps TO=3595ps
.measure tran avgval_720 avg i(vdd) FROM=3595ps TO=3600ps
.measure tran avgval_721 avg i(vdd) FROM=3600ps TO=3605ps
.measure tran avgval_722 avg i(vdd) FROM=3605ps TO=3610ps
.measure tran avgval_723 avg i(vdd) FROM=3610ps TO=3615ps
.measure tran avgval_724 avg i(vdd) FROM=3615ps TO=3620ps
.measure tran avgval_725 avg i(vdd) FROM=3620ps TO=3625ps
.measure tran avgval_726 avg i(vdd) FROM=3625ps TO=3630ps
.measure tran avgval_727 avg i(vdd) FROM=3630ps TO=3635ps
.measure tran avgval_728 avg i(vdd) FROM=3635ps TO=3640ps
.measure tran avgval_729 avg i(vdd) FROM=3640ps TO=3645ps
.measure tran avgval_730 avg i(vdd) FROM=3645ps TO=3650ps
.measure tran avgval_731 avg i(vdd) FROM=3650ps TO=3655ps
.measure tran avgval_732 avg i(vdd) FROM=3655ps TO=3660ps
.measure tran avgval_733 avg i(vdd) FROM=3660ps TO=3665ps
.measure tran avgval_734 avg i(vdd) FROM=3665ps TO=3670ps
.measure tran avgval_735 avg i(vdd) FROM=3670ps TO=3675ps
.measure tran avgval_736 avg i(vdd) FROM=3675ps TO=3680ps
.measure tran avgval_737 avg i(vdd) FROM=3680ps TO=3685ps
.measure tran avgval_738 avg i(vdd) FROM=3685ps TO=3690ps
.measure tran avgval_739 avg i(vdd) FROM=3690ps TO=3695ps
.measure tran avgval_740 avg i(vdd) FROM=3695ps TO=3700ps
.measure tran avgval_741 avg i(vdd) FROM=3700ps TO=3705ps
.measure tran avgval_742 avg i(vdd) FROM=3705ps TO=3710ps
.measure tran avgval_743 avg i(vdd) FROM=3710ps TO=3715ps
.measure tran avgval_744 avg i(vdd) FROM=3715ps TO=3720ps
.measure tran avgval_745 avg i(vdd) FROM=3720ps TO=3725ps
.measure tran avgval_746 avg i(vdd) FROM=3725ps TO=3730ps
.measure tran avgval_747 avg i(vdd) FROM=3730ps TO=3735ps
.measure tran avgval_748 avg i(vdd) FROM=3735ps TO=3740ps
.measure tran avgval_749 avg i(vdd) FROM=3740ps TO=3745ps
.measure tran avgval_750 avg i(vdd) FROM=3745ps TO=3750ps
.measure tran avgval_751 avg i(vdd) FROM=3750ps TO=3755ps
.measure tran avgval_752 avg i(vdd) FROM=3755ps TO=3760ps
.measure tran avgval_753 avg i(vdd) FROM=3760ps TO=3765ps
.measure tran avgval_754 avg i(vdd) FROM=3765ps TO=3770ps
.measure tran avgval_755 avg i(vdd) FROM=3770ps TO=3775ps
.measure tran avgval_756 avg i(vdd) FROM=3775ps TO=3780ps
.measure tran avgval_757 avg i(vdd) FROM=3780ps TO=3785ps
.measure tran avgval_758 avg i(vdd) FROM=3785ps TO=3790ps
.measure tran avgval_759 avg i(vdd) FROM=3790ps TO=3795ps
.measure tran avgval_760 avg i(vdd) FROM=3795ps TO=3800ps
.measure tran avgval_761 avg i(vdd) FROM=3800ps TO=3805ps
.measure tran avgval_762 avg i(vdd) FROM=3805ps TO=3810ps
.measure tran avgval_763 avg i(vdd) FROM=3810ps TO=3815ps
.measure tran avgval_764 avg i(vdd) FROM=3815ps TO=3820ps
.measure tran avgval_765 avg i(vdd) FROM=3820ps TO=3825ps
.measure tran avgval_766 avg i(vdd) FROM=3825ps TO=3830ps
.measure tran avgval_767 avg i(vdd) FROM=3830ps TO=3835ps
.measure tran avgval_768 avg i(vdd) FROM=3835ps TO=3840ps
.measure tran avgval_769 avg i(vdd) FROM=3840ps TO=3845ps
.measure tran avgval_770 avg i(vdd) FROM=3845ps TO=3850ps
.measure tran avgval_771 avg i(vdd) FROM=3850ps TO=3855ps
.measure tran avgval_772 avg i(vdd) FROM=3855ps TO=3860ps
.measure tran avgval_773 avg i(vdd) FROM=3860ps TO=3865ps
.measure tran avgval_774 avg i(vdd) FROM=3865ps TO=3870ps
.measure tran avgval_775 avg i(vdd) FROM=3870ps TO=3875ps
.measure tran avgval_776 avg i(vdd) FROM=3875ps TO=3880ps
.measure tran avgval_777 avg i(vdd) FROM=3880ps TO=3885ps
.measure tran avgval_778 avg i(vdd) FROM=3885ps TO=3890ps
.measure tran avgval_779 avg i(vdd) FROM=3890ps TO=3895ps
.measure tran avgval_780 avg i(vdd) FROM=3895ps TO=3900ps
.measure tran avgval_781 avg i(vdd) FROM=3900ps TO=3905ps
.measure tran avgval_782 avg i(vdd) FROM=3905ps TO=3910ps
.measure tran avgval_783 avg i(vdd) FROM=3910ps TO=3915ps
.measure tran avgval_784 avg i(vdd) FROM=3915ps TO=3920ps
.measure tran avgval_785 avg i(vdd) FROM=3920ps TO=3925ps
.measure tran avgval_786 avg i(vdd) FROM=3925ps TO=3930ps
.measure tran avgval_787 avg i(vdd) FROM=3930ps TO=3935ps
.measure tran avgval_788 avg i(vdd) FROM=3935ps TO=3940ps
.measure tran avgval_789 avg i(vdd) FROM=3940ps TO=3945ps
.measure tran avgval_790 avg i(vdd) FROM=3945ps TO=3950ps
.measure tran avgval_791 avg i(vdd) FROM=3950ps TO=3955ps
.measure tran avgval_792 avg i(vdd) FROM=3955ps TO=3960ps
.measure tran avgval_793 avg i(vdd) FROM=3960ps TO=3965ps
.measure tran avgval_794 avg i(vdd) FROM=3965ps TO=3970ps
.measure tran avgval_795 avg i(vdd) FROM=3970ps TO=3975ps
.measure tran avgval_796 avg i(vdd) FROM=3975ps TO=3980ps
.measure tran avgval_797 avg i(vdd) FROM=3980ps TO=3985ps
.measure tran avgval_798 avg i(vdd) FROM=3985ps TO=3990ps
.measure tran avgval_799 avg i(vdd) FROM=3990ps TO=3995ps
.measure tran avgval_800 avg i(vdd) FROM=3995ps TO=4000ps
.measure tran avgval_801 avg i(vdd) FROM=4000ps TO=4005ps
.measure tran avgval_802 avg i(vdd) FROM=4005ps TO=4010ps
.measure tran avgval_803 avg i(vdd) FROM=4010ps TO=4015ps
.measure tran avgval_804 avg i(vdd) FROM=4015ps TO=4020ps
.measure tran avgval_805 avg i(vdd) FROM=4020ps TO=4025ps
.measure tran avgval_806 avg i(vdd) FROM=4025ps TO=4030ps
.measure tran avgval_807 avg i(vdd) FROM=4030ps TO=4035ps
.measure tran avgval_808 avg i(vdd) FROM=4035ps TO=4040ps
.measure tran avgval_809 avg i(vdd) FROM=4040ps TO=4045ps
.measure tran avgval_810 avg i(vdd) FROM=4045ps TO=4050ps
.measure tran avgval_811 avg i(vdd) FROM=4050ps TO=4055ps
.measure tran avgval_812 avg i(vdd) FROM=4055ps TO=4060ps
.measure tran avgval_813 avg i(vdd) FROM=4060ps TO=4065ps
.measure tran avgval_814 avg i(vdd) FROM=4065ps TO=4070ps
.measure tran avgval_815 avg i(vdd) FROM=4070ps TO=4075ps
.measure tran avgval_816 avg i(vdd) FROM=4075ps TO=4080ps
.measure tran avgval_817 avg i(vdd) FROM=4080ps TO=4085ps
.measure tran avgval_818 avg i(vdd) FROM=4085ps TO=4090ps
.measure tran avgval_819 avg i(vdd) FROM=4090ps TO=4095ps
.measure tran avgval_820 avg i(vdd) FROM=4095ps TO=4100ps
.measure tran avgval_821 avg i(vdd) FROM=4100ps TO=4105ps
.measure tran avgval_822 avg i(vdd) FROM=4105ps TO=4110ps
.measure tran avgval_823 avg i(vdd) FROM=4110ps TO=4115ps
.measure tran avgval_824 avg i(vdd) FROM=4115ps TO=4120ps
.measure tran avgval_825 avg i(vdd) FROM=4120ps TO=4125ps
.measure tran avgval_826 avg i(vdd) FROM=4125ps TO=4130ps
.measure tran avgval_827 avg i(vdd) FROM=4130ps TO=4135ps
.measure tran avgval_828 avg i(vdd) FROM=4135ps TO=4140ps
.measure tran avgval_829 avg i(vdd) FROM=4140ps TO=4145ps
.measure tran avgval_830 avg i(vdd) FROM=4145ps TO=4150ps
.measure tran avgval_831 avg i(vdd) FROM=4150ps TO=4155ps
.measure tran avgval_832 avg i(vdd) FROM=4155ps TO=4160ps
.measure tran avgval_833 avg i(vdd) FROM=4160ps TO=4165ps
.measure tran avgval_834 avg i(vdd) FROM=4165ps TO=4170ps
.measure tran avgval_835 avg i(vdd) FROM=4170ps TO=4175ps
.measure tran avgval_836 avg i(vdd) FROM=4175ps TO=4180ps
.measure tran avgval_837 avg i(vdd) FROM=4180ps TO=4185ps
.measure tran avgval_838 avg i(vdd) FROM=4185ps TO=4190ps
.measure tran avgval_839 avg i(vdd) FROM=4190ps TO=4195ps
.measure tran avgval_840 avg i(vdd) FROM=4195ps TO=4200ps
.measure tran avgval_841 avg i(vdd) FROM=4200ps TO=4205ps
.measure tran avgval_842 avg i(vdd) FROM=4205ps TO=4210ps
.measure tran avgval_843 avg i(vdd) FROM=4210ps TO=4215ps
.measure tran avgval_844 avg i(vdd) FROM=4215ps TO=4220ps
.measure tran avgval_845 avg i(vdd) FROM=4220ps TO=4225ps
.measure tran avgval_846 avg i(vdd) FROM=4225ps TO=4230ps
.measure tran avgval_847 avg i(vdd) FROM=4230ps TO=4235ps
.measure tran avgval_848 avg i(vdd) FROM=4235ps TO=4240ps
.measure tran avgval_849 avg i(vdd) FROM=4240ps TO=4245ps
.measure tran avgval_850 avg i(vdd) FROM=4245ps TO=4250ps
.measure tran avgval_851 avg i(vdd) FROM=4250ps TO=4255ps
.measure tran avgval_852 avg i(vdd) FROM=4255ps TO=4260ps
.measure tran avgval_853 avg i(vdd) FROM=4260ps TO=4265ps
.measure tran avgval_854 avg i(vdd) FROM=4265ps TO=4270ps
.measure tran avgval_855 avg i(vdd) FROM=4270ps TO=4275ps
.measure tran avgval_856 avg i(vdd) FROM=4275ps TO=4280ps
.measure tran avgval_857 avg i(vdd) FROM=4280ps TO=4285ps
.measure tran avgval_858 avg i(vdd) FROM=4285ps TO=4290ps
.measure tran avgval_859 avg i(vdd) FROM=4290ps TO=4295ps
.measure tran avgval_860 avg i(vdd) FROM=4295ps TO=4300ps
.measure tran avgval_861 avg i(vdd) FROM=4300ps TO=4305ps
.measure tran avgval_862 avg i(vdd) FROM=4305ps TO=4310ps
.measure tran avgval_863 avg i(vdd) FROM=4310ps TO=4315ps
.measure tran avgval_864 avg i(vdd) FROM=4315ps TO=4320ps
.measure tran avgval_865 avg i(vdd) FROM=4320ps TO=4325ps
.measure tran avgval_866 avg i(vdd) FROM=4325ps TO=4330ps
.measure tran avgval_867 avg i(vdd) FROM=4330ps TO=4335ps
.measure tran avgval_868 avg i(vdd) FROM=4335ps TO=4340ps
.measure tran avgval_869 avg i(vdd) FROM=4340ps TO=4345ps
.measure tran avgval_870 avg i(vdd) FROM=4345ps TO=4350ps
.measure tran avgval_871 avg i(vdd) FROM=4350ps TO=4355ps
.measure tran avgval_872 avg i(vdd) FROM=4355ps TO=4360ps
.measure tran avgval_873 avg i(vdd) FROM=4360ps TO=4365ps
.measure tran avgval_874 avg i(vdd) FROM=4365ps TO=4370ps
.measure tran avgval_875 avg i(vdd) FROM=4370ps TO=4375ps
.measure tran avgval_876 avg i(vdd) FROM=4375ps TO=4380ps
.measure tran avgval_877 avg i(vdd) FROM=4380ps TO=4385ps
.measure tran avgval_878 avg i(vdd) FROM=4385ps TO=4390ps
.measure tran avgval_879 avg i(vdd) FROM=4390ps TO=4395ps
.measure tran avgval_880 avg i(vdd) FROM=4395ps TO=4400ps
.measure tran avgval_881 avg i(vdd) FROM=4400ps TO=4405ps
.measure tran avgval_882 avg i(vdd) FROM=4405ps TO=4410ps
.measure tran avgval_883 avg i(vdd) FROM=4410ps TO=4415ps
.measure tran avgval_884 avg i(vdd) FROM=4415ps TO=4420ps
.measure tran avgval_885 avg i(vdd) FROM=4420ps TO=4425ps
.measure tran avgval_886 avg i(vdd) FROM=4425ps TO=4430ps
.measure tran avgval_887 avg i(vdd) FROM=4430ps TO=4435ps
.measure tran avgval_888 avg i(vdd) FROM=4435ps TO=4440ps
.measure tran avgval_889 avg i(vdd) FROM=4440ps TO=4445ps
.measure tran avgval_890 avg i(vdd) FROM=4445ps TO=4450ps
.measure tran avgval_891 avg i(vdd) FROM=4450ps TO=4455ps
.measure tran avgval_892 avg i(vdd) FROM=4455ps TO=4460ps
.measure tran avgval_893 avg i(vdd) FROM=4460ps TO=4465ps
.measure tran avgval_894 avg i(vdd) FROM=4465ps TO=4470ps
.measure tran avgval_895 avg i(vdd) FROM=4470ps TO=4475ps
.measure tran avgval_896 avg i(vdd) FROM=4475ps TO=4480ps
.measure tran avgval_897 avg i(vdd) FROM=4480ps TO=4485ps
.measure tran avgval_898 avg i(vdd) FROM=4485ps TO=4490ps
.measure tran avgval_899 avg i(vdd) FROM=4490ps TO=4495ps
.measure tran avgval_900 avg i(vdd) FROM=4495ps TO=4500ps
.measure tran avgval_901 avg i(vdd) FROM=4500ps TO=4505ps
.measure tran avgval_902 avg i(vdd) FROM=4505ps TO=4510ps
.measure tran avgval_903 avg i(vdd) FROM=4510ps TO=4515ps
.measure tran avgval_904 avg i(vdd) FROM=4515ps TO=4520ps
.measure tran avgval_905 avg i(vdd) FROM=4520ps TO=4525ps
.measure tran avgval_906 avg i(vdd) FROM=4525ps TO=4530ps
.measure tran avgval_907 avg i(vdd) FROM=4530ps TO=4535ps
.measure tran avgval_908 avg i(vdd) FROM=4535ps TO=4540ps
.measure tran avgval_909 avg i(vdd) FROM=4540ps TO=4545ps
.measure tran avgval_910 avg i(vdd) FROM=4545ps TO=4550ps
.measure tran avgval_911 avg i(vdd) FROM=4550ps TO=4555ps
.measure tran avgval_912 avg i(vdd) FROM=4555ps TO=4560ps
.measure tran avgval_913 avg i(vdd) FROM=4560ps TO=4565ps
.measure tran avgval_914 avg i(vdd) FROM=4565ps TO=4570ps
.measure tran avgval_915 avg i(vdd) FROM=4570ps TO=4575ps
.measure tran avgval_916 avg i(vdd) FROM=4575ps TO=4580ps
.measure tran avgval_917 avg i(vdd) FROM=4580ps TO=4585ps
.measure tran avgval_918 avg i(vdd) FROM=4585ps TO=4590ps
.measure tran avgval_919 avg i(vdd) FROM=4590ps TO=4595ps
.measure tran avgval_920 avg i(vdd) FROM=4595ps TO=4600ps
.measure tran avgval_921 avg i(vdd) FROM=4600ps TO=4605ps
.measure tran avgval_922 avg i(vdd) FROM=4605ps TO=4610ps
.measure tran avgval_923 avg i(vdd) FROM=4610ps TO=4615ps
.measure tran avgval_924 avg i(vdd) FROM=4615ps TO=4620ps
.measure tran avgval_925 avg i(vdd) FROM=4620ps TO=4625ps
.measure tran avgval_926 avg i(vdd) FROM=4625ps TO=4630ps
.measure tran avgval_927 avg i(vdd) FROM=4630ps TO=4635ps
.measure tran avgval_928 avg i(vdd) FROM=4635ps TO=4640ps
.measure tran avgval_929 avg i(vdd) FROM=4640ps TO=4645ps
.measure tran avgval_930 avg i(vdd) FROM=4645ps TO=4650ps
.measure tran avgval_931 avg i(vdd) FROM=4650ps TO=4655ps
.measure tran avgval_932 avg i(vdd) FROM=4655ps TO=4660ps
.measure tran avgval_933 avg i(vdd) FROM=4660ps TO=4665ps
.measure tran avgval_934 avg i(vdd) FROM=4665ps TO=4670ps
.measure tran avgval_935 avg i(vdd) FROM=4670ps TO=4675ps
.measure tran avgval_936 avg i(vdd) FROM=4675ps TO=4680ps
.measure tran avgval_937 avg i(vdd) FROM=4680ps TO=4685ps
.measure tran avgval_938 avg i(vdd) FROM=4685ps TO=4690ps
.measure tran avgval_939 avg i(vdd) FROM=4690ps TO=4695ps
.measure tran avgval_940 avg i(vdd) FROM=4695ps TO=4700ps
.measure tran avgval_941 avg i(vdd) FROM=4700ps TO=4705ps
.measure tran avgval_942 avg i(vdd) FROM=4705ps TO=4710ps
.measure tran avgval_943 avg i(vdd) FROM=4710ps TO=4715ps
.measure tran avgval_944 avg i(vdd) FROM=4715ps TO=4720ps
.measure tran avgval_945 avg i(vdd) FROM=4720ps TO=4725ps
.measure tran avgval_946 avg i(vdd) FROM=4725ps TO=4730ps
.measure tran avgval_947 avg i(vdd) FROM=4730ps TO=4735ps
.measure tran avgval_948 avg i(vdd) FROM=4735ps TO=4740ps
.measure tran avgval_949 avg i(vdd) FROM=4740ps TO=4745ps
.measure tran avgval_950 avg i(vdd) FROM=4745ps TO=4750ps
.measure tran avgval_951 avg i(vdd) FROM=4750ps TO=4755ps
.measure tran avgval_952 avg i(vdd) FROM=4755ps TO=4760ps
.measure tran avgval_953 avg i(vdd) FROM=4760ps TO=4765ps
.measure tran avgval_954 avg i(vdd) FROM=4765ps TO=4770ps
.measure tran avgval_955 avg i(vdd) FROM=4770ps TO=4775ps
.measure tran avgval_956 avg i(vdd) FROM=4775ps TO=4780ps
.measure tran avgval_957 avg i(vdd) FROM=4780ps TO=4785ps
.measure tran avgval_958 avg i(vdd) FROM=4785ps TO=4790ps
.measure tran avgval_959 avg i(vdd) FROM=4790ps TO=4795ps
.measure tran avgval_960 avg i(vdd) FROM=4795ps TO=4800ps
.measure tran avgval_961 avg i(vdd) FROM=4800ps TO=4805ps
.measure tran avgval_962 avg i(vdd) FROM=4805ps TO=4810ps
.measure tran avgval_963 avg i(vdd) FROM=4810ps TO=4815ps
.measure tran avgval_964 avg i(vdd) FROM=4815ps TO=4820ps
.measure tran avgval_965 avg i(vdd) FROM=4820ps TO=4825ps
.measure tran avgval_966 avg i(vdd) FROM=4825ps TO=4830ps
.measure tran avgval_967 avg i(vdd) FROM=4830ps TO=4835ps
.measure tran avgval_968 avg i(vdd) FROM=4835ps TO=4840ps
.measure tran avgval_969 avg i(vdd) FROM=4840ps TO=4845ps
.measure tran avgval_970 avg i(vdd) FROM=4845ps TO=4850ps
.measure tran avgval_971 avg i(vdd) FROM=4850ps TO=4855ps
.measure tran avgval_972 avg i(vdd) FROM=4855ps TO=4860ps
.measure tran avgval_973 avg i(vdd) FROM=4860ps TO=4865ps
.measure tran avgval_974 avg i(vdd) FROM=4865ps TO=4870ps
.measure tran avgval_975 avg i(vdd) FROM=4870ps TO=4875ps
.measure tran avgval_976 avg i(vdd) FROM=4875ps TO=4880ps
.measure tran avgval_977 avg i(vdd) FROM=4880ps TO=4885ps
.measure tran avgval_978 avg i(vdd) FROM=4885ps TO=4890ps
.measure tran avgval_979 avg i(vdd) FROM=4890ps TO=4895ps
.measure tran avgval_980 avg i(vdd) FROM=4895ps TO=4900ps
.measure tran avgval_981 avg i(vdd) FROM=4900ps TO=4905ps
.measure tran avgval_982 avg i(vdd) FROM=4905ps TO=4910ps
.measure tran avgval_983 avg i(vdd) FROM=4910ps TO=4915ps
.measure tran avgval_984 avg i(vdd) FROM=4915ps TO=4920ps
.measure tran avgval_985 avg i(vdd) FROM=4920ps TO=4925ps
.measure tran avgval_986 avg i(vdd) FROM=4925ps TO=4930ps
.measure tran avgval_987 avg i(vdd) FROM=4930ps TO=4935ps
.measure tran avgval_988 avg i(vdd) FROM=4935ps TO=4940ps
.measure tran avgval_989 avg i(vdd) FROM=4940ps TO=4945ps
.measure tran avgval_990 avg i(vdd) FROM=4945ps TO=4950ps
.measure tran avgval_991 avg i(vdd) FROM=4950ps TO=4955ps
.measure tran avgval_992 avg i(vdd) FROM=4955ps TO=4960ps
.measure tran avgval_993 avg i(vdd) FROM=4960ps TO=4965ps
.measure tran avgval_994 avg i(vdd) FROM=4965ps TO=4970ps
.measure tran avgval_995 avg i(vdd) FROM=4970ps TO=4975ps
.measure tran avgval_996 avg i(vdd) FROM=4975ps TO=4980ps
.measure tran avgval_997 avg i(vdd) FROM=4980ps TO=4985ps
.measure tran avgval_998 avg i(vdd) FROM=4985ps TO=4990ps
.measure tran avgval_999 avg i(vdd) FROM=4990ps TO=4995ps
.measure tran avgval_1000 avg i(vdd) FROM=4995ps TO=5000ps
.measure tran avgval_1001 avg i(vdd) FROM=5000ps TO=5005ps
.measure tran avgval_1002 avg i(vdd) FROM=5005ps TO=5010ps
.measure tran avgval_1003 avg i(vdd) FROM=5010ps TO=5015ps
.measure tran avgval_1004 avg i(vdd) FROM=5015ps TO=5020ps
.measure tran avgval_1005 avg i(vdd) FROM=5020ps TO=5025ps
.measure tran avgval_1006 avg i(vdd) FROM=5025ps TO=5030ps
.measure tran avgval_1007 avg i(vdd) FROM=5030ps TO=5035ps
.measure tran avgval_1008 avg i(vdd) FROM=5035ps TO=5040ps
.measure tran avgval_1009 avg i(vdd) FROM=5040ps TO=5045ps
.measure tran avgval_1010 avg i(vdd) FROM=5045ps TO=5050ps
.measure tran avgval_1011 avg i(vdd) FROM=5050ps TO=5055ps
.measure tran avgval_1012 avg i(vdd) FROM=5055ps TO=5060ps
.measure tran avgval_1013 avg i(vdd) FROM=5060ps TO=5065ps
.measure tran avgval_1014 avg i(vdd) FROM=5065ps TO=5070ps
.measure tran avgval_1015 avg i(vdd) FROM=5070ps TO=5075ps
.measure tran avgval_1016 avg i(vdd) FROM=5075ps TO=5080ps
.measure tran avgval_1017 avg i(vdd) FROM=5080ps TO=5085ps
.measure tran avgval_1018 avg i(vdd) FROM=5085ps TO=5090ps
.measure tran avgval_1019 avg i(vdd) FROM=5090ps TO=5095ps
.measure tran avgval_1020 avg i(vdd) FROM=5095ps TO=5100ps
.measure tran avgval_1021 avg i(vdd) FROM=5100ps TO=5105ps
.measure tran avgval_1022 avg i(vdd) FROM=5105ps TO=5110ps
.measure tran avgval_1023 avg i(vdd) FROM=5110ps TO=5115ps
.measure tran avgval_1024 avg i(vdd) FROM=5115ps TO=5120ps
.measure tran avgval_1025 avg i(vdd) FROM=5120ps TO=5125ps
.measure tran avgval_1026 avg i(vdd) FROM=5125ps TO=5130ps
.measure tran avgval_1027 avg i(vdd) FROM=5130ps TO=5135ps
.measure tran avgval_1028 avg i(vdd) FROM=5135ps TO=5140ps
.measure tran avgval_1029 avg i(vdd) FROM=5140ps TO=5145ps
.measure tran avgval_1030 avg i(vdd) FROM=5145ps TO=5150ps
.measure tran avgval_1031 avg i(vdd) FROM=5150ps TO=5155ps
.measure tran avgval_1032 avg i(vdd) FROM=5155ps TO=5160ps
.measure tran avgval_1033 avg i(vdd) FROM=5160ps TO=5165ps
.measure tran avgval_1034 avg i(vdd) FROM=5165ps TO=5170ps
.measure tran avgval_1035 avg i(vdd) FROM=5170ps TO=5175ps
.measure tran avgval_1036 avg i(vdd) FROM=5175ps TO=5180ps
.measure tran avgval_1037 avg i(vdd) FROM=5180ps TO=5185ps
.measure tran avgval_1038 avg i(vdd) FROM=5185ps TO=5190ps
.measure tran avgval_1039 avg i(vdd) FROM=5190ps TO=5195ps
.measure tran avgval_1040 avg i(vdd) FROM=5195ps TO=5200ps
.measure tran avgval_1041 avg i(vdd) FROM=5200ps TO=5205ps
.measure tran avgval_1042 avg i(vdd) FROM=5205ps TO=5210ps
.measure tran avgval_1043 avg i(vdd) FROM=5210ps TO=5215ps
.measure tran avgval_1044 avg i(vdd) FROM=5215ps TO=5220ps
.measure tran avgval_1045 avg i(vdd) FROM=5220ps TO=5225ps
.measure tran avgval_1046 avg i(vdd) FROM=5225ps TO=5230ps
.measure tran avgval_1047 avg i(vdd) FROM=5230ps TO=5235ps
.measure tran avgval_1048 avg i(vdd) FROM=5235ps TO=5240ps
.measure tran avgval_1049 avg i(vdd) FROM=5240ps TO=5245ps
.measure tran avgval_1050 avg i(vdd) FROM=5245ps TO=5250ps
.measure tran avgval_1051 avg i(vdd) FROM=5250ps TO=5255ps
.measure tran avgval_1052 avg i(vdd) FROM=5255ps TO=5260ps
.measure tran avgval_1053 avg i(vdd) FROM=5260ps TO=5265ps
.measure tran avgval_1054 avg i(vdd) FROM=5265ps TO=5270ps
.measure tran avgval_1055 avg i(vdd) FROM=5270ps TO=5275ps
.measure tran avgval_1056 avg i(vdd) FROM=5275ps TO=5280ps
.measure tran avgval_1057 avg i(vdd) FROM=5280ps TO=5285ps
.measure tran avgval_1058 avg i(vdd) FROM=5285ps TO=5290ps
.measure tran avgval_1059 avg i(vdd) FROM=5290ps TO=5295ps
.measure tran avgval_1060 avg i(vdd) FROM=5295ps TO=5300ps
.measure tran avgval_1061 avg i(vdd) FROM=5300ps TO=5305ps
.measure tran avgval_1062 avg i(vdd) FROM=5305ps TO=5310ps
.measure tran avgval_1063 avg i(vdd) FROM=5310ps TO=5315ps
.measure tran avgval_1064 avg i(vdd) FROM=5315ps TO=5320ps
.measure tran avgval_1065 avg i(vdd) FROM=5320ps TO=5325ps
.measure tran avgval_1066 avg i(vdd) FROM=5325ps TO=5330ps
.measure tran avgval_1067 avg i(vdd) FROM=5330ps TO=5335ps
.measure tran avgval_1068 avg i(vdd) FROM=5335ps TO=5340ps
.measure tran avgval_1069 avg i(vdd) FROM=5340ps TO=5345ps
.measure tran avgval_1070 avg i(vdd) FROM=5345ps TO=5350ps
.measure tran avgval_1071 avg i(vdd) FROM=5350ps TO=5355ps
.measure tran avgval_1072 avg i(vdd) FROM=5355ps TO=5360ps
.measure tran avgval_1073 avg i(vdd) FROM=5360ps TO=5365ps
.measure tran avgval_1074 avg i(vdd) FROM=5365ps TO=5370ps
.measure tran avgval_1075 avg i(vdd) FROM=5370ps TO=5375ps
.measure tran avgval_1076 avg i(vdd) FROM=5375ps TO=5380ps
.measure tran avgval_1077 avg i(vdd) FROM=5380ps TO=5385ps
.measure tran avgval_1078 avg i(vdd) FROM=5385ps TO=5390ps
.measure tran avgval_1079 avg i(vdd) FROM=5390ps TO=5395ps
.measure tran avgval_1080 avg i(vdd) FROM=5395ps TO=5400ps
.measure tran avgval_1081 avg i(vdd) FROM=5400ps TO=5405ps
.measure tran avgval_1082 avg i(vdd) FROM=5405ps TO=5410ps
.measure tran avgval_1083 avg i(vdd) FROM=5410ps TO=5415ps
.measure tran avgval_1084 avg i(vdd) FROM=5415ps TO=5420ps
.measure tran avgval_1085 avg i(vdd) FROM=5420ps TO=5425ps
.measure tran avgval_1086 avg i(vdd) FROM=5425ps TO=5430ps
.measure tran avgval_1087 avg i(vdd) FROM=5430ps TO=5435ps
.measure tran avgval_1088 avg i(vdd) FROM=5435ps TO=5440ps
.measure tran avgval_1089 avg i(vdd) FROM=5440ps TO=5445ps
.measure tran avgval_1090 avg i(vdd) FROM=5445ps TO=5450ps
.measure tran avgval_1091 avg i(vdd) FROM=5450ps TO=5455ps
.measure tran avgval_1092 avg i(vdd) FROM=5455ps TO=5460ps
.measure tran avgval_1093 avg i(vdd) FROM=5460ps TO=5465ps
.measure tran avgval_1094 avg i(vdd) FROM=5465ps TO=5470ps
.measure tran avgval_1095 avg i(vdd) FROM=5470ps TO=5475ps
.measure tran avgval_1096 avg i(vdd) FROM=5475ps TO=5480ps
.measure tran avgval_1097 avg i(vdd) FROM=5480ps TO=5485ps
.measure tran avgval_1098 avg i(vdd) FROM=5485ps TO=5490ps
.measure tran avgval_1099 avg i(vdd) FROM=5490ps TO=5495ps
.measure tran avgval_1100 avg i(vdd) FROM=5495ps TO=5500ps
.measure tran avgval_1101 avg i(vdd) FROM=5500ps TO=5505ps
.measure tran avgval_1102 avg i(vdd) FROM=5505ps TO=5510ps
.measure tran avgval_1103 avg i(vdd) FROM=5510ps TO=5515ps
.measure tran avgval_1104 avg i(vdd) FROM=5515ps TO=5520ps
.measure tran avgval_1105 avg i(vdd) FROM=5520ps TO=5525ps
.measure tran avgval_1106 avg i(vdd) FROM=5525ps TO=5530ps
.measure tran avgval_1107 avg i(vdd) FROM=5530ps TO=5535ps
.measure tran avgval_1108 avg i(vdd) FROM=5535ps TO=5540ps
.measure tran avgval_1109 avg i(vdd) FROM=5540ps TO=5545ps
.measure tran avgval_1110 avg i(vdd) FROM=5545ps TO=5550ps
.measure tran avgval_1111 avg i(vdd) FROM=5550ps TO=5555ps
.measure tran avgval_1112 avg i(vdd) FROM=5555ps TO=5560ps
.measure tran avgval_1113 avg i(vdd) FROM=5560ps TO=5565ps
.measure tran avgval_1114 avg i(vdd) FROM=5565ps TO=5570ps
.measure tran avgval_1115 avg i(vdd) FROM=5570ps TO=5575ps
.measure tran avgval_1116 avg i(vdd) FROM=5575ps TO=5580ps
.measure tran avgval_1117 avg i(vdd) FROM=5580ps TO=5585ps
.measure tran avgval_1118 avg i(vdd) FROM=5585ps TO=5590ps
.measure tran avgval_1119 avg i(vdd) FROM=5590ps TO=5595ps
.measure tran avgval_1120 avg i(vdd) FROM=5595ps TO=5600ps
.measure tran avgval_1121 avg i(vdd) FROM=5600ps TO=5605ps
.measure tran avgval_1122 avg i(vdd) FROM=5605ps TO=5610ps
.measure tran avgval_1123 avg i(vdd) FROM=5610ps TO=5615ps
.measure tran avgval_1124 avg i(vdd) FROM=5615ps TO=5620ps
.measure tran avgval_1125 avg i(vdd) FROM=5620ps TO=5625ps
.measure tran avgval_1126 avg i(vdd) FROM=5625ps TO=5630ps
.measure tran avgval_1127 avg i(vdd) FROM=5630ps TO=5635ps
.measure tran avgval_1128 avg i(vdd) FROM=5635ps TO=5640ps
.measure tran avgval_1129 avg i(vdd) FROM=5640ps TO=5645ps
.measure tran avgval_1130 avg i(vdd) FROM=5645ps TO=5650ps
.measure tran avgval_1131 avg i(vdd) FROM=5650ps TO=5655ps
.measure tran avgval_1132 avg i(vdd) FROM=5655ps TO=5660ps
.measure tran avgval_1133 avg i(vdd) FROM=5660ps TO=5665ps
.measure tran avgval_1134 avg i(vdd) FROM=5665ps TO=5670ps
.measure tran avgval_1135 avg i(vdd) FROM=5670ps TO=5675ps
.measure tran avgval_1136 avg i(vdd) FROM=5675ps TO=5680ps
.measure tran avgval_1137 avg i(vdd) FROM=5680ps TO=5685ps
.measure tran avgval_1138 avg i(vdd) FROM=5685ps TO=5690ps
.measure tran avgval_1139 avg i(vdd) FROM=5690ps TO=5695ps
.measure tran avgval_1140 avg i(vdd) FROM=5695ps TO=5700ps
.measure tran avgval_1141 avg i(vdd) FROM=5700ps TO=5705ps
.measure tran avgval_1142 avg i(vdd) FROM=5705ps TO=5710ps
.measure tran avgval_1143 avg i(vdd) FROM=5710ps TO=5715ps
.measure tran avgval_1144 avg i(vdd) FROM=5715ps TO=5720ps
.measure tran avgval_1145 avg i(vdd) FROM=5720ps TO=5725ps
.measure tran avgval_1146 avg i(vdd) FROM=5725ps TO=5730ps
.measure tran avgval_1147 avg i(vdd) FROM=5730ps TO=5735ps
.measure tran avgval_1148 avg i(vdd) FROM=5735ps TO=5740ps
.measure tran avgval_1149 avg i(vdd) FROM=5740ps TO=5745ps
.measure tran avgval_1150 avg i(vdd) FROM=5745ps TO=5750ps
.measure tran avgval_1151 avg i(vdd) FROM=5750ps TO=5755ps
.measure tran avgval_1152 avg i(vdd) FROM=5755ps TO=5760ps
.measure tran avgval_1153 avg i(vdd) FROM=5760ps TO=5765ps
.measure tran avgval_1154 avg i(vdd) FROM=5765ps TO=5770ps
.measure tran avgval_1155 avg i(vdd) FROM=5770ps TO=5775ps
.measure tran avgval_1156 avg i(vdd) FROM=5775ps TO=5780ps
.measure tran avgval_1157 avg i(vdd) FROM=5780ps TO=5785ps
.measure tran avgval_1158 avg i(vdd) FROM=5785ps TO=5790ps
.measure tran avgval_1159 avg i(vdd) FROM=5790ps TO=5795ps
.measure tran avgval_1160 avg i(vdd) FROM=5795ps TO=5800ps
.measure tran avgval_1161 avg i(vdd) FROM=5800ps TO=5805ps
.measure tran avgval_1162 avg i(vdd) FROM=5805ps TO=5810ps
.measure tran avgval_1163 avg i(vdd) FROM=5810ps TO=5815ps
.measure tran avgval_1164 avg i(vdd) FROM=5815ps TO=5820ps
.measure tran avgval_1165 avg i(vdd) FROM=5820ps TO=5825ps
.measure tran avgval_1166 avg i(vdd) FROM=5825ps TO=5830ps
.measure tran avgval_1167 avg i(vdd) FROM=5830ps TO=5835ps
.measure tran avgval_1168 avg i(vdd) FROM=5835ps TO=5840ps
.measure tran avgval_1169 avg i(vdd) FROM=5840ps TO=5845ps
.measure tran avgval_1170 avg i(vdd) FROM=5845ps TO=5850ps
.measure tran avgval_1171 avg i(vdd) FROM=5850ps TO=5855ps
.measure tran avgval_1172 avg i(vdd) FROM=5855ps TO=5860ps
.measure tran avgval_1173 avg i(vdd) FROM=5860ps TO=5865ps
.measure tran avgval_1174 avg i(vdd) FROM=5865ps TO=5870ps
.measure tran avgval_1175 avg i(vdd) FROM=5870ps TO=5875ps
.measure tran avgval_1176 avg i(vdd) FROM=5875ps TO=5880ps
.measure tran avgval_1177 avg i(vdd) FROM=5880ps TO=5885ps
.measure tran avgval_1178 avg i(vdd) FROM=5885ps TO=5890ps
.measure tran avgval_1179 avg i(vdd) FROM=5890ps TO=5895ps
.measure tran avgval_1180 avg i(vdd) FROM=5895ps TO=5900ps
.measure tran avgval_1181 avg i(vdd) FROM=5900ps TO=5905ps
.measure tran avgval_1182 avg i(vdd) FROM=5905ps TO=5910ps
.measure tran avgval_1183 avg i(vdd) FROM=5910ps TO=5915ps
.measure tran avgval_1184 avg i(vdd) FROM=5915ps TO=5920ps
.measure tran avgval_1185 avg i(vdd) FROM=5920ps TO=5925ps
.measure tran avgval_1186 avg i(vdd) FROM=5925ps TO=5930ps
.measure tran avgval_1187 avg i(vdd) FROM=5930ps TO=5935ps
.measure tran avgval_1188 avg i(vdd) FROM=5935ps TO=5940ps
.measure tran avgval_1189 avg i(vdd) FROM=5940ps TO=5945ps
.measure tran avgval_1190 avg i(vdd) FROM=5945ps TO=5950ps
.measure tran avgval_1191 avg i(vdd) FROM=5950ps TO=5955ps
.measure tran avgval_1192 avg i(vdd) FROM=5955ps TO=5960ps
.measure tran avgval_1193 avg i(vdd) FROM=5960ps TO=5965ps
.measure tran avgval_1194 avg i(vdd) FROM=5965ps TO=5970ps
.measure tran avgval_1195 avg i(vdd) FROM=5970ps TO=5975ps
.measure tran avgval_1196 avg i(vdd) FROM=5975ps TO=5980ps
.measure tran avgval_1197 avg i(vdd) FROM=5980ps TO=5985ps
.measure tran avgval_1198 avg i(vdd) FROM=5985ps TO=5990ps
.measure tran avgval_1199 avg i(vdd) FROM=5990ps TO=5995ps
.measure tran avgval_1200 avg i(vdd) FROM=5995ps TO=6000ps
.measure tran avgval_1201 avg i(vdd) FROM=6000ps TO=6005ps
.measure tran avgval_1202 avg i(vdd) FROM=6005ps TO=6010ps
.measure tran avgval_1203 avg i(vdd) FROM=6010ps TO=6015ps
.measure tran avgval_1204 avg i(vdd) FROM=6015ps TO=6020ps
.measure tran avgval_1205 avg i(vdd) FROM=6020ps TO=6025ps
.measure tran avgval_1206 avg i(vdd) FROM=6025ps TO=6030ps
.measure tran avgval_1207 avg i(vdd) FROM=6030ps TO=6035ps
.measure tran avgval_1208 avg i(vdd) FROM=6035ps TO=6040ps
.measure tran avgval_1209 avg i(vdd) FROM=6040ps TO=6045ps
.measure tran avgval_1210 avg i(vdd) FROM=6045ps TO=6050ps
.measure tran avgval_1211 avg i(vdd) FROM=6050ps TO=6055ps
.measure tran avgval_1212 avg i(vdd) FROM=6055ps TO=6060ps
.measure tran avgval_1213 avg i(vdd) FROM=6060ps TO=6065ps
.measure tran avgval_1214 avg i(vdd) FROM=6065ps TO=6070ps
.measure tran avgval_1215 avg i(vdd) FROM=6070ps TO=6075ps
.measure tran avgval_1216 avg i(vdd) FROM=6075ps TO=6080ps
.measure tran avgval_1217 avg i(vdd) FROM=6080ps TO=6085ps
.measure tran avgval_1218 avg i(vdd) FROM=6085ps TO=6090ps
.measure tran avgval_1219 avg i(vdd) FROM=6090ps TO=6095ps
.measure tran avgval_1220 avg i(vdd) FROM=6095ps TO=6100ps
.measure tran avgval_1221 avg i(vdd) FROM=6100ps TO=6105ps
.measure tran avgval_1222 avg i(vdd) FROM=6105ps TO=6110ps
.measure tran avgval_1223 avg i(vdd) FROM=6110ps TO=6115ps
.measure tran avgval_1224 avg i(vdd) FROM=6115ps TO=6120ps
.measure tran avgval_1225 avg i(vdd) FROM=6120ps TO=6125ps
.measure tran avgval_1226 avg i(vdd) FROM=6125ps TO=6130ps
.measure tran avgval_1227 avg i(vdd) FROM=6130ps TO=6135ps
.measure tran avgval_1228 avg i(vdd) FROM=6135ps TO=6140ps
.measure tran avgval_1229 avg i(vdd) FROM=6140ps TO=6145ps
.measure tran avgval_1230 avg i(vdd) FROM=6145ps TO=6150ps
.measure tran avgval_1231 avg i(vdd) FROM=6150ps TO=6155ps
.measure tran avgval_1232 avg i(vdd) FROM=6155ps TO=6160ps
.measure tran avgval_1233 avg i(vdd) FROM=6160ps TO=6165ps
.measure tran avgval_1234 avg i(vdd) FROM=6165ps TO=6170ps
.measure tran avgval_1235 avg i(vdd) FROM=6170ps TO=6175ps
.measure tran avgval_1236 avg i(vdd) FROM=6175ps TO=6180ps
.measure tran avgval_1237 avg i(vdd) FROM=6180ps TO=6185ps
.measure tran avgval_1238 avg i(vdd) FROM=6185ps TO=6190ps
.measure tran avgval_1239 avg i(vdd) FROM=6190ps TO=6195ps
.measure tran avgval_1240 avg i(vdd) FROM=6195ps TO=6200ps
.measure tran avgval_1241 avg i(vdd) FROM=6200ps TO=6205ps
.measure tran avgval_1242 avg i(vdd) FROM=6205ps TO=6210ps
.measure tran avgval_1243 avg i(vdd) FROM=6210ps TO=6215ps
.measure tran avgval_1244 avg i(vdd) FROM=6215ps TO=6220ps
.measure tran avgval_1245 avg i(vdd) FROM=6220ps TO=6225ps
.measure tran avgval_1246 avg i(vdd) FROM=6225ps TO=6230ps
.measure tran avgval_1247 avg i(vdd) FROM=6230ps TO=6235ps
.measure tran avgval_1248 avg i(vdd) FROM=6235ps TO=6240ps
.measure tran avgval_1249 avg i(vdd) FROM=6240ps TO=6245ps
.measure tran avgval_1250 avg i(vdd) FROM=6245ps TO=6250ps
.measure tran avgval_1251 avg i(vdd) FROM=6250ps TO=6255ps
.measure tran avgval_1252 avg i(vdd) FROM=6255ps TO=6260ps
.measure tran avgval_1253 avg i(vdd) FROM=6260ps TO=6265ps
.measure tran avgval_1254 avg i(vdd) FROM=6265ps TO=6270ps
.measure tran avgval_1255 avg i(vdd) FROM=6270ps TO=6275ps
.measure tran avgval_1256 avg i(vdd) FROM=6275ps TO=6280ps
.measure tran avgval_1257 avg i(vdd) FROM=6280ps TO=6285ps
.measure tran avgval_1258 avg i(vdd) FROM=6285ps TO=6290ps
.measure tran avgval_1259 avg i(vdd) FROM=6290ps TO=6295ps
.measure tran avgval_1260 avg i(vdd) FROM=6295ps TO=6300ps
.measure tran avgval_1261 avg i(vdd) FROM=6300ps TO=6305ps
.measure tran avgval_1262 avg i(vdd) FROM=6305ps TO=6310ps
.measure tran avgval_1263 avg i(vdd) FROM=6310ps TO=6315ps
.measure tran avgval_1264 avg i(vdd) FROM=6315ps TO=6320ps
.measure tran avgval_1265 avg i(vdd) FROM=6320ps TO=6325ps
.measure tran avgval_1266 avg i(vdd) FROM=6325ps TO=6330ps
.measure tran avgval_1267 avg i(vdd) FROM=6330ps TO=6335ps
.measure tran avgval_1268 avg i(vdd) FROM=6335ps TO=6340ps
.measure tran avgval_1269 avg i(vdd) FROM=6340ps TO=6345ps
.measure tran avgval_1270 avg i(vdd) FROM=6345ps TO=6350ps
.measure tran avgval_1271 avg i(vdd) FROM=6350ps TO=6355ps
.measure tran avgval_1272 avg i(vdd) FROM=6355ps TO=6360ps
.measure tran avgval_1273 avg i(vdd) FROM=6360ps TO=6365ps
.measure tran avgval_1274 avg i(vdd) FROM=6365ps TO=6370ps
.measure tran avgval_1275 avg i(vdd) FROM=6370ps TO=6375ps
.measure tran avgval_1276 avg i(vdd) FROM=6375ps TO=6380ps
.measure tran avgval_1277 avg i(vdd) FROM=6380ps TO=6385ps
.measure tran avgval_1278 avg i(vdd) FROM=6385ps TO=6390ps
.measure tran avgval_1279 avg i(vdd) FROM=6390ps TO=6395ps
.measure tran avgval_1280 avg i(vdd) FROM=6395ps TO=6400ps
.measure tran avgval_1281 avg i(vdd) FROM=6400ps TO=6405ps
.measure tran avgval_1282 avg i(vdd) FROM=6405ps TO=6410ps
.measure tran avgval_1283 avg i(vdd) FROM=6410ps TO=6415ps
.measure tran avgval_1284 avg i(vdd) FROM=6415ps TO=6420ps
.measure tran avgval_1285 avg i(vdd) FROM=6420ps TO=6425ps
.measure tran avgval_1286 avg i(vdd) FROM=6425ps TO=6430ps
.measure tran avgval_1287 avg i(vdd) FROM=6430ps TO=6435ps
.measure tran avgval_1288 avg i(vdd) FROM=6435ps TO=6440ps
.measure tran avgval_1289 avg i(vdd) FROM=6440ps TO=6445ps
.measure tran avgval_1290 avg i(vdd) FROM=6445ps TO=6450ps
.measure tran avgval_1291 avg i(vdd) FROM=6450ps TO=6455ps
.measure tran avgval_1292 avg i(vdd) FROM=6455ps TO=6460ps
.measure tran avgval_1293 avg i(vdd) FROM=6460ps TO=6465ps
.measure tran avgval_1294 avg i(vdd) FROM=6465ps TO=6470ps
.measure tran avgval_1295 avg i(vdd) FROM=6470ps TO=6475ps
.measure tran avgval_1296 avg i(vdd) FROM=6475ps TO=6480ps
.measure tran avgval_1297 avg i(vdd) FROM=6480ps TO=6485ps
.measure tran avgval_1298 avg i(vdd) FROM=6485ps TO=6490ps
.measure tran avgval_1299 avg i(vdd) FROM=6490ps TO=6495ps
.measure tran avgval_1300 avg i(vdd) FROM=6495ps TO=6500ps
.measure tran avgval_1301 avg i(vdd) FROM=6500ps TO=6505ps
.measure tran avgval_1302 avg i(vdd) FROM=6505ps TO=6510ps
.measure tran avgval_1303 avg i(vdd) FROM=6510ps TO=6515ps
.measure tran avgval_1304 avg i(vdd) FROM=6515ps TO=6520ps
.measure tran avgval_1305 avg i(vdd) FROM=6520ps TO=6525ps
.measure tran avgval_1306 avg i(vdd) FROM=6525ps TO=6530ps
.measure tran avgval_1307 avg i(vdd) FROM=6530ps TO=6535ps
.measure tran avgval_1308 avg i(vdd) FROM=6535ps TO=6540ps
.measure tran avgval_1309 avg i(vdd) FROM=6540ps TO=6545ps
.measure tran avgval_1310 avg i(vdd) FROM=6545ps TO=6550ps
.measure tran avgval_1311 avg i(vdd) FROM=6550ps TO=6555ps
.measure tran avgval_1312 avg i(vdd) FROM=6555ps TO=6560ps
.measure tran avgval_1313 avg i(vdd) FROM=6560ps TO=6565ps
.measure tran avgval_1314 avg i(vdd) FROM=6565ps TO=6570ps
.measure tran avgval_1315 avg i(vdd) FROM=6570ps TO=6575ps
.measure tran avgval_1316 avg i(vdd) FROM=6575ps TO=6580ps
.measure tran avgval_1317 avg i(vdd) FROM=6580ps TO=6585ps
.measure tran avgval_1318 avg i(vdd) FROM=6585ps TO=6590ps
.measure tran avgval_1319 avg i(vdd) FROM=6590ps TO=6595ps
.measure tran avgval_1320 avg i(vdd) FROM=6595ps TO=6600ps
.measure tran avgval_1321 avg i(vdd) FROM=6600ps TO=6605ps
.measure tran avgval_1322 avg i(vdd) FROM=6605ps TO=6610ps
.measure tran avgval_1323 avg i(vdd) FROM=6610ps TO=6615ps
.measure tran avgval_1324 avg i(vdd) FROM=6615ps TO=6620ps
.measure tran avgval_1325 avg i(vdd) FROM=6620ps TO=6625ps
.measure tran avgval_1326 avg i(vdd) FROM=6625ps TO=6630ps
.measure tran avgval_1327 avg i(vdd) FROM=6630ps TO=6635ps
.measure tran avgval_1328 avg i(vdd) FROM=6635ps TO=6640ps
.measure tran avgval_1329 avg i(vdd) FROM=6640ps TO=6645ps
.measure tran avgval_1330 avg i(vdd) FROM=6645ps TO=6650ps
.measure tran avgval_1331 avg i(vdd) FROM=6650ps TO=6655ps
.measure tran avgval_1332 avg i(vdd) FROM=6655ps TO=6660ps
.measure tran avgval_1333 avg i(vdd) FROM=6660ps TO=6665ps
.measure tran avgval_1334 avg i(vdd) FROM=6665ps TO=6670ps
.measure tran avgval_1335 avg i(vdd) FROM=6670ps TO=6675ps
.measure tran avgval_1336 avg i(vdd) FROM=6675ps TO=6680ps
.measure tran avgval_1337 avg i(vdd) FROM=6680ps TO=6685ps
.measure tran avgval_1338 avg i(vdd) FROM=6685ps TO=6690ps
.measure tran avgval_1339 avg i(vdd) FROM=6690ps TO=6695ps
.measure tran avgval_1340 avg i(vdd) FROM=6695ps TO=6700ps
.measure tran avgval_1341 avg i(vdd) FROM=6700ps TO=6705ps
.measure tran avgval_1342 avg i(vdd) FROM=6705ps TO=6710ps
.measure tran avgval_1343 avg i(vdd) FROM=6710ps TO=6715ps
.measure tran avgval_1344 avg i(vdd) FROM=6715ps TO=6720ps
.measure tran avgval_1345 avg i(vdd) FROM=6720ps TO=6725ps
.measure tran avgval_1346 avg i(vdd) FROM=6725ps TO=6730ps
.measure tran avgval_1347 avg i(vdd) FROM=6730ps TO=6735ps
.measure tran avgval_1348 avg i(vdd) FROM=6735ps TO=6740ps
.measure tran avgval_1349 avg i(vdd) FROM=6740ps TO=6745ps
.measure tran avgval_1350 avg i(vdd) FROM=6745ps TO=6750ps
.measure tran avgval_1351 avg i(vdd) FROM=6750ps TO=6755ps
.measure tran avgval_1352 avg i(vdd) FROM=6755ps TO=6760ps
.measure tran avgval_1353 avg i(vdd) FROM=6760ps TO=6765ps
.measure tran avgval_1354 avg i(vdd) FROM=6765ps TO=6770ps
.measure tran avgval_1355 avg i(vdd) FROM=6770ps TO=6775ps
.measure tran avgval_1356 avg i(vdd) FROM=6775ps TO=6780ps
.measure tran avgval_1357 avg i(vdd) FROM=6780ps TO=6785ps
.measure tran avgval_1358 avg i(vdd) FROM=6785ps TO=6790ps
.measure tran avgval_1359 avg i(vdd) FROM=6790ps TO=6795ps
.measure tran avgval_1360 avg i(vdd) FROM=6795ps TO=6800ps
.measure tran avgval_1361 avg i(vdd) FROM=6800ps TO=6805ps
.measure tran avgval_1362 avg i(vdd) FROM=6805ps TO=6810ps
.measure tran avgval_1363 avg i(vdd) FROM=6810ps TO=6815ps
.measure tran avgval_1364 avg i(vdd) FROM=6815ps TO=6820ps
.measure tran avgval_1365 avg i(vdd) FROM=6820ps TO=6825ps
.measure tran avgval_1366 avg i(vdd) FROM=6825ps TO=6830ps
.measure tran avgval_1367 avg i(vdd) FROM=6830ps TO=6835ps
.measure tran avgval_1368 avg i(vdd) FROM=6835ps TO=6840ps
.measure tran avgval_1369 avg i(vdd) FROM=6840ps TO=6845ps
.measure tran avgval_1370 avg i(vdd) FROM=6845ps TO=6850ps
.measure tran avgval_1371 avg i(vdd) FROM=6850ps TO=6855ps
.measure tran avgval_1372 avg i(vdd) FROM=6855ps TO=6860ps
.measure tran avgval_1373 avg i(vdd) FROM=6860ps TO=6865ps
.measure tran avgval_1374 avg i(vdd) FROM=6865ps TO=6870ps
.measure tran avgval_1375 avg i(vdd) FROM=6870ps TO=6875ps
.measure tran avgval_1376 avg i(vdd) FROM=6875ps TO=6880ps
.measure tran avgval_1377 avg i(vdd) FROM=6880ps TO=6885ps
.measure tran avgval_1378 avg i(vdd) FROM=6885ps TO=6890ps
.measure tran avgval_1379 avg i(vdd) FROM=6890ps TO=6895ps
.measure tran avgval_1380 avg i(vdd) FROM=6895ps TO=6900ps
.measure tran avgval_1381 avg i(vdd) FROM=6900ps TO=6905ps
.measure tran avgval_1382 avg i(vdd) FROM=6905ps TO=6910ps
.measure tran avgval_1383 avg i(vdd) FROM=6910ps TO=6915ps
.measure tran avgval_1384 avg i(vdd) FROM=6915ps TO=6920ps
.measure tran avgval_1385 avg i(vdd) FROM=6920ps TO=6925ps
.measure tran avgval_1386 avg i(vdd) FROM=6925ps TO=6930ps
.measure tran avgval_1387 avg i(vdd) FROM=6930ps TO=6935ps
.measure tran avgval_1388 avg i(vdd) FROM=6935ps TO=6940ps
.measure tran avgval_1389 avg i(vdd) FROM=6940ps TO=6945ps
.measure tran avgval_1390 avg i(vdd) FROM=6945ps TO=6950ps
.measure tran avgval_1391 avg i(vdd) FROM=6950ps TO=6955ps
.measure tran avgval_1392 avg i(vdd) FROM=6955ps TO=6960ps
.measure tran avgval_1393 avg i(vdd) FROM=6960ps TO=6965ps
.measure tran avgval_1394 avg i(vdd) FROM=6965ps TO=6970ps
.measure tran avgval_1395 avg i(vdd) FROM=6970ps TO=6975ps
.measure tran avgval_1396 avg i(vdd) FROM=6975ps TO=6980ps
.measure tran avgval_1397 avg i(vdd) FROM=6980ps TO=6985ps
.measure tran avgval_1398 avg i(vdd) FROM=6985ps TO=6990ps
.measure tran avgval_1399 avg i(vdd) FROM=6990ps TO=6995ps
.measure tran avgval_1400 avg i(vdd) FROM=6995ps TO=7000ps
.measure tran avgval_1401 avg i(vdd) FROM=7000ps TO=7005ps
.measure tran avgval_1402 avg i(vdd) FROM=7005ps TO=7010ps
.measure tran avgval_1403 avg i(vdd) FROM=7010ps TO=7015ps
.measure tran avgval_1404 avg i(vdd) FROM=7015ps TO=7020ps
.measure tran avgval_1405 avg i(vdd) FROM=7020ps TO=7025ps
.measure tran avgval_1406 avg i(vdd) FROM=7025ps TO=7030ps
.measure tran avgval_1407 avg i(vdd) FROM=7030ps TO=7035ps
.measure tran avgval_1408 avg i(vdd) FROM=7035ps TO=7040ps
.measure tran avgval_1409 avg i(vdd) FROM=7040ps TO=7045ps
.measure tran avgval_1410 avg i(vdd) FROM=7045ps TO=7050ps
.measure tran avgval_1411 avg i(vdd) FROM=7050ps TO=7055ps
.measure tran avgval_1412 avg i(vdd) FROM=7055ps TO=7060ps
.measure tran avgval_1413 avg i(vdd) FROM=7060ps TO=7065ps
.measure tran avgval_1414 avg i(vdd) FROM=7065ps TO=7070ps
.measure tran avgval_1415 avg i(vdd) FROM=7070ps TO=7075ps
.measure tran avgval_1416 avg i(vdd) FROM=7075ps TO=7080ps
.measure tran avgval_1417 avg i(vdd) FROM=7080ps TO=7085ps
.measure tran avgval_1418 avg i(vdd) FROM=7085ps TO=7090ps
.measure tran avgval_1419 avg i(vdd) FROM=7090ps TO=7095ps
.measure tran avgval_1420 avg i(vdd) FROM=7095ps TO=7100ps
.measure tran avgval_1421 avg i(vdd) FROM=7100ps TO=7105ps
.measure tran avgval_1422 avg i(vdd) FROM=7105ps TO=7110ps
.measure tran avgval_1423 avg i(vdd) FROM=7110ps TO=7115ps
.measure tran avgval_1424 avg i(vdd) FROM=7115ps TO=7120ps
.measure tran avgval_1425 avg i(vdd) FROM=7120ps TO=7125ps
.measure tran avgval_1426 avg i(vdd) FROM=7125ps TO=7130ps
.measure tran avgval_1427 avg i(vdd) FROM=7130ps TO=7135ps
.measure tran avgval_1428 avg i(vdd) FROM=7135ps TO=7140ps
.measure tran avgval_1429 avg i(vdd) FROM=7140ps TO=7145ps
.measure tran avgval_1430 avg i(vdd) FROM=7145ps TO=7150ps
.measure tran avgval_1431 avg i(vdd) FROM=7150ps TO=7155ps
.measure tran avgval_1432 avg i(vdd) FROM=7155ps TO=7160ps
.measure tran avgval_1433 avg i(vdd) FROM=7160ps TO=7165ps
.measure tran avgval_1434 avg i(vdd) FROM=7165ps TO=7170ps
.measure tran avgval_1435 avg i(vdd) FROM=7170ps TO=7175ps
.measure tran avgval_1436 avg i(vdd) FROM=7175ps TO=7180ps
.measure tran avgval_1437 avg i(vdd) FROM=7180ps TO=7185ps
.measure tran avgval_1438 avg i(vdd) FROM=7185ps TO=7190ps
.measure tran avgval_1439 avg i(vdd) FROM=7190ps TO=7195ps
.measure tran avgval_1440 avg i(vdd) FROM=7195ps TO=7200ps
.measure tran avgval_1441 avg i(vdd) FROM=7200ps TO=7205ps
.measure tran avgval_1442 avg i(vdd) FROM=7205ps TO=7210ps
.measure tran avgval_1443 avg i(vdd) FROM=7210ps TO=7215ps
.measure tran avgval_1444 avg i(vdd) FROM=7215ps TO=7220ps
.measure tran avgval_1445 avg i(vdd) FROM=7220ps TO=7225ps
.measure tran avgval_1446 avg i(vdd) FROM=7225ps TO=7230ps
.measure tran avgval_1447 avg i(vdd) FROM=7230ps TO=7235ps
.measure tran avgval_1448 avg i(vdd) FROM=7235ps TO=7240ps
.measure tran avgval_1449 avg i(vdd) FROM=7240ps TO=7245ps
.measure tran avgval_1450 avg i(vdd) FROM=7245ps TO=7250ps
.measure tran avgval_1451 avg i(vdd) FROM=7250ps TO=7255ps
.measure tran avgval_1452 avg i(vdd) FROM=7255ps TO=7260ps
.measure tran avgval_1453 avg i(vdd) FROM=7260ps TO=7265ps
.measure tran avgval_1454 avg i(vdd) FROM=7265ps TO=7270ps
.measure tran avgval_1455 avg i(vdd) FROM=7270ps TO=7275ps
.measure tran avgval_1456 avg i(vdd) FROM=7275ps TO=7280ps
.measure tran avgval_1457 avg i(vdd) FROM=7280ps TO=7285ps
.measure tran avgval_1458 avg i(vdd) FROM=7285ps TO=7290ps
.measure tran avgval_1459 avg i(vdd) FROM=7290ps TO=7295ps
.measure tran avgval_1460 avg i(vdd) FROM=7295ps TO=7300ps
.measure tran avgval_1461 avg i(vdd) FROM=7300ps TO=7305ps
.measure tran avgval_1462 avg i(vdd) FROM=7305ps TO=7310ps
.measure tran avgval_1463 avg i(vdd) FROM=7310ps TO=7315ps
.measure tran avgval_1464 avg i(vdd) FROM=7315ps TO=7320ps
.measure tran avgval_1465 avg i(vdd) FROM=7320ps TO=7325ps
.measure tran avgval_1466 avg i(vdd) FROM=7325ps TO=7330ps
.measure tran avgval_1467 avg i(vdd) FROM=7330ps TO=7335ps
.measure tran avgval_1468 avg i(vdd) FROM=7335ps TO=7340ps
.measure tran avgval_1469 avg i(vdd) FROM=7340ps TO=7345ps
.measure tran avgval_1470 avg i(vdd) FROM=7345ps TO=7350ps
.measure tran avgval_1471 avg i(vdd) FROM=7350ps TO=7355ps
.measure tran avgval_1472 avg i(vdd) FROM=7355ps TO=7360ps
.measure tran avgval_1473 avg i(vdd) FROM=7360ps TO=7365ps
.measure tran avgval_1474 avg i(vdd) FROM=7365ps TO=7370ps
.measure tran avgval_1475 avg i(vdd) FROM=7370ps TO=7375ps
.measure tran avgval_1476 avg i(vdd) FROM=7375ps TO=7380ps
.measure tran avgval_1477 avg i(vdd) FROM=7380ps TO=7385ps
.measure tran avgval_1478 avg i(vdd) FROM=7385ps TO=7390ps
.measure tran avgval_1479 avg i(vdd) FROM=7390ps TO=7395ps
.measure tran avgval_1480 avg i(vdd) FROM=7395ps TO=7400ps
.measure tran avgval_1481 avg i(vdd) FROM=7400ps TO=7405ps
.measure tran avgval_1482 avg i(vdd) FROM=7405ps TO=7410ps
.measure tran avgval_1483 avg i(vdd) FROM=7410ps TO=7415ps
.measure tran avgval_1484 avg i(vdd) FROM=7415ps TO=7420ps
.measure tran avgval_1485 avg i(vdd) FROM=7420ps TO=7425ps
.measure tran avgval_1486 avg i(vdd) FROM=7425ps TO=7430ps
.measure tran avgval_1487 avg i(vdd) FROM=7430ps TO=7435ps
.measure tran avgval_1488 avg i(vdd) FROM=7435ps TO=7440ps
.measure tran avgval_1489 avg i(vdd) FROM=7440ps TO=7445ps
.measure tran avgval_1490 avg i(vdd) FROM=7445ps TO=7450ps
.measure tran avgval_1491 avg i(vdd) FROM=7450ps TO=7455ps
.measure tran avgval_1492 avg i(vdd) FROM=7455ps TO=7460ps
.measure tran avgval_1493 avg i(vdd) FROM=7460ps TO=7465ps
.measure tran avgval_1494 avg i(vdd) FROM=7465ps TO=7470ps
.measure tran avgval_1495 avg i(vdd) FROM=7470ps TO=7475ps
.measure tran avgval_1496 avg i(vdd) FROM=7475ps TO=7480ps
.measure tran avgval_1497 avg i(vdd) FROM=7480ps TO=7485ps
.measure tran avgval_1498 avg i(vdd) FROM=7485ps TO=7490ps
.measure tran avgval_1499 avg i(vdd) FROM=7490ps TO=7495ps
.measure tran avgval_1500 avg i(vdd) FROM=7495ps TO=7500ps
.measure tran avgval_1501 avg i(vdd) FROM=7500ps TO=7505ps
.measure tran avgval_1502 avg i(vdd) FROM=7505ps TO=7510ps
.measure tran avgval_1503 avg i(vdd) FROM=7510ps TO=7515ps
.measure tran avgval_1504 avg i(vdd) FROM=7515ps TO=7520ps
.measure tran avgval_1505 avg i(vdd) FROM=7520ps TO=7525ps
.measure tran avgval_1506 avg i(vdd) FROM=7525ps TO=7530ps
.measure tran avgval_1507 avg i(vdd) FROM=7530ps TO=7535ps
.measure tran avgval_1508 avg i(vdd) FROM=7535ps TO=7540ps
.measure tran avgval_1509 avg i(vdd) FROM=7540ps TO=7545ps
.measure tran avgval_1510 avg i(vdd) FROM=7545ps TO=7550ps
.measure tran avgval_1511 avg i(vdd) FROM=7550ps TO=7555ps
.measure tran avgval_1512 avg i(vdd) FROM=7555ps TO=7560ps
.measure tran avgval_1513 avg i(vdd) FROM=7560ps TO=7565ps
.measure tran avgval_1514 avg i(vdd) FROM=7565ps TO=7570ps
.measure tran avgval_1515 avg i(vdd) FROM=7570ps TO=7575ps
.measure tran avgval_1516 avg i(vdd) FROM=7575ps TO=7580ps
.measure tran avgval_1517 avg i(vdd) FROM=7580ps TO=7585ps
.measure tran avgval_1518 avg i(vdd) FROM=7585ps TO=7590ps
.measure tran avgval_1519 avg i(vdd) FROM=7590ps TO=7595ps
.measure tran avgval_1520 avg i(vdd) FROM=7595ps TO=7600ps
.measure tran avgval_1521 avg i(vdd) FROM=7600ps TO=7605ps
.measure tran avgval_1522 avg i(vdd) FROM=7605ps TO=7610ps
.measure tran avgval_1523 avg i(vdd) FROM=7610ps TO=7615ps
.measure tran avgval_1524 avg i(vdd) FROM=7615ps TO=7620ps
.measure tran avgval_1525 avg i(vdd) FROM=7620ps TO=7625ps
.measure tran avgval_1526 avg i(vdd) FROM=7625ps TO=7630ps
.measure tran avgval_1527 avg i(vdd) FROM=7630ps TO=7635ps
.measure tran avgval_1528 avg i(vdd) FROM=7635ps TO=7640ps
.measure tran avgval_1529 avg i(vdd) FROM=7640ps TO=7645ps
.measure tran avgval_1530 avg i(vdd) FROM=7645ps TO=7650ps
.measure tran avgval_1531 avg i(vdd) FROM=7650ps TO=7655ps
.measure tran avgval_1532 avg i(vdd) FROM=7655ps TO=7660ps
.measure tran avgval_1533 avg i(vdd) FROM=7660ps TO=7665ps
.measure tran avgval_1534 avg i(vdd) FROM=7665ps TO=7670ps
.measure tran avgval_1535 avg i(vdd) FROM=7670ps TO=7675ps
.measure tran avgval_1536 avg i(vdd) FROM=7675ps TO=7680ps
.measure tran avgval_1537 avg i(vdd) FROM=7680ps TO=7685ps
.measure tran avgval_1538 avg i(vdd) FROM=7685ps TO=7690ps
.measure tran avgval_1539 avg i(vdd) FROM=7690ps TO=7695ps
.measure tran avgval_1540 avg i(vdd) FROM=7695ps TO=7700ps
.measure tran avgval_1541 avg i(vdd) FROM=7700ps TO=7705ps
.measure tran avgval_1542 avg i(vdd) FROM=7705ps TO=7710ps
.measure tran avgval_1543 avg i(vdd) FROM=7710ps TO=7715ps
.measure tran avgval_1544 avg i(vdd) FROM=7715ps TO=7720ps
.measure tran avgval_1545 avg i(vdd) FROM=7720ps TO=7725ps
.measure tran avgval_1546 avg i(vdd) FROM=7725ps TO=7730ps
.measure tran avgval_1547 avg i(vdd) FROM=7730ps TO=7735ps
.measure tran avgval_1548 avg i(vdd) FROM=7735ps TO=7740ps
.measure tran avgval_1549 avg i(vdd) FROM=7740ps TO=7745ps
.measure tran avgval_1550 avg i(vdd) FROM=7745ps TO=7750ps
.measure tran avgval_1551 avg i(vdd) FROM=7750ps TO=7755ps
.measure tran avgval_1552 avg i(vdd) FROM=7755ps TO=7760ps
.measure tran avgval_1553 avg i(vdd) FROM=7760ps TO=7765ps
.measure tran avgval_1554 avg i(vdd) FROM=7765ps TO=7770ps
.measure tran avgval_1555 avg i(vdd) FROM=7770ps TO=7775ps
.measure tran avgval_1556 avg i(vdd) FROM=7775ps TO=7780ps
.measure tran avgval_1557 avg i(vdd) FROM=7780ps TO=7785ps
.measure tran avgval_1558 avg i(vdd) FROM=7785ps TO=7790ps
.measure tran avgval_1559 avg i(vdd) FROM=7790ps TO=7795ps
.measure tran avgval_1560 avg i(vdd) FROM=7795ps TO=7800ps
.measure tran avgval_1561 avg i(vdd) FROM=7800ps TO=7805ps
.measure tran avgval_1562 avg i(vdd) FROM=7805ps TO=7810ps
.measure tran avgval_1563 avg i(vdd) FROM=7810ps TO=7815ps
.measure tran avgval_1564 avg i(vdd) FROM=7815ps TO=7820ps
.measure tran avgval_1565 avg i(vdd) FROM=7820ps TO=7825ps
.measure tran avgval_1566 avg i(vdd) FROM=7825ps TO=7830ps
.measure tran avgval_1567 avg i(vdd) FROM=7830ps TO=7835ps
.measure tran avgval_1568 avg i(vdd) FROM=7835ps TO=7840ps
.measure tran avgval_1569 avg i(vdd) FROM=7840ps TO=7845ps
.measure tran avgval_1570 avg i(vdd) FROM=7845ps TO=7850ps
.measure tran avgval_1571 avg i(vdd) FROM=7850ps TO=7855ps
.measure tran avgval_1572 avg i(vdd) FROM=7855ps TO=7860ps
.measure tran avgval_1573 avg i(vdd) FROM=7860ps TO=7865ps
.measure tran avgval_1574 avg i(vdd) FROM=7865ps TO=7870ps
.measure tran avgval_1575 avg i(vdd) FROM=7870ps TO=7875ps
.measure tran avgval_1576 avg i(vdd) FROM=7875ps TO=7880ps
.measure tran avgval_1577 avg i(vdd) FROM=7880ps TO=7885ps
.measure tran avgval_1578 avg i(vdd) FROM=7885ps TO=7890ps
.measure tran avgval_1579 avg i(vdd) FROM=7890ps TO=7895ps
.measure tran avgval_1580 avg i(vdd) FROM=7895ps TO=7900ps
.measure tran avgval_1581 avg i(vdd) FROM=7900ps TO=7905ps
.measure tran avgval_1582 avg i(vdd) FROM=7905ps TO=7910ps
.measure tran avgval_1583 avg i(vdd) FROM=7910ps TO=7915ps
.measure tran avgval_1584 avg i(vdd) FROM=7915ps TO=7920ps
.measure tran avgval_1585 avg i(vdd) FROM=7920ps TO=7925ps
.measure tran avgval_1586 avg i(vdd) FROM=7925ps TO=7930ps
.measure tran avgval_1587 avg i(vdd) FROM=7930ps TO=7935ps
.measure tran avgval_1588 avg i(vdd) FROM=7935ps TO=7940ps
.measure tran avgval_1589 avg i(vdd) FROM=7940ps TO=7945ps
.measure tran avgval_1590 avg i(vdd) FROM=7945ps TO=7950ps
.measure tran avgval_1591 avg i(vdd) FROM=7950ps TO=7955ps
.measure tran avgval_1592 avg i(vdd) FROM=7955ps TO=7960ps
.measure tran avgval_1593 avg i(vdd) FROM=7960ps TO=7965ps
.measure tran avgval_1594 avg i(vdd) FROM=7965ps TO=7970ps
.measure tran avgval_1595 avg i(vdd) FROM=7970ps TO=7975ps
.measure tran avgval_1596 avg i(vdd) FROM=7975ps TO=7980ps
.measure tran avgval_1597 avg i(vdd) FROM=7980ps TO=7985ps
.measure tran avgval_1598 avg i(vdd) FROM=7985ps TO=7990ps
.measure tran avgval_1599 avg i(vdd) FROM=7990ps TO=7995ps
.measure tran avgval_1600 avg i(vdd) FROM=7995ps TO=8000ps
.measure tran avgval_1601 avg i(vdd) FROM=8000ps TO=8005ps
.measure tran avgval_1602 avg i(vdd) FROM=8005ps TO=8010ps
.measure tran avgval_1603 avg i(vdd) FROM=8010ps TO=8015ps
.measure tran avgval_1604 avg i(vdd) FROM=8015ps TO=8020ps
.measure tran avgval_1605 avg i(vdd) FROM=8020ps TO=8025ps
.measure tran avgval_1606 avg i(vdd) FROM=8025ps TO=8030ps
.measure tran avgval_1607 avg i(vdd) FROM=8030ps TO=8035ps
.measure tran avgval_1608 avg i(vdd) FROM=8035ps TO=8040ps
.measure tran avgval_1609 avg i(vdd) FROM=8040ps TO=8045ps
.measure tran avgval_1610 avg i(vdd) FROM=8045ps TO=8050ps
.measure tran avgval_1611 avg i(vdd) FROM=8050ps TO=8055ps
.measure tran avgval_1612 avg i(vdd) FROM=8055ps TO=8060ps
.measure tran avgval_1613 avg i(vdd) FROM=8060ps TO=8065ps
.measure tran avgval_1614 avg i(vdd) FROM=8065ps TO=8070ps
.measure tran avgval_1615 avg i(vdd) FROM=8070ps TO=8075ps
.measure tran avgval_1616 avg i(vdd) FROM=8075ps TO=8080ps
.measure tran avgval_1617 avg i(vdd) FROM=8080ps TO=8085ps
.measure tran avgval_1618 avg i(vdd) FROM=8085ps TO=8090ps
.measure tran avgval_1619 avg i(vdd) FROM=8090ps TO=8095ps
.measure tran avgval_1620 avg i(vdd) FROM=8095ps TO=8100ps
.measure tran avgval_1621 avg i(vdd) FROM=8100ps TO=8105ps
.measure tran avgval_1622 avg i(vdd) FROM=8105ps TO=8110ps
.measure tran avgval_1623 avg i(vdd) FROM=8110ps TO=8115ps
.measure tran avgval_1624 avg i(vdd) FROM=8115ps TO=8120ps
.measure tran avgval_1625 avg i(vdd) FROM=8120ps TO=8125ps
.measure tran avgval_1626 avg i(vdd) FROM=8125ps TO=8130ps
.measure tran avgval_1627 avg i(vdd) FROM=8130ps TO=8135ps
.measure tran avgval_1628 avg i(vdd) FROM=8135ps TO=8140ps
.measure tran avgval_1629 avg i(vdd) FROM=8140ps TO=8145ps
.measure tran avgval_1630 avg i(vdd) FROM=8145ps TO=8150ps
.measure tran avgval_1631 avg i(vdd) FROM=8150ps TO=8155ps
.measure tran avgval_1632 avg i(vdd) FROM=8155ps TO=8160ps
.measure tran avgval_1633 avg i(vdd) FROM=8160ps TO=8165ps
.measure tran avgval_1634 avg i(vdd) FROM=8165ps TO=8170ps
.measure tran avgval_1635 avg i(vdd) FROM=8170ps TO=8175ps
.measure tran avgval_1636 avg i(vdd) FROM=8175ps TO=8180ps
.measure tran avgval_1637 avg i(vdd) FROM=8180ps TO=8185ps
.measure tran avgval_1638 avg i(vdd) FROM=8185ps TO=8190ps
.measure tran avgval_1639 avg i(vdd) FROM=8190ps TO=8195ps
.measure tran avgval_1640 avg i(vdd) FROM=8195ps TO=8200ps
.measure tran avgval_1641 avg i(vdd) FROM=8200ps TO=8205ps
.measure tran avgval_1642 avg i(vdd) FROM=8205ps TO=8210ps
.measure tran avgval_1643 avg i(vdd) FROM=8210ps TO=8215ps
.measure tran avgval_1644 avg i(vdd) FROM=8215ps TO=8220ps
.measure tran avgval_1645 avg i(vdd) FROM=8220ps TO=8225ps
.measure tran avgval_1646 avg i(vdd) FROM=8225ps TO=8230ps
.measure tran avgval_1647 avg i(vdd) FROM=8230ps TO=8235ps
.measure tran avgval_1648 avg i(vdd) FROM=8235ps TO=8240ps
.measure tran avgval_1649 avg i(vdd) FROM=8240ps TO=8245ps
.measure tran avgval_1650 avg i(vdd) FROM=8245ps TO=8250ps
.measure tran avgval_1651 avg i(vdd) FROM=8250ps TO=8255ps
.measure tran avgval_1652 avg i(vdd) FROM=8255ps TO=8260ps
.measure tran avgval_1653 avg i(vdd) FROM=8260ps TO=8265ps
.measure tran avgval_1654 avg i(vdd) FROM=8265ps TO=8270ps
.measure tran avgval_1655 avg i(vdd) FROM=8270ps TO=8275ps
.measure tran avgval_1656 avg i(vdd) FROM=8275ps TO=8280ps
.measure tran avgval_1657 avg i(vdd) FROM=8280ps TO=8285ps
.measure tran avgval_1658 avg i(vdd) FROM=8285ps TO=8290ps
.measure tran avgval_1659 avg i(vdd) FROM=8290ps TO=8295ps
.measure tran avgval_1660 avg i(vdd) FROM=8295ps TO=8300ps
.measure tran avgval_1661 avg i(vdd) FROM=8300ps TO=8305ps
.measure tran avgval_1662 avg i(vdd) FROM=8305ps TO=8310ps
.measure tran avgval_1663 avg i(vdd) FROM=8310ps TO=8315ps
.measure tran avgval_1664 avg i(vdd) FROM=8315ps TO=8320ps
.measure tran avgval_1665 avg i(vdd) FROM=8320ps TO=8325ps
.measure tran avgval_1666 avg i(vdd) FROM=8325ps TO=8330ps
.measure tran avgval_1667 avg i(vdd) FROM=8330ps TO=8335ps
.measure tran avgval_1668 avg i(vdd) FROM=8335ps TO=8340ps
.measure tran avgval_1669 avg i(vdd) FROM=8340ps TO=8345ps
.measure tran avgval_1670 avg i(vdd) FROM=8345ps TO=8350ps
.measure tran avgval_1671 avg i(vdd) FROM=8350ps TO=8355ps
.measure tran avgval_1672 avg i(vdd) FROM=8355ps TO=8360ps
.measure tran avgval_1673 avg i(vdd) FROM=8360ps TO=8365ps
.measure tran avgval_1674 avg i(vdd) FROM=8365ps TO=8370ps
.measure tran avgval_1675 avg i(vdd) FROM=8370ps TO=8375ps
.measure tran avgval_1676 avg i(vdd) FROM=8375ps TO=8380ps
.measure tran avgval_1677 avg i(vdd) FROM=8380ps TO=8385ps
.measure tran avgval_1678 avg i(vdd) FROM=8385ps TO=8390ps
.measure tran avgval_1679 avg i(vdd) FROM=8390ps TO=8395ps
.measure tran avgval_1680 avg i(vdd) FROM=8395ps TO=8400ps
.measure tran avgval_1681 avg i(vdd) FROM=8400ps TO=8405ps
.measure tran avgval_1682 avg i(vdd) FROM=8405ps TO=8410ps
.measure tran avgval_1683 avg i(vdd) FROM=8410ps TO=8415ps
.measure tran avgval_1684 avg i(vdd) FROM=8415ps TO=8420ps
.measure tran avgval_1685 avg i(vdd) FROM=8420ps TO=8425ps
.measure tran avgval_1686 avg i(vdd) FROM=8425ps TO=8430ps
.measure tran avgval_1687 avg i(vdd) FROM=8430ps TO=8435ps
.measure tran avgval_1688 avg i(vdd) FROM=8435ps TO=8440ps
.measure tran avgval_1689 avg i(vdd) FROM=8440ps TO=8445ps
.measure tran avgval_1690 avg i(vdd) FROM=8445ps TO=8450ps
.measure tran avgval_1691 avg i(vdd) FROM=8450ps TO=8455ps
.measure tran avgval_1692 avg i(vdd) FROM=8455ps TO=8460ps
.measure tran avgval_1693 avg i(vdd) FROM=8460ps TO=8465ps
.measure tran avgval_1694 avg i(vdd) FROM=8465ps TO=8470ps
.measure tran avgval_1695 avg i(vdd) FROM=8470ps TO=8475ps
.measure tran avgval_1696 avg i(vdd) FROM=8475ps TO=8480ps
.measure tran avgval_1697 avg i(vdd) FROM=8480ps TO=8485ps
.measure tran avgval_1698 avg i(vdd) FROM=8485ps TO=8490ps
.measure tran avgval_1699 avg i(vdd) FROM=8490ps TO=8495ps
.measure tran avgval_1700 avg i(vdd) FROM=8495ps TO=8500ps
.measure tran avgval_1701 avg i(vdd) FROM=8500ps TO=8505ps
.measure tran avgval_1702 avg i(vdd) FROM=8505ps TO=8510ps
.measure tran avgval_1703 avg i(vdd) FROM=8510ps TO=8515ps
.measure tran avgval_1704 avg i(vdd) FROM=8515ps TO=8520ps
.measure tran avgval_1705 avg i(vdd) FROM=8520ps TO=8525ps
.measure tran avgval_1706 avg i(vdd) FROM=8525ps TO=8530ps
.measure tran avgval_1707 avg i(vdd) FROM=8530ps TO=8535ps
.measure tran avgval_1708 avg i(vdd) FROM=8535ps TO=8540ps
.measure tran avgval_1709 avg i(vdd) FROM=8540ps TO=8545ps
.measure tran avgval_1710 avg i(vdd) FROM=8545ps TO=8550ps
.measure tran avgval_1711 avg i(vdd) FROM=8550ps TO=8555ps
.measure tran avgval_1712 avg i(vdd) FROM=8555ps TO=8560ps
.measure tran avgval_1713 avg i(vdd) FROM=8560ps TO=8565ps
.measure tran avgval_1714 avg i(vdd) FROM=8565ps TO=8570ps
.measure tran avgval_1715 avg i(vdd) FROM=8570ps TO=8575ps
.measure tran avgval_1716 avg i(vdd) FROM=8575ps TO=8580ps
.measure tran avgval_1717 avg i(vdd) FROM=8580ps TO=8585ps
.measure tran avgval_1718 avg i(vdd) FROM=8585ps TO=8590ps
.measure tran avgval_1719 avg i(vdd) FROM=8590ps TO=8595ps
.measure tran avgval_1720 avg i(vdd) FROM=8595ps TO=8600ps
.measure tran avgval_1721 avg i(vdd) FROM=8600ps TO=8605ps
.measure tran avgval_1722 avg i(vdd) FROM=8605ps TO=8610ps
.measure tran avgval_1723 avg i(vdd) FROM=8610ps TO=8615ps
.measure tran avgval_1724 avg i(vdd) FROM=8615ps TO=8620ps
.measure tran avgval_1725 avg i(vdd) FROM=8620ps TO=8625ps
.measure tran avgval_1726 avg i(vdd) FROM=8625ps TO=8630ps
.measure tran avgval_1727 avg i(vdd) FROM=8630ps TO=8635ps
.measure tran avgval_1728 avg i(vdd) FROM=8635ps TO=8640ps
.measure tran avgval_1729 avg i(vdd) FROM=8640ps TO=8645ps
.measure tran avgval_1730 avg i(vdd) FROM=8645ps TO=8650ps
.measure tran avgval_1731 avg i(vdd) FROM=8650ps TO=8655ps
.measure tran avgval_1732 avg i(vdd) FROM=8655ps TO=8660ps
.measure tran avgval_1733 avg i(vdd) FROM=8660ps TO=8665ps
.measure tran avgval_1734 avg i(vdd) FROM=8665ps TO=8670ps
.measure tran avgval_1735 avg i(vdd) FROM=8670ps TO=8675ps
.measure tran avgval_1736 avg i(vdd) FROM=8675ps TO=8680ps
.measure tran avgval_1737 avg i(vdd) FROM=8680ps TO=8685ps
.measure tran avgval_1738 avg i(vdd) FROM=8685ps TO=8690ps
.measure tran avgval_1739 avg i(vdd) FROM=8690ps TO=8695ps
.measure tran avgval_1740 avg i(vdd) FROM=8695ps TO=8700ps
.measure tran avgval_1741 avg i(vdd) FROM=8700ps TO=8705ps
.measure tran avgval_1742 avg i(vdd) FROM=8705ps TO=8710ps
.measure tran avgval_1743 avg i(vdd) FROM=8710ps TO=8715ps
.measure tran avgval_1744 avg i(vdd) FROM=8715ps TO=8720ps
.measure tran avgval_1745 avg i(vdd) FROM=8720ps TO=8725ps
.measure tran avgval_1746 avg i(vdd) FROM=8725ps TO=8730ps
.measure tran avgval_1747 avg i(vdd) FROM=8730ps TO=8735ps
.measure tran avgval_1748 avg i(vdd) FROM=8735ps TO=8740ps
.measure tran avgval_1749 avg i(vdd) FROM=8740ps TO=8745ps
.measure tran avgval_1750 avg i(vdd) FROM=8745ps TO=8750ps
.measure tran avgval_1751 avg i(vdd) FROM=8750ps TO=8755ps
.measure tran avgval_1752 avg i(vdd) FROM=8755ps TO=8760ps
.measure tran avgval_1753 avg i(vdd) FROM=8760ps TO=8765ps
.measure tran avgval_1754 avg i(vdd) FROM=8765ps TO=8770ps
.measure tran avgval_1755 avg i(vdd) FROM=8770ps TO=8775ps
.measure tran avgval_1756 avg i(vdd) FROM=8775ps TO=8780ps
.measure tran avgval_1757 avg i(vdd) FROM=8780ps TO=8785ps
.measure tran avgval_1758 avg i(vdd) FROM=8785ps TO=8790ps
.measure tran avgval_1759 avg i(vdd) FROM=8790ps TO=8795ps
.measure tran avgval_1760 avg i(vdd) FROM=8795ps TO=8800ps
.measure tran avgval_1761 avg i(vdd) FROM=8800ps TO=8805ps
.measure tran avgval_1762 avg i(vdd) FROM=8805ps TO=8810ps
.measure tran avgval_1763 avg i(vdd) FROM=8810ps TO=8815ps
.measure tran avgval_1764 avg i(vdd) FROM=8815ps TO=8820ps
.measure tran avgval_1765 avg i(vdd) FROM=8820ps TO=8825ps
.measure tran avgval_1766 avg i(vdd) FROM=8825ps TO=8830ps
.measure tran avgval_1767 avg i(vdd) FROM=8830ps TO=8835ps
.measure tran avgval_1768 avg i(vdd) FROM=8835ps TO=8840ps
.measure tran avgval_1769 avg i(vdd) FROM=8840ps TO=8845ps
.measure tran avgval_1770 avg i(vdd) FROM=8845ps TO=8850ps
.measure tran avgval_1771 avg i(vdd) FROM=8850ps TO=8855ps
.measure tran avgval_1772 avg i(vdd) FROM=8855ps TO=8860ps
.measure tran avgval_1773 avg i(vdd) FROM=8860ps TO=8865ps
.measure tran avgval_1774 avg i(vdd) FROM=8865ps TO=8870ps
.measure tran avgval_1775 avg i(vdd) FROM=8870ps TO=8875ps
.measure tran avgval_1776 avg i(vdd) FROM=8875ps TO=8880ps
.measure tran avgval_1777 avg i(vdd) FROM=8880ps TO=8885ps
.measure tran avgval_1778 avg i(vdd) FROM=8885ps TO=8890ps
.measure tran avgval_1779 avg i(vdd) FROM=8890ps TO=8895ps
.measure tran avgval_1780 avg i(vdd) FROM=8895ps TO=8900ps
.measure tran avgval_1781 avg i(vdd) FROM=8900ps TO=8905ps
.measure tran avgval_1782 avg i(vdd) FROM=8905ps TO=8910ps
.measure tran avgval_1783 avg i(vdd) FROM=8910ps TO=8915ps
.measure tran avgval_1784 avg i(vdd) FROM=8915ps TO=8920ps
.measure tran avgval_1785 avg i(vdd) FROM=8920ps TO=8925ps
.measure tran avgval_1786 avg i(vdd) FROM=8925ps TO=8930ps
.measure tran avgval_1787 avg i(vdd) FROM=8930ps TO=8935ps
.measure tran avgval_1788 avg i(vdd) FROM=8935ps TO=8940ps
.measure tran avgval_1789 avg i(vdd) FROM=8940ps TO=8945ps
.measure tran avgval_1790 avg i(vdd) FROM=8945ps TO=8950ps
.measure tran avgval_1791 avg i(vdd) FROM=8950ps TO=8955ps
.measure tran avgval_1792 avg i(vdd) FROM=8955ps TO=8960ps
.measure tran avgval_1793 avg i(vdd) FROM=8960ps TO=8965ps
.measure tran avgval_1794 avg i(vdd) FROM=8965ps TO=8970ps
.measure tran avgval_1795 avg i(vdd) FROM=8970ps TO=8975ps
.measure tran avgval_1796 avg i(vdd) FROM=8975ps TO=8980ps
.measure tran avgval_1797 avg i(vdd) FROM=8980ps TO=8985ps
.measure tran avgval_1798 avg i(vdd) FROM=8985ps TO=8990ps
.measure tran avgval_1799 avg i(vdd) FROM=8990ps TO=8995ps
.measure tran avgval_1800 avg i(vdd) FROM=8995ps TO=9000ps
.measure tran avgval_1801 avg i(vdd) FROM=9000ps TO=9005ps
.measure tran avgval_1802 avg i(vdd) FROM=9005ps TO=9010ps
.measure tran avgval_1803 avg i(vdd) FROM=9010ps TO=9015ps
.measure tran avgval_1804 avg i(vdd) FROM=9015ps TO=9020ps
.measure tran avgval_1805 avg i(vdd) FROM=9020ps TO=9025ps
.measure tran avgval_1806 avg i(vdd) FROM=9025ps TO=9030ps
.measure tran avgval_1807 avg i(vdd) FROM=9030ps TO=9035ps
.measure tran avgval_1808 avg i(vdd) FROM=9035ps TO=9040ps
.measure tran avgval_1809 avg i(vdd) FROM=9040ps TO=9045ps
.measure tran avgval_1810 avg i(vdd) FROM=9045ps TO=9050ps
.measure tran avgval_1811 avg i(vdd) FROM=9050ps TO=9055ps
.measure tran avgval_1812 avg i(vdd) FROM=9055ps TO=9060ps
.measure tran avgval_1813 avg i(vdd) FROM=9060ps TO=9065ps
.measure tran avgval_1814 avg i(vdd) FROM=9065ps TO=9070ps
.measure tran avgval_1815 avg i(vdd) FROM=9070ps TO=9075ps
.measure tran avgval_1816 avg i(vdd) FROM=9075ps TO=9080ps
.measure tran avgval_1817 avg i(vdd) FROM=9080ps TO=9085ps
.measure tran avgval_1818 avg i(vdd) FROM=9085ps TO=9090ps
.measure tran avgval_1819 avg i(vdd) FROM=9090ps TO=9095ps
.measure tran avgval_1820 avg i(vdd) FROM=9095ps TO=9100ps
.measure tran avgval_1821 avg i(vdd) FROM=9100ps TO=9105ps
.measure tran avgval_1822 avg i(vdd) FROM=9105ps TO=9110ps
.measure tran avgval_1823 avg i(vdd) FROM=9110ps TO=9115ps
.measure tran avgval_1824 avg i(vdd) FROM=9115ps TO=9120ps
.measure tran avgval_1825 avg i(vdd) FROM=9120ps TO=9125ps
.measure tran avgval_1826 avg i(vdd) FROM=9125ps TO=9130ps
.measure tran avgval_1827 avg i(vdd) FROM=9130ps TO=9135ps
.measure tran avgval_1828 avg i(vdd) FROM=9135ps TO=9140ps
.measure tran avgval_1829 avg i(vdd) FROM=9140ps TO=9145ps
.measure tran avgval_1830 avg i(vdd) FROM=9145ps TO=9150ps
.measure tran avgval_1831 avg i(vdd) FROM=9150ps TO=9155ps
.measure tran avgval_1832 avg i(vdd) FROM=9155ps TO=9160ps
.measure tran avgval_1833 avg i(vdd) FROM=9160ps TO=9165ps
.measure tran avgval_1834 avg i(vdd) FROM=9165ps TO=9170ps
.measure tran avgval_1835 avg i(vdd) FROM=9170ps TO=9175ps
.measure tran avgval_1836 avg i(vdd) FROM=9175ps TO=9180ps
.measure tran avgval_1837 avg i(vdd) FROM=9180ps TO=9185ps
.measure tran avgval_1838 avg i(vdd) FROM=9185ps TO=9190ps
.measure tran avgval_1839 avg i(vdd) FROM=9190ps TO=9195ps
.measure tran avgval_1840 avg i(vdd) FROM=9195ps TO=9200ps
.measure tran avgval_1841 avg i(vdd) FROM=9200ps TO=9205ps
.measure tran avgval_1842 avg i(vdd) FROM=9205ps TO=9210ps
.measure tran avgval_1843 avg i(vdd) FROM=9210ps TO=9215ps
.measure tran avgval_1844 avg i(vdd) FROM=9215ps TO=9220ps
.measure tran avgval_1845 avg i(vdd) FROM=9220ps TO=9225ps
.measure tran avgval_1846 avg i(vdd) FROM=9225ps TO=9230ps
.measure tran avgval_1847 avg i(vdd) FROM=9230ps TO=9235ps
.measure tran avgval_1848 avg i(vdd) FROM=9235ps TO=9240ps
.measure tran avgval_1849 avg i(vdd) FROM=9240ps TO=9245ps
.measure tran avgval_1850 avg i(vdd) FROM=9245ps TO=9250ps
.measure tran avgval_1851 avg i(vdd) FROM=9250ps TO=9255ps
.measure tran avgval_1852 avg i(vdd) FROM=9255ps TO=9260ps
.measure tran avgval_1853 avg i(vdd) FROM=9260ps TO=9265ps
.measure tran avgval_1854 avg i(vdd) FROM=9265ps TO=9270ps
.measure tran avgval_1855 avg i(vdd) FROM=9270ps TO=9275ps
.measure tran avgval_1856 avg i(vdd) FROM=9275ps TO=9280ps
.measure tran avgval_1857 avg i(vdd) FROM=9280ps TO=9285ps
.measure tran avgval_1858 avg i(vdd) FROM=9285ps TO=9290ps
.measure tran avgval_1859 avg i(vdd) FROM=9290ps TO=9295ps
.measure tran avgval_1860 avg i(vdd) FROM=9295ps TO=9300ps
.measure tran avgval_1861 avg i(vdd) FROM=9300ps TO=9305ps
.measure tran avgval_1862 avg i(vdd) FROM=9305ps TO=9310ps
.measure tran avgval_1863 avg i(vdd) FROM=9310ps TO=9315ps
.measure tran avgval_1864 avg i(vdd) FROM=9315ps TO=9320ps
.measure tran avgval_1865 avg i(vdd) FROM=9320ps TO=9325ps
.measure tran avgval_1866 avg i(vdd) FROM=9325ps TO=9330ps
.measure tran avgval_1867 avg i(vdd) FROM=9330ps TO=9335ps
.measure tran avgval_1868 avg i(vdd) FROM=9335ps TO=9340ps
.measure tran avgval_1869 avg i(vdd) FROM=9340ps TO=9345ps
.measure tran avgval_1870 avg i(vdd) FROM=9345ps TO=9350ps
.measure tran avgval_1871 avg i(vdd) FROM=9350ps TO=9355ps
.measure tran avgval_1872 avg i(vdd) FROM=9355ps TO=9360ps
.measure tran avgval_1873 avg i(vdd) FROM=9360ps TO=9365ps
.measure tran avgval_1874 avg i(vdd) FROM=9365ps TO=9370ps
.measure tran avgval_1875 avg i(vdd) FROM=9370ps TO=9375ps
.measure tran avgval_1876 avg i(vdd) FROM=9375ps TO=9380ps
.measure tran avgval_1877 avg i(vdd) FROM=9380ps TO=9385ps
.measure tran avgval_1878 avg i(vdd) FROM=9385ps TO=9390ps
.measure tran avgval_1879 avg i(vdd) FROM=9390ps TO=9395ps
.measure tran avgval_1880 avg i(vdd) FROM=9395ps TO=9400ps
.measure tran avgval_1881 avg i(vdd) FROM=9400ps TO=9405ps
.measure tran avgval_1882 avg i(vdd) FROM=9405ps TO=9410ps
.measure tran avgval_1883 avg i(vdd) FROM=9410ps TO=9415ps
.measure tran avgval_1884 avg i(vdd) FROM=9415ps TO=9420ps
.measure tran avgval_1885 avg i(vdd) FROM=9420ps TO=9425ps
.measure tran avgval_1886 avg i(vdd) FROM=9425ps TO=9430ps
.measure tran avgval_1887 avg i(vdd) FROM=9430ps TO=9435ps
.measure tran avgval_1888 avg i(vdd) FROM=9435ps TO=9440ps
.measure tran avgval_1889 avg i(vdd) FROM=9440ps TO=9445ps
.measure tran avgval_1890 avg i(vdd) FROM=9445ps TO=9450ps
.measure tran avgval_1891 avg i(vdd) FROM=9450ps TO=9455ps
.measure tran avgval_1892 avg i(vdd) FROM=9455ps TO=9460ps
.measure tran avgval_1893 avg i(vdd) FROM=9460ps TO=9465ps
.measure tran avgval_1894 avg i(vdd) FROM=9465ps TO=9470ps
.measure tran avgval_1895 avg i(vdd) FROM=9470ps TO=9475ps
.measure tran avgval_1896 avg i(vdd) FROM=9475ps TO=9480ps
.measure tran avgval_1897 avg i(vdd) FROM=9480ps TO=9485ps
.measure tran avgval_1898 avg i(vdd) FROM=9485ps TO=9490ps
.measure tran avgval_1899 avg i(vdd) FROM=9490ps TO=9495ps
.measure tran avgval_1900 avg i(vdd) FROM=9495ps TO=9500ps
.measure tran avgval_1901 avg i(vdd) FROM=9500ps TO=9505ps
.measure tran avgval_1902 avg i(vdd) FROM=9505ps TO=9510ps
.measure tran avgval_1903 avg i(vdd) FROM=9510ps TO=9515ps
.measure tran avgval_1904 avg i(vdd) FROM=9515ps TO=9520ps
.measure tran avgval_1905 avg i(vdd) FROM=9520ps TO=9525ps
.measure tran avgval_1906 avg i(vdd) FROM=9525ps TO=9530ps
.measure tran avgval_1907 avg i(vdd) FROM=9530ps TO=9535ps
.measure tran avgval_1908 avg i(vdd) FROM=9535ps TO=9540ps
.measure tran avgval_1909 avg i(vdd) FROM=9540ps TO=9545ps
.measure tran avgval_1910 avg i(vdd) FROM=9545ps TO=9550ps
.measure tran avgval_1911 avg i(vdd) FROM=9550ps TO=9555ps
.measure tran avgval_1912 avg i(vdd) FROM=9555ps TO=9560ps
.measure tran avgval_1913 avg i(vdd) FROM=9560ps TO=9565ps
.measure tran avgval_1914 avg i(vdd) FROM=9565ps TO=9570ps
.measure tran avgval_1915 avg i(vdd) FROM=9570ps TO=9575ps
.measure tran avgval_1916 avg i(vdd) FROM=9575ps TO=9580ps
.measure tran avgval_1917 avg i(vdd) FROM=9580ps TO=9585ps
.measure tran avgval_1918 avg i(vdd) FROM=9585ps TO=9590ps
.measure tran avgval_1919 avg i(vdd) FROM=9590ps TO=9595ps
.measure tran avgval_1920 avg i(vdd) FROM=9595ps TO=9600ps
.measure tran avgval_1921 avg i(vdd) FROM=9600ps TO=9605ps
.measure tran avgval_1922 avg i(vdd) FROM=9605ps TO=9610ps
.measure tran avgval_1923 avg i(vdd) FROM=9610ps TO=9615ps
.measure tran avgval_1924 avg i(vdd) FROM=9615ps TO=9620ps
.measure tran avgval_1925 avg i(vdd) FROM=9620ps TO=9625ps
.measure tran avgval_1926 avg i(vdd) FROM=9625ps TO=9630ps
.measure tran avgval_1927 avg i(vdd) FROM=9630ps TO=9635ps
.measure tran avgval_1928 avg i(vdd) FROM=9635ps TO=9640ps
.measure tran avgval_1929 avg i(vdd) FROM=9640ps TO=9645ps
.measure tran avgval_1930 avg i(vdd) FROM=9645ps TO=9650ps
.measure tran avgval_1931 avg i(vdd) FROM=9650ps TO=9655ps
.measure tran avgval_1932 avg i(vdd) FROM=9655ps TO=9660ps
.measure tran avgval_1933 avg i(vdd) FROM=9660ps TO=9665ps
.measure tran avgval_1934 avg i(vdd) FROM=9665ps TO=9670ps
.measure tran avgval_1935 avg i(vdd) FROM=9670ps TO=9675ps
.measure tran avgval_1936 avg i(vdd) FROM=9675ps TO=9680ps
.measure tran avgval_1937 avg i(vdd) FROM=9680ps TO=9685ps
.measure tran avgval_1938 avg i(vdd) FROM=9685ps TO=9690ps
.measure tran avgval_1939 avg i(vdd) FROM=9690ps TO=9695ps
.measure tran avgval_1940 avg i(vdd) FROM=9695ps TO=9700ps
.measure tran avgval_1941 avg i(vdd) FROM=9700ps TO=9705ps
.measure tran avgval_1942 avg i(vdd) FROM=9705ps TO=9710ps
.measure tran avgval_1943 avg i(vdd) FROM=9710ps TO=9715ps
.measure tran avgval_1944 avg i(vdd) FROM=9715ps TO=9720ps
.measure tran avgval_1945 avg i(vdd) FROM=9720ps TO=9725ps
.measure tran avgval_1946 avg i(vdd) FROM=9725ps TO=9730ps
.measure tran avgval_1947 avg i(vdd) FROM=9730ps TO=9735ps
.measure tran avgval_1948 avg i(vdd) FROM=9735ps TO=9740ps
.measure tran avgval_1949 avg i(vdd) FROM=9740ps TO=9745ps
.measure tran avgval_1950 avg i(vdd) FROM=9745ps TO=9750ps
.measure tran avgval_1951 avg i(vdd) FROM=9750ps TO=9755ps
.measure tran avgval_1952 avg i(vdd) FROM=9755ps TO=9760ps
.measure tran avgval_1953 avg i(vdd) FROM=9760ps TO=9765ps
.measure tran avgval_1954 avg i(vdd) FROM=9765ps TO=9770ps
.measure tran avgval_1955 avg i(vdd) FROM=9770ps TO=9775ps
.measure tran avgval_1956 avg i(vdd) FROM=9775ps TO=9780ps
.measure tran avgval_1957 avg i(vdd) FROM=9780ps TO=9785ps
.measure tran avgval_1958 avg i(vdd) FROM=9785ps TO=9790ps
.measure tran avgval_1959 avg i(vdd) FROM=9790ps TO=9795ps
.measure tran avgval_1960 avg i(vdd) FROM=9795ps TO=9800ps
.measure tran avgval_1961 avg i(vdd) FROM=9800ps TO=9805ps
.measure tran avgval_1962 avg i(vdd) FROM=9805ps TO=9810ps
.measure tran avgval_1963 avg i(vdd) FROM=9810ps TO=9815ps
.measure tran avgval_1964 avg i(vdd) FROM=9815ps TO=9820ps
.measure tran avgval_1965 avg i(vdd) FROM=9820ps TO=9825ps
.measure tran avgval_1966 avg i(vdd) FROM=9825ps TO=9830ps
.measure tran avgval_1967 avg i(vdd) FROM=9830ps TO=9835ps
.measure tran avgval_1968 avg i(vdd) FROM=9835ps TO=9840ps
.measure tran avgval_1969 avg i(vdd) FROM=9840ps TO=9845ps
.measure tran avgval_1970 avg i(vdd) FROM=9845ps TO=9850ps
.measure tran avgval_1971 avg i(vdd) FROM=9850ps TO=9855ps
.measure tran avgval_1972 avg i(vdd) FROM=9855ps TO=9860ps
.measure tran avgval_1973 avg i(vdd) FROM=9860ps TO=9865ps
.measure tran avgval_1974 avg i(vdd) FROM=9865ps TO=9870ps
.measure tran avgval_1975 avg i(vdd) FROM=9870ps TO=9875ps
.measure tran avgval_1976 avg i(vdd) FROM=9875ps TO=9880ps
.measure tran avgval_1977 avg i(vdd) FROM=9880ps TO=9885ps
.measure tran avgval_1978 avg i(vdd) FROM=9885ps TO=9890ps
.measure tran avgval_1979 avg i(vdd) FROM=9890ps TO=9895ps
.measure tran avgval_1980 avg i(vdd) FROM=9895ps TO=9900ps
.measure tran avgval_1981 avg i(vdd) FROM=9900ps TO=9905ps
.measure tran avgval_1982 avg i(vdd) FROM=9905ps TO=9910ps
.measure tran avgval_1983 avg i(vdd) FROM=9910ps TO=9915ps
.measure tran avgval_1984 avg i(vdd) FROM=9915ps TO=9920ps
.measure tran avgval_1985 avg i(vdd) FROM=9920ps TO=9925ps
.measure tran avgval_1986 avg i(vdd) FROM=9925ps TO=9930ps
.measure tran avgval_1987 avg i(vdd) FROM=9930ps TO=9935ps
.measure tran avgval_1988 avg i(vdd) FROM=9935ps TO=9940ps
.measure tran avgval_1989 avg i(vdd) FROM=9940ps TO=9945ps
.measure tran avgval_1990 avg i(vdd) FROM=9945ps TO=9950ps
.measure tran avgval_1991 avg i(vdd) FROM=9950ps TO=9955ps
.measure tran avgval_1992 avg i(vdd) FROM=9955ps TO=9960ps
.measure tran avgval_1993 avg i(vdd) FROM=9960ps TO=9965ps
.measure tran avgval_1994 avg i(vdd) FROM=9965ps TO=9970ps
.measure tran avgval_1995 avg i(vdd) FROM=9970ps TO=9975ps
.measure tran avgval_1996 avg i(vdd) FROM=9975ps TO=9980ps
.measure tran avgval_1997 avg i(vdd) FROM=9980ps TO=9985ps
.measure tran avgval_1998 avg i(vdd) FROM=9985ps TO=9990ps
.measure tran avgval_1999 avg i(vdd) FROM=9990ps TO=9995ps
.measure tran avgval_2000 avg i(vdd) FROM=9995ps TO=10000ps

.end
