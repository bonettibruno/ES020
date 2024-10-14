function RA232488_L09_02()
    
    clc; clear all; close all;

    %dados do enunciado
    n_1 = 11;   
    n_2 = 101;  
    n_3 = 1001; 
    L = 50; 
    
    
    tempo = [0, 5, 10, 20, 50, 150, 300, 500];

    figure;
   
    subplot(3,1,1);
    hold on;
    for t = tempo
        T = RA232488_L09_02_aux1(n_1, t);
        plot(0:L, T, 'DisplayName', ['t = ', num2str(t), ' s']);
    end
    title(['Distribuição de temperatura com ', num2str(n_1), ' termos']);
    xlabel('x[cm]');
    ylabel('T[°C]');
    legend show;
    grid on;
    hold off;
    
    
    subplot(3,1,2);
    hold on;
    for t = tempo
        T = RA232488_L09_02_aux1(n_2, t); % Calcular temperatura para cada t
        plot(0:L, T, 'DisplayName', ['t = ', num2str(t), ' s']);
    end
    title(['Distribuição de temperatura com ', num2str(n_2), ' termos']);
    xlabel('x[cm]');
    ylabel('T[°C]');
    legend show;
    grid on;
    hold off;
    
   
    subplot(3,1,3);
    hold on;
    for t = tempo
        T = RA232488_L09_02_aux1(n_3, t);
        plot(0:L, T, 'DisplayName', ['t = ', num2str(t), ' s']);
    end
    title(['Distribuição de temperatura com ', num2str(n_3), ' termos']);
    xlabel('x[cm]');
    ylabel('T[°C]');
    legend show;
    grid on;
    hold off;
    
end
