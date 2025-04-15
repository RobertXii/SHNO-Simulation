
% Add error bars
%{
y_error = [0.5, 0.5, 0.5, 0.5, 0.5, 0.5];
y2_error = [1, 1, 1, 1, 1, 1];
errorbar(x, y, y_error, 'vertical', 'LineStyle', 'none', 'Color', 'g');
errorbar(x, y2, y2_error, 'vertical', 'LineStyle', 'none', 'Color', 'r');
%}

%Ms vs Ith for different thickness at same B
%{
x = [600,700,800,900,942, 1000,1100,1150,1300,1500,1700];
y = [NaN,NaN,NaN,NaN,77, 76,NaN,77,77,76,76];
y2 = [83,84,84,84,84,84,84,NaN,NaN,NaN,NaN];
validIndicesy = ~isnan(y);
validIndicesy2 = ~isnan(y2);
scatter(x(validIndicesy)/10000, y(validIndicesy)/50, 50, 'filled'); % 'filled' adds markers with fill
hold on;
scatter(x(validIndicesy2)/10000, y2(validIndicesy2)/50, 50, 'filled'); % 'filled' adds markers with fill
xlim([0.05,0.18]); % Customize the x-axis range
ylim([1.2,1.8]); % Customize the y-axis range
xlabel('LAFO \mu_0Ms (T)');
ylabel('Jth(1e12 A/m^2)');
title('B=0.08T, Ith vs Ms');
legend('LAFO10Py5Pt5', 'LAFO20Py5Pt5');
%}

%Ms vs EM/BM amp at same B using smooth lorentz
%{
x = [400,600,800,1000,1200,1400];
y = [7.49,6.82,7.24,6.27,5.5,4.38];
validIndicesy = ~isnan(y);
scatter(x(validIndicesy)/10000, y(validIndicesy), 50, 'filled'); % 'filled' adds markers with fill
% xlim([0.05,0.18]); % Customize the x-axis range
% ylim([1.2,1.8]); % Customize the y-axis range
xlabel('LAFO \mu_0Ms (T)');
ylabel('FFT Amplitude (arb. unit)');
title('B=0.08T, EM Amplitude vs Ms');
legend('Lorenztian fit');
%}

% Ms vs Ith for LAFO10 at 3 B
%{
x = [800, 942, 1000, 1150, 1300, 1500,1700,2300,2700]/10000;
y = [NaN, 77, 76, 77,77 , 76, 76, NaN,NaN]/50;
y2 = [NaN, 115, NaN, 117, 117, 118,118, 119, 120]/50;
y3 = [188, 187, NaN, 187, 188, 188, 189, 189, 190]/50;
validIndicesy = ~isnan(y);
validIndicesy2 = ~isnan(y2);
validIndicesy3 = ~isnan(y3);
scatter(x(validIndicesy), y(validIndicesy), 50, 'filled', 'Marker', 'o', 'MarkerEdgeColor', 'black', 'MarkerFaceColor', 'black'); % circle markers
hold on;
scatter(x(validIndicesy2), y2(validIndicesy2), 50, 'filled', 'Marker', '^', 'MarkerEdgeColor', 'black', 'MarkerFaceColor', 'black'); % triangle markers
scatter(x(validIndicesy3), y3(validIndicesy3), 50, 'filled', 'Marker', 'square', 'MarkerEdgeColor', 'black', 'MarkerFaceColor', 'black'); % cross markers

for i = 1:numel(x)-1
    plot(x(i:i+1), y(i:i+1), '-', 'Color', 'black','LineWidth', 1); % Dashed  lines
    plot(x(i:i+1), y2(i:i+1), '-', 'Color', 'black', 'LineWidth', 1);
    plot(x(i:i+1), y3(i:i+1), '-', 'Color', 'black', 'LineWidth', 1);
end
plot([942,1150]/10000, [115,117]/50, '-', 'Color', 'black', 'LineWidth', 1);
plot([942,1150]/10000, [187,187]/50, '-', 'Color', 'black', 'LineWidth', 1);
set(gca, 'FontSize', 20);
box on;
xlim([0.06,0.3]); % Customize the x-axis range
ylim([0.8,4]); % Customize the y-axis range
xlabel('LAFO \mu_0Ms (T)');
ylabel('Jth(\times 10^{12} A/m^2)');
% title('LAFO10Py5Pt5 Ms vs Ith');
legend('B=0.08T', 'B=0.6T', 'B=1.2T', 'Box', 'off');
%}

