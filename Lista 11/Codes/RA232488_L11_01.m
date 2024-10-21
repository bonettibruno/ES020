function [t,y] = RA232488_L11_01()
    
    clc; clear; close all force;
    
    y0 = 1;

    f = @(t, y) (2 - 2 * t * y)/(t^2 + 1);

    [t, y] = ode45(f, [0 1], y0);

    y_analitico = (2 .*t + 1) ./ (t .^ 2 + 1);

    plot(t, y, 'r', t, y_analitico, 'b--');
    legend('ODE45', 'Analítico');
    title('$ y'' = \frac{2 - 2ty}{t^2 + 1}$', Interpreter='latex');
    xlabel("t");
    ylabel("y(t)");

end