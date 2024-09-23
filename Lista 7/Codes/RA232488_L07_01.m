function [sigma_princ] = RA232488_L07_01()
   
    clc; clear all; close all;
    
    %dados do enunciado
    sigma_xx = 10;
    sigma_xy = 14;
    sigma_xz = 25;
    sigma_yy = 7;
    sigma_yz = 15;
    sigma_zz = 16;

    I = sigma_xx + sigma_yy + sigma_zz;
    II = (sigma_xx * sigma_yy) + (sigma_xx * sigma_zz) ...
        + (sigma_yy * sigma_zz) - sigma_xy^2 - sigma_xz^2 - sigma_yz^2;
    III = sigma_xx*sigma_yy*sigma_zz - sigma_xx*sigma_yz^2 - sigma_yy*sigma_xz^2 ...
        - sigma_zz*sigma_xy^2 + 2*sigma_xy*sigma_xz*sigma_yz;

    coeficientes = [1 -I II -III];

    sigma_princ = sort(roots(coeficientes));
    
end
