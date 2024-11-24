[a, b, c] = RA232488_L14_02();

figure;

subplot(2, 2, 1);
plot(a.t, a.x, 'b', 'LineWidth', 1.5);
title('Resposta Inicial - Condição A');
xlabel('Tempo (s)');
ylabel('Estados');
grid on;

subplot(2, 2, 2);
plot(b.t, b.x, 'r', 'LineWidth', 1.5);
title('Resposta Inicial - Condição B');
xlabel('Tempo (s)');
ylabel('Estados');
grid on;

subplot(2, 2, 3);
plot(c.t, c.x, 'g', 'LineWidth', 1.5);
title('Resposta Inicial - Condição C');
xlabel('Tempo (s)');
ylabel('Estados');
grid on;