% alpha vs Ith for LAFO10 at 3 B
%{
x = [0.0001, 0.0005, 0.001, 0.005, 0.01];
y = [77,77,77,79,80];
y2 = [116,116,115,119,122];
y3 = [186,186,187,194,199];
validIndicesy = ~isnan(y);
validIndicesy2 = ~isnan(y2);
validIndicesy3 = ~isnan(y3);
scatter(log10(x(validIndicesy)), y(validIndicesy)/50, 50, 'filled', 'Marker', 'o', 'MarkerEdgeColor', 'black', 'MarkerFaceColor', 'black'); % 'filled' adds markers with fill
hold on;
scatter(log10(x(validIndicesy2)), y2(validIndicesy2)/50, 50, 'filled', 'Marker', '^', 'MarkerEdgeColor', 'black', 'MarkerFaceColor', 'black'); % 'filled' adds markers with fill
scatter(log10(x(validIndicesy3)), y3(validIndicesy3)/50, 50, 'filled', 'Marker', 'square', 'MarkerEdgeColor', 'black', 'MarkerFaceColor', 'black'); % 'filled' adds markers with fill

for i = 1:numel(x)-1
    plot(log10(x(i:i+1)), y(i:i+1)/50, '-', 'Color', 'black','LineWidth', 1); % lines
    plot(log10(x(i:i+1)), y2(i:i+1)/50, '-', 'Color', 'black', 'LineWidth', 1);
    plot(log10(x(i:i+1)), y3(i:i+1)/50, '-', 'Color', 'black', 'LineWidth', 1);
end
set(gca, 'FontSize', 20);
box on;
xlim([-4.5,-1.5]); % Customize the x-axis range
ylim([1,5]); % Customize the y-axis range
xlabel('LAFO alpha (Logarithm (base 10))');
ylabel('Jth(\times 10^{1 A/m^2)');
% title('LAFO10PyPt alpha vs Jth');
legend('B=0.08T', 'B=0.6T', 'B=1.2T','Box', 'off');
%}

% Ku vs Ith for LAFO10 at 3 B
%{
x = [-10000, -20000, -31700, -50000, -60000, -80000]/10000;
y = [82, 77, 77, 80,79 , 79]/50;
y2 = [125, 116,115, 118, 119, NaN]/50;
y3 = [195, 186,187,190, 191, 192]/50;
validIndicesy = ~isnan(y);
validIndicesy2 = ~isnan(y2);
validIndicesy3 = ~isnan(y3);
scatter(x(validIndicesy), y(validIndicesy), 50, 'filled', 'Marker', 'o', 'MarkerEdgeColor', 'black', 'MarkerFaceColor', 'black'); % circle markers
hold on;
scatter(x(validIndicesy2), y2(validIndicesy2), 50, 'filled', 'Marker', '^', 'MarkerEdgeColor', 'black', 'MarkerFaceColor', 'black'); % triangle markers
scatter(x(validIndicesy3), y3(validIndicesy3), 50, 'filled', 'Marker', 'square', 'MarkerEdgeColor', 'black', 'MarkerFaceColor', 'black'); % cross markers

for i = 1:numel(x)-1
    plot(x(i:i+1), y(i:i+1), '-', 'Color', 'black','LineWidth', 1); % Dashed  lines
    plot(x(i:i+1), y2(i:i+1), '-', 'Color', 'black', 'LineWidth', 1);
    plot(x(i:i+1), y3(i:i+1), '-', 'Color', 'black', 'LineWidth', 1);
end
set(gca, 'FontSize', 20);
box on;
xlim([-9,0]); % Customize the x-axis range
ylim([1,5]); % Customize the y-axis range
xlabel('LAFO K_{u1}(\times10^4 J/m^3)');
ylabel('J_{th}(\times10^{12} A/m^2)');
title('K_{u1} vs J_{th} LAFO10Py5Pt5');
legend('B=0.08T', 'B=0.6T', 'B=1.2T', 'Box', 'off');
%}

