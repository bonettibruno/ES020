function [a, b, c, d] = RA232488_L14_01()
    
    clc; clear; close all force;
    
    %dados do enuncaido
    m = 20;
    k = 20;
    amort = 5;
    I = 2;
    A = -1;
    omega = 1.1;

    num = [1]; 
    den = [m amort k]; 
    sys = tf(num, den);

    t = 0:0.01:40; 
    
    [x_impulso, t_impulso] = impulse(I * sys, t);
    a.t = t_impulso; 
    a.x = x_impulso; 

    [x_step, t_step] = step(A * sys, t);
    b.t = t_step; 
    b.x = x_step; 

    forca_harmonica = sin(omega * t); 
    [x_harmonico, t_harmonico] = lsim(sys, forca_harmonica, t);
    c.t = t_harmonico; 
    c.x = x_harmonico; 

    forca_arbitraria = 1 - exp(-t); 
    [x_arbitrario, t_arbitrario] = lsim(sys, forca_arbitraria, t);
    d.t = t_arbitrario; 
    d.x = x_arbitrario; 

    
end