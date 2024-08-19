clc; clear all; close all force;

N = 10000;

soma = 1;

tic 

for n = 1:N
    soma = soma + (-1)^n / (2*n+1);
end

toc

pi1 = 4 * soma;

erro = abs(pi1 - pi);

