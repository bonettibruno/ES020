function RA232488_L01_01()

    % item a
    
    % cria uma matriz 3x3 em que a primeira linha vai de 2 a 4,
    % a segunda linha vai de 3 a 7 com passos de 2 
    % e a terceira linha vai de 5 a 3 com passo de -1
    
    A=[2:4;3:2:7;5:-1:3];
    
    % faz a transposta da matriz A
    
    A=A';
    
    % remove a segunda coluna da matriz A
    
    A(:,2)=[];
    
    % a primeira coluna é a segunda coluna da matriz A, a segunda é [0 7 2]' e
    % a terceira é a primeira da matriz A
    
    A=[A(:,2) [0 7 2]' A(:,1)];
    
    
    % item b
    
    % primeiro cria a matriz A (3x2), depois seleciona apenas a linha 3 e faz
    % sua transposta resultando numa matriz (2x1)
    A=[1 2; 3 4; 5 6];
    A(3,:)';
    
    
    % item c
    
    % cria uma matriz 2x2 de uns A, outra 2x2 de zeros B, e faz uma matriz 4x4
    % juntando a matriz A com a B.
    
    A = ones(2);
    B = zeros(2);
    C = [A B ; B A];
    
    
    % item d
    
    % cria um vetor de 0 a 4, com passos de 0.6, e depois faz a tranposta do
    % vetor
    y=[0:0.6:4]';
    
    
    % item e
    
    % soma a com b/c dando 1.8
    a=1; b=4; c=5;
    a+b/c;

end
