puntosDeAcumulacion = [];
periodo = 0;
n = 10000;
hold on

for lambda = 0:0.01:3.68

	x(1) = 0.7;
	for i = 1:n
		x(i + 1) = lambda * x(i) * (1 - x(i));
	end
	j = 1;
	while j < 33
		if abs(x(n) - x(n - j)) < 0.00001;
			periodo = j;
			j = 33;
		else
			j = j * 2;
		end
	end
	for i=1:periodo
		puntosDeAcumulacion(i) = x(n + 1 - i);
	end
	dominio = zeros(length(puntosDeAcumulacion)) + lambda;
	plot(dominio, puntosDeAcumulacion, '.')
end
	 


