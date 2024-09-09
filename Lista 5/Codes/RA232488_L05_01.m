function [theta] = RA232488_L05_01()

    clc; close all; clear all;

    %dados do enunciado
    theta_1 = deg2rad(40);
    L1 = 0.3;
    L2 = 0.36;
    L3 = 0.4;
    L4 = 0.4;

    equacoes = @(x) [
    L1*cos(theta_1) + L2*cos(x(1)) - L3*cos(x(2)) - L4;
    L1*sin(theta_1) + L2*sin(x(1)) - L3*sin(x(2))];
    
    theta = [];

    %primeiro chute inicial em 0 graus
    [solucoes, fx] = fsolve(equacoes, [0; 0]);
    theta = [theta, rad2deg(solucoes)];
    
    %segundo chute inicial em 180 graus
    [solucoes, fx] = fsolve(equacoes, [pi; pi]);
    theta = [theta, rad2deg(solucoes)];  

end