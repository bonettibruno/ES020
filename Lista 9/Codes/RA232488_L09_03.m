function [dt, tn, df, fmin, fmax, h] = RA232488_L09_03()
    
    clc; clear all; close all;
    
    % dados do enunciado
    n = 64;                  
    fs = 128;

    % cálculos pedidos
    dt = 1 / fs;                
    tn = n / fs;         
    fmin = 1 / tn;                  
    fmax = 0.5 * fs;             
    df = fs / n;                

    t = (0:n-1) * dt; 
    f_t = 1.5 + 1.8*cos(2*pi*12*t) + 0.8*sin(2*pi*20*t) - 1.25*cos(2*pi*28*t);
    
    F = fft(f_t);
    F = F / n;
    F_amp = abs(F);
    F_phase = angle(F);
    
    f = (0:n-1) * df;
    
    h = figure;
    
    subplot(2,1,1);
    stem(f, F_amp, 'linewidth', 2, 'MarkerFaceColor', 'blue');
    title('Amplitude');
    xlabel('Frequência (Hz)');
    xlim([0 fmax]);
    ylabel('Amplitude');
    grid on;

    subplot(2,1,2);
    stem(f, F_phase, 'linewidth', 2, 'MarkerFaceColor', 'blue');
    title('Fase');
    xlabel('Frequência (Hz)');
    xlim([0 fmax]);
    ylabel('Fase (rad)');
    grid on;

end
