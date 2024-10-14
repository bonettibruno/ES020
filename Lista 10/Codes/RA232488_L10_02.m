function [L] = RA232488_L10_02()
    
    clc; clear all; close all;

    %dados do enunciado
    L = 120;
    altura = 2.5;

    funcao = @(x) sqrt(1 + (altura * cos(x)).^2);
    
    L = integral(funcao, 0, L);

end