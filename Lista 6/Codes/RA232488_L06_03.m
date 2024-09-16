function [y] = RA232488_L06_03()

    clc; clear all; close all;
    
    %dados do enunciado
    B = 0.06;
    H = 0.08;
    
    S = @(y) RA232488_L06_03_aux1(B, H, y);

    y = fminbnd(@(y) -S(y), 0, H);
    
end