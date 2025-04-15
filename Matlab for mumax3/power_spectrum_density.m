
%{
fileNames = {'-5FMR.txt','-4.75FMR.txt','-4.5FMR.txt','-4.25FMR.txt','-4FMR.txt','-3.75FMR.txt','-3.5FMR.txt','-3.25FMR.txt','-3FMR.txt',...
    '-2.75FMR.txt','-2.5FMR.txt','-2.25FMR.txt','-2FMR.txt','-1.75FMR.txt','-1.5FMR.txt','-1.25FMR.txt','-1FMR.txt','-0.75FMR.txt','-0.5FMR.txt','-0.25FMR.txt','0FMR.txt',...
    '+0.25FMR.txt','+0.5FMR.txt','+0.75FMR.txt','+1FMR.txt','+1.25FMR.txt','+1.5FMR.txt','+1.75FMR.txt','+2FMR.txt','+2.25FMR.txt','+2.5FMR.txt','+2.75FMR.txt','+3FMR.txt'};

fileNames = {'-5FMR.txt','-4.875FMR.txt','-4.75FMR.txt','-4.625FMR.txt','-4.5FMR.txt','-4.375FMR.txt','-4.25FMR.txt','-4.125FMR.txt','-4FMR.txt','-3.875FMR.txt','-3.75FMR.txt','-3.625FMR.txt','-3.5FMR.txt','-3.375FMR.txt','-3.25FMR.txt','-3.125FMR.txt','-3FMR.txt',...
    '-2.875FMR.txt','-2.75FMR.txt','-2.625FMR.txt','-2.5FMR.txt','-2.375FMR.txt','-2.25FMR.txt','-2.125FMR.txt','-2FMR.txt','-1.875FMR.txt','-1.75FMR.txt','-1.625FMR.txt','-1.5FMR.txt','-1.375FMR.txt','-1.25FMR.txt','-1.125FMR.txt','-1FMR.txt','-0.875FMR.txt','-0.75FMR.txt',...
    '-0.625FMR.txt','-0.5FMR.txt','-0.375FMR.txt','-0.25FMR.txt','-0.125FMR.txt','0FMR.txt','+0.125FMR.txt','+0.25FMR.txt','+0.375FMR.txt','+0.5FMR.txt','+0.625FMR.txt','+0.75FMR.txt','+0.875FMR.txt','+1FMR.txt','+1.125FMR.txt','+1.25FMR.txt','+1.375FMR.txt','+1.5FMR.txt',...
    '+1.625FMR.txt','+1.75FMR.txt','+1.875FMR.txt','+2FMR.txt','+2.125FMR.txt','+2.25FMR.txt','+2.375FMR.txt','+2.5FMR.txt','+2.625FMR.txt','+2.75FMR.txt','+2.875FMR.txt','+3FMR.txt'};

fileNames = {'LAFOMs=400_J=101_LAFO20.txt','LAFOMs=600_J=101_LAFO20.txt','LAFOMs=800_J=101_LAFO20.txt',...
    'LAFOMs=1000_J=101_LAFO20.txt','LAFOMs=1200_J=101_LAFO20.txt','LAFOMs=1400_J=101_LAFO20.txt'};

fileNames = {'-5.txt','-4.75.txt','-4.5.txt','-4.25.txt','-4.txt','-3.75.txt','-3.5.txt','-3.25.txt','-3.txt',...
    '-2.75.txt','-2.5.txt','-2.25.txt','-2.txt','-1.75.txt','-1.5.txt','-1.25.txt','-1.txt','-0.75.txt','-0.5.txt','-0.25.txt','0.txt',...
    '0.25.txt','0.5.txt','0.75.txt','1.txt','1.25.txt','1.5.txt','1.75.txt','2.txt','2.25.txt','2.5.txt','2.75.txt','3.txt',...
    '3.25.txt','3.5.txt','3.75.txt','4.txt','4.25.txt','4.5.txt','4.75.txt','5.txt'};

fileNames = {'-5LAFOonlyFMR.txt','-4.5LAFOonlyFMR.txt','-4LAFOonlyFMR.txt','-3.5LAFOonlyFMR.txt','-3LAFOonlyFMR.txt',...
    '-2.5LAFOonlyFMR.txt','-2LAFOonlyFMR.txt','-1.5LAFOonlyFMR.txt','-1LAFOonlyFMR.txt','-0.5LAFOonlyFMR.txt','0LAFOonlyFMR.txt',...
    '+0.5LAFOonlyFMR.txt','+1LAFOonlyFMR.txt','+1.5LAFOonlyFMR.txt','+2LAFOonlyFMR.txt','+2.5LAFOonlyFMR.txt','+3LAFOonlyFMR.txt' };

fileNames = {'I=25_Ku=-2.5.txt','I=30_Ku=-2.5.txt','I=35_Ku=-2.5.txt','I=40_Ku=-2.5.txt','I=45_Ku=-2.5.txt',...
    'I=50_Ku=-2.5.txt','I=55_Ku=-2.5.txt','I=60_Ku=-2.5.txt','I=65_Ku=-2.5.txt','I=70_Ku=-2.5.txt','I=75_Ku=-2.5.txt',...
    'I=80_Ku=-2.5.txt','I=85_Ku=-2.5.txt','I=90_Ku=-2.5.txt','I=95_Ku=-2.5.txt','I=100_Ku=-2.5.txt','I=105_Ku=-2.5.txt',...
    'I=110_Ku=-2.5.txt'};

fileNames = {'I=30_Ku=0.txt','I=35_Ku=0.txt','I=40_Ku=0.txt','I=45_Ku=0.txt',...
    'I=50_Ku=0.txt','I=55_Ku=0.txt','I=60_Ku=0.txt','I=65_Ku=0.txt','I=70_Ku=0.txt','I=75_Ku=0.txt','I=80_Ku=0.txt',...
'I=85_Ku=0.txt','I=90_Ku=0.txt','I=95_Ku=0.txt','I=100_Ku=0.txt','I=105_Ku=0.txt','I=110_Ku=0.txt','I=115_Ku=0.txt',...
'I=120_Ku=0.txt','I=125_Ku=0.txt','I=130_Ku=0.txt','I=135_Ku=0.txt','I=140_Ku=0.txt','I=145_Ku=0.txt'};

fileNames = {'-5_B=1.2.txt','-4_B=1.2.txt','-3_B=1.2.txt','-2_B=1.2.txt','-1_B=1.2.txt','0_B=1.2.txt','1_B=1.2.txt','2_B=1.2.txt','3_B=1.2.txt','4_B=1.2.txt','5_B=1.2.txt'};

fileNames = {'Lpy_-5.txt','Lpy_-4.txt','Lpy_-3.txt','Lpy_-2.txt','Lpy_-1.txt','Lpy_0.txt','Lpy_1.txt','Lpy_2.txt','Lpy_3.txt'};

%}
fileNames = {'-5_B=1.2.txt','-4.5_B=1.2.txt','-4_B=1.2.txt','-3.5_B=1.2.txt','-3_B=1.2.txt','-2.5_B=1.2.txt','-2_B=1.2.txt','-1.5_B=1.2.txt','-1_B=1.2.txt','-0.5_B=1.2.txt','0_B=1.2.txt',...
    '0.5_B=1.2.txt','1_B=1.2.txt','1.5_B=1.2.txt','2_B=1.2.txt','2.5_B=1.2.txt','3_B=1.2.txt','3.5_B=1.2.txt','4_B=1.2.txt','4.5_B=1.2.txt','5_B=1.2.txt'};


