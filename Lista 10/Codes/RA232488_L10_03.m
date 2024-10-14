function [v_200, a_200, v_206, a_206, v_210, a_210] = RA232488_L10_03()
    
    clc; clear all; close all;

    %dados do enunciado
    t = [200, 202, 204, 206, 208, 210];
    theta = [0.75, 0.72, 0.70, 0.68, 0.67, 0.66];
    r = [5120, 5370, 5560, 5800, 6030, 6240];
    
    derivada_r = diff(r) ./ diff(t);
    derivada_theta = diff(theta) ./ diff(t);
    
    derivada_segunda_r = diff(derivada_r) ./ diff(t(1:end-1));
    derivada_segunda_theta = diff(derivada_theta) ./ diff(t(1:end-1));
    
    %para t = 200s
    r_200 = r(1);
    derivada_r_200 = derivada_r(1); 
    derivada_theta_200 = derivada_theta(1); 
    derivada_segunda_r_200 = derivada_segunda_r(1); 
    derivada_segunda_theta_200 = derivada_segunda_theta(1);
    
    v_200_er = derivada_r_200;
    v_200_etheta = r_200 * derivada_theta_200;
    
    a_200_er = derivada_segunda_r_200 - r_200 * derivada_theta_200^2;
    a_200_etheta = r_200 * derivada_segunda_theta_200 + 2 * derivada_r_200 * derivada_theta_200;

    v_200 = [v_200_er; v_200_etheta];
    a_200 = [a_200_er; a_200_etheta];
    
    %para t = 206s
    r_206 = r(4);
    derivada_r_206 = derivada_r(3); 
    derivada_theta_206 = derivada_theta(3); 
    derivada_segunda_r_206 = derivada_segunda_r(2); 
    derivada_segunda_theta_206 = derivada_segunda_theta(2);
    
    v_206_er = derivada_r_206;
    v_206_etheta = r_206 * derivada_theta_206;
    
    a_206_er = derivada_segunda_r_206 - r_206 * derivada_theta_206^2;
    a_206_etheta = r_206 * derivada_segunda_theta_206 + 2 * derivada_r_206 * derivada_theta_206;

    v_206 = [v_206_er; v_206_etheta];
    a_206 = [a_206_er; a_206_etheta];

    %para t = 210s
    r_210 = r(6);
    derivada_r_210 = derivada_r(5); 
    derivada_theta_210 = derivada_theta(5); 
    derivada_segunda_r_210 = derivada_segunda_r(4); 
    derivada_segunda_theta_210 = derivada_segunda_theta(4);
    
    v_210_er = derivada_r_210;
    v_210_etheta = r_210 * derivada_theta_210;
    
    a_210_er = derivada_segunda_r_210 - r_210 * derivada_theta_210^2;
    a_210_etheta = r_210 * derivada_segunda_theta_210 + 2 * derivada_r_210 * derivada_theta_210;

    v_210 = [v_210_er; v_210_etheta];
    a_210 = [a_210_er; a_210_etheta];

end