
% Create figure
figure;


% LAFO thickness vs Ith for LAFO10 at 3 B
%{
x = [40,35,30,25,20,15,10,5,0];
y = [89.4,90,89.2,85.8,83,80.5,77,73.5,68];
y2 = [122.2,122.5,123,122,120.7,120,117,112,107];
y3 = [200, NaN, 192.8, NaN, 190, NaN, 187, NaN, 177];

validIndicesy = ~isnan(y);
validIndicesy2 = ~isnan(y2);
validIndicesy3 = ~isnan(y3);
scatter(x(validIndicesy), y(validIndicesy)/50, 50, 'filled', 'Marker', 'o', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'r'); % circle markers
hold on;
scatter(x(validIndicesy2), y2(validIndicesy2)/50, 50, 'filled', 'Marker', '^', 'MarkerEdgeColor', '[1, 0.5, 0]', 'MarkerFaceColor', '[1, 0.5, 0]'); % triangle markers
scatter(x(validIndicesy3), y3(validIndicesy3)/50, 50, 'filled', 'Marker', 'square', 'MarkerEdgeColor', '[0.4, 0.66, 0.42]', 'MarkerFaceColor', '[0.4, 0.66, 0.42]'); % cross markers

for i = 1:numel(x)-1
    plot(x(i:i+1), y(i:i+1)/50, '-', 'Color', 'r','LineWidth', 1); % Lines connecting each data point
    plot(x(i:i+1), y2(i:i+1)/50, '-', 'Color', '[1, 0.5, 0]', 'LineWidth', 1);
end
for i = 1:numel(x)-2
    plot([x(i),x(i+2)], [y3(i),y3(i+2)]/50, '-', 'Color', '[0.4, 0.66, 0.42]', 'LineWidth', 1);
end

set(gca, 'FontSize', 20);
set(gca, 'FontName', 'Times New Roman'); % Change font for axes labels
box on;
xlim([-3,45]); % Customize the x-axis range
ylim([0,5]); % Customize the y-axis range
% xlabel('LAFO Thickness (nm)');
% set(gca, 'yticklabels', {}); % Hide y-axis tick labels
% ylabel('J_{th}(\times 10^{12} A/m^2)');
legend('B=0.08T', 'B=0.6T', 'B=1.2T', 'Box', 'off','FontSize', 20);
text(0.03, 0.95, '(a)', 'Units', 'Normalized', 'FontSize', 19, 'FontName', 'Times Roman', 'FontWeight', 'bold'); % Add (a) label
pbaspect([1 1 1]); % Set aspect ratio to 1:1
%}

% Ith vs Ms for LAFO10 at 3 B
%{
x = [800, 942, 1000, 1150, 1300, 1500,1700,2300,2700]/10000;
y = [NaN, 77, 76, 77,77 , 76, 76,78.3,78.3]/50;
y2 = [NaN, 115, NaN, 117, 117, 118,118, 119, 120]/50;
y3 = [188, 187, NaN, 187, 188, 188, 189, 189, 190]/50;
validIndicesy = ~isnan(y);
validIndicesy2 = ~isnan(y2);
validIndicesy3 = ~isnan(y3);
scatter(x(validIndicesy), y(validIndicesy), 50, 'filled', 'Marker', 'o', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'r'); % circle markers
hold on;
scatter(x(validIndicesy2), y2(validIndicesy2), 50, 'filled', 'Marker', '^', 'MarkerEdgeColor', '[1, 0.5, 0]', 'MarkerFaceColor', '[1, 0.5, 0]'); % triangle markers
scatter(x(validIndicesy3), y3(validIndicesy3), 50, 'filled', 'Marker', 'square', 'MarkerEdgeColor', '[0.4, 0.66, 0.42]', 'MarkerFaceColor', '[0.4, 0.66, 0.42]'); % cross markers

for i = 1:numel(x)-1
    plot(x(i:i+1), y(i:i+1), '-', 'Color', 'r','LineWidth', 1); % Dashed  lines
    plot(x(i:i+1), y2(i:i+1), '-', 'Color', '[1, 0.5, 0]', 'LineWidth', 1);
    plot(x(i:i+1), y3(i:i+1), '-', 'Color', '[0.4, 0.66, 0.42]', 'LineWidth', 1);
end
plot([942,1150]/10000, [115,117]/50, '-', 'Color', '[1, 0.5, 0]', 'LineWidth', 1);
plot([942,1150]/10000, [187,187]/50, '-', 'Color', '[0.4, 0.66, 0.42]', 'LineWidth', 1);
box on;
set(gca, 'FontSize', 20);
set(gca, 'FontName', 'Times New Roman'); % Change font for axes labels
xlim([0.06,0.29]); % Customize the x-axis range
set(gca, 'yticklabels', {}); % Hide y-axis tick labels
% xlabel('LAFO \mu_0M_s (T)');
ylim([0,5]); % Customize the y-axis range
% title('LAFO10Py5Pt5 Ms vs Ith');
text(0.03, 0.95, '(b)', 'Units', 'Normalized', 'FontSize', 19, 'FontName', 'Times Roman', 'FontWeight', 'bold'); % Add (a) label
pbaspect([1 1 1]); % Set aspect ratio to 1:1
%}


