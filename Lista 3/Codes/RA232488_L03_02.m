function [H] = RA232488_L03_02()
    %funcao que calcula a altura necessaria da coluna de agua H para
    %atingir os requisitos

    clc; clear all; close all;

    %parametros utilizados
    L = 3;
    v = 5;
    t = 2;
    g = 9.81;

    func = @(H) sqrt(2*g*H) * tanh( sqrt(2*g*H/(2*L))*t ) - v;

    raiz = fzero(func, [0 5]);

    H = raiz;

end