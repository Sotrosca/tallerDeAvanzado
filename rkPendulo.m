t = 100000;
U = zeros (t, 2);
h = 0.01;
k= 9;
U(1, :) = [pi / 4 , 0];

for i = 1:t
	U(i + 1, :) = U(i, :) + h / 2 .* ([U(i, 2), -k .* sin(U(i, 1))] + [U(i, 2) + h .*(-k .* sin(U(i, 1))), -k .* sin(U(i, 1) + h .* U(i, 2))]);
end

plot(U(:, 1), U(:, 2))
shg
xlabel('Angulo')
ylabel('Velocidad')
