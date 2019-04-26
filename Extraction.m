%% Environment Preparation

close all; clc; clear all;

addpath('C:\Users\shaya\Desktop\Datasets\HspiceToolbox');

% Replacements Between Sets:
% 1) set_??
% 2) S?_IVDD

%% Extraction of Dataset 01

Sig_01 = loadsig('C:\Users\shaya\Desktop\Datasets\set_01\sig_01.tr0');

S1_IVDD_01 = evalsig(Sig_01,'i_vdd');

clear Sig_01;

Sig_02 = loadsig('C:\Users\shaya\Desktop\Datasets\set_01\sig_02.tr0');

S1_IVDD_02 = evalsig(Sig_02,'i_vdd');

clear Sig_02;

Sig_03 = loadsig('C:\Users\shaya\Desktop\Datasets\set_01\sig_03.tr0');

S1_IVDD_03 = evalsig(Sig_03,'i_vdd');

clear Sig_03;

Sig_04 = loadsig('C:\Users\shaya\Desktop\Datasets\set_01\sig_04.tr0');

S1_IVDD_04 = evalsig(Sig_04,'i_vdd');

clear Sig_04;

Sig_05 = loadsig('C:\Users\shaya\Desktop\Datasets\set_01\sig_05.tr0');

S1_IVDD_05 = evalsig(Sig_05,'i_vdd');

clear Sig_05;

Sig_06 = loadsig('C:\Users\shaya\Desktop\Datasets\set_01\sig_06.tr0');

S1_IVDD_06 = evalsig(Sig_06,'i_vdd');

clear Sig_06;

Sig_07 = loadsig('C:\Users\shaya\Desktop\Datasets\set_01\sig_07.tr0');

S1_IVDD_07 = evalsig(Sig_07,'i_vdd');

clear Sig_07;

Sig_08 = loadsig('C:\Users\shaya\Desktop\Datasets\set_01\sig_08.tr0');

S1_IVDD_08 = evalsig(Sig_08,'i_vdd');

clear Sig_08;

Sig_09 = loadsig('C:\Users\shaya\Desktop\Datasets\set_01\sig_09.tr0');

S1_IVDD_09 = evalsig(Sig_09,'i_vdd');

clear Sig_09;

Sig_10 = loadsig('C:\Users\shaya\Desktop\Datasets\set_01\sig_10.tr0');

S1_IVDD_10 = evalsig(Sig_10,'i_vdd');

clear Sig_10;

Sig_11 = loadsig('C:\Users\shaya\Desktop\Datasets\set_01\sig_11.tr0');

S1_IVDD_11 = evalsig(Sig_11,'i_vdd');

clear Sig_11;

Sig_12 = loadsig('C:\Users\shaya\Desktop\Datasets\set_01\sig_12.tr0');

S1_IVDD_12 = evalsig(Sig_12,'i_vdd');

clear Sig_12;

Sig_13 = loadsig('C:\Users\shaya\Desktop\Datasets\set_01\sig_13.tr0');

S1_IVDD_13 = evalsig(Sig_13,'i_vdd');

clear Sig_13;

Sig_14 = loadsig('C:\Users\shaya\Desktop\Datasets\set_01\sig_14.tr0');

S1_IVDD_14 = evalsig(Sig_14,'i_vdd');

clear Sig_14;

Sig_15 = loadsig('C:\Users\shaya\Desktop\Datasets\set_01\sig_15.tr0');

S1_IVDD_15 = evalsig(Sig_15,'i_vdd');

clear Sig_15;

Sig_16 = loadsig('C:\Users\shaya\Desktop\Datasets\set_01\sig_16.tr0');

S1_IVDD_16 = evalsig(Sig_16,'i_vdd');

clear Sig_16;

Sig_17 = loadsig('C:\Users\shaya\Desktop\Datasets\set_01\sig_17.tr0');

S1_IVDD_17 = evalsig(Sig_17,'i_vdd');

clear Sig_17;

Sig_18 = loadsig('C:\Users\shaya\Desktop\Datasets\set_01\sig_18.tr0');

S1_IVDD_18 = evalsig(Sig_18,'i_vdd');

clear Sig_18;

Sig_19 = loadsig('C:\Users\shaya\Desktop\Datasets\set_01\sig_19.tr0');

S1_IVDD_19 = evalsig(Sig_19,'i_vdd');

clear Sig_19;

Sig_20 = loadsig('C:\Users\shaya\Desktop\Datasets\set_01\sig_20.tr0');

