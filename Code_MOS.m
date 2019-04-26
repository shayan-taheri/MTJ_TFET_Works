

for j = 5:7
    
    for i = 1:16
   
        Temp = corrcoef(P_VML((i-1)*8 + 1:(i)*8),P_EST(j,:)); % Another Key
        Corr_VML_Temp(j-4,i) = Temp(1,2);
    
    end
    
end

% ---- Plotting Results ----
plot(Corr_VML_Temp(1,:),'--b','LineWidth',1);
hold on;
plot(Corr_VML_Temp(2,:),'--b','LineWidth',1);
hold on;
plot(Corr_VML_Temp(3,:),'--b','LineWidth',1);
hold on;

for j = 8:10
    
    for i = 1:16
   
        Temp = corrcoef(P_VML((i-1)*8 + 1:(i)*8),P_EST(j,:)); % Another Key
        Corr_VML_Temp(j-7,i) = Temp(1,2);
    
    end
    
end

% ---- Plotting Results ----
plot(Corr_VML_Temp(1,:),'--b','LineWidth',1);
hold on;
plot(Corr_VML_Temp(2,:),'--b','LineWidth',1);
hold on;
plot(Corr_VML_Temp(3,:),'--b','LineWidth',1);
hold on;

for j = 11:13
    
    for i = 1:16
   
        Temp = corrcoef(P_VML((i-1)*8 + 1:(i)*8),P_EST(j,:)); % Another Key
        Corr_VML_Temp(j-10,i) = Temp(1,2);
    
    end
    
end

    
% ---- Plotting Results ----
plot(Corr_VML_Temp(1,:),'--b','LineWidth',1);
hold on;
plot(Corr_VML_Temp(2,:),'--b','LineWidth',1);
hold on;
plot(Corr_VML_Temp(3,:),'--b','LineWidth',1);
hold on;

for j = 14:16
    
    for i = 1:16
   
        Temp = corrcoef(P_VML((i-1)*8 + 1:(i)*8),P_EST(j,:)); % Another Key
        Corr_VML_Temp(j-13,i) = Temp(1,2);
    
    end
    
end

% ---- Plotting Results ----
plot(Corr_VML_Temp(1,:),'--b','LineWidth',1);
hold on;
plot(Corr_VML_Temp(2,:),'--b','LineWidth',1);
hold on;
plot(Corr_VML_Temp(3,:),'--b','LineWidth',1);
hold off;

xlabel('Number of Time Steps', 'FontSize', 14);
ylabel('Correlation Coefficient', 'FontSize', 14);
set(gca, 'fontsize', 12);
title('Correlation Coefficient Signal - For VML Power', 'FontSize', 14);

AX=legend('Original Key','Guessed Keys');
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',8);


for j = 2:4
    
    for i = 1:16
   
        Temp = corrcoef(P_CML((i-1)*8 + 1:(i)*8),P_EST(j,:)); % Another Key
        Corr_CML_Temp(j-1,i) = Temp(1,2);
    
    end
    
end

% ---- Plotting Results ----
figure();
plot(Corr_CML_Orig,'k','LineWidth',3);
hold on;
plot(Corr_CML_Temp(1,:),'--b','LineWidth',1);
hold on;
plot(Corr_CML_Temp(2,:),'--b','LineWidth',1);
hold on;
plot(Corr_CML_Temp(3,:),'--b','LineWidth',1);
hold on;

for j = 5:7
    
    for i = 1:16
   
        Temp = corrcoef(P_CML((i-1)*8 + 1:(i)*8),P_EST(j,:)); % Another Key
        Corr_CML_Temp(j-4,i) = Temp(1,2);
    
    end
    
end

% ---- Plotting Results ----
plot(Corr_CML_Temp(1,:),'--b','LineWidth',1);
hold on;
plot(Corr_CML_Temp(2,:),'--b','LineWidth',1);
hold on;
plot(Corr_CML_Temp(3,:),'--b','LineWidth',1);
hold on;

for j = 8:10
    
    for i = 1:16
   
        Temp = corrcoef(P_CML((i-1)*8 + 1:(i)*8),P_EST(j,:)); % Another Key
        Corr_CML_Temp(j-7,i) = Temp(1,2);
    
    end
    
end

% ---- Plotting Results ----
plot(Corr_CML_Temp(1,:),'--b','LineWidth',1);
hold on;
plot(Corr_CML_Temp(2,:),'--b','LineWidth',1);
hold on;
plot(Corr_CML_Temp(3,:),'--b','LineWidth',1);
hold on;

for j = 11:13
    
    for i = 1:16
   
        Temp = corrcoef(P_CML((i-1)*8 + 1:(i)*8),P_EST(j,:)); % Another Key
        Corr_CML_Temp(j-10,i) = Temp(1,2);
    
    end
    
end

    
% ---- Plotting Results ----
plot(Corr_CML_Temp(1,:),'--b','LineWidth',1);
hold on;
plot(Corr_CML_Temp(2,:),'--b','LineWidth',1);
hold on;
plot(Corr_CML_Temp(3,:),'--b','LineWidth',1);
hold on;

for j = 14:16
    
    for i = 1:16
   
        Temp = corrcoef(P_CML((i-1)*8 + 1:(i)*8),P_EST(j,:)); % Another Key
        Corr_CML_Temp(j-13,i) = Temp(1,2);
    
    end
    
end

% ---- Plotting Results ----
plot(Corr_CML_Temp(1,:),'--b','LineWidth',1);
hold on;
plot(Corr_CML_Temp(2,:),'--b','LineWidth',1);
hold on;
plot(Corr_CML_Temp(3,:),'--b','LineWidth',1);
hold off;

xlabel('Number of Time Steps', 'FontSize', 14);
ylabel('Correlation Coefficient', 'FontSize', 14);
set(gca, 'fontsize', 12);
title('Correlation Coefficient Signal - For CML Power', 'FontSize', 14);

AX=legend('Original Key','Guessed Keys');
LEG = findobj(AX,'type','text');
set(LEG,'FontSize',8);
