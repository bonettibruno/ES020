function RA232488_L02_01

    clc; clear all; close all force;

    vetor_x = -10:10;

    atan_x = zeros(size(vetor_x));
    erro = zeros(size(vetor_x));

    for i = 1:length(vetor_x)
        x = vetor_x(i);
        atan_x(i) = RA232488_L02_01_aux1(x, eps);
        erro(i) = atan_x(i) - atan(x);
    end

    figure;
    yyaxis left
    plot(vetor_x, atan_x, 'b')
    ylabel('atan(x)')

    yyaxis right
    plot(vetor_x, erro, 'r')
    ylabel('erro(x)')

    xlabel('x')
    title('atan(x) e erro(x)')
    grid on

end
