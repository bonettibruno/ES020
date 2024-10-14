function [m,rho_avg] = RA232488_L10_01()
    
    clc; clear all; close all;

    %dados do enunciado
    r = (10^3) * [0, 1100, 1500, 2450, 3400, 3630, 4500, 5380, 6060, 6280, 6380];
    rho = (10^3) * [13, 12.4, 12, 11.2, 9.7, 5.7, 5.2, 4.7, 3.6, 3.4, 3];
    
    raio_terra = max(r);

    m = 4 * pi * trapz(r, rho .* r .^2);

    V = 4/3 * pi * raio_terra^3;

    rho_avg = m/V;

end
