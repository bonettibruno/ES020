function [H] = RA232488_L01_02()
    %funcao que calcula a altura necessaria da coluna de agua H

    clc; clear all; close all;

    %parametros utilizados
    L = 5;
    v = 7.5;
    t = 3;
    g = 9.81;

    func = @(H) sqrt(2*g*H) * tanh(sqrt(2*g*H/(2*L)*t)) - v;

    raiz = fzero(func, [0 3]);

    H = raiz;

end