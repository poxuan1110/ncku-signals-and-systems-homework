%% MATLAB Script to Compute the DFT of a Signal
clear; clc; close all;

% Define the discrete-time signal
x = [1, 2, 0, -1, -2, 1, 5, 4];
N = length(x); % Length of the signal (N = 8)

% Compute the DFT using the built-in Fast Fourier Transform algorithm
X = fft(x);

% Display the resulting DFT coefficients in the Command Window
disp('The DFT coefficients X(k) are:');
for k = 0:N-1
    fprintf('X(%d) = %6.4f + %6.4fj\n', k, real(X(k+1)), imag(X(k+1)));
end

%% Plotting Magnitude and Phase Spectra
k_axis = 0:N-1;

figure;

% Plot Magnitude Spectrum
subplot(2,1,1);
stem(k_axis, abs(X), 'filled', 'LineWidth', 1.5);
title('Magnitude Spectrum |X(k)|');
xlabel('Frequency Index (k)');
ylabel('|X(k)|');
grid on;

% Plot Phase Spectrum
subplot(2,1,2);
stem(k_axis, angle(X), 'filled', 'LineWidth', 1.5);
title('Phase Spectrum \angle X(k) (radians)');
xlabel('Frequency Index (k)');
ylabel('Phase (rad)');
grid on;