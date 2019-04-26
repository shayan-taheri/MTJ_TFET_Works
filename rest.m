
% ---- Calculating Results (Original) ----
Corr_VML_Orig = zeros(1,16);
Corr_VML_Abs_Orig = zeros(1,16);
Corr_CML_Orig = zeros(1,16);

for i = 1:16
    
    Temp = corrcoef(P_VML((i-1)*8 + 1:(i)*8),P_EST(1,:)); % Another Key
    Corr_VML_Orig(1,i) = Temp(1,2);
    
    Temp = corrcoef(abs(P_VML((i-1)*8 + 1:(i)*8)),P_EST(1,:)); % Another Key
    Corr_VML_Abs_Orig(1,i) = Temp(1,2);
    
    Temp = corrcoef(P_CML((i-1)*8 + 1:(i)*8),P_EST(1,:)); % Another Key
    Corr_CML_Orig(1,i) = Temp(1,2);
    
end

Corr_VML_Temp = zeros(3,16);
Corr_VML_Abs_Temp = zeros(3,16);
Corr_CML_Temp = zeros(3,16);

for j = 2:4
    
    for i = 1:16
   
        Temp = corrcoef(P_VML((i-1)*8 + 1:(i)*8),P_EST(j,:)); % Another Key
        Corr_VML_Temp(j-1,i) = Temp(1,2);
    
        Temp = corrcoef(abs(P_VML((i-1)*8 + 1:(i)*8)),P_EST(j,:)); % Another Key
        Corr_VML_Abs_Temp(j-1,i) = Temp(1,2);
    
        Temp = corrcoef(P_CML((i-1)*8 + 1:(i)*8),P_EST(j,:)); % Another Key
        Corr_CML_Temp(j-1,i) = Temp(1,2);
    
    end
    
end

    
% ---- Plotting Results ----
figure();
plot(Corr_VML_Orig,'k','LineWidth',2);
hold on;
plot(Corr_VML_Temp(1,:),'--r');
hold on;
plot(Corr_VML_Temp(2,:),'--b');
hold on;
plot(Corr_VML_Temp(3,:),'--c');
hold off;
AX=legend('Original Key','Key 2','Key 3','Key 4');
xlabel('Number of Time Steps', 'FontSize', 14);
ylabel('Correlation Coefficient', 'FontSize', 14);
set(gca, 'fontsize', 12);
title('Correlation Coefficient Signal - For VML Power', 'FontSize', 14);
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',8);

figure();
plot(Corr_CML_Orig,'k','LineWidth',2);
hold on;
plot(Corr_CML_Temp(1,:),'--r');
hold on;
plot(Corr_CML_Temp(2,:),'--b');
hold on;
plot(Corr_CML_Temp(3,:),'--c');
hold off;
AX=legend('Original Key','Key 2','Key 3','Key 4');
xlabel('Number of Time Steps', 'FontSize', 14);
ylabel('Correlation Coefficient', 'FontSize', 14);
set(gca, 'fontsize', 12);
title('Correlation Coefficient Signal - For CML Power', 'FontSize', 14);
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',8);

figure();
plot(Corr_VML_Abs_Orig,'k','LineWidth',2);
hold on;
plot(Corr_VML_Abs_Temp(1,:),'--r');
hold on;
plot(Corr_VML_Abs_Temp(2,:),'--b');
hold on;
plot(Corr_VML_Abs_Temp(3,:),'--c');
hold off;
AX=legend('Original Key','Key 2','Key 3','Key 4');
xlabel('Number of Time Steps', 'FontSize', 14);
ylabel('Correlation Coefficient', 'FontSize', 14);
set(gca, 'fontsize', 12);
title('Correlation Coefficient Signal - For Absolute of VML Power', 'FontSize', 14);
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',8);

for j = 5:7
    
    for i = 1:16
   
        Temp = corrcoef(P_VML((i-1)*8 + 1:(i)*8),P_EST(j,:)); % Another Key
        Corr_VML_Temp(j-4,i) = Temp(1,2);
    
        Temp = corrcoef(abs(P_VML((i-1)*8 + 1:(i)*8)),P_EST(j,:)); % Another Key
        Corr_VML_Abs_Temp(j-4,i) = Temp(1,2);
    
        Temp = corrcoef(P_CML((i-1)*8 + 1:(i)*8),P_EST(j,:)); % Another Key
        Corr_CML_Temp(j-4,i) = Temp(1,2);
    
    end
    
end

    
% ---- Plotting Results ----
figure();
plot(Corr_VML_Orig,'k','LineWidth',2);
hold on;
plot(Corr_VML_Temp(1,:),'--r');
hold on;
plot(Corr_VML_Temp(2,:),'--b');
hold on;
plot(Corr_VML_Temp(3,:),'--c');
hold off;
AX=legend('Original Key','Key 5','Key 6','Key 7');
xlabel('Number of Time Steps', 'FontSize', 14);
ylabel('Correlation Coefficient', 'FontSize', 14);
set(gca, 'fontsize', 12);
title('Correlation Coefficient Signal - For VML Power', 'FontSize', 14);
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',8);

