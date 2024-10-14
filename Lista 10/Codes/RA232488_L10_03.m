function [v_200, a_200, v_206, a_206, v_210, a_210] = RA232488_L10_03()
    
    clc; clear all; close all;

    %dados do enunciado
    t = [200, 202, 204, 206, 208, 210];
    theta = [0.75, 0.72, 0.70, 0.68, 0.67, 0.66];
    r = [5120, 5370, 5560, 5800, 6030, 6240];
    
     dr_dt = diff(r) ./ diff(t); % aproximação de \dot{r}
    dtheta_dt = diff(theta) ./ diff(t); % aproximação de \dot{\theta}
    
    % Aproximação das segundas derivadas (\ddot{r} e \ddot{\theta})
    d2r_dt2 = diff(dr_dt) ./ diff(t(1:end-1)); % \ddot{r}
    d2theta_dt2 = diff(dtheta_dt) ./ diff(t(1:end-1)); % \ddot{\theta}
    
    % Seleção dos valores para t = 200 s, 206 s, e 210 s
    r_200 = r(1); r_206 = r(4); r_210 = r(6);
    theta_200 = theta(1); theta_206 = theta(4); theta_210 = theta(6);
    
    % Derivadas no instante t = 206 s
    dr_206 = dr_dt(3); dtheta_206 = dtheta_dt(3); % \dot{r} e \dot{\theta}
    d2r_206 = d2r_dt2(2); d2theta_206 = d2theta_dt2(2); % \ddot{r} e \ddot{\theta}
    
    % Velocidade no instante t = 206 s
    v_206_r = dr_206;
    v_206_theta = r_206 * dtheta_206;
    v_206 = [v_206_r; v_206_theta];
    
    % Aceleração no instante t = 206 s
    a_206_r = d2r_206 - r_206 * dtheta_206^2;
    a_206_theta = r_206 * d2theta_206 + 2 * dr_206 * dtheta_206;
    a_206 = [a_206_r; a_206_theta];
    
    % Velocidade e aceleração nos outros instantes (200 s e 210 s)
    % Aproximação similar
    
    % t = 200 s
    dr_200 = dr_dt(1); dtheta_200 = dtheta_dt(1);
    v_200_r = dr_200;
    v_200_theta = r_200 * dtheta_200;
    v_200 = [v_200_r; v_200_theta];
    
    % t = 210 s
    dr_210 = dr_dt(5); dtheta_210 = dtheta_dt(5);
    v_210_r = dr_210;
    v_210_theta = r_210 * dtheta_210;
    v_210 = [v_210_r; v_210_theta];

end
