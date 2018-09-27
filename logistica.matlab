n = 10000
lambda = 0.5
x(i) = 0.4
for i = 1:n
	x(i + 1) = lambda * x(i) * (1 - x(i))
end
j = 32
while j > 1
	if abs(x(n) - x(n - j)) < eps * abs(x(n)) * 10
		periodo = j
	else
		j = j / 2
periodo
