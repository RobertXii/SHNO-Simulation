time = ans.time - ans.time(1, 2);
time = time(:,2:size-skiprows);
T = time(1,3) - time(1,2); % Sampling period (this may need to be smaller) 
Fs = 1/T;             % Sampling frequency      
L = size - 1;             % Length of signal
xsize = 260;
ysize = 80; %change this 80 or 260

global f;
global fmax;
f = (10^-9)*Fs*(0:((L-skiprows)/2))/(L-skiprows);
fmax = round(size/4);

intensity = zeros(fmax,ysize,xsize);

for j = 1:xsize
    for k = 1:ysize
        %make column array
        bzarray = [];
        
        for i = 1:size-skiprows
            bzarray(end+1) = ans.bz(j, k+(i-1)*ysize);
        end
        
        bzarray = bzarray(1:(L-skiprows)) - sum(bzarray)/length(bzarray);
        Y = fft(bzarray);
        P2 = abs(Y/(L-skiprows));
        P1 = P2(1:round((L-skiprows)/2+1));
        P1(2:end-1) = 2*P1(2:end-1); 
        P1 = P1';
        %plot(f,P1);
        intensity(:,k,j) = P1(1:fmax);
    end
end
