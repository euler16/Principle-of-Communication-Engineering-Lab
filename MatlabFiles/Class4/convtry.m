% convolution

clc;
clear;
t = -1:0.01:1;
u = (sign(t)+1)/2;
v = (sign(t)+1)/2;

c = conv(u,v);
subplot(2,1,1);
plot(c)

ff_x =fft(u);
ff_y =fft(v);
fft_z=ff_x .* ff_y;
subplot(2,1,2);
plot(ifft(fft_z))
