num_c = [1 10 5];        % s^2 + 10s + 5
den_c = [1 4 10 6];      % s^3 + 4s^2 + 10s + 6
[z_c, p_c, k_c] = tf2zp(num_c, den_c)