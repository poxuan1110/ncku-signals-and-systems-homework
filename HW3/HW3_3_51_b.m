num_b = [1 2 5];         % s^2 + 2s + 5
den_b = [1 4 13 0];      % s^3 + 4s^2 + 13s + 0
[z_b, p_b, k_b] = tf2zp(num_b, den_b)