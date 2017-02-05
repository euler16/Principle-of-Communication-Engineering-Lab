% AMPLITUDE MODULATION

fc = 1000000;
fm = 1000;

fs = 10000000; % sampling frequency

k = 0.5;       % modulation index
Ac = 1/k;      % assuming Am = 1

opt = -Ac;
t = 0:1/fs:(2/fm) - (1/fs);

x = cos(2*pi*fm*t);% + sin(2*pi*fm*t);
subplot(311)
plot(x);
title('Message Signal');

y = modulate(x,fc,fs,'amdsb-sc');
subplot(312)
plot(y);
title('Amplitude Modulation');

z = Ac*(1+k.*x).*cos(2*pi*fc*t);
subplot(313)
plot(z);
title('AM modulation');