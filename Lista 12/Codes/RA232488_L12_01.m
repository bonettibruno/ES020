function [tsub, xsub, tcrit, xcrit, tsup, xsup] = RA232488_L12_01()
    
    clc; clear; close all force;
    
    m = 40;
    c_sub = 20;
    c_crit = 80;
    c_super = 200;
    k = 40;

    v0 = 0;
    x0 = 20 * 10^-3;
    
    tspan = [0 20]; 
    u0 = [x0; v0];

    f_sub = @(t, y) [y(2); -(c_sub/m) * y(2) - (k/m) * y(1)];
    f_crit = @(t, y) [y(2); -(c_crit/m) * y(2) - (k/m) * y(1)];
    f_super = @(t, y) [y(2); -(c_super/m) * y(2) - (k/m) * y(1)];

    [tsub, xsub] = ode45(f_sub, tspan, u0);
    [tcrit, xcrit] = ode45(f_crit, tspan, u0);
    [tsup, xsup] = ode45(f_super, tspan, u0);

    plot(tsub, xsub(:,1), 'r', tcrit, xcrit(:,1), 'b', tsup, xsup(:,1), 'g');
    legend('Subamortecido', 'Criticamente amortecido', 'Superamortecido');

    xlabel("t (s)");
    ylabel("x(t) (m)");
    grid on;

end