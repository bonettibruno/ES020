function [w,X] = RA232488_L13_01()
    
    clc; clear; close all force;

    k1 = 20;
    k2 = 30;
    k3 = 30;
    k4 = 40;
    m1 = 1;
    m2 = 1.5;
    m3 = 2;


    A = [(k1 + k2)/m1, -k2/m1, 0;
        -k2/m2, (k2 + k3)/m2, -k3/m2;
        0, -k3/m3, (k3 + k4)/m3];

    [autovetores, autovalores_matriz] = eig(A);

    autovalores = diag(autovalores_matriz);

    w = sqrt(autovalores);
    X = autovetores;
    
end