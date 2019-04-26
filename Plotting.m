%% Ramp Data

close all; clear all; clc;

load('C:\Users\shaya\Desktop\adc results\ramp_input.mat');

good_output_proc = good_output + mean(original_analog(1e4:5e4)-good_output(1e4:5e4));

bad_output_proc = bad_output + mean(original_analog(1e4:5e4)-good_output(1e4:5e4));

times = 1e6*times;

figure();

subplot(2,2,1);
plot(times,original_analog,'--k','LineWidth',1.5);
hold on;
plot(times,good_output_proc,'b','LineWidth',1.5);
hold off;

ylabel('Signal Amplitude (V)', 'FontSize', 12);
set(gca, 'fontsize', 10);
AX=legend(sprintf('Original Analog\nInput Signal'),sprintf('Healthy ADC Output\nReconstructed Signal'));
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',10);

subplot(2,2,2);
plot(times(5650:13356),original_analog(5650:13356),'--k','LineWidth',1.5);
hold on;
plot(times(5650:13356),good_output_proc(5650:13356),'b','LineWidth',1.5);
hold off;

set(gca, 'fontsize', 10);

subplot(2,2,3);
plot(times,original_analog,'--k','LineWidth',1.5);
hold on;
plot(times,bad_output_proc,'r','LineWidth',1.5);
hold off;

ylabel('Signal Amplitude (V)', 'FontSize', 12);
xlabel(['Time (','\mu','s)'], 'FontSize', 12);
set(gca, 'fontsize', 10);
AX=legend(sprintf('Original Analog\nInput Signal'),sprintf('Malicious ADC Output\nReconstructed Signal'));
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',10);

subplot(2,2,4);
plot(times(5650:13356),original_analog(5650:13356),'--k','LineWidth',1.5);
hold on;
plot(times(5650:13356),bad_output_proc(5650:13356),'r','LineWidth',1.5);
hold off;
xlabel(['Time (','\mu','s)'], 'FontSize', 12);
set(gca, 'fontsize', 10);
