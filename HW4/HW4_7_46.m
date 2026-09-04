num = [0 0 1 1]; 
den = [1 2 1 3];

n = 0:40;

x = ones(size(n)); 

y = filter(num, den, x);

figure;
stem(n, y, 'filled');
title('單位階躍響應 Step Response of H(z)');
xlabel('樣本 n'); ylabel('振幅 y[n]');
grid on;