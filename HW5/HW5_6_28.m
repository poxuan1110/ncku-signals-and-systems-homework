%% MATLAB Script to Compute and Plot Discrete DFT/FFT
clear; clc; close all;

%% (a) x[n] = 1, 0 <= n <= 12 (N = 13)
n_a = 0:12;
x_a = ones(size(n_a));
X_a = fft(x_a); 
k_a = 0:length(x_a)-1; % Discrete frequency index

%% (b) x[n] = n, 0 <= n <= 10 (N = 11)
n_b = 0:10;
x_b = n_b;
X_b = fft(x_b);
k_b = 0:length(x_b)-1;

%% (c) x[n] = 1 for n=0, 1/n for n=1..10, 0 otherwise (N = 11)
n_c = 0:10;
x_c = zeros(size(n_c));
x_c(1) = 1;                  % n = 0 (MATLAB uses 1-based indexing)
x_c(2:end) = 1 ./ n_c(2:end); % n = 1 to 10
X_c = fft(x_c);
k_c = 0:length(x_c)-1;

%% (d) x[n] = n*(0.8)^n, 0 <= n <= 10 (N = 11)
n_d = 0:10;
x_d = n_d .* (0.8).^n_d;
X_d = fft(x_d);
k_d = 0:length(x_d)-1;

%% Plotting the Discrete Magnitude Spectra
figure('Position', [100, 100, 1000, 750]);

% Plot (a)
subplot(2,2,1);
stem(k_a, abs(X_a), 'filled', 'LineWidth', 1.5, 'MarkerSize', 6);
title('(a) x[n] = 1, 0 \leq n \leq 12');
xlabel('Frequency Index (k)');
ylabel('|X(k)|');
xticks(k_a); % Show every discrete index
grid on;

% Plot (b)
subplot(2,2,2);
stem(k_b, abs(X_b), 'filled', 'LineWidth', 1.5, 'MarkerSize', 6);
title('(b) x[n] = n, 0 \leq n \leq 10');
xlabel('Frequency Index (k)');
ylabel('|X(k)|');
xticks(k_b);
grid on;

% Plot (c)
subplot(2,2,3);
stem(k_c, abs(X_c), 'filled', 'LineWidth', 1.5, 'MarkerSize', 6);
title('(c) x[n] = 1/n condition');
xlabel('Frequency Index (k)');
ylabel('|X(k)|');
xticks(k_c);
grid on;

% Plot (d)
subplot(2,2,4);
stem(k_d, abs(X_d), 'filled', 'LineWidth', 1.5, 'MarkerSize', 6);
title('(d) x[n] = n(0.8)^n, 0 \leq n \leq 10');
xlabel('Frequency Index (k)');
ylabel('|X(k)|');
xticks(k_d);
grid on;