%Ms vs freq from fft
%{
x = [600, 700, 750, 775, 800, 825, 850, 875, 900, 942, 1000, 1200];
y = [6.32, 6.52, 6.64, 6.72, 6.75, 6.67, 6.79, 6.82, 6.80, 6.83, 6.84, 6.80];
y2 = [7.25, 7.31, 7.30, 7.35, 7.37, 7.37, 7.43, 7.47, 7.42, 7.52, 7.61, 7.52];
validIndicesy = ~isnan(y);
validIndicesy2 = ~isnan(y2);
scatter(x(validIndicesy)/10000, y(validIndicesy), 50, 'filled'); % 'filled' adds markers with fill
hold on;
scatter(x(validIndicesy2)/10000, y2(validIndicesy2), 50, 'filled'); % 'filled' adds markers with fill
xlim([0.05,0.13]); % Customize the x-axis range
ylim([6, 8]); % Customize the y-axis range
xlabel('LAFO \mu_0Ms (T)');
ylabel('GHz');
title('LAFO Ms vs Mode Frequencies');
legend('Edge Mode', 'Bulk Mode');
%}

%Ms vs freq from fft Second time better 
%{
x = [400, 600, 800, 1000, 1200, 1400];
y = [6.34, 6.57, 6.61, 6.78, 6.84, 6.89];
y2 = [7.24, 7.28, 7.25, 7.45, 7.58, 7.46];
validIndicesy = ~isnan(y);
validIndicesy2 = ~isnan(y2);
scatter(x(validIndicesy)/10000, y(validIndicesy), 50, 'filled'); % 'filled' adds markers with fill
hold on;
scatter(x(validIndicesy2)/10000, y2(validIndicesy2), 50, 'filled'); % 'filled' adds markers with fill
% xlim([0.05,0.13]); % Customize the x-axis range
% ylim([6, 8]); % Customize the y-axis range
xlabel('LAFO \mu_0Ms (T)');
ylabel('Freqency (GHz)');
title('Mode Frequencies vs LAFO Ms');
legend('Edge Mode', 'Bulk Mode');
%}

%Ms vs EM freq from Lorentzian and fft compare
%{
x = [600, 700, 750, 775, 800, 825, 850, 875, 900, 942, 1000, 1200];
y = [6.5871, 6.5983, 6.642, 6.6557, 6.6169, 6.6661, 6.6711, 6.7232, 6.6548, 6.7518, 6.738, 6.8109];
y2 = [6.32, 6.52, 6.64, 6.72, 6.75, 6.67, 6.79, 6.82, 6.80, 6.83, 6.84, 6.80];
validIndicesy = ~isnan(y);
validIndicesy2 = ~isnan(y2);
scatter(x(validIndicesy2)/10000, y, 50, 'filled'); % 'filled' adds markers with fill
hold on;
scatter(x(validIndicesy2)/10000, y2(validIndicesy), 50, 'filled'); % 'filled' adds markers with fill
xlim([0.05,0.13]); % Customize the x-axis range
ylim([6, 7]); % Customize the y-axis range
xlabel('LAFO \mu_0Ms (T)');
ylabel('GHz');
title('EM freq vs Ms, result comparision between FFT & Lorentzian');
legend('EM freq from Lorentzian', 'EM freq from FFT');
%}

