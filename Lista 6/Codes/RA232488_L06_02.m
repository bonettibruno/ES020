function [x1, x2] = RA232488_L06_02()
   
    clc; clear all; close all;
    
    %dados do enunciado
    k_a = 10;
    k_b = 4;
    L_a = 10;
    L_b = 10;
    F_1 = 3;
    F_2 = 4;

    U = @(x) 1/2 * k_a * (sqrt(x(1)^2 + (L_a - x(2))^2) - L_a)^2 + 1/2 * k_b * (sqrt(x(1)^2 + (L_b + x(2))^2) - L_b)^2 - F_1 * x(1) - F_2 * x(2);
    
    [x, fval] = fminunc(U, [0; 0]);

    x1 = x(1);
    x2 = x(2);

end
