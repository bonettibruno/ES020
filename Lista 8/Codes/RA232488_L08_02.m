function [ha, vb] = RA232488_L08_02()
    
    clc; clear all; close all;

    %dados do enunciado
    v = [0.13730, 0.14222, 0.14710];
    h = [286.24, 295.45, 304.79];

    v_a = 0.141;

    ha = interp1(v(1:2), h(1:2), v_a);

    h_b = 300;

    vb = interp1(h(2:3), v(2:3), h_b);

    


end
