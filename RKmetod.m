function [y, ytabell, ttabell] = RKmetod(yprim, xspan, ybeg, Nh)

format long
a = xspan(1); b = xspan(2); h = (b-a)/Nh;
t = a; y = ybeg; ytabell = [y']; ttabell = [0]; tabb = [];

for n=1:Nh
    [t, ya] = RKsteg(yprim, t, y, h);   
    test = (ya(1,1)-y(1,1))/(y(1,1));
    tabb = [tabb; test];    
    if abs(test) < 10^-4
        h = h/4;
%         disp('relative');
    end  
    y = ya;
    ytabell = [ytabell; ya'];
    ttabell = [ttabell; t];
end