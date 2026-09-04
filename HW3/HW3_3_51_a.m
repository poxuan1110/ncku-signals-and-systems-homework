num_a = [1 -2];          % s - 2
den_a = [1 2 10];        % s^2 + 2s + 10
[z_a, p_a, k_a] = tf2zp(num_a, den_a)