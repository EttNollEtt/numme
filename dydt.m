function dydt = f(t,y)
dydt(1) = y(2);
dydt(2) = (2*y(1)*y(2)^2)/(1+y(1)^2) - y(1)*(1+y(1)^2)*10^6;