numFiles = numel(fileNames);
dataCell = cell(numFiles, 1);

for i = 1:numFiles
    dataCell{i} = readtable(fileNames{i}, 'ReadVariableNames', false);
end

skiprow = 5000;
T = dataCell{1}{2,"Var1"} - dataCell{1}{1,"Var1"};   % Sampling period
Fs = 1/T;           % Sampling frequency   
disp(Fs);
% L = height(dataCell{2});             % Length of signal
L= 15000;
tTable = dataCell{1}(:, 1); 
t = table2array(tTable); 
t = t(skiprow:L) - dataCell{1}{skiprow,"Var1"};

%test run to get data length
N = 2;
mxTable = dataCell{1}(:, 4);
mx = table2array(mxTable);
X = mx';
X = X(skiprow:L);
X = X-sum(X(:))/(L-skiprow);
% plot(t,X);
fft_data = fft(X);
frequencies = 10^-9*linspace(0, Fs/N, (L-skiprow)/N+1);
signal = abs(fft_data(1:(L-skiprow)/N+1));

X = zeros(numFiles, L);
aveFFT_matrix = zeros(numFiles, length(signal));

    
for i = 1:numFiles
    mxTable = dataCell{i}(:, 4);
    mx = table2array(mxTable);
    X = mx';
    X = X(skiprow:L);
    X = X-sum(X(:))/(L-skiprow);
    fft_data = fft(X);
    frequencies = 10^-9*linspace(0, Fs/N, (L-skiprow)/N+1);
    signal = abs(fft_data(1:(L-skiprow)/N+1));

    %smooth
    order = 1;
    framelen = 21;
    signal = sgolayfilt(signal,order,framelen);
    %{ %}

    aveFFT_matrix(i,:) = signal;
    % plot(frequencies, signal);
    % hold on;
    % legend('signal','sgolay')
    % title("Mz Spatial Averaged FFT Amplitude Spectrum") 
    % xlabel("Frequency (GHz)")
    % ylabel("FFT Amplitude (arb. unit)")
end


% disp(frequencies);
x_label = [-5,5];
% x_label = [30,145]/30;
% x_label = [25,110];
aveFFT_matrix = aveFFT_matrix';
aveFFT_matrix = -abs(log(aveFFT_matrix))+9;
imagesc(x_label, frequencies, aveFFT_matrix);
set(gca,'YDir','normal');

