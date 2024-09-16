function S = RA232488_L06_03_aux1(B, H, y)

    a = B * (H - y)/H;
    b = (B - a) / 2;
    A = (B + a) * y/2;
    Q_x = (a * y) * y/2 + 2 * (b*y /2) * y/3;
    d = Q_x/A;
    c = y - d;
    I_x = a * y^3 / 3 + 2 * (b * y^3 /12);
    I_xbarra = I_x - A * d^2;
    S = I_xbarra/c;

end