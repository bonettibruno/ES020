function [t,y] = RA232488_L11_02()
    
    clc; clear; close all force;
    
    y1 = -1/log(2);

    f = @(t, y) (y^2)/(1 + t);

    [t, y] = ode45(f, [1 2], y1);

    y_analitico = - 1 ./ log(t+1) ;

    plot(t, y, 'r', t, y_analitico, 'b--');
    legend('ODE45', 'Analítico');
    title('$ y'' = \frac{y^2}{1+t}$', Interpreter='latex');
    xlabel("t");
    ylabel("y(t)");

end