%
%
%
clc
clear all
close all
format long;
ystart = [0; 240];

for k=5
    [y, ygraf, ttabell] = RKmetod('uprim', [0 0.1], ystart, 2000);    
end

tab = [];
for k=2:length(ygraf)
    if ygraf(k,1) <= ygraf(k-1,1)
        tab = [tab; k];
        break
    end
end

tab2 = [];
for k=3:length(ygraf)
    if ygraf(k,1)-ygraf(2,1) < 10^-2 && ygraf(k,1)-ygraf(k+1,1) < 0 && ygraf(k,1) > 0 && ygraf(k)-ygraf(2) >0
        tab2 = [tab2; k];
        break
    else
        continue
    end
end

periodTime = [];
period = [];
for k=2:tab2
    period = [period; ygraf(k)];
    periodTime = [periodTime; ttabell(k)];
end

sintime = [];
k = 1;
trap = [];
for x=1:14
    trap = [trap; (fval(period,x,periodTime,(2*pi/periodTime(end))))];
    sintime = [sintime; (2/periodTime(end))*add(trap)];
    trap = [];
    k = k + 1;
end

sam = [];
sam = sms(periodTime, sintime);
sym = sam';

iavt = zeros(length(periodTime), 1);
for k=1:length(periodTime)
    iavt(k, 1) = iavt(k, 1) + sum(sym(k, :));
end

for k=1:length(periodTime)
    iavt2(k, 1) = iavt(k, 1) + sum(sym(k, 1:3));
end
figure(1)
plot(periodTime, period);
hold on
plot(periodTime, iavt);
legend('I(t)','I(t) fourier');
hold off
figure(2)
plot(periodTime, period,'-')
hold on
plot(periodTime, iavt2);
legend('I(t)','I(t) fourier');