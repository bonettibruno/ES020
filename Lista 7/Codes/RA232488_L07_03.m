function [c_mean,c_var] = RA232488_L07_03()
 
    clc; clear all; close all;

    %dados do enunciado
    media_d1 = 3;
    variancia_d1 = 0.0064;
    desvio_d1 = sqrt(variancia_d1);

    media_d2 = 2.96;
    variancia_d2 = 0.0036;
    desvio_d2 = sqrt(variancia_d2);

    c_mean = [];
    c_var = [];

    %primeira simulacao
    rng(2024207031);
    d1_100amostras = normrnd(media_d1, desvio_d1, [100, 1]);
    d2_100amostras = normrnd(media_d2, desvio_d2, [100, 1]);

    c = d1_100amostras - d2_100amostras;
    %histogram(c);

    media = mean(c);
    variancia = var(c);

    c_mean = [c_mean; media];
    c_var = [c_var; variancia];
    
    %segunda simulacao
    rng(2024207032);
    d1_1000amostras = normrnd(media_d1, desvio_d1, [1000, 1]);
    d2_1000amostras = normrnd(media_d2, desvio_d2, [1000, 1]);

    c = d1_1000amostras - d2_1000amostras;
    %histogram(c);

    media = mean(c);
    variancia = var(c);

    c_mean = [c_mean; media];
    c_var = [c_var; variancia];

    %terceira simulacao
    rng(2024207033);
    d1_5000amostras = normrnd(media_d1, desvio_d1, [5000, 1]);
    d2_5000amostras = normrnd(media_d2, desvio_d2, [5000, 1]);

    c = d1_5000amostras - d2_5000amostras;
    %histogram(c);

    media = mean(c);
    variancia = var(c);

    c_mean = [c_mean; media];
    c_var = [c_var; variancia];

end