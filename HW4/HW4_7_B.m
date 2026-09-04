fs = 500;
nfft = 1024;

b = [1, -1.5836, 2.1831, -1.5836, 1] / 1.0159;

H_fft = fft(b, nfft);
mag = abs(H_fft(1:nfft/2));       
mag_dB = 20 * log10(mag);        
freq = (0:nfft/2-1) * fs / nfft;  

figure;

subplot(2,1,1);
plot(freq, mag, 'LineWidth', 1.5);
grid on; axis tight;
title('Magnitude Response (Linear Scale)');
xlabel('Frequency (Hz)'); ylabel('Magnitude');

subplot(2,1,2);
plot(freq, mag_dB, 'LineWidth', 1.5);
grid on; axis tight;
title('Magnitude Response (dB Scale)');
xlabel('Frequency (Hz)'); ylabel('Magnitude (dB)');