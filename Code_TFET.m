%% ---- Preparing Environment ----
clear all;
close all;

P_CML = -[-3.7094383e-04,-3.7094352e-04,-3.7094335e-04,-3.7094330e-04,-3.7094325e-04,-3.7094319e-04,-3.7094314e-04,-3.7094309e-04,-3.7094304e-04,-3.7094299e-04,-3.7134411e-04,-3.7057675e-04,-3.7023388e-04,-3.6993892e-04,-3.6970434e-04,-3.6953559e-04,-3.6940921e-04,-3.6932159e-04,-3.6923997e-04,-3.6919479e-04,-3.6915575e-04,-3.6912358e-04,-3.6910970e-04,-3.6909680e-04,-3.6908390e-04,-3.6907349e-04,-3.6906963e-04,-3.6906611e-04,-3.6906260e-04,-3.6905908e-04,-3.6905557e-04,-3.6905212e-04,-3.6905074e-04,-3.6905029e-04,-3.6904985e-04,-3.6904940e-04,-3.6904895e-04,-3.6904850e-04,-3.6904806e-04,-3.6904761e-04,-3.6904716e-04,-3.6904671e-04,-3.6904627e-04,-3.6904582e-04,-3.6904538e-04,-3.6904515e-04,-3.6904503e-04,-3.6904492e-04,-3.6904481e-04,-3.6904470e-04,-3.6904459e-04,-3.6904448e-04,-3.6904437e-04,-3.6904426e-04,-3.6904415e-04,-3.6904404e-04,-3.6904393e-04,-3.6904382e-04,-3.6904370e-04,-3.6904359e-04,-3.6922448e-04,-3.6892029e-04,-3.6898543e-04,-3.6902847e-04,-3.6904630e-04,-3.6905676e-04,-3.6906580e-04,-3.6906767e-04,-3.6906855e-04,-3.6906942e-04,-3.6907030e-04,-3.6907117e-04,-3.6907205e-04,-3.6907292e-04,-3.6907380e-04,-3.6907467e-04,-3.6907555e-04,-3.6907642e-04,-3.6907725e-04,-3.6907751e-04,-3.6907761e-04,-3.6907770e-04,-3.6907779e-04,-3.6907789e-04,-3.6907798e-04,-3.6907807e-04,-3.6907817e-04,-3.6907826e-04,-3.6907835e-04,-3.6907845e-04,-3.6907854e-04,-3.6907863e-04,-3.6907873e-04,-3.6907882e-04,-3.6907891e-04,-3.6907900e-04,-3.6907904e-04,-3.6907907e-04,-3.6907910e-04,-3.6907913e-04,-3.6907915e-04,-3.6907918e-04,-3.6907921e-04,-3.6907924e-04,-3.6907927e-04,-3.6907929e-04,-3.6907932e-04,-3.6907935e-04,-3.6907938e-04,-3.6907941e-04,-3.6935840e-04,-3.6902499e-04,-3.6904955e-04,-3.6905565e-04,-3.6905883e-04,-3.6905737e-04,-3.6905587e-04,-3.6905469e-04,-3.6905366e-04,-3.6905262e-04,-3.6905158e-04,-3.6905054e-04,-3.6904951e-04,-3.6904847e-04,-3.6904743e-04,-3.6904639e-04,-3.6904563e-04,-3.6904545e-04];

