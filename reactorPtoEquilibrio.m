clear all
lammbda = 0.5;
betta = 0.3;
x0 = 1;
y0 = 0.4;
f = @(t, x) [-x(1) .* exp(-1 / x(2)) + lammbda .* (x0 - x(1)); x(1) .* exp(-1 / x(2)) + betta .* (y0 - x(2))];
puntosMalla = 10
mallaConcentracion = linspace(0.3, 0.7, puntosMalla);
mallaTemperatura = linspace(0.9, 1.3, puntosMalla);

[concentracion0, temperatura0] = meshgrid(mallaConcentracion, mallaTemperatura);

hold on
for i = 1:puntosMalla
	for j = 1:puntosMalla
		[t, x] = ode45(f, [0, 10], [concentracion0(i, j), temperatura0(i, j)]);
		plot(x(:, 1), x(:, 2))
	end
end

hold off