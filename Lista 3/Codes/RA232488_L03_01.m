function [d] = RA232488_L03_01()
    %funcao que calcula valor de deflexao da mola a partir de dados

    clc; clear all; close all;

    %parametros utilizados
    k1 = 40e3;
    k2 = 45;
    m = 95;
    g = 9.81;
    h = 0.44;

    %equacao
    f = @(d)  (2/5 * k2 * d^(5/2)) + (1/2 * k1 * d^2) - (m * g * d) - (m * g * h);
    
    %usando fzero
    raiz = fzero(f, 1);

    d = raiz;
    
end
