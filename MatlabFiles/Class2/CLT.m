clc;
clear;

n=100000;

%CENTRAL LIMIT THEOREM

a=rand(1,n);
b=rand(1,n);
c=rand(1,n);
hist(a+b+c,600);
xlabel('x'); 
ylabel('frequency');
title('VERIFICATION of CENTRAL LIMIT THEOREM');
