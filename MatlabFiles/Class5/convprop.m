clc;
clear;

N = 9;

x = -10:0.1:10;
y = sign(x+0.5)*0.5 - sign(x-0.5)*0.5;
z = sign(x+1) * 0.5 - sign(x-5)*0.5;

c = conv(y,z,'same');
fconv = fft(c);

f1 = fft(y);
f2 = fft(z);

size(c)
subplot(N,1,1)
plot(x,ifftshift(ifft(f1.*f2)));
subplot(N,1,2)
plot(x,c);

subplot(N,1,3)
plot(x,real(fftshift(fconv)));

subplot(N,1,4)
plot(x,real(fftshift(f1.*f2)));

subplot(N,1,5)
plot(x,real(conv(f1,f2,'same')));

subplot(N,1,6)
plot(x,real(fftshift(fft(y.*z))));

yshift = y.*exp(j*2*pi*1*x);
subplot(N,1,7)

plot(x,real(fftshift(fft(yshift))));
subplot(N,1,8)
plot(x,real(fftshift(f1)))

fshift = f1.*real(exp(-j*2*pi*1));

subplot(N,1,9)
plot(x,real(ifft(fshift)));
