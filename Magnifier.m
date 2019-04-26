clear all; close all; clc;

%% Analysis Data (Example)

load('C:\Users\shaya\Desktop\adc results\ramp_input.mat');

good_output_proc = good_output + mean(original_analog(1e4:5e4)-good_output(1e4:5e4));

bad_output_proc = bad_output + mean(original_analog(1e4:5e4)-good_output(1e4:5e4));

Signal_1 = good_output_proc;
Signal_2 = bad_output_proc;

Points = times;

%% Determine the Positions and Axes of the Vertical Large Plots
figure();

hBig = [subplot(211) subplot(212)];         %# create subplots
posBig = get(hBig, 'Position');             %# record their positions
delete(hBig)                                %# delete them

hAxB(1) = axes('Position',posBig{1});
hAxB(2) = axes('Position',posBig{2});

%% Determine the Positions and Axes of the Vertical Small Plots

% Specification of Magnifier = [X_Position,Y_Position,X_Length,Y_Length]

posSmall{1} = [0.15 0.615 0.15 0.1];
posSmall{2} = [0.15 0.15 0.15 0.1];


hAxS(1) = axes('Position',posSmall{1});
hAxS(2) = axes('Position',posSmall{2});

%% Plot Vertical Results

plot(hAxB(1), Points, Signal_1, 'b');
plot(hAxB(2), Points, Signal_2, 'b');

plot(hAxS(1), Points, Signal_1, 'r');
plot(hAxS(2), Points, Signal_2, 'r');

%% Set Vertical Large Axes Properties
%set(hAxB(1),'XLim',[1 100],'YLim',[min(Signal_1) max(Signal_1)]);
%set(hAxB(2),'XLim',[1 100],'YLim',[min(Signal_2) max(Signal_2)]);

%% Set Vertical Small Axes Properties
set(hAxS(1),'XLim',[20 40],'YLim',[min(Signal_1(20:40)) max(Signal_1(20:40))],'Color','none','XAxisLocation','top','YAxisLocation','right');
set(hAxS(2),'XLim',[20 40],'YLim',[min(Signal_2(20:40)) max(Signal_2(20:40))],'Color','none','XAxisLocation','top','YAxisLocation','right');