%Ms vs Spatial ave amp

x = [600, 700, 750, 775, 800, 825, 850, 875, 900, 942, 1000, 1200];
y = [14,14.56,9.41,10.31,12.17,8.54,8.75,5.45, 6.32, 10.92, 4.89,7.64];
y2 = [2,2.53,1.33,1.78,2.90,1.94,1.51,1.39,1.29,2.62, 1.45,1.19];
validIndicesy = ~isnan(y);
validIndicesy2 = ~isnan(y2);
scatter(x(validIndicesy)/10000, y(validIndicesy), 50, 'filled'); % 'filled' adds markers with fill
hold on;
scatter(x(validIndicesy2)/10000, y2(validIndicesy2), 50, 'filled'); % 'filled' adds markers with fill
xlim([0.05,0.11]); % Customize the x-axis range
ylim([0,15]); % Customize the y-axis range
xlabel('LAFO \mu_0Ms (T)');
ylabel('Amplitude(arb. unit)');
title('LAFO Ms vs Spatial Averaged Mode Amplitude');
legend('Edge Mode', 'Bulk Mode');
%{%}

%Ms vs EM amp  Lorentz & FFT compare
%{
x = [600, 700, 750, 775, 800, 825, 850, 875, 900, 942, 1000, 1200];
y = [13.54, 8.8616, 7.1433, 8.9179, 6.5163, 6.963, 8.241, 3.9503, 7.7721, 7.6154, 5.314, 7.0967];
y2 = [14,14.56,9.41,10.31,12.17,8.54,8.75,5.45, 6.32,10.92,4.89,7.64];
validIndicesy = ~isnan(y);
validIndicesy2 = ~isnan(y2);
scatter(x(validIndicesy)/10000, y, 50, 'filled'); % 'filled' adds markers with fill
hold on;
scatter(x(validIndicesy2)/10000, y2(validIndicesy2), 50, 'filled'); % 'filled' adds markers with fill
xlim([0.05,0.13]); % Customize the x-axis range
ylim([0,15]); % Customize the y-axis range
xlabel('LAFO \mu_0Ms (T)');
ylabel('Amplitude(arb. unit)');
title('EM Amp vs Ms, result comparision between FFT & Lorentzian');
legend('EM Amp from Lorentzian', 'EM Amp from FFT');
%}

% LAFO thickness vs Ith for LAFO10 at 3 B
%{
x = [40,35,30,25,20,15,10,5,0];
y = [89.4,90,89.2,85.8,83,80.5,77,73.5,68];
y2 = [122.2,NaN,123,122,120.7,120,117,112,107];
y3 = [200, NaN, 192.8, NaN, 190, NaN, 187, NaN, NaN];
validIndicesy = ~isnan(y);
validIndicesy2 = ~isnan(y2);
validIndicesy3 = ~isnan(y3);
scatter(x(validIndicesy), y(validIndicesy)/50, 50, 'filled', 'Marker', 'o', 'MarkerEdgeColor', 'black', 'MarkerFaceColor', 'black'); % circle markers
hold on;
scatter(x(validIndicesy2), y2(validIndicesy2)/50, 50, 'filled', 'Marker', '^', 'MarkerEdgeColor', 'black', 'MarkerFaceColor', 'black'); % triangle markers
scatter(x(validIndicesy3), y3(validIndicesy3)/50, 50, 'filled', 'Marker', 'square', 'MarkerEdgeColor', 'black', 'MarkerFaceColor', 'black'); % cross markers

for i = 1:numel(x)-1
    plot(x(i:i+1), y(i:i+1)/50, '-', 'Color', 'black','LineWidth', 1); % Lines connecting each data point
    plot(x(i:i+1), y2(i:i+1)/50, '-', 'Color', 'black', 'LineWidth', 1);
end
plot([30,40], [122.6,123]/50, '-', 'Color', 'black', 'LineWidth', 1); % Last point to the end
for i = 1:numel(x)-2
    plot([x(i),x(i+2)], [y3(i),y3(i+2)]/50, '-', 'Color', 'black', 'LineWidth', 1);
end

set(gca, 'FontSize', 20);
box on;
xlim([-3,45]); % Customize the x-axis range
ylim([0.5,4.5]); % Customize the y-axis range
xlabel('LAFO Thickness (nm)');
ylabel('Jth(1e12 A/m^2)');
% title('LAFO Thickness vs Jth, LAFOXXPy5Pt5');
legend('B=0.08T', 'B=0.6T', 'B=1.2T','Box','off');
%}

