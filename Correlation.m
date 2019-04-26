%% Calculations

close all; clc; clear all;

load('C:\Users\shaya\Desktop\Datasets\Trim_Signals.mat');

% Cross Correlation for All Datasets

% Having 4 Datasets and Each has 20 Signals

Corr_Vect = zeros(size(IVDD_Tot,1),size(IVDD_Tot,3));

for iy = 1:size(IVDD_Tot,3)

    for ix = 1:size(IVDD_Tot,1)
        
        XCF = crosscorr(IVDD_ref,IVDD_Tot(ix,:,iy));

        Corr_Vect(ix,iy) = max(abs(XCF));
    end
    
end

%% Plotting and Saving Results

Mean_Sig = mean(Corr_Vect(:,1)) * ones(size(IVDD_Tot,1),1);

figure();
plot(Corr_Vect(:,1),'b','Marker','d','LineWidth',1.5);
hold on;
plot(Corr_Vect(:,2),'Color',[.7 .5 0],'Marker','o','LineWidth',1.5);
hold on;
plot(Corr_Vect(:,3),'m','Marker','s','LineWidth',1.5);
hold on;
plot(Corr_Vect(:,4),'k','Marker','^','LineWidth',1.5);
hold on;
plot(Mean_Sig,'--r','LineWidth',2.5);
hold off;
ylabel('Evaluation Signal', 'FontSize', 14);
xlabel('Current Signal Index', 'FontSize', 14);
set(gca, 'fontsize', 10);
title('Analysis of the Evaluation Signals for the Collected Datasets', 'FontSize', 14);
AX=legend('Dataset 1 = Normal Condition','Dataset 2 = Process Variations','Dataset 3 = Temperature Variations','Dataset 4 = Malicious Condition','Evaluation Signal Threshold','Location','NorthWest');
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',10);

X1_Diff = (IVDD_ref-IVDD_Tot(1,:,1));

figure();

subplot(3,1,1);
plot(1e6*IVDD_ref,'--k','LineWidth',1.5);
hold on;
plot(1e6*IVDD_Tot(1,:,1),'b','LineWidth',1.5);
hold off;
ylabel(['Amplitude (','\mu','A)'], 'FontSize', 12);
set(gca, 'fontsize', 10);
title('Comparison Between Current Signals', 'FontSize', 14);
AX=legend('Reference Current Signal',sprintf('Test Current Signal\n(from Dataset 1)'));
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',10);

subplot(3,1,2);
plot(1e6*X1_Diff(1:100),'k','LineWidth',1.5);
ylabel(['Amplitude (','\mu','A)'], 'FontSize', 12);
% xlabel('Data Point', 'FontSize', 14);
AX=legend('I_{Healthy-Reference} - I_{Healthy-Test}');
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',10);
set(gca, 'fontsize', 10);

X2_Diff = (IVDD_Tot(1,:,1)-IVDD_Tot(1,:,4));

subplot(3,1,3);
plot(1e6*X1_Diff(1:100),':k','LineWidth',1.5);
hold on;
ylim([-3300 2200]);
plot(1e6*X2_Diff(1:100),'-.r','LineWidth',1.5);
hold off;
ylabel(['Amplitude (','\mu','A)'], 'FontSize', 12);
xlabel('Data Point', 'FontSize', 14);
AX=legend('I_{Healthy-Reference} - I_{Healthy-Test}','I_{Healthy-Test} - I_{Malicious-Test}');
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',10);
set(gca, 'fontsize', 10);

% figure();
% subplot(2,1,1);
% plot(1e6*IVDD_Tot(1,:,1),'b','LineWidth',1.5);
% hold on;
% plot(1e6*IVDD_Tot(1,:,4),'r','LineWidth',1.5);
% hold off;
% plot(1e6*X1_Diff(1:100),'k','LineWidth',1.5);
% ylabel('Current Signal (Microampere)', 'FontSize', 12);
% ylim([-3100 2100]);
% set(gca, 'fontsize', 10);
% title('Comparison Between the Trojan-Free and the Trojan-Inserted Current Signals', 'FontSize', 14);
% AX=legend('Trojan-Free Current Signal','Trojan-Inserted Current Signal');
% LEG = findobj(AX,'type','text');
% set(LEG,'FontSize',10);
% subplot(2,1,2);
% plot(1e6*X2_Diff(1:100),'k','LineWidth',1.5);
% ylabel({'Current Difference';'(Microampere)'}, 'FontSize', 12);
% xlabel('Data Point', 'FontSize', 14);
% set(gca, 'fontsize', 10);
% ylim([-3100 2100]);

save('C:\Users\shaya\Desktop\Datasets\Analysis_Data.mat','Corr_Vect');