S1_IVDD_20 = evalsig(Sig_20,'i_vdd');

clear Sig_20;

%% Extraction of Dataset 02

Sig_01 = loadsig('C:\Users\shaya\Desktop\Datasets\set_02\sig_01.tr0');

S2_IVDD_01 = evalsig(Sig_01,'i_vdd');

clear Sig_01;

Sig_02 = loadsig('C:\Users\shaya\Desktop\Datasets\set_02\sig_02.tr0');

S2_IVDD_02 = evalsig(Sig_02,'i_vdd');

clear Sig_02;

Sig_03 = loadsig('C:\Users\shaya\Desktop\Datasets\set_02\sig_03.tr0');

S2_IVDD_03 = evalsig(Sig_03,'i_vdd');

clear Sig_03;

Sig_04 = loadsig('C:\Users\shaya\Desktop\Datasets\set_02\sig_04.tr0');

S2_IVDD_04 = evalsig(Sig_04,'i_vdd');

clear Sig_04;

Sig_05 = loadsig('C:\Users\shaya\Desktop\Datasets\set_02\sig_05.tr0');

S2_IVDD_05 = evalsig(Sig_05,'i_vdd');

clear Sig_05;

Sig_06 = loadsig('C:\Users\shaya\Desktop\Datasets\set_02\sig_06.tr0');

S2_IVDD_06 = evalsig(Sig_06,'i_vdd');

clear Sig_06;

Sig_07 = loadsig('C:\Users\shaya\Desktop\Datasets\set_02\sig_07.tr0');

S2_IVDD_07 = evalsig(Sig_07,'i_vdd');

clear Sig_07;

Sig_08 = loadsig('C:\Users\shaya\Desktop\Datasets\set_02\sig_08.tr0');

S2_IVDD_08 = evalsig(Sig_08,'i_vdd');

clear Sig_08;

Sig_09 = loadsig('C:\Users\shaya\Desktop\Datasets\set_02\sig_09.tr0');

S2_IVDD_09 = evalsig(Sig_09,'i_vdd');

clear Sig_09;

Sig_10 = loadsig('C:\Users\shaya\Desktop\Datasets\set_02\sig_10.tr0');

S2_IVDD_10 = evalsig(Sig_10,'i_vdd');

clear Sig_10;

Sig_11 = loadsig('C:\Users\shaya\Desktop\Datasets\set_02\sig_11.tr0');

S2_IVDD_11 = evalsig(Sig_11,'i_vdd');

clear Sig_11;

Sig_12 = loadsig('C:\Users\shaya\Desktop\Datasets\set_02\sig_12.tr0');

S2_IVDD_12 = evalsig(Sig_12,'i_vdd');

clear Sig_12;

Sig_13 = loadsig('C:\Users\shaya\Desktop\Datasets\set_02\sig_13.tr0');

S2_IVDD_13 = evalsig(Sig_13,'i_vdd');

clear Sig_13;

Sig_14 = loadsig('C:\Users\shaya\Desktop\Datasets\set_02\sig_14.tr0');

S2_IVDD_14 = evalsig(Sig_14,'i_vdd');

clear Sig_14;

Sig_15 = loadsig('C:\Users\shaya\Desktop\Datasets\set_02\sig_15.tr0');

S2_IVDD_15 = evalsig(Sig_15,'i_vdd');

clear Sig_15;

Sig_16 = loadsig('C:\Users\shaya\Desktop\Datasets\set_02\sig_16.tr0');

S2_IVDD_16 = evalsig(Sig_16,'i_vdd');

clear Sig_16;

Sig_17 = loadsig('C:\Users\shaya\Desktop\Datasets\set_02\sig_17.tr0');

S2_IVDD_17 = evalsig(Sig_17,'i_vdd');

clear Sig_17;

Sig_18 = loadsig('C:\Users\shaya\Desktop\Datasets\set_02\sig_18.tr0');

S2_IVDD_18 = evalsig(Sig_18,'i_vdd');

clear Sig_18;

Sig_19 = loadsig('C:\Users\shaya\Desktop\Datasets\set_02\sig_19.tr0');

S2_IVDD_19 = evalsig(Sig_19,'i_vdd');

clear Sig_19;

Sig_20 = loadsig('C:\Users\shaya\Desktop\Datasets\set_02\sig_20.tr0');

S2_IVDD_20 = evalsig(Sig_20,'i_vdd');

clear Sig_20;

%% Extraction of Dataset 03

