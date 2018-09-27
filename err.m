h=logspace(-20,0,10000);
x(1) = 0
y(1) = 0
i = 1
while (i < 10000):
	j = 1
	paso = h(i)
	
	while (y(j) < 1):
		y(j + 1) = y(j) + paso * 2 * x(j)
		x(j + 1) = x(j) + paso
		j = j + 1
	end

	diferencia = abs(1 - x(length(x)))
	dif(i) = diferencia
	i = i + 1
end