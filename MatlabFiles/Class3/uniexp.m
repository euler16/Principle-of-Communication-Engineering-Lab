%GENERATE EXPONENTIALLY RANDOM NUMBERS FROM UNIFORMLY DISTRIBUTED NUMBERS

clc;
clear;

uniX = rand(1,10000000);
subplot(3,1,1)
nbin = 5000;

hist(uniX,nbin);
title('uniformly distributed random numbers');

% generation of exp distribution
expY = -log(uniX);
subplot(3,1,2);
hist(expY,nbin);
title('exponentially distributed random numbers');

% generation of uniform from exp
uniX2 = exp(-expY);
subplot(3,1,3)
hist(uniX2,nbin);
title('uniform distribution using exponential');
