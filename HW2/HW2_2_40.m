n = 0:100;
h = (0.6).^n;
x = cos(n*pi/6);
y = conv(x, h);      
ny = 0:length(y)-1;
stem(ny , y);
xlim([0 100]);
xlabel('n');
ylabel('y[n]');
