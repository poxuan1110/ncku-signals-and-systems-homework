num = [0 0 1 -2 6 1];
den = [1 -2 0 5 -1 4]; 

poles_val = roots(den);

disp('系統極點為：'); disp(poles_val);
disp('極點模值 (Magnitude) 為：'); disp(abs(poles_val));

if all(abs(poles_val) < 1)
    disp('結論：所有極點都在單位圓內，系統穩定 (Stable)。');
else
    disp('結論：有極點位於單位圓外或圓上，系統不穩定 (Unstable)。');
end

figure;
zplane(num, den);
title('H(z) 的零極點圖');