% Ku vs Ith for LAFO10 at 3 B
%{
x = [-10000, -20000, -31700, -50000, -60000, -80000]/1000;
y = [82, 77, 77, 80,79 , 79]/50;
y2 = [125, 116,115, 118, 119, 120.8]/50;
y3 = [195, 186,187,190, 191, 192]/50;
validIndicesy = ~isnan(y);
validIndicesy2 = ~isnan(y2);
validIndicesy3 = ~isnan(y3);
scatter(x(validIndicesy), y(validIndicesy), 50, 'filled', 'Marker', 'o', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'r'); % circle markers
hold on;
scatter(x(validIndicesy2), y2(validIndicesy2), 50, 'filled', 'Marker', '^', 'MarkerEdgeColor', '[1, 0.5, 0]', 'MarkerFaceColor', '[1, 0.5, 0]'); % triangle markers
scatter(x(validIndicesy3), y3(validIndicesy3), 50, 'filled', 'Marker', 'square', 'MarkerEdgeColor', '[0.4, 0.66, 0.42]', 'MarkerFaceColor', '[0.4, 0.66, 0.42]'); % cross markers

for i = 1:numel(x)-1
    plot(x(i:i+1), y(i:i+1), '-', 'Color', 'r','LineWidth', 1); % Dashed  lines
    plot(x(i:i+1), y2(i:i+1), '-', 'Color', '[1, 0.5, 0]', 'LineWidth', 1);
    plot(x(i:i+1), y3(i:i+1), '-', 'Color', '[0.4, 0.66, 0.42]', 'LineWidth', 1);
end
box on;
set(gca, 'FontSize', 20);
set(gca, 'FontName', 'Times New Roman'); % Change font for axes labels\
set(gca, 'YTick', 0:1:5); % This line specifies the y-tick locations
xlim([-90,-1]); % Customize the x-axis range
ylim([0,5]); % Customize the y-axis range
% xlabel('LAFO K_{u}(\times10^4 J/m^3)');
set(gca, 'yticklabels', {}); % Hide y-axis tick labels
text(0.03, 0.95, '(c)', 'Units', 'Normalized', 'FontSize', 19, 'FontName', 'Times Roman', 'FontWeight', 'bold'); % Add (a) label
pbaspect([1 1 1]); % Set aspect ratio to 1:1
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
scatter(x(validIndicesy), y(validIndicesy), 50, 'filled', 'Marker', 'o', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'r'); % circle markers
hold on;
scatter(x(validIndicesy2), y2(validIndicesy2), 50, 'filled', 'Marker', '^', 'MarkerEdgeColor', '[1, 0.5, 0]', 'MarkerFaceColor', '[1, 0.5, 0]'); % triangle markers
scatter(x(validIndicesy3), y3(validIndicesy3), 50, 'filled', 'Marker', 'square', 'MarkerEdgeColor', '[0.4, 0.66, 0.42]', 'MarkerFaceColor', '[0.4, 0.66, 0.42]'); % cross markers
for i = 1:numel(x)-1
    plot(x(i:i+1), y(i:i+1), '-', 'Color', 'r','LineWidth', 1); % Dashed  lines
    plot(x(i:i+1), y2(i:i+1), '-', 'Color', '[1, 0.5, 0]', 'LineWidth', 1);
    plot(x(i:i+1), y3(i:i+1), '-', 'Color', '[0.4, 0.66, 0.42]', 'LineWidth', 1);
end
set(gca, 'FontSize', 20);
set(gca, 'FontName', 'Times New Roman'); % Change font for axes labels
box on;
xlim([-9,0]); % Customize the x-axis range
ylim([0,50]); % Customize the y-axis range
xlabel('LAFO K_{u}(\times10^4 J/m^3)');
ylabel('FFT Amplitude (arb. unit)');
% title('K_{u} vs EM output power, LAFO10Py5Pt5 ');
legend('B=0.08T', 'B=0.6T', 'B=1.2T', 'Box', 'off','FontSize', 20);
pbaspect([1 1 1]); % Set aspect ratio to 1:1
%}


