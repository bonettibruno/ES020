function [delta_s,acel] = RA232488_L07_02()
    
    %dados do enunciado
    p = [0.4, 1.2, 0.8, 0];
    
    %achando delta_s
    s = polyint(p);

    s1 = polyval(s, 0);

    s2 = polyval(s, 3);

    delta_s = s2 - s1;

    %achando acel
    acel = [];

    t = [0, 1, 2, 3];

    for tempo = t

        a = polyder(p);

        aceleracao = polyval(a, tempo);

        acel = [acel, aceleracao];

    end

end
