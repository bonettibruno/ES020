function RA232488_L02_01

    clc; clear all; close all force;

    % Define o vetor de valores de x
    x_values = -10:10;
    % Prealoca os vetores para armazenar os resultados
    atan_x_values = zeros(size(x_values));
    erro_values = zeros(size(x_values));

    for i = 1:length(x_values)
        x = x_values(i);
        atan_x_values(i) = RA232488_L02_01_aux1(x, eps);
        erro_values(i) = atan_x_values(i) - atan(x);
    end

    figure;
    yyaxis left
    plot(x_values, atan_x_values, 'b-', 'LineWidth', 1.5) % Gráfico de atan_x
    ylabel('atan\_x')

    yyaxis right
    plot(x_values, erro_values, 'r-', 'LineWidth', 1.5) % Gráfico do erro
    ylabel('Erro')

    xlabel('x')
    title('Comparação entre atan\_x e erro')
    grid on

end
