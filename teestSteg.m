[t, y] = ode45(@vdp1, [0 1], [0; 240]);

plot(t, y(:,1), '-o', t, y(:,2),'-o')
title('Hej')
