function [A0, A1, B1, C1, t_max] = RA232488_L09_01()
    
    clc; clear all; close all;

    %dados do enunciado
    w_0 = 2 * pi * 60;

    t = [0 0.0021 0.0042 0.0063 0.0083 0.0104 0.0125 0.0146 0.0167];
    V = [0 220 311 220 0 -220 -311 -220 0];

    N = length(t);

    soma_V = sum(V);

    soma_V_cos = sum(V.* cos(w_0 * t));

    soma_V_sen = sum(V.* sin(w_0 * t));

    A0 = soma_V/N;

    A1 = 2/N*soma_V_cos;

    B1 = 2/N*soma_V_sen;

    C1 = sqrt(A1^2 + B1^2);

    [~, index_max] = max(V);
    t_max = t(index_max);
    


end
