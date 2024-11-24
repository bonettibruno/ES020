function [a, b, c] = RA232488_L14_02()
    
    clc; clear; close all force;

    %dados do enuncaido
    m1 = 1.5; 
    m2 = 1.5;
    m3 = 1.5;
    k1 = 15;
    k2 = 35;
    k3 = 35;
    k4 = 15;
    
    A = [0, 0, 0, 1, 0, 0;
     0, 0, 0, 0, 1, 0;
     0, 0, 0, 0, 0, 1;
     -(k1 + k2)/m1, k2/m1, 0, 0, 0, 0;
      k2/m2, -(k2 + k3)/m2, k3/m2, 0, 0, 0;
      0, k3/m3, -(k3 + k4)/m3, 0, 0, 0];
    
    B = [0, 0, 0;
         0, 0, 0;
         0, 0, 0;
         1/m1, 0, 0;
         0, 1/m2, 0;
         0, 0, 1/m3];
    
    C = [1, 0, 0, 0, 0, 0;
         0, 1, 0, 0, 0, 0;
         0, 0, 1, 0, 0, 0];

    D = [0];

    sys_ss = ss(A,B, C,D);

    t = 0:0.01:20;

    x0_a = [1; 0; 0; 0; 0; 0];
    x0_b = [0; 1; 0; 0; 0; 0]; 
    x0_c = [1; 1.1571; 1; 0; 0; 0]; 

    [x_a, t_a] = initial(sys_ss, x0_a, t);
    [x_b, t_b] = initial(sys_ss, x0_b, t);
    [x_c, t_c] = initial(sys_ss, x0_c, t);

    a.t = t_a;
    a.x = x_a;

    b.t = t_b;
    b.x = x_b;

    c.t = t_c;
    c.x = x_c;

        

    
end