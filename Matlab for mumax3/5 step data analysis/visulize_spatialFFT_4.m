%{
% load matrix from saved file
filename = 'Ku8e4_B=0.08_LAFO10_Py.mat';
load(filename);
%}
size = 2000;
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
i = L-skiprows;
f = (10^-9)*Fs*(0:((L-skiprows)/2))/(L-skiprows);
% textXCoord = uicontrol('Style', 'text', 'Position', [330 0 100 20], 'String', 'freq = 0 GHz');

%find max value for plotting
global largest_element;
max_slice = max(intensity, [], [1 2]); % Find the maximum value for each slice
largest_element = max(max_slice(:));
% disp(largest_element);

% Initialize plot
currentX = 1;
slice = squeeze(intensity(currentX, :, :));
imagesc(slice);
clim([0, largest_element]);
colorbar;
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
    clim([0, largest_element]);
    xlabel('X-cell(5nm)');
    ylabel('Y-cell(5nm)');
    colorbar;
    zlabel('Intensity');
    freq = 2*(currentX-1)*f(round(i/2))/i;
    % textXCoord = uicontrol('Style', 'text', 'Position', [330 0 100 20], 'String', 'freq = 1');
    % set(textXCoord, 'String', ['freq = ' num2str(freq) 'GHz']);
    title(['Spatial FFT at freqency = ' num2str(freq) 'GHz']);
end