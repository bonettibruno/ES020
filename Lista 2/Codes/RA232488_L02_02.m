function RA232488_L02_02
    clc; close all; clear all;
    
    t = -5:50;
    v = RA232488_L02_02_aux1(t);

    plot(t, v);
    xlabel('t');
    ylabel('v(t)');

end
