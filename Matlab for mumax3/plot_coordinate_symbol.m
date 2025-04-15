% Create a figure
figure;

% Plot a point at the origin
plot3(0, 0, 0, '.'); % Plot a point at the origin for reference
hold on; % Keep the plot active for additional plotting commands

% Setting the limits for the axes
axisLimit = 1; % Adjust this value as needed
axis([-axisLimit axisLimit -axisLimit axisLimit -axisLimit axisLimit])

% Adding axis labels
xlabel('X');
ylabel('Y');
zlabel('Z');

% Plotting the axes arrows
% X-axis
quiver3(0, 0, 0, axisLimit, 0, 0, 'color','black', 'LineWidth', 3, 'MaxHeadSize', 0.5);
% Y-axis
quiver3(0, 0, 0, 0, axisLimit, 0, 'color','black', 'LineWidth', 3, 'MaxHeadSize', 0.5);
% Z-axis
quiver3(0, 0, 0, 0, 0, axisLimit, 'color','black', 'LineWidth', 3, 'MaxHeadSize', 0.5);

% Setting the aspect ratio for equal scaling
axis equal
grid on; % Enable the grid for better visibility
title('3D Coordinate System Demonstration');

% Optionally, if you want to remove the ticks
set(gca, 'XTick', [], 'YTick', [], 'ZTick', []);

hold off;
