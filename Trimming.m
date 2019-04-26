close all; clc; clear all;

load('C:\Users\shaya\Desktop\Datasets\All_Signals.mat');

Data_Struct = whos;

All_Sizes = zeros(size(Data_Struct,1),1);

for ix = 1:size(Data_Struct,1)

    All_Sizes(ix) = Data_Struct(ix).size(1);

end

Sig_Size = min(All_Sizes);

% Trimming Reference Signal

IVDD_ref = IVDD_ref(1:Sig_Size)';

% Having 4 Datasets and Each has 20 Signals

IVDD_Tot = zeros(20,Sig_Size,4);

% Trimming for Datasets 1-4 , Signals 1-9

for iy = 1:4

    for ix = 1:9
   
        Temp = eval(['S',num2str(iy),'_IVDD_0',num2str(ix)]);
        IVDD_Tot(ix,:,iy) = Temp(1:Sig_Size);
    
    end
    
end

% Trimming for Datasets 1-4 , Signals 10-20

for iy = 1:4

    for ix = 10:20
   
        Temp = eval(['S',num2str(iy),'_IVDD_',num2str(ix)]);
        IVDD_Tot(ix,:,iy) = Temp(1:Sig_Size);
    
    end
    
end

save('C:\Users\shaya\Desktop\Datasets\Trim_Signals.mat','IVDD_Tot','IVDD_ref');
