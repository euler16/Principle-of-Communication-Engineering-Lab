clc;
clear;

% To create rect pulse

x = [-1:0.0001:1];

% creates signum of x
y = sign(x);
z = sign(x-0.5);

plot(x,0.5*(y-z));