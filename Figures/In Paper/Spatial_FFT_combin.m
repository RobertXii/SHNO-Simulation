%spatial FFT

% Image dimensions
imgWidth1 = 722; % Width of the first row images
imgHeight1 = 722; % Height of the first row images
imgWidth2 = 722; % Width of the second row images
imgHeight2 = 287*722/913; % Height of the second row images

% Load the images
img1 = imread('Ku3.17e4_clean_LAFO.png');
img2 = imread('Ku-1e4_clean_LAFO.png');
img3 = imread('Ku+1.5e4_clean_LAFO.png');
n=722/913;
img4 = imresize(imread('Ku3.17e4_clean_Py.png'), n);
img5 = imresize(imread('Ku-1e4_clean_Py.png'), n);
img6 = imresize(imread('Ku+1.5e4_clean_Py.png'), n);

% Parameters for figure size and spacing
figWidth = 1000; % Width of the figure
figHeight = 500; % Height of the figure
numRows = 2;
numCols = 3;
horzSpacing = 0.0; % Horizontal spacing between axes
vertSpacing = 0.0; % Vertical spacing between axes
margin = 0; % Margin around the figure

% Calculate the width and height for each subplot
subplotWidth = (1 - (numCols + 1) * horzSpacing - 2 * margin) / numCols;
subplotHeight1 = (1 - (numRows + 1) * vertSpacing - 2 * margin) / numRows;
subplotHeight2 = subplotHeight1 * (imgHeight2 / imgHeight1); % Adjust height for second row

% Create a new figure
figureHandle = figure('Position', [100, 100, figWidth, figHeight]);

% Create an array of subplot positions
positions = zeros(numRows * numCols, 4);
x=0;

% First row positions
for col = 1:numCols
    left = margin + (col-1) * (subplotWidth + horzSpacing) + horzSpacing+x;
    bottom = 1 - subplotHeight1 - vertSpacing-0.2;  % Align top of first row to the top of the figure
    positions(col, :) = [left, bottom, subplotWidth, subplotHeight1];
end

% Adjust vertical position for second row
rowAdjustment = 0.0;  % Adjust this to increase or decrease the gap between the rows

% Second row positions
for col = 1:numCols
    left = margin + (col-1) * (subplotWidth + horzSpacing) + horzSpacing+x;
    bottom = positions(numCols, 2) - subplotHeight2 - vertSpacing - rowAdjustment-0;
    positions(numCols + col, :) = [left, bottom, subplotWidth, subplotHeight2];
end

% Display the images

subplot('Position', positions(1, :));
imshow(eval(sprintf('img1'))); 
text(40, 70, sprintf('K_u=-31.7kJ/m^3'), 'Color', 'white', 'FontSize', 15, 'FontWeight', 'bold', 'FontName', 'Times Roman');
subplot('Position', positions(2, :));
imshow(eval(sprintf('img2'))); 
text(40, 70, sprintf('K_u=-10kJ/m^3'), 'Color', 'white', 'FontSize', 15, 'FontWeight', 'bold', 'FontName', 'Times Roman');
subplot('Position', positions(3, :));
imshow(eval(sprintf('img3'))); 
text(40, 70, sprintf('K_u=15kJ/m^3'), 'Color', 'white', 'FontSize', 15, 'FontWeight', 'bold', 'FontName', 'Times Roman');
subplot('Position', positions(4, :));
imshow(eval(sprintf('img4'))); 
subplot('Position', positions(5, :));
imshow(eval(sprintf('img5'))); 
subplot('Position', positions(6, :));
imshow(eval(sprintf('img6'))); 
axis off;

% % Adjust these values as needed based on your subplot positioning and figure size
% textXPosition = positions(1,1) - 0.02; % Shift left from the left edge of the first subplot
% textYPosition = positions(1,2) + positions(1,4)/2; % Vertically center relative to the first subplot
% textYPosition2 = positions(1,2)/2;
% % Add vertical text
% axes('Position', [0, 0, 1, 1], 'Visible', 'off'); % Create invisible axes spanning the whole figure
% text(textXPosition, textYPosition, 'LAFO10', 'Color', 'black', 'FontSize', 15, 'FontWeight', 'bold', 'FontName', 'Times Roman', 'Rotation', 90, 'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle');
% axes('Position', [0, 0, 1, 1], 'Visible', 'off'); % Create invisible axes spanning the whole figure
% text(textXPosition, textYPosition2+0.068, 'Py5', 'Color', 'black', 'FontSize', 15, 'FontWeight', 'bold', 'FontName', 'Times Roman', 'Rotation', 90, 'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle');

