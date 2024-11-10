function [x,v] = RA232488_L12_02()
    
    clc; clear; close all force;

    E = 210 * 10^9;
    I = 0.0005;
    P = 5000;
    L = 3;

    u0 = [0; 0];
    tspan = [0 L];

    f = @(t, y) [y(2); -P/(E*I) * (L - t)];

    [x, v] = ode45(f, tspan, u0);

    v_analitico = - P*L/(2*E*I) * x.^2 + P/(6*E*I) * x.^3;

    plot(x, v(:,1), 'ro', x, v_analitico, 'b');
    legend('ODE45', 'Analítico');
    xlabel('x [m]');
    ylabel('v(x) [m]');
    grid on;
    
end