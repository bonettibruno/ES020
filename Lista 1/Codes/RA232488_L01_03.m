clc;
clear all;
close all;

temperatura = [80, 150, 200, 300, 600];
temperatura = (5/9) * (temperatura - 32);

viscosidade = [0.73, 0.25, 0.094, 0.021, 0.00083];

figure;
plot(temperatura, viscosidade, "-s", "MarkerEdgeColor", "r", "MarkerFaceColor",[255/255, 165/255, 0/255]);
hold on;

vetor_temperatura = [0:1:400];
funcao_viscosidade = 1.0074 * exp(-0.0232 * vetor_temperatura);
plot(vetor_temperatura, funcao_viscosidade, ':', 'Color', [0.5, 0.5, 0.5], 'LineWidth', 2.5);


xlabel('T_C (°C)');
ylabel('\mu (Pa.s)');
legend("data", "eq");
grid on;



