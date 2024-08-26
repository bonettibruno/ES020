function [h] = RA232488_L03_03()
    % funcao que calcula a altura h da porção da esfera acima da agua

    clc; clear all; close all;

    % parametros fornecidos
    r = 1; 
    rho_c = 212;
    rho_a = 998;

    % rho_a * V_submerso = rho_c * V_esfera
    % V_submerso = V_esfera - V_acima_agua

    V_esfera = (4/3) * pi * r^3;

    V_acima_agua = @(h) pi / 3 * h^2 * (3*r - h);

    V_submerso = @(h) V_esfera - V_acima_agua(h);
    
    func = @(h) rho_a * (V_esfera - V_acima_agua(h)) - rho_c * V_esfera;

    h = fzero(func, [0 2*r]);

end