%%% Ku1 vs EM output power for LAFO10 at 3 B, 1.2Jth
%{
x = [-10000, -15000, -20000,-25000,-31700, -50000, -60000, -80000]/10000;
y = [7.96,21.7,43.8,17.8,14.45,18.2,13.6,9.91];%EM
y2 = [6.16, 6.66,12.33, 10.57,7.68,4.61,4.99, NaN];
y3 = [7.12, 10.8,15.74, 14.55,10.59,7.35,7.23,7.41];
validIndicesy = ~isnan(y);
validIndicesy2 = ~isnan(y2);
validIndicesy3 = ~isnan(y3);
scatter(x(validIndicesy), y(validIndicesy), 50, 'filled', 'Marker', 'o', 'MarkerEdgeColor', 'black', 'MarkerFaceColor', 'black'); % circle markers
hold on;
scatter(x(validIndicesy2), y2(validIndicesy2), 50, 'filled', 'Marker', '^', 'MarkerEdgeColor', 'black', 'MarkerFaceColor', 'black'); % triangle markers
scatter(x(validIndicesy3), y3(validIndicesy3), 50, 'filled', 'Marker', 'square', 'MarkerEdgeColor', 'black', 'MarkerFaceColor', 'black'); % cross markers

for i = 1:numel(x)-1
    plot(x(i:i+1), y(i:i+1), '-', 'Color', 'black','LineWidth', 1); % Dashed  lines
    plot(x(i:i+1), y2(i:i+1), '-', 'Color', 'black', 'LineWidth', 1);
    plot(x(i:i+1), y3(i:i+1), '-', 'Color', 'black', 'LineWidth', 1);
end
set(gca, 'FontSize', 20);
box on;
xlim([-9,0]); % Customize the x-axis range
ylim([0,50]); % Customize the y-axis range
xlabel('LAFO K_{u1}(\times10^4 J/m^3)');
ylabel('FFT Amplitude (arb. unit)');
% title('K_{u1} vs EM output power, LAFO10Py5Pt5 ');
legend('B=0.08T', 'B=0.6T', 'B=1.2T', 'Box', 'off');
%}

% Ku1 vs BM output power for LAFO10 at 3 B, 1.2Jth
%{
x = [-10000, -20000, -31700, -50000, -60000, -80000];
y = [13.8,11.7,6.2,6.5,4.6,4.81];%BM
y2 = [9.46,5.13,6.3,6.04,6.41, NaN];
y3 = [9.1,2.97,4.03,3.7,3.8,4.22];
validIndicesy = ~isnan(y);
validIndicesy2 = ~isnan(y2);
validIndicesy3 = ~isnan(y3);
scatter(x(validIndicesy), y(validIndicesy), 50, 'filled'); % 'filled' adds markers with fill
hold on;
scatter(x(validIndicesy2), y2(validIndicesy2), 50, 'filled'); % 'filled' adds markers with fill
scatter(x(validIndicesy3), y3(validIndicesy3), 50, 'filled'); % 'filled' adds markers with fill
xlim([-90000,0]); % Customize the x-axis range
ylim([0,16]); % Customize the y-axis range
xlabel('LAFO Ku1(J/m^3)');
ylabel('FFT Amplitude (arb. unit)');
title('LAFO10Py5Pt5 Ku1 vs BM output power');
legend('B=0.08T', 'B=0.6T', 'B=1.2T');
%}

