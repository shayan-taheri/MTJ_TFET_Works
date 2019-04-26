%% Sine Data

clear all; close all; clc;

load('C:\Users\shaya\Desktop\adc results\wavy_input.mat');

times = 1e6*times;

original_analog = original_analog(772:end);

times_analog = times(772:end);

bad_output = bad_output(1533:end);

times_bad = times(1533:end);

times_bad = times_bad - mean(times_bad(1:110469)-times_analog(1:110469));


times_analog = times_analog + (times_bad(436)-times_analog(1));

figure();

subplot(2,1,1);
plot(times_analog,original_analog,'--k','LineWidth',2);
hold on;
plot(times_bad,bad_output,'r','LineWidth',2);
hold off;

% xlabel('Time (Microsecond)', 'FontSize', 12);
ylabel('Signal Amplitude (V)', 'FontSize', 12);
set(gca, 'fontsize', 10);
AX=legend(sprintf('Original Analog\nInput Signal'),sprintf('Malicious ADC Output\nReconstructed Signal'));
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',10);
xlim([0 53.172423658028805]);
title('Filtering of Malicious ADC Output', 'FontSize', 14);

subplot(2,1,2);

plot(times_bad,bad_output,'r','LineWidth',2);

xlabel(['Time (','\mu','s)'], 'FontSize', 14);
ylabel('Signal Amplitude (V)', 'FontSize', 12);
set(gca, 'fontsize', 10);
AX=legend(sprintf('Malicious ADC Output\nReconstructed Signal'),'8th Degree Polynomial Filter','9th Degree Polynomial Filter','10th Degree Polynomial Filter');
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',10);
xlim([0 53.172423658028805]);
