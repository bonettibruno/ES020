function RA232488_L01_04

    t = 0:0.01:50;
    
    x = 0.8 * exp(-0.15 * t) .* sin(6 * t);
    
    derivada_x = 0.8 * ((-0.15 * exp(-0.15 * t).* sin(6 * t)) + 6 * exp(-0.15 * t).* cos(6 * t));
    
    derivada_segunda_x = 0.8 * ((-35.9775 * exp(-0.15 * t).* sin(6 * t)) - 1.8 * exp(-0.15 * t).* cos(6 * t));
    
    figure;
    
    subplot(3,1,1)
    plot(t, x)
    xlabel('t [s]')
    ylabel('x(t) [m]')
    title('Posição')
    grid on
    
    subplot(3,1,2)
    plot(t, derivada_x)
    xlabel('t [s]')
    ylabel('v(t) [m/s]')
    title('Velocidade')
    grid on
    
    subplot(3,1,3)
    plot(t, derivada_segunda_x)
    xlabel('t [s]')
    ylabel('a(t) [m/s^2]')
    title('Aceleração')
    grid on

end