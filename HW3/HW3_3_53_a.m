num_a = [1 10 0];            % s^2 + 10s + 0
den_a = conv([1 20], [1 50]); % 使用 conv 自動計算展開結果
sys_a = tf(num_a, den_a);

figure;
bode(sys_a);
grid on;
title('Bode Plot for Problem (a)');