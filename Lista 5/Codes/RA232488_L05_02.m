function [v, theta, t] = RA232488_L05_02()
    
    clc; close all; clear all;
    
    %dados do enunciado
    g = 9.81;
    L = 360;
    h = 55;
    theta_f = deg2rad(45);

    equacoes = @(x) [
    (x(1) * cos(x(2)) * x(3)) - L;
    (-0.5 * g * x(3)^2) + (x(1) * sin(x(2)) * x(3)) - h;
    (-g * x(3) + x(1) * sin(x(2))) / (x(1) * cos(x(2))) - tan(-theta_f)];
    
    x0 = [80; pi/4; 10];

    [solucoes, fx] = fsolve(equacoes, x0);
    v = solucoes(1);
    theta = rad2deg(solucoes(2));
    t = solucoes(3);

end