num = [1 6 10];          % 分子: s^2 + 6s + 10
den = [1 7 11 5];       % 分母: s^3 + 7s^2 + 11s + 5
[r, p, k] = residue(num, den)