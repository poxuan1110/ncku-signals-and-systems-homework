x = [1, -1, 2, 4];
y = [2, 6, 4, 0, 8, 5, 12];

[h, r] = deconv(y, x);

fprintf('Impulse response h[n]is：\n');
disp(h);

fprintf('Remainder r[n] ：\n');
disp(r);