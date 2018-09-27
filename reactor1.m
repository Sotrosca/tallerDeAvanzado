clear all
lammbda = 10;
betta = 1;
x0 = 10;
y0 = 0.1;
temperatura0 = 1.16;
concentracion0 = 0.54;
valoresIniciales = [temperatura0, concentracion0];

f = @(t, x) [-x(1) .* exp(-1 / x(2)) + lammbda .* (x0 - x(1)); x(1) .* exp(-1 / x(2)) + betta .* (y0 - x(2))];

[t, x] = ode45(f, [0, 5], valoresIniciales);

subplot(2, 1, 1)
plot(x(:, 1), x(:, 2))
xlabel ('Tempratura')
ylabel ('Concentracion')
subplot(2, 1, 2)
hold on
plot(t, x(:, 1), 'red')
plot(t, x(:, 2), 'blue')
legend ('Temperatura', 'Concentracion')
xlabel ('Tiempo')
hold off