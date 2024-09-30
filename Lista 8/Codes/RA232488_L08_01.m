function [K, m] = RA232488_L08_01()

    clc; clear all; close all;

    %dados do enunciado
    A0 = 1.25 * 10^-4;
    L0 = 0.0125;

    L = [12.58, 12.82, 12.91, 12.95, 13.05, 13.21, 13.35, 13.49, 14.08, 14.21, 14.48] * 10^-3;
    F = [24.6, 29.3, 31.5, 33.3, 34.8, 35.7, 36.6, 37.5, 38.8, 39.6, 40.4] * 10^3;

    % F * L /(A0 * L0) = K * (log(L/L0))^m
    % F = K * (A0 * L0) / L * (log(L/L0))^m
    

    logartimo_base = log(log(L/L0));

    logaritmo_F = log(F);

    coefs = polyfit(logaritmo_base, logaritmo_F, 1);

    m = coefs(1);

    a = exp(coefs(2));

    %a = K * (A0 * L0) / L
    %K = a * L / (A0 * L0)

    K = a * 





end
