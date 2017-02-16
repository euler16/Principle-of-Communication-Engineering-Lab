% TO OBSERVE THE EFFECTS OF FOLLOWING DISTORTIONS INTRODUCED BY THE CHANNEL
% DUE TO ITS NON IDEAL CHARACTERISTICS:-
% A.  AMPLITUDE DISTORTION (due to non ideal amplitude spectrum of channel)
% B.  PHASE DISTORTION ( sdue to non ideal phase spectrum of channel)
% C.  DISTORTION CAUSED BY BANDLIMITED CHANNEL

clc;
clear;

freq = 1;
x = -1:0.01:1;
y = sin(2*pi*freq*x);

subplot(4,1,1)
plot(x,y);

ff_trans = fft(y);
distort_mag = 10*randn(size(x));

mag = abs(ff_trans)+distort_mag;
phase = angle(ff_trans);

noise_mag = mag.*exp(j*phase);
subplot(4,1,2)
plot(x,ifft(noise_mag));

distort_phase = 100*randn(size(x));
mag2 = abs(ff_trans);
phase2 = angle(ff_trans).*distort_phase;

noise_phase = mag2.*exp(j*phase2);
subplot(4,1,3)
plot(x,ifft(noise_phase));

bandpass = 0.5*sign(x+0.5)-0.5*sign(x-0.5);
band = ff_trans.*bandpass;
subplot(4,1,4)
plot(x,fftshift(ifft(band)));