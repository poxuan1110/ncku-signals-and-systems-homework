t = -2:0.01:4;

figure(1);
x = 2 * t .* (t >= 0);
plot(t, x);
xlabel('t');
ylabel('x(t)');

figure(2);
y = 5 * exp(-2 * t) .* (t >= 0);
plot(t, y);
xlabel('t');
ylabel('y(t)');

figure(3);
z = 4 * cos(4 * t) + 2 * sin(2 * t - pi / 4);
plot(t, z);
xlabel('t');
ylabel('z(t)');
