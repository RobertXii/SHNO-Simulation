% Sample data, replace with your actual data
Temperature = [0, 50, 100, 150, 200]; % in Kelvin
FWHM_Bulk = [100, 80, 60, 60, 40]; % FWHM in MHz for Bulk
FWHM_Edge = [80, 70, 40, 35, 30]; % FWHM in MHz for Edge

% Create a new figure
figure;

% Plot the Bulk data
plot(Temperature, FWHM_Bulk, '-or', 'LineWidth', 1.5, 'MarkerSize', 8, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'w');

% Hold on to plot the Edge data on the same figure
hold on;

% Plot the Edge data
plot(Temperature, FWHM_Edge, '-sb', 'LineWidth', 1.5, 'MarkerSize', 8, 'MarkerEdgeColor', 'b', 'MarkerFaceColor', 'w');

% Add labels and title
xlabel('Temperature (K)');
ylabel('FWHM (MHz)');
title('FWHM vs. Temperature');
legend({'Bulk', 'Edge'}, 'Location', 'best');

% Set the axes limits if necessary
xlim([0, 200]);
ylim([0, 120]);

% Add a grid for better readability
grid off;

% Display the figure
hold off;