figure();
plot(Corr_CML_Orig,'k','LineWidth',2);
hold on;
plot(Corr_CML_Temp(1,:),'--r');
hold on;
plot(Corr_CML_Temp(2,:),'--b');
hold on;
plot(Corr_CML_Temp(3,:),'--c');
hold off;
AX=legend('Original Key','Key 5','Key 6','Key 7');
xlabel('Number of Time Steps', 'FontSize', 14);
ylabel('Correlation Coefficient', 'FontSize', 14);
set(gca, 'fontsize', 12);
title('Correlation Coefficient Signal - For CML Power', 'FontSize', 14);
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',8);

figure();
plot(Corr_VML_Abs_Orig,'k','LineWidth',2);
hold on;
plot(Corr_VML_Abs_Temp(1,:),'--r');
hold on;
plot(Corr_VML_Abs_Temp(2,:),'--b');
hold on;
plot(Corr_VML_Abs_Temp(3,:),'--c');
hold off;
AX=legend('Original Key','Key 5','Key 6','Key 7');
xlabel('Number of Time Steps', 'FontSize', 14);
ylabel('Correlation Coefficient', 'FontSize', 14);
set(gca, 'fontsize', 12);
title('Correlation Coefficient Signal - For Absolute of VML Power', 'FontSize', 14);
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',8);

for j = 8:10
    
    for i = 1:16
   
        Temp = corrcoef(P_VML((i-1)*8 + 1:(i)*8),P_EST(j,:)); % Another Key
        Corr_VML_Temp(j-7,i) = Temp(1,2);
    
        Temp = corrcoef(abs(P_VML((i-1)*8 + 1:(i)*8)),P_EST(j,:)); % Another Key
        Corr_VML_Abs_Temp(j-7,i) = Temp(1,2);
    
        Temp = corrcoef(P_CML((i-1)*8 + 1:(i)*8),P_EST(j,:)); % Another Key
        Corr_CML_Temp(j-7,i) = Temp(1,2);
    
    end
    
end

    
% ---- Plotting Results ----
figure();
plot(Corr_VML_Orig,'k','LineWidth',2);
hold on;
plot(Corr_VML_Temp(1,:),'--r');
hold on;
plot(Corr_VML_Temp(2,:),'--b');
hold on;
plot(Corr_VML_Temp(3,:),'--c');
hold off;
AX=legend('Original Key','Key 8','Key 9','Key 10');
xlabel('Number of Time Steps', 'FontSize', 14);
ylabel('Correlation Coefficient', 'FontSize', 14);
set(gca, 'fontsize', 12);
title('Correlation Coefficient Signal - For VML Power', 'FontSize', 14);
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',8);

figure();
plot(Corr_CML_Orig,'k','LineWidth',2);
hold on;
plot(Corr_CML_Temp(1,:),'--r');
hold on;
plot(Corr_CML_Temp(2,:),'--b');
hold on;
plot(Corr_CML_Temp(3,:),'--c');
hold off;
AX=legend('Original Key','Key 8','Key 9','Key 10');
xlabel('Number of Time Steps', 'FontSize', 14);
ylabel('Correlation Coefficient', 'FontSize', 14);
set(gca, 'fontsize', 12);
title('Correlation Coefficient Signal - For CML Power', 'FontSize', 14);
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',8);

figure();
plot(Corr_VML_Abs_Orig,'k','LineWidth',2);
hold on;
plot(Corr_VML_Abs_Temp(1,:),'--r');
hold on;
plot(Corr_VML_Abs_Temp(2,:),'--b');
hold on;
plot(Corr_VML_Abs_Temp(3,:),'--c');
hold off;
AX=legend('Original Key','Key 8','Key 9','Key 10');
xlabel('Number of Time Steps', 'FontSize', 14);
ylabel('Correlation Coefficient', 'FontSize', 14);
set(gca, 'fontsize', 12);
title('Correlation Coefficient Signal - For Absolute of VML Power', 'FontSize', 14);
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',8);

for j = 11:13
    
    for i = 1:16
   
        Temp = corrcoef(P_VML((i-1)*8 + 1:(i)*8),P_EST(j,:)); % Another Key
        Corr_VML_Temp(j-10,i) = Temp(1,2);
    
        Temp = corrcoef(abs(P_VML((i-1)*8 + 1:(i)*8)),P_EST(j,:)); % Another Key
        Corr_VML_Abs_Temp(j-10,i) = Temp(1,2);
    
        Temp = corrcoef(P_CML((i-1)*8 + 1:(i)*8),P_EST(j,:)); % Another Key
        Corr_CML_Temp(j-10,i) = Temp(1,2);
    
    end
    
