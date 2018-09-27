t = 100000;
U = zeros (t, 2);
h = 0.01;
k= 9;
U(1, :) = [pi / 4 , 0.1]; %angulo y velocidad

for i = 1:t
	U(i + 1, :) = [U(i, 1) + h .*(U(i, 2) - k .* h .* sin(U(i, 1))), U(i, 2) - k .* h .* sin(U(i,1))];
end
plot(U(:, 1), U(:, 2))
xlabel('Angulo')
ylabel('Velocidad')
shg