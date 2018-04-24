function dydt = vdp1(t, y)
dydt = [y(2); (2*y(1)*y(2).^2)/(1+y(1).^2) - y(1) - y(1).^2];
    