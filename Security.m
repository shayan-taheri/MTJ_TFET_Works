%% Script Explanation

% 1) This script is used for security checking the current signals.
% 2) Security Checking = Accepting or Rejecting the Test Signals
% 3) Calculating the False Positives and the False Negatives
% 4) Calculating the True Positives and the True Negatives
% 5) Finding Accuracy, Precision, Recall, and Specificity Parameters
% 6) Possible Ranges of Threshold Value? = 1%, 2.5%, 5%, 10%, 25%

% Corr_Vect = Matrix of Evaluation Signals for 4 Datasets

% Each "Corr_Vect" Row = A dataset evaluation signal

% Sec_Vect = Matrix of "True and Wrong" "Accepted and Rejected" Signals

% Each "Sec_Vect" Row = {True_Accept,Wrong_Accept,True_Reject,Wrong_Reject}

% Datasets 1-3 = All belong to the original circuit

% Dataset 4 = It belongs to the infected circuit

% Datatset 1 = The circuit operates in normal condition

%% Calculations

close all; clc; clear all;

load('C:\Users\shaya\Desktop\Past_Works\My Second Paper Stuff\Datasets\Analysis_Data.mat');

TH_PCT = 25; % Percentage Range of Threshold Value

TH_Val = mean(Corr_Vect(:,1)); % Threshold Value

TH_High = TH_Val + TH_PCT*TH_Val/100;

TH_Low = TH_Val - TH_PCT*TH_Val/100;

Sec_Vect = zeros(size(Corr_Vect,2),4); % Matrix of Security Data

for iy = 1:size(Corr_Vect,2)

    for ix = 1:size(Corr_Vect,1)
        
        if ((Corr_Vect(ix,iy) <= TH_High) && (Corr_Vect(ix,iy) >= TH_Low))
            if (iy ~= size(Corr_Vect,2))
                Sec_Vect(iy,1) = Sec_Vect(iy,1) + 1; % True Acceptance
            else
                Sec_Vect(iy,2) = Sec_Vect(iy,2) + 1; % Wrong Acceptance
            end
        else
            if (iy ~= size(Corr_Vect,2))
                Sec_Vect(iy,4) = Sec_Vect(iy,4) + 1; % Wrong Rejection
            else
                Sec_Vect(iy,3) = Sec_Vect(iy,3) + 1; % True Rejection
            end
        end

    end
    
end

% Each Row of TN, FN, TP, and FP = A dataset security results

% Each Row of "Sec_Vect_Rate" = {TN Rate,FN Rate,TP Rate,FP Rate}

Sec_Vect_Rate = Sec_Vect/size(Corr_Vect,1);

TN = Sec_Vect(:,1); % True Negatives

FN = Sec_Vect(:,2); % False Negatives

TP = Sec_Vect(:,3); % True Positives

FP = Sec_Vect(:,4); % False Positives

% Accuracy (A) = The rate of correctly accepted and rejected records
% Precision (P) = The rate of correctly rejected records
% Recall (R) = The success rate in rejection of records
% Specificity (S) = The success rate in acceptance of records

% Accuracy = zeros(size(Corr_Vect,2),1);

% Precision = zeros(size(Corr_Vect,2),1);

% Recall = zeros(size(Corr_Vect,2),1);

% Specificity = zeros(size(Corr_Vect,2),1);

% for iz = 1:size(Corr_Vect,2)

%    Accuracy(iz) = (TP(iz) + TN(iz))/(TP(iz) + TN(iz) + FP(iz) + FN(iz));

%    Precision(iz) = TP(iz)/(TP(iz) + FP(iz));

%    Recall(iz) = TP(iz)/(TP(iz) + FN(iz));

%    Specificity(iz) = TN(iz)/(TN(iz) + FP(iz));

% end
