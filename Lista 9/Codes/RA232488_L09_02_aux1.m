function T = RA232488_L09_02_aux1(N, t)
    
    alpha = 1.11;
    L = 50;

    x = 0:L;
    T = zeros(size(x));
    
    for n = 1:2:N
        exponencial = exp(-(n * pi / L)^2 * alpha * t);
        T = T + (1/n) * exponencial * sin(n * pi * x / L);
    end

    T = 80 / pi * T;

end
