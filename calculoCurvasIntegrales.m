function [X] = calculoCurvasIntegrales(f, tiempoDeSimulacion)
	hold on
	while true
		[x0, y0] = ginput(1);
		[t, y] = ode45(f, [0, tiempoDeSimulacion], [x0, y0]);
		plot(y(:, 1), y(:, 2));
		%axis([-1 1 -1 1])
	end
end