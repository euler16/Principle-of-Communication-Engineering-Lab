%TO PLOT THE PROBABILITY DENSITY FUNCTION OF A SET OF RANDM NUMBERS
clc;
clear;
n=500000;

%COMPUTE MEAN AND VARIANCE OF A SET OF UNIFORM AND NORMAL DISTRIBUTION
% UNIFORM
x1=rand(1,n);
avg=mean(x1)
variance=var(x1)
% NORMAL
x2=randn(1,n);
avg=mean(x2)
variance=var(x2)

% PLOTTING DISTRIBUTIONS
% UNIFORM
subplot(1,2,1);
hist(x1,1000)
xlabel('x'); ylabel('frequency'); title('uniform distribution');

% NORMAL
subplot(1,2,2)
hist(x2,1000)
xlabel('x'); ylabel('frequency'); title('Normal Distribution');