function RA232488_L02_01

    clc; clear all; close all force;

    vetor_x = linspace(-10,10,1000);
    eps = 10^-6;

    meu_atan_x = zeros(size(vetor_x));
    erro = zeros(size(vetor_x));

    for i = 1:length(vetor_x)
        x = vetor_x(i);
        meu_atan_x(i) = RA232488_L02_01_aux1(x, eps);
        erro(i) = meu_atan_x(i) - atan(x);
    end

    figure;
    yyaxis left
    plot(vetor_x, meu_atan_x, 'b')
    ylabel('meu\_atan(x)')

    yyaxis right
    plot(vetor_x, erro, 'r')
    ylabel('erro(x)')

    xlabel('x')
    title('meu\_atan(x) e erro(x)')
    grid on

end
