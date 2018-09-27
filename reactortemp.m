clear all
lammbda = 0.5;
betta = 0.3;
x0 = 1;
y0 = 0.4;
concentracion0 = 5;
f = @(t, x) [-x(1) .* exp(-1 / x(2)) + lammbda .* (x0 - x(1)); x(1) .* exp(-1 / x(2)) + betta .* (y0 - x(2))];
i = 1
figure
xlabel ('Tempratura')
ylabel ('Concentracion')

while i < 100
	temperatura0 = i;
	valoresIniciales = [temperatura0, concentracion0];
	[t, x] = ode45(f, [0, 10], valoresIniciales);
	hold on
	plot(x(:, 1), x(:, 2), '*')
	i = i + 1
end
hold off