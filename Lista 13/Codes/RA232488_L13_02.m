function [P_crit, V] = RA232488_L13_02
    
    clc; clear; close all force;

    E = 10 * 10^9;
    I = 1.25 * 10^-5;
    L = 3;
    delta_x = 0.6;

    A = [2 / (delta_x^2), -1 / (delta_x^2), 0, 0;
        -1 / (delta_x^2), 2 / (delta_x^2), -1 / (delta_x^2), 0;
        0, -1 / (delta_x^2), 2 / (delta_x^2), -1 / (delta_x^2);
        0, 0, -1 / (delta_x^2), 2 / (delta_x^2)];
    
    [V, autovalores] = eig(A);
    autovalores = diag(autovalores);
    
    P_crit = E * I * autovalores;
    
end