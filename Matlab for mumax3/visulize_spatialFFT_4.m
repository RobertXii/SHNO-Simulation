
% load matrix from saved file
filename = 'YIG10_Py600_YIG_2990.mat';
load(filename);
%{%}
size = 2990;
fmax = length(intensity);
Fs = 1.000000000000024e+11;             % Sampling frequency      
L = size - 1;             % Length of signal

% Create figure
fig = figure;
% Create sliders
slider = uicontrol('Style', 'slider', 'Min', 1, 'Max', fmax, 'Value', 1, ...
    'SliderStep', [1/(size/2-1) 1/(size/2-1)], ...
    'Position', [20 10 300 20], 'Callback', {@updatePlot, intensity});

% Create text to display current x-coordinate
global i;
global f;
i = L-1;
f = (10^-9)*Fs*(0:((L-1)/2))/(L-1);
% textXCoord = uicontrol('Style', 'text', 'Position', [330 0 100 20], 'String', 'freq = 0 GHz');

%find max value for plotting
global largest_element;
max_slice = max(intensity, [], [1 2]); % Find the maximum value for each slice
largest_element = max(max_slice(:));
% largest_element = 0.15;
% disp(largest_element);

% Initialize plot
currentX = 1;
slice = squeeze(intensity(currentX, :, :));
imagesc(slice);
daspect([1, 1, 1]);
clim([0, largest_element]);
colorbar;
colormap(jet(256));
xlabel('X-cell(5nm)');
ylabel('Y-cell(5nm)');
zlabel('Intensity');
title(['Spatial FFT at freqency = 0 GHz']);


% Callback function for slider
function updatePlot(source, event, intensity)
    global i;
    global f;
    global largest_element;
    currentX = round(get(source, 'Value'));
    slice = squeeze(intensity(currentX, :, :));
    imagesc(slice);
    daspect([1, 1, 1]);
    clim([0, largest_element]);
    % set(gca, 'FontSize', 15);
    set(gca, 'FontName', 'Times New Roman'); % Change font for axes labels
    box on;
    set(gca, 'yticklabels', {}); % Hide y-axis tick labels
    set(gca, 'xticklabels', {}); % Hide y-axis tick labels

    xlabel('X-cell(5nm)');
    ylabel('Y-cell(5nm)');
    colorbar;
    colormap(jet(256));
    zlabel('Intensity');
    freq = 2*(currentX-1)*f(round(i/2))/i;
    % title(['K_{u1}=3.5\times10^4J/m^3 at B=0.08, LAFO10Py5Pt5 LAFO Spatial FFT at freqency = ' num2str(freq) 'GHz']);
    title(['K_{u}=0J/m^3 at B=0.08T, YIG10Py5Pt5 YIG Spatial FFT at freqency = ' num2str(freq) 'GHz']);
    xticks([]);
    yticks([]);
    zticks([]);
end