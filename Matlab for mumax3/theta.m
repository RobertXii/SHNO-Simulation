% Define the function to solve
equation = @(theta, x) (sin(theta)./theta) - x;

% Choose a value of x for which you want to find theta
x_value = 0.5;

% Initial guess for theta
initial_guess = 1.0;

% Use fsolve to find theta
theta_solution = fsolve(@(theta) equation(theta, x_value), initial_guess);

fprintf('For x = %.2f, theta is approximately %.4f radians.\n', x_value, theta_solution);
