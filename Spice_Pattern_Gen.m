% Example: Vdata_crc_input0 data_crc_input[0] GND 0v

clear all; close all; clc;

Data = 0.6 * randi([0 1],24,20);

% The desired Spice netlist index (1-20)
iy = 20;
    
clc;

for ix = 1:24

    display(['Vdata_crc_input',num2str(ix-1),' data_crc_input[',num2str(ix-1),'] GND ',num2str(Data(ix,iy)),'v']);

end