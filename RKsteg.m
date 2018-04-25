function [Tut, Yut] = RKsteg(yprim, t, y, h)
    k1 = h*feval(yprim, t, y);
    k2 = h*feval(yprim, t+h/2, y+k1/2);
    k3 = h*feval(yprim, t+h/2, y+k2/2);
    k4 = h*feval(yprim, t+h, y+k3);
    ny = k1/6 + k2/3 + k3/3 + k4/6;
Yut = (y+ny);
Tut = t+h;