% Ku vs EM freq for LAFO10 at 3 B, 1.2Jth
%{
x = [-10000, -20000, -31700, -50000, -60000, -80000];
y = [5.86,6.16,6.53,6.7,6.83,7.02];%BM
y2 = [19.36,19.79,20.99,22.7,22.85, NaN];
y3 = [34.86,35.62,35.79,36.31,37.46,38.75];
validIndicesy = ~isnan(y);
validIndicesy2 = ~isnan(y2);
validIndicesy3 = ~isnan(y3);
scatter(x(validIndicesy), y(validIndicesy), 50, 'filled'); % 'filled' adds markers with fill
hold on;
scatter(x(validIndicesy2), y2(validIndicesy2), 50, 'filled'); % 'filled' adds markers with fill
scatter(x(validIndicesy3), y3(validIndicesy3), 50, 'filled'); % 'filled' adds markers with fill
xlim([-90000,0]); % Customize the x-axis range
ylim([0,50]); % Customize the y-axis range
xlabel('LAFO Ku1(J/m^3)');
ylabel('Frequency (GHz)');
title('LAFO10Py5Pt5 Ku1 vs EM Frequency');
legend('B=0.08T', 'B=0.6T', 'B=1.2T');
%}

% Ku vs BM freq for LAFO10 at 3 B, 1.2Jth
%{
x = [-10000, -20000, -31700, -50000, -60000, -80000];
y = [6.79,7.17,7.3,7.46,7.59,7.8];%BM
y2 = [21.3,23.11,23.55,23.99,24.28, NaN];
y3 = [38.35,40.13,42.61,43.35,43.43,44.24];
validIndicesy = ~isnan(y);
validIndicesy2 = ~isnan(y2);
validIndicesy3 = ~isnan(y3);
scatter(x(validIndicesy), y(validIndicesy), 50, 'filled'); % 'filled' adds markers with fill
hold on;
scatter(x(validIndicesy2), y2(validIndicesy2), 50, 'filled'); % 'filled' adds markers with fill
scatter(x(validIndicesy3), y3(validIndicesy3), 50, 'filled'); % 'filled' adds markers with fill
xlim([-90000,0]); % Customize the x-axis range
ylim([0,60]); % Customize the y-axis range
xlabel('LAFO Ku1(J/m^3)');
ylabel('Frequency (GHz)');
title('LAFO10Py5Pt5 Ku1 vs BM Frequency');
legend('B=0.08T', 'B=0.6T', 'B=1.2T');
%}

%Py only alpha vs Ith at B=0.08T
%{
x = [0.01, 0.02,0.026,0.04,0.06,0.08,0.1];
y = [12.5,22,27.5,41,58,75.5,93];
scatter(x, y/20, 50, 'filled'); % 'filled' adds markers with fill
hold on;
% scatter(x(validIndicesy2)/10000, y2(validIndicesy2)/50, 50, 'filled'); % 'filled' adds markers with fill
xlim([0.0,0.12]); % Customize the x-axis range
ylim([0,5]); % Customize the y-axis range
xlabel('Py alpha');
ylabel('Jth(1e12 A/m^2)');
title('B=0.08T, Py alpha vs Ith');
% legend('B=0.08T');
%}

%Py only Ms vs Ith at B=0.08T, alpha=2.6
%{
x = [4,6,8.6,10,14];
y = [13.5,19,27.5,32.5,47];
scatter(x*3.1415/10, y/20, 50, 'filled'); % 'filled' adds markers with fill
xlim([0,5.5]); % Customize the x-axis range
ylim([0,3]); % Customize the y-axis range
xlabel('Py \mu_0Ms');
ylabel('Jth(1e12 A/m^2)');
title('B=0.08T, Py Ms vs Ith');
% legend('B=0.08T');
%}

