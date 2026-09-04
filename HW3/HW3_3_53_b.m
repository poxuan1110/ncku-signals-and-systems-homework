num_b = [1 1];                        % s + 1
den_b = conv([1 2], [1 22.5 16]);     % (s+2) 乘以 (s^2 + 22.5s + 16)
sys_b = tf(num_b, den_b);

figure;
bode(sys_b);
grid on;
title('Bode Plot for Problem (b)');