P_VML = [-4.5057700e-07,-4.5005125e-07,-4.4979058e-07,-4.4971732e-07,-4.4964406e-07,-4.4957081e-07,-4.4949755e-07,-4.4942429e-07,-4.4935104e-07,-4.4927778e-07,2.5678953e-05,-8.0314006e-06,-1.5020420e-05,-2.0105355e-05,-2.0334459e-05,-1.7411079e-05,-2.0196571e-05,-2.1858175e-05,-1.8638912e-05,-1.4540847e-05,-1.1014897e-05,-8.4822415e-06,-6.6845840e-06,-5.3122845e-06,-4.4020863e-06,-3.5827725e-06,-3.0873500e-06,-2.6524207e-06,-2.2251924e-06,-1.9711465e-06,-1.7886728e-06,-1.6061992e-06,-1.4237256e-06,-1.2416475e-06,-1.1242634e-06,-1.0539218e-06,-9.8358016e-07,-9.1323855e-07,-8.4289694e-07,-7.7255532e-07,-7.2232453e-07,-7.0690573e-07,-6.9210345e-07,-6.7730117e-07,-6.6249888e-07,-6.4769660e-07,-6.3289432e-07,-6.1809203e-07,-6.0328975e-07,-5.8848747e-07,-5.7368518e-07,-5.5888290e-07,-5.4408062e-07,-5.2928185e-07,-5.1890142e-07,-5.1246469e-07,-5.0602795e-07,-4.9959121e-07,-4.9315447e-07,-4.8671773e-07,-8.2833667e-05,-8.3526132e-06,-1.5906361e-06,-4.9447231e-07,-2.2653804e-07,-1.4777117e-07,-1.7650990e-07,-2.0664142e-07,-2.3544390e-07,-2.6323305e-07,-2.9102220e-07,-3.1881135e-07,-3.4660050e-07,-3.7067279e-07,-3.7750678e-07,-3.8217313e-07,-3.8683948e-07,-3.9150584e-07,-3.9617219e-07,-4.0083854e-07,-4.0550489e-07,-4.1017125e-07,-4.1483760e-07,-4.1950395e-07,-4.2417031e-07,-4.2883666e-07,-4.3291818e-07,-4.3393984e-07,-4.3451969e-07,-4.3509955e-07,-4.3567940e-07,-4.3625925e-07,-4.3683911e-07,-4.3741896e-07,-4.3799882e-07,-4.3857867e-07,-4.3915852e-07,-4.3973838e-07,-4.4031823e-07,-4.4089808e-07,-4.4147794e-07,-4.4205779e-07,-4.4263765e-07,-4.4321750e-07,-4.4379735e-07,-4.4437721e-07,-4.4494874e-07,-4.4536419e-07,-4.4572060e-07,-4.4607701e-07,2.6127384e-05,-7.7125211e-06,-1.3518950e-05,-1.3556696e-05,-1.2117596e-05,-1.0315126e-05,-8.5667407e-06,-7.1082406e-06,-5.9005127e-06,-4.9735086e-06,-4.0822417e-06,-3.5479809e-06,-3.1066689e-06,-2.6653569e-06,-2.2273284e-06,-1.9539124e-06,-1.7723567e-06,-1.5908011e-06];

P_EST = [3,3,4,4,7,5,2,0;5,3,4,3,5,1,5,0;6,2,3,2,3,4,1,0;4,2,6,3,4,3,3,0;4,6,6,4,6,3,3,0;3,5,1,6,4,5,0,0;4,7,5,4,3,4,4,0;4,3,4,5,4,4,2,0;2,2,5,5,7,6,4,0;3,3,4,4,1,6,2,0;3,2,6,4,4,1,0,0;2,6,2,4,2,4,3,0;3,6,3,3,3,5,2,0;4,3,3,6,4,4,3,0;2,2,3,7,5,5,4,1;3,3,7,5,4,4,2,0];

Time = [0.1:0.1:12.8];

% ---- Plotting Results ----
figure();
plot(Time,P_VML);
xlabel('Time Step (Nanosecond)', 'FontSize', 14);
ylabel('Power Consumption (Watt)', 'FontSize', 14);
set(gca, 'fontsize', 12);
title('VML Power Consumption Signal', 'FontSize', 14);
% ----------------------------------------------------
figure();
plot(Time,P_CML);
xlabel('Time Step (Nanosecond)', 'FontSize', 14);
ylabel('Power Consumption (Watt)', 'FontSize', 14);
set(gca, 'fontsize', 12);
title('CML Power Consumption Signal', 'FontSize', 14);

% ---- Calculating Results (Original) ----
Corr_VML_Orig = zeros(1,16);
Corr_CML_Orig = zeros(1,16);

Corr_VML_Temp = zeros(3,16);
Corr_CML_Temp = zeros(3,16);

for i = 1:16
    
    Temp = corrcoef(P_VML((i-1)*8 + 1:(i)*8),P_EST(1,:)); % Another Key
    Corr_VML_Orig(1,i) = Temp(1,2);
    
    Temp = corrcoef(P_CML((i-1)*8 + 1:(i)*8),P_EST(1,:)); % Another Key
    Corr_CML_Orig(1,i) = Temp(1,2);
    
end

for j = 2:4
    
    for i = 1:16
   
        Temp = corrcoef(P_VML((i-1)*8 + 1:(i)*8),P_EST(j,:)); % Another Key
        Corr_VML_Temp(j-1,i) = Temp(1,2);
    
    end
    
end

% ---- Plotting Results ----
figure();
plot(Corr_VML_Orig,'k','LineWidth',3);
hold on;
plot(Corr_VML_Temp(1,:),'--b','LineWidth',1);
hold on;
plot(Corr_VML_Temp(2,:),'--b','LineWidth',1);
hold on;
plot(Corr_VML_Temp(3,:),'--b','LineWidth',1);
hold on;

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
