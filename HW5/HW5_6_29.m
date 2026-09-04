%% MATLAB Script to Plot the DTFT Magnitude of x[n] = a^|n|
clear; clc; close all;

% Define the parameter 'a'
a = 0.75;

% Generate a fine grid of omega values from 0 to 2*pi
omega = linspace(0, 2*pi, 1000); 

% Compute the analytical DTFT expression
% Formula: X(omega) = (1 - a^2) / (1 - 2*a*cos(omega) + a^2)
numerator = 1 - a^2;
denominator = 1 - 2 * a * cos(omega) + a^2;
X_omega = numerator ./ denominator; % Note the use of './' for element-wise operation

% Calculate the magnitude |X(omega)|
mag_X_omega = abs(X_omega);

% Plotting the magnitude spectrum
figure;
plot(omega, mag_X_omega, 'r-', 'LineWidth', 2);
grid on;

% Labeling the axes and setting the title
title('Magnitude Spectrum |X(\omega)| of x[n] = 0.75^{|n|}');
xlabel('\omega (radians)');
ylabel('|X(\omega)|');

% Customize the x-axis ticks to show multiples of pi
xticks([0, pi/2, pi, 3*pi/2, 2*pi]);
xticklabels({'0', '\pi/2', '\pi', '3\pi/2', '2\pi'});

% Enforce the axis limit specified in the prompt
xlim([0, 2*pi]);