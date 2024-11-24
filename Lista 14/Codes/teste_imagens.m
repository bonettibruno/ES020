[a, b, c, d] = RA232488_L14_01();

figure;

subplot(2, 2, 1);
plot(a.t, a.x, 'b', 'LineWidth', 1.5);
title('Impulse Response');
xlabel('Time (s)');
ylabel('Response');
grid on;

subplot(2, 2, 2);
plot(b.t, b.x, 'r', 'LineWidth', 1.5);
title('Step Response');
xlabel('Time (s)');
ylabel('Response');
grid on;

subplot(2, 2, 3);
plot(c.t, c.x, 'g', 'LineWidth', 1.5);
title('Harmonic Input Response');
xlabel('Time (s)');
ylabel('Response');
grid on;

subplot(2, 2, 4);
plot(d.t, d.x, 'm', 'LineWidth', 1.5);
title('Arbitrary Input Response');
xlabel('Time (s)');
ylabel('Response');
grid on;
