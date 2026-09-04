num = [0 0 1 6 1];
den = [1 3 0 4 10];

zeros_val = roots(num);
poles_val = roots(den);

disp('零點 (Zeros):'); disp(zeros_val);
disp('極點 (Poles):'); disp(poles_val);

disp('極點模值 (Magnitude of Poles):'); disp(abs(poles_val));

