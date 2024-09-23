function [ri] = RA232488_L06_01()
   
    clc; clear all; close all;
    
    %dados do enunciado
    q = 85;
    r_w = 0.00635;
    k = 0.181;
    h = 14;
    T_air = 298;
    
    T = @(ri) T_air + q/(2*pi) * (1/k * log((r_w + ri)/r_w) + 1/h * 1/(r_w + ri));

    ri = fminbnd(T, 0, 0.05);
   
end
