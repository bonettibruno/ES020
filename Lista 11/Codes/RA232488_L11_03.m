function [t,y] = RA232488_L11_03()
    
    clc; clear; close all force;
    
    y1 = -2;

    f = @(t, y) (y^2 + y)/(t);

    [t, y] = ode45(f, [1 3], y1);

    y_analitico = (2 .* t) ./ (1 - 2 .* t) ;

    plot(t, y, 'r', t, y_analitico, 'b--');
    legend('ODE45', 'Analítico');
    title('$ y'' = \frac{y^2 + y}{t}$', Interpreter='latex');
    xlabel("t");
    ylabel("y(t)");

end