%Ith vs B
%{
x = [0.02,0.04,0.06,0.08,0.1,0.13,0.2,0.3,0.4,0.6,0.8,1.2];
y = [48,49.5,50.5,46.2,44.5,43,44,48.5,54.5,69.6,83,111.6];
validIndicesy = ~isnan(y);
scatter(x(validIndicesy), y(validIndicesy)/30, 50, 'filled'); % 'filled' adds markers with fill
xlim([-0.1,1.3]); % Customize the x-axis range
ylim([1,4]); % Customize the y-axis range
xlabel('B(T)');
ylabel('Jth(1e12 A/m^2)');
title('Ith vs B');
legend('LAFO10Py5Pt5');
%}


%EM amp vs B
%{
x = [0.02,0.04,0.06,0.08,0.1,0.13,0.2,0.3,0.4,0.6,0.8,1.2];
y = [38.1075,19.0844,16.7327,22.8532,16.04,13.2864,10.5512,6.42,4.4531,4.9266,4.488,4.5005];
validIndicesy = ~isnan(y);
scatter(x(validIndicesy), y(validIndicesy), 50, 'filled');% 'filled' adds markers with fill
hold on;
plot(x(validIndicesy), y(validIndicesy),'-','Color', 'black');
xlim([-0.05,1.3]); % Customize the x-axis range
ylim([0,40]); % Customize the y-axis range
xlabel('B(T)');
ylabel('FFT Amplitude (arb. unit)');
title('LAFO10Py5Pt5 EM Output Power vs B');
legend('LAFO10Py5Pt5');
%}

%EM freq vs B
%{
x = [0.02,0.04,0.06,0.08,0.1,0.13,0.2,0.3,0.4,0.6,0.8,1.2];
y = [3.4916, 4.6283,5.3618,6.1942,7.0334,8.1939,10.6829,13.8426,15.5631,19.8305,25.25,35.5356];
validIndicesy = ~isnan(y);
scatter(x(validIndicesy), y(validIndicesy), 50, 'filled');% 'filled' adds markers with fill
xlim([-0.05,1.3]); % Customize the x-axis range
ylim([0,40]); % Customize the y-axis range
xlabel('B(T)');
ylabel('Frequency (GHz)');
title('LAFO10Py5Pt5 EM Freqency vs B');
legend('LAFO10Py5Pt5');
%}

%EM width vs B
%{
x = [0.02,0.04,0.06,0.08,0.1,0.13,0.2,0.3,0.4,0.6,0.8,1.2];
y = [0.0141,0.1067,0.2145,0.1009,0.1476,0.1981,0.1889,0.4784,0.3932,0.4471,0.5385,0.588];
validIndicesy = ~isnan(y);
scatter(x(validIndicesy), y(validIndicesy), 50, 'filled');% 'filled' adds markers with fill
xlim([-0.05,1.3]); % Customize the x-axis range
ylim([0,0.7]); % Customize the y-axis range
xlabel('B(T)');
ylabel('half-width (GHz)');
title('LAFO10Py5Pt5 EM Half-Width vs B');
legend('LAFO10Py5Pt5');
%}



% Set custom axis limits
% xlim([-3, 45]); % Customize the x-axis range
% ylim([1, 4.5]); % Customize the y-axis range
% Set custom axis limits
% xlim([500,1800]); % Customize the x-axis range
% ylim([1.2,1.8]); % Customize the y-axis range
% 
% % Add labels and title
% xlabel('LAFO Ms (G)');
% ylabel('Jth(1e12 A/m^2)');
% title('B=0.08T');
% 
% % legend('B=0.08T', 'B=0.6T', 'B=1.2T');
% legend('LAFO10Py5Pt5', 'LAFO20Py5Pt5');