Sig_01 = loadsig('C:\Users\shaya\Desktop\Datasets\set_03\sig_01.tr0');

S3_IVDD_01 = evalsig(Sig_01,'i_vdd');

clear Sig_01;

Sig_02 = loadsig('C:\Users\shaya\Desktop\Datasets\set_03\sig_02.tr0');

S3_IVDD_02 = evalsig(Sig_02,'i_vdd');

clear Sig_02;

Sig_03 = loadsig('C:\Users\shaya\Desktop\Datasets\set_03\sig_03.tr0');

S3_IVDD_03 = evalsig(Sig_03,'i_vdd');

clear Sig_03;

Sig_04 = loadsig('C:\Users\shaya\Desktop\Datasets\set_03\sig_04.tr0');

S3_IVDD_04 = evalsig(Sig_04,'i_vdd');

clear Sig_04;

Sig_05 = loadsig('C:\Users\shaya\Desktop\Datasets\set_03\sig_05.tr0');

S3_IVDD_05 = evalsig(Sig_05,'i_vdd');

clear Sig_05;

Sig_06 = loadsig('C:\Users\shaya\Desktop\Datasets\set_03\sig_06.tr0');

S3_IVDD_06 = evalsig(Sig_06,'i_vdd');

clear Sig_06;

Sig_07 = loadsig('C:\Users\shaya\Desktop\Datasets\set_03\sig_07.tr0');

S3_IVDD_07 = evalsig(Sig_07,'i_vdd');

clear Sig_07;

Sig_08 = loadsig('C:\Users\shaya\Desktop\Datasets\set_03\sig_08.tr0');

S3_IVDD_08 = evalsig(Sig_08,'i_vdd');

clear Sig_08;

Sig_09 = loadsig('C:\Users\shaya\Desktop\Datasets\set_03\sig_09.tr0');

S3_IVDD_09 = evalsig(Sig_09,'i_vdd');

clear Sig_09;

Sig_10 = loadsig('C:\Users\shaya\Desktop\Datasets\set_03\sig_10.tr0');

S3_IVDD_10 = evalsig(Sig_10,'i_vdd');

clear Sig_10;

Sig_11 = loadsig('C:\Users\shaya\Desktop\Datasets\set_03\sig_11.tr0');

S3_IVDD_11 = evalsig(Sig_11,'i_vdd');

clear Sig_11;

Sig_12 = loadsig('C:\Users\shaya\Desktop\Datasets\set_03\sig_12.tr0');

S3_IVDD_12 = evalsig(Sig_12,'i_vdd');

clear Sig_12;

Sig_13 = loadsig('C:\Users\shaya\Desktop\Datasets\set_03\sig_13.tr0');

S3_IVDD_13 = evalsig(Sig_13,'i_vdd');

clear Sig_13;

Sig_14 = loadsig('C:\Users\shaya\Desktop\Datasets\set_03\sig_14.tr0');

S3_IVDD_14 = evalsig(Sig_14,'i_vdd');

clear Sig_14;

Sig_15 = loadsig('C:\Users\shaya\Desktop\Datasets\set_03\sig_15.tr0');

S3_IVDD_15 = evalsig(Sig_15,'i_vdd');

clear Sig_15;

Sig_16 = loadsig('C:\Users\shaya\Desktop\Datasets\set_03\sig_16.tr0');

S3_IVDD_16 = evalsig(Sig_16,'i_vdd');

clear Sig_16;

Sig_17 = loadsig('C:\Users\shaya\Desktop\Datasets\set_03\sig_17.tr0');

S3_IVDD_17 = evalsig(Sig_17,'i_vdd');

clear Sig_17;

Sig_18 = loadsig('C:\Users\shaya\Desktop\Datasets\set_03\sig_18.tr0');

S3_IVDD_18 = evalsig(Sig_18,'i_vdd');

clear Sig_18;

Sig_19 = loadsig('C:\Users\shaya\Desktop\Datasets\set_03\sig_19.tr0');

S3_IVDD_19 = evalsig(Sig_19,'i_vdd');

clear Sig_19;

Sig_20 = loadsig('C:\Users\shaya\Desktop\Datasets\set_03\sig_20.tr0');

S3_IVDD_20 = evalsig(Sig_20,'i_vdd');

clear Sig_20;

%% Extraction of Dataset 04

Sig_01 = loadsig('C:\Users\shaya\Desktop\Datasets\set_04\sig_01.tr0');

S4_IVDD_01 = evalsig(Sig_01,'i_vdd');

