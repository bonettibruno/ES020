function RA232488_L01_02()
  
    % parametros
    y0 = 1;                         % altura inicial [m]
    v0 = 30;                        % velocidade inicial [m/s]
    g = 9.81;                       % gravidade [m/s²]
    array_theta0 = 0:15:75;         % ângulos iniciais [rad]
    x = 0:5:80;                     % distancia horizontal [m]
    
    matriz = [];
    
    % equação
    for theta0 = array_theta0
        theta0 = deg2rad(theta0);
        y = (x .* tan(theta0)) - ((g * x.^2) ./ (2 * v0^2 * cos(theta0)^2)) + y0;
        matriz = [matriz, y'];
    end
    
    % plotando
    figure;
    hold on;  
    for i = 1:length(array_theta0)
        plot(x, matriz(:, i), 'DisplayName', sprintf('Ângulo = %.0f°', array_theta0(i)));
    end
    
    % legenda e eixos
    xlabel('Distância Horizontal (m)');
    ylabel('Altura (m)');
    axis([0 80 0 max(matriz(:))]);
    legend('show');
    
    hold off;

end