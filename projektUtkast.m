%
%
%
clc
clear all
format long;
ystart = [0; 240];
%syms y(t);
for k=1:25
    [y, ygraf, ttabell] = RKmetod('uprim', [0 0.5], ystart, 1000);    
end

plot(ttabell, ygraf(:,1),'-')
hold on
plot(ttabell, [-0.3:0.3])
hold on
tab = [];
for k=2:length(ygraf)
    if ygraf(k,1) <= ygraf(k-1,1)
        tab = [tab; k];
        break
    end
end

tab2 = [];
for k=3:length(ygraf)
    if abs(ygraf(k,1)-ygraf(2,1))/ygraf(2,1) < 10^-2
        tab2 = [tab2; k];
        break
    else
        continue
    end
end

sintime = [];
integ = [];
k = 1;
trap = [];
for x=1:14
    trap = [trap; fval(ygraf,x,ttabell)];
    sintime = [sintime; add(trap)];
    trap = [];
    k = k + 1;
end

sam = [];
sam = sms(ttabell, sintime);
sym = sam';

iavt = zeros(length(ttabell), 1);
for k=1:length(ttabell)
    iavt(k, 1) = iavt(k, 1) + sum(sym(k, :));
end

plot(ttabell, iavt);
