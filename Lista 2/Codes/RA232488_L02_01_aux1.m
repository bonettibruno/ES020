function [atan_x] = RA232488_L02_01_aux1(x, eps)
% funcao que recebe valor x  e calcula atan(x) com precisao de eps

    soma = true;
    atan_x = 0;
    n = 1;
    negativo = false;
    maior_que_1 = false;
    iteracoes_maximo = 10000;

    if (x == 0)
        atan_x = 0;
        return;
    end
    
    if (x < 0)
        negativo = true;
        x = abs(x);
    end

    if (x > 1)
        maior_que_1 = true;
        x = 1/x;
    end

    iteracoes = 0;
    termo = x;

    while (termo/n > eps)
        iteracoes = iteracoes + 1;

        if (soma)
            atan_x = atan_x + termo/n;
            soma = false;
        else
            atan_x = atan_x - termo/n;
            soma = true;
        end

        termo = termo * x * x;
        n = n + 2;

        if iteracoes > iteracoes_maximo
            break;
        end
    end

    if (maior_que_1 == true)
        atan_x = pi/2 - atan_x;
    end

    if (negativo == true)
        atan_x = -atan_x;
    end
end