clear Sig_01;

Sig_02 = loadsig('C:\Users\shaya\Desktop\Datasets\set_04\sig_02.tr0');

S4_IVDD_02 = evalsig(Sig_02,'i_vdd');

clear Sig_02;

Sig_03 = loadsig('C:\Users\shaya\Desktop\Datasets\set_04\sig_03.tr0');

S4_IVDD_03 = evalsig(Sig_03,'i_vdd');

clear Sig_03;

Sig_04 = loadsig('C:\Users\shaya\Desktop\Datasets\set_04\sig_04.tr0');

S4_IVDD_04 = evalsig(Sig_04,'i_vdd');

clear Sig_04;

Sig_05 = loadsig('C:\Users\shaya\Desktop\Datasets\set_04\sig_05.tr0');

S4_IVDD_05 = evalsig(Sig_05,'i_vdd');

clear Sig_05;

Sig_06 = loadsig('C:\Users\shaya\Desktop\Datasets\set_04\sig_06.tr0');

S4_IVDD_06 = evalsig(Sig_06,'i_vdd');

clear Sig_06;

Sig_07 = loadsig('C:\Users\shaya\Desktop\Datasets\set_04\sig_07.tr0');

S4_IVDD_07 = evalsig(Sig_07,'i_vdd');

clear Sig_07;

Sig_08 = loadsig('C:\Users\shaya\Desktop\Datasets\set_04\sig_08.tr0');

S4_IVDD_08 = evalsig(Sig_08,'i_vdd');

clear Sig_08;

Sig_09 = loadsig('C:\Users\shaya\Desktop\Datasets\set_04\sig_09.tr0');

S4_IVDD_09 = evalsig(Sig_09,'i_vdd');

clear Sig_09;

Sig_10 = loadsig('C:\Users\shaya\Desktop\Datasets\set_04\sig_10.tr0');

S4_IVDD_10 = evalsig(Sig_10,'i_vdd');

clear Sig_10;

Sig_11 = loadsig('C:\Users\shaya\Desktop\Datasets\set_04\sig_11.tr0');

S4_IVDD_11 = evalsig(Sig_11,'i_vdd');

clear Sig_11;

Sig_12 = loadsig('C:\Users\shaya\Desktop\Datasets\set_04\sig_12.tr0');

S4_IVDD_12 = evalsig(Sig_12,'i_vdd');

clear Sig_12;

Sig_13 = loadsig('C:\Users\shaya\Desktop\Datasets\set_04\sig_13.tr0');

S4_IVDD_13 = evalsig(Sig_13,'i_vdd');

clear Sig_13;

Sig_14 = loadsig('C:\Users\shaya\Desktop\Datasets\set_04\sig_14.tr0');

S4_IVDD_14 = evalsig(Sig_14,'i_vdd');

clear Sig_14;

Sig_15 = loadsig('C:\Users\shaya\Desktop\Datasets\set_04\sig_15.tr0');

S4_IVDD_15 = evalsig(Sig_15,'i_vdd');

clear Sig_15;

Sig_16 = loadsig('C:\Users\shaya\Desktop\Datasets\set_04\sig_16.tr0');

S4_IVDD_16 = evalsig(Sig_16,'i_vdd');

clear Sig_16;

Sig_17 = loadsig('C:\Users\shaya\Desktop\Datasets\set_04\sig_17.tr0');

S4_IVDD_17 = evalsig(Sig_17,'i_vdd');

clear Sig_17;

Sig_18 = loadsig('C:\Users\shaya\Desktop\Datasets\set_04\sig_18.tr0');

S4_IVDD_18 = evalsig(Sig_18,'i_vdd');

clear Sig_18;

Sig_19 = loadsig('C:\Users\shaya\Desktop\Datasets\set_04\sig_19.tr0');

S4_IVDD_19 = evalsig(Sig_19,'i_vdd');

clear Sig_19;

Sig_20 = loadsig('C:\Users\shaya\Desktop\Datasets\set_04\sig_20.tr0');

S4_IVDD_20 = evalsig(Sig_20,'i_vdd');

clear Sig_20;

%% Extraction of Reference Signal

Sig_ref = loadsig('C:\Users\shaya\Desktop\Datasets\sig_ref\sig_ref.tr0');

IVDD_ref = evalsig(Sig_ref,'i_vdd');

clear Sig_ref;


%% Saving All Data
save('C:\Users\shaya\Desktop\Datasets\All_Signals.mat');
