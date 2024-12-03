clc; clear; close all;

% Load the file
arquivo = load("projeto_ES020_2024s2.mat");

% Inspect the variable 'data'
disp("Structure of 'data':");
disp(arquivo.dados);

% Check the class of 'dados'
disp("Class of 'dados':");
disp(class(arquivo.dados));