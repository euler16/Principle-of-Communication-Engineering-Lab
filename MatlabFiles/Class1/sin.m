clc;
clear all;

x = [-2:0.0001:2];
f = 1;
y = sin(2*pi*f*x);
z = sinc(x);

% subplot(1,2,1);

% set(p,'Color','red','LineWidth',1.5)

p = plot(x,y,x,z);

xlabel('time')
ylabel('amplitude')
title('pulse')
grid off;


% subplot(1,2,2);
% p2 = plot(x,z)