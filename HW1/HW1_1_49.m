n = 0:1:15;

figure(1);
x = 10 * (0.7) .^n;
stem(n, x);
xlabel('n');
ylabel('x[n]');

figure(2);
y = 10 * (1.2) .^n;
stem(n, y);
xlabel('n');
ylabel('y[n]');