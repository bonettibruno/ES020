function [i] = RA232488_L04_03()
   
    clc; clear all; close all;
    
    i = [];

    for R = [5 10 20]

        [A, b] = RA232488_L04_03_aux1(R);
        solucao = A\b;

        i = [i; solucao];

    end
    
end
