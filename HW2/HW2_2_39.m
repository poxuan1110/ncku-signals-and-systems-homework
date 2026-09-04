n_h = 0:50;
h = (0.6).^n_h;

n_x = 0:150;
x = ones(size(n_x));

y = conv(x, h);
ny = 0:length(y)-1;
stem(ny, y);
xlim([0 100]);
xlabel('n');
ylabel('y[n]');
