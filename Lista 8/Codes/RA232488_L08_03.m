function [Ta, Tb] = RA232488_L08_03()

    clc; clear all; close all;

    %letra a
    T_x6 = [70, 48.15, 35.03, 27.07, 25];
    y = [0, 2, 4, 6, 8];

    y_a = 5.4;

    Ta = interp1(y(3:4), T_x6(3:4), y_a);

    %letra b
    T_x0 = [100, 85, 70, 55, 40];
    T_x2 = [90, 64.49, 48.9, 38.78, 35];

    x_b = 1.6;
    y_b = 3.2;

    T_x0_interp = interp1(y, T_x0, y_b);
    T_x2_interp = interp1(y, T_x2, y_b);

    Tb = interp1(y(1:2), [T_x0_interp, T_x2_interp], x_b);

end