hold on;
%{
x_additional = [-5,-4.5,-4,-3.5,-3,-2.5,-2.0,-1.5,-1.0,-0.5,0,0.5,1,1.5,2,2.5,3]; % X coordinates of additional points
y_SHNO = [10,9.6, 9.18, 8.66, 8.14, 7.51, 6.77, 6.26, 5.5, 4.63, 3.51, 1.77, 4.25, 8.3, 12.25, 16.04, 19.88];
y_LAFO = [9.8,9.36,NaN,8.4,7.86,7.32,6.72,6.04,5.28,4.4,3.32,1.6,4.36,8.32,12.12,15.92,19.68];
y_Py = [6.8,6.8,6.8,6.8,6.8,6.8,6.8,6.8,6.8,6.8,6.8,6.8,6.8,6.8,6.8,6.8,6.8];% Y coordinates of additional points
plot(x_additional, y_SHNO, 'rx', 'MarkerSize', 8,'MarkerFaceColor', 'r', 'LineWidth', 2); % Plot additional points as red circles
plot(x_additional, y_LAFO, 'o', 'MarkerSize', 6, 'MarkerFaceColor', [0.5,0.5,0.5], 'MarkerEdgeColor', [0.5,0.5,0.5], 'LineWidth', 2);
plot(x_additional, y_Py, 'yd', 'MarkerSize', 6, 'MarkerFaceColor', 'y','LineWidth', 1);

% 
% x_limits = xlim; % Get the current x-axis limits of the figure
% y_line = 6.8; % Constant y-value for the horizontal line
% plot(x_limits, [y_line y_line], 'r-', 'LineWidth', 1);
%}

% x_theory_inplane = linspace(-5, 0.66, 300)*10^4;
x_theory_inplane = linspace(-5, 5, 300)*10^4;
muH_ext = 1.2;
muMs = 0.0942;
Ms = muMs/(4*pi*10^(-7));
muMeff = muMs-2*x_theory_inplane/Ms;
y_theory_inplane = (180/(2*pi))*real(sqrt(muH_ext*(muH_ext+muMeff)));
% y_theory_outofplane = (180/(2*pi))*sqrt(muH_ext^2/)
for i = 1:numel(x_theory_inplane)-1
    plot(x_theory_inplane(i:i+1)/10^4, y_theory_inplane(i:i+1), '-', 'Color', [0, 0.5, 0.5], 'LineWidth', 2);
end

% x_theory_outofplane = linspace(0.65, 5, 300)*10^4;
% muMeff_2 = muMs - 2.*x_theory_outofplane/Ms;
% z = -muH_ext ./ muMeff_2;
% theta_M = real(asin(z));
% % disp(theta_M);
% y_theory_outofplane = (180/(2*pi))*sqrt((muH_ext.*z - muMeff_2.*cos(2.*theta_M)) .* (muH_ext.*z - muMeff_2.*(cos(theta_M)).^2));
% for i = 1:numel(x_theory_outofplane)-1
%     plot(x_theory_outofplane(i:i+1)/10^4, y_theory_outofplane(i:i+1), '-', 'Color', [0, 0.8, 0.8], 'LineWidth', 2); % Dashed yellow lines
% end

hold off;

% clim([0, 10]);
% clim([0, 7.5]);
% clim([0, 0.01]);
set(gca, 'TickDir', 'out');
set(gca, 'LineWidth', 1);
% xlabel('K_{u} (kJ/m^3)');
% set(gca, 'XTick', -5:2.5:5); % This line specifies the x-tick locations
xticks([-5,-2.5,0,2.5,5]) % Setting custom tick locations
xticklabels({'-50', '-25','0', '25','50'}) % Setting custom tick labels

% xlabel('I (\times10^{12} A/m^2)');
% ylabel('Frequency (GHz)');
% title('K_u=25kJ/m^3');
% legend('FMR');
% Adding legend
% legend('LAFO10/Py5 FMR','LAFO10 FMR','Py5 FMR', 'FMR','Box', 'off','FontSize', 15);
legend('LAFO10/Py5 FMR', 'Box', 'off','FontSize', 20);
set(gca, 'FontSize', 20);
set(gca, 'FontName', 'Times New Roman'); % Change font for axes labels


% Getting legend object
leg = findobj(gcf, 'Type', 'Legend');

% Setting legend background transparency
set(leg.BoxFace, 'ColorType', 'truecoloralpha', 'ColorData', uint8(255*[0; 0; 0; 0])); % 0 sets the transparency
set(leg, 'TextColor', 'white');
set(leg, 'EdgeColor', 'none');
set(gca, 'FontSize', 20);
set(gca, 'FontName', 'Times New Roman'); % Change font for axes labels\
colorbar;
colormap(jet(256));
pbaspect([1 1 1]);
%{%}