end

    
% ---- Plotting Results ----
figure();
plot(Corr_VML_Orig,'k','LineWidth',2);
hold on;
plot(Corr_VML_Temp(1,:),'--r');
hold on;
plot(Corr_VML_Temp(2,:),'--b');
hold on;
plot(Corr_VML_Temp(3,:),'--c');
hold off;
AX=legend('Original Key','Key 11','Key 12','Key 13');
xlabel('Number of Time Steps', 'FontSize', 14);
ylabel('Correlation Coefficient', 'FontSize', 14);
set(gca, 'fontsize', 12);
title('Correlation Coefficient Signal - For VML Power', 'FontSize', 14);
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',8);

figure();
plot(Corr_CML_Orig,'k','LineWidth',2);
hold on;
plot(Corr_CML_Temp(1,:),'--r');
hold on;
plot(Corr_CML_Temp(2,:),'--b');
hold on;
plot(Corr_CML_Temp(3,:),'--c');
hold off;
AX=legend('Original Key','Key 11','Key 12','Key 13');
xlabel('Number of Time Steps', 'FontSize', 14);
ylabel('Correlation Coefficient', 'FontSize', 14);
set(gca, 'fontsize', 12);
title('Correlation Coefficient Signal - For CML Power', 'FontSize', 14);
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',8);

figure();
plot(Corr_VML_Abs_Orig,'k','LineWidth',2);
hold on;
plot(Corr_VML_Abs_Temp(1,:),'--r');
hold on;
plot(Corr_VML_Abs_Temp(2,:),'--b');
hold on;
plot(Corr_VML_Abs_Temp(3,:),'--c');
hold off;
AX=legend('Original Key','Key 11','Key 12','Key 13');
xlabel('Number of Time Steps', 'FontSize', 14);
ylabel('Correlation Coefficient', 'FontSize', 14);
set(gca, 'fontsize', 12);
title('Correlation Coefficient Signal - For Absolute of VML Power', 'FontSize', 14);
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',8);

for j = 14:16
    
    for i = 1:16
   
        Temp = corrcoef(P_VML((i-1)*8 + 1:(i)*8),P_EST(j,:)); % Another Key
        Corr_VML_Temp(j-13,i) = Temp(1,2);
    
        Temp = corrcoef(abs(P_VML((i-1)*8 + 1:(i)*8)),P_EST(j,:)); % Another Key
        Corr_VML_Abs_Temp(j-13,i) = Temp(1,2);
    
        Temp = corrcoef(P_CML((i-1)*8 + 1:(i)*8),P_EST(j,:)); % Another Key
        Corr_CML_Temp(j-13,i) = Temp(1,2);
    
    end
    
end

    
% ---- Plotting Results ----
figure();
plot(Corr_VML_Orig,'k','LineWidth',2);
hold on;
plot(Corr_VML_Temp(1,:),'--r');
hold on;
plot(Corr_VML_Temp(2,:),'--b');
hold on;
plot(Corr_VML_Temp(3,:),'--c');
hold off;
AX=legend('Original Key','Key 14','Key 15','Key 16');
xlabel('Number of Time Steps', 'FontSize', 14);
ylabel('Correlation Coefficient', 'FontSize', 14);
set(gca, 'fontsize', 12);
title('Correlation Coefficient Signal - For VML Power', 'FontSize', 14);
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',8);

figure();
plot(Corr_CML_Orig,'k','LineWidth',2);
hold on;
plot(Corr_CML_Temp(1,:),'--r');
hold on;
plot(Corr_CML_Temp(2,:),'--b');
hold on;
plot(Corr_CML_Temp(3,:),'--c');
hold off;
AX=legend('Original Key','Key 14','Key 15','Key 16');
xlabel('Number of Time Steps', 'FontSize', 14);
ylabel('Correlation Coefficient', 'FontSize', 14);
set(gca, 'fontsize', 12);
title('Correlation Coefficient Signal - For CML Power', 'FontSize', 14);
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',8);

figure();
plot(Corr_VML_Abs_Orig,'k','LineWidth',2);
hold on;
plot(Corr_VML_Abs_Temp(1,:),'--r');
hold on;
plot(Corr_VML_Abs_Temp(2,:),'--b');
hold on;
plot(Corr_VML_Abs_Temp(3,:),'--c');
hold off;
AX=legend('Original Key','Key 14','Key 15','Key 16');
xlabel('Number of Time Steps', 'FontSize', 14);
ylabel('Correlation Coefficient', 'FontSize', 14);
set(gca, 'fontsize', 12);
title('Correlation Coefficient Signal - For Absolute of VML Power', 'FontSize', 14);
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',8);