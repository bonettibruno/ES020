function [K, m] = RA232488_L08_01()

    clc; clear all; close all;

    %dados do enunciado
    A_0 = 1.25 * 10^-4;
    L_0 = 0.0125;

    L = [12.58, 12.82, 12.91, 12.95, 13.05, 13.21, 13.35, 13.49, 14.08, 14.21, 14.48] * 10^-3;
    F = [24.6, 29.3, 31.5, 33.3, 34.8, 35.7, 36.6, 37.5, 38.8, 39.6, 40.4] * 10^3;

    sigma_v = (F ./ A_0) .* (L ./ L_0);
    epsilon_t = log(L ./ L_0);

    logaritmo_sigma_v = log(sigma_v);
    logaritmo_epsilon_t = log(epsilon_t);

    coefs = polyfit(logaritmo_epsilon_t, logaritmo_sigma_v, 1);

    m = coefs(1);
    K = exp(coefs(2));

end
