function [atan_x] = RA232488_L02_01_aux1(x, eps)
% funcao que recebe valor x  e calcula atan(x) com precisao de eps

    soma = true;
    atan_x = 0;
    n = 1;
    negativo = false;
    maior_que_1 = false;

    if x == 0
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


    while ( (x^n)/n < eps )
    
        if (mod(n, 2) == 1)
            if (soma == true)
                atan_x = atan_x + (x^n)/n;
                soma = false;
            else 
                atan_x = atan_x - (x^n)/n;
                soma = true;
            end
        end
        n = n + 1; 
    end

    if (maior_que_1 == true)
        atan_x = pi/2 - atan_x;
    end

    if (negativo == true)
        atan_x = -atan_x;
    end
end