%EM/BM Spatial ave amp vs thickness

x = [0,5,10,15,20,30,35,40];
x = flip(x);
y = [5.19,4.6986,7.6916,8.1796,9.8852,9.1207,11.0529,6.6701];
y2 = [1.108,1.7172,1.4936,2.1961,2.5408,3.2499,4.6543,12.5072];
error_y=[0.1046,0.0637,0.1002,0.2025,0.2074,0.1423,0.2313,0.1884];
error_y2=[0.045,0.045,0.0578,0.0624,0.0646,0.0551,0.0802,0.546];

validIndicesy = ~isnan(y);
validIndicesy2 = ~isnan(y2);
scatter(x(validIndicesy), y(validIndicesy), 50, 'filled', 'Marker', 'o', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'r'); % 'filled' adds markers with fill
hold on;
scatter(x(validIndicesy2), y2(validIndicesy2), 50, 'filled', '^', 'MarkerEdgeColor', '[1, 0.5, 0]', 'MarkerFaceColor', '[1, 0.5, 0]'); % 'filled' adds markers with fill
errorbar(x(validIndicesy), y(validIndicesy), error_y(validIndicesy), 'o', 'Color', 'r', 'MarkerFaceColor', 'r', 'LineWidth', 1, 'CapSize', 10);
errorbar(x(validIndicesy2), y2(validIndicesy2), error_y2(validIndicesy2), '^', 'Color', '[1, 0.5, 0]', 'MarkerFaceColor', '[1, 0.5, 0]', 'LineWidth', 1, 'CapSize', 10);

for i = 1:numel(x)-1
    plot(x(i:i+1), y(i:i+1), '-', 'Color', 'r','LineWidth', 1); % Dashed  lines
    plot(x(i:i+1), y2(i:i+1), '-', 'Color', '[1, 0.5, 0]', 'LineWidth', 1);
end

ylim([0,28]); % Customize the y-axis range
xlim([-3,45]);
% xlim([0,28]); % Customize the x-axis range
set(gca, 'YTick', 0:4:28); % This line specifies the y-tick locations
% set(gca, 'yticklabels', {}); % Hide y-axis tick labels

set(gca, 'FontSize', 20);
set(gca, 'FontName', 'Times New Roman'); % Change font for axes labels
box on;
% xlabel('Thickness (nm)');
% ylabel('FFT Amplitude(arb. unit)');
legend('Edge Mode', 'Bulk Mode', 'Box', 'off','FontSize', 20);
text(0.03, 0.95, '(a)', 'Units', 'Normalized', 'FontSize', 19, 'FontName', 'Times New Roman', 'FontWeight', 'bold'); % Add (a) label

pbaspect([1 1 1]); % Set aspect ratio to 1:1
%{%}

%%% EM/BM output power Vs Ku1 for LAFO10, 1.2Jth
%{
x = [-10000, -15000, -20000,-25000,-31700, -50000, -60000, -80000]/1000;
y = [1.5345,10.5496,26.0051,9.3977,8.0882,8.9605,6.3988,6.9373];%EM
y2 = [3.9747,5.1676,5.6554,3.1544,3.6637,2.8702,2.679,2.6241];
validIndicesy = ~isnan(y);
validIndicesy2 = ~isnan(y2);
scatter(x(validIndicesy), y(validIndicesy), 50, 'filled', 'Marker', 'o', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'r'); % circle markers
hold on;
scatter(x(validIndicesy2), y2(validIndicesy2), 50, 'filled', 'Marker', '^', 'MarkerEdgeColor', '[1, 0.5, 0]', 'MarkerFaceColor', '[1, 0.5, 0]'); % triangle markers
for i = 1:numel(x)-1
    plot(x(i:i+1), y(i:i+1), '-', 'Color', 'r','LineWidth', 1); % Dashed  lines
    plot(x(i:i+1), y2(i:i+1), '-', 'Color', '[1, 0.5, 0]', 'LineWidth', 1);
end
% set(gca, 'YTick', 0:0.5:5); % This line specifies the y-tick locations
set(gca, 'yticklabels', {}); % Hide y-axis tick labels
set(gca, 'YTick', 0:4:28); % This line specifies the y-tick locations

set(gca, 'FontSize', 20);
set(gca, 'FontName', 'Times New Roman'); % Change font for axes labels
box on;
xlim([-90,-1]); % Customize the x-axis range
ylim([0,28]); % Customize the y-axis range

% ylim([0,50]); % Customize the y-axis range
% xlabel('LAFO K_{u}(\times10^4 J/m^3)');
text(0.03, 0.95, '(c)', 'Units', 'Normalized', 'FontSize', 19, 'FontName', 'Times Roman', 'FontWeight', 'bold'); % Add (a) label

% ylabel('FFT Amplitude (arb. unit)');
% title('K_{u} vs EM output power, LAFO10Py5Pt5 ');
% legend('Edge Mode', 'Bulk Mode', 'Box', 'off','FontSize', 20);
pbaspect([1 1 1]); % Set aspect ratio to 1:1
%}

%Ms vs EM/BM Spatial ave amp
%{
x = [800,1000,1300,1500,1600,1700,1850,2000,2300,2700];
y = [7.4513,11.5288,11.6095,11.4689,14.0429,26.0052,16.1753,20.2331,8.9786,4.977];
y2 = [3.1461,3.0376,5.4536,5.1044,5.0758,6.0857,8.8137,4.9629,0.9803,4.9479];
validIndicesy = ~isnan(y);
validIndicesy2 = ~isnan(y2);
scatter(x(validIndicesy)/10000, y(validIndicesy), 50, 'filled', 'Marker', 'o', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'r'); % 'filled' adds markers with fill
hold on;
scatter(x(validIndicesy2)/10000, y2(validIndicesy2), 50, 'filled', '^', 'MarkerEdgeColor', '[1, 0.5, 0]', 'MarkerFaceColor', '[1, 0.5, 0]'); % 'filled' adds markers with fill

for i = 1:numel(x)-1
    plot(x(i:i+1)/10000, y(i:i+1), '-', 'Color', 'r','LineWidth', 1); % Dashed  lines
    plot(x(i:i+1)/10000, y2(i:i+1), '-', 'Color', '[1, 0.5, 0]', 'LineWidth', 1);
end

xlim([0.06,0.29]);
ylim([0,28]); % Customize the y-axis range
set(gca, 'YTick', 0:4:28); % This line specifies the y-tick locations
% set(gca, 'XTick', 0.05:0.02:0.13); % This line specifies the y-tick locations
set(gca, 'yticklabels', {}); % Hide y-axis tick labels

set(gca, 'FontSize', 20);
set(gca, 'FontName', 'Times New Roman'); % Change font for axes labels
box on;
% xlabel('LAFO \mu_0M_s (T)');
text(0.03, 0.95, '(b)', 'Units', 'Normalized', 'FontSize', 19, 'FontName', 'Times Roman', 'FontWeight', 'bold'); % Add (a) label
% ylabel('FFT Amplitude(arb. unit)');
% legend('Edge Mode', 'Bulk Mode', 'Box', 'off','FontSize', 20);
pbaspect([1 1 1]); % Set aspect ratio to 1:1
%}


