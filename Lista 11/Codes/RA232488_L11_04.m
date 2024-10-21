function [t,y] = RA232488_L11_04()
    
    clc; clear; close all force;
    
    y0 = 1;

    f = @(t, y) - t * y + 4 * t / y;

    [t, y] = ode45(f, [0 1], y0);

    y_analitico = sqrt(4 - (3/ exp(t.^2))) ;

    plot(t, y, 'r', t, y_analitico, 'b--');
    legend('ODE45', 'Analítico');
    title('$ y'' = - ty + 4t/y $', Interpreter='latex');
    xlabel("t");
    ylabel("y(t)");

end