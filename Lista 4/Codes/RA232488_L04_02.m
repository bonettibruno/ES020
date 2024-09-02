function [x] = RA232488_L04_02()
    %funcao que resolve sistema linear e retona um vetor com os valores

    clc; clear all; close all;

    %parametros dados
    k = 6;
    W = 60;

    k1 = k;
    k2 = 2*k;
    k3 = k;
    k4 = 3*k;
    k5 = 2*k;

    W1 = 3*W;
    W2 = W;
    W3 = 3*W;

    A = [k1+k2+k3+k4, -k3, -k5;
        -k3,      k3+k4,   -k4;
        -k5,      -k4,   k4+k5];
    
    b = [W1; W2; W3];

    x = A\b;
    
end