%EM output power vs Meff
%{
x = [2.228212739,1.694709554,1.427957962,1.07535453,0.9398025478,0.896272163,0.7610789809,0.7425001504,0.6808215778,0.6576390608,0.6383599948,0.6277031847,0.6153756962,0.598088326,0.5761459053,0.5648414475,0.4943273885,0.3609515924];
y = [0.485611,0.447916,0.627235,NaN,0.566174,NaN,0.657839,NaN,NaN,NaN,NaN,1.820357,NaN,NaN,NaN,NaN,0.738472,0.107415]/0.07;
y2 = [NaN,NaN,NaN,0.5588475,NaN,0.86466,NaN,0.8707125,0.573445,1.0532175,1.95039,NaN,1.2131475,1.5174825,0.673395,0.373275,NaN,NaN]/0.05/1.5;
validIndicesy = ~isnan(y);
validIndicesy2 = ~isnan(y2);
scatter(x(validIndicesy), y(validIndicesy), 50, 'filled', 'Marker', 'o', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'r'); % 'filled' adds markers with fill
hold on;
scatter(x(validIndicesy2), y2(validIndicesy2), 50, 'filled', '^', 'MarkerEdgeColor', '[1, 0.5, 0]', 'MarkerFaceColor', '[1, 0.5, 0]'); % 'filled' adds markers with fill
plot(x(validIndicesy), y(validIndicesy), 'r-', 'LineWidth', 1.5);
plot(x(validIndicesy2), y2(validIndicesy2), 'Color', [1, 0.5, 0], 'LineStyle', '-', 'LineWidth', 1.5);

xlim([0,2.4]);
% ylim([0,2.2]); % Customize the y-axis range
% set(gca, 'YTick', 0:4:28); % This line specifies the y-tick locations
% set(gca, 'XTick', 0.05:0.02:0.13); % This line specifies the y-tick locations
% set(gca, 'yticklabels', {}); % Hide y-axis tick labels

set(gca, 'FontSize', 20);
set(gca, 'FontName', 'Times New Roman'); % Change font for axes labels
box on;
xlabel('LAFO \mu_0M_s (T)');
% text(0.03, 0.95, '(b)', 'Units', 'Normalized', 'FontSize', 19, 'FontName', 'Times Roman', 'FontWeight', 'bold'); % Add (a) label
% ylabel('FFT Amplitude(arb. unit)');
legend('Change K_u', 'Change M_s', 'Box', 'off','FontSize', 20);
pbaspect([1 1 1]); % Set aspect ratio to 1:1
%}


%BM output power vs Meff
%{
x = [2.228212739,1.694709554,1.427957962,1.07535453,0.9398025478,0.896272163,0.7610789809,0.7425001504,0.6808215778,0.6576390608,0.6383599948,0.6277031847,0.6153756962,0.598088326,0.5761459053,0.5648414475,0.4943273885,0.3609515924];
y = [0.183687,0.18753,0.200914,NaN,0.256459,NaN,0.220808,NaN,NaN,NaN,NaN,0.395878,NaN,NaN,NaN,NaN,0.361732,0.278229]/0.07;
y2 = [NaN,NaN,NaN,0.157305,NaN,0.15188,NaN,0.27268,0.25522,0.25379,0.304285,NaN,0.440685,0.248145,0.049015,0.247395]/0.05;

validIndicesy = ~isnan(y);
validIndicesy2 = ~isnan(y2);
scatter(x(validIndicesy), y(validIndicesy), 50, 'filled', 'Marker', 'o', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'r'); % 'filled' adds markers with fill
hold on;
scatter(x(validIndicesy2), y2(validIndicesy2), 50, 'filled', '^', 'MarkerEdgeColor', '[1, 0.5, 0]', 'MarkerFaceColor', '[1, 0.5, 0]'); % 'filled' adds markers with fill

% for i = 1:numel(x)-1
%     plot(x(i:i+1), y(i:i+1), '-', 'Color', 'r','LineWidth', 1); % Dashed  lines
%     plot(x(i:i+1), y2(i:i+1), '-', 'Color', '[1, 0.5, 0]', 'LineWidth', 1);
% end

xlim([0,2.4]);
% ylim([0,2.2]); % Customize the y-axis range
% set(gca, 'YTick', 0:4:28); % This line specifies the y-tick locations
% set(gca, 'XTick', 0.05:0.02:0.13); % This line specifies the y-tick locations
% set(gca, 'yticklabels', {}); % Hide y-axis tick labels

set(gca, 'FontSize', 20);
set(gca, 'FontName', 'Times New Roman'); % Change font for axes labels
box on;
% xlabel('LAFO \mu_0M_s (T)');
% text(0.03, 0.95, '(b)', 'Units', 'Normalized', 'FontSize', 19, 'FontName', 'Times Roman', 'FontWeight', 'bold'); % Add (a) label
% ylabel('FFT Amplitude(arb. unit)');
legend('Change Ku', 'Change Ms', 'Box', 'off','FontSize', 20);
pbaspect([1 1 1]); % Set aspect ratio to 1:1
%}
