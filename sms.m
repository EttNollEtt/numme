function smm = f(t, y)
omega =2*pi/t(end);
smsa = [];
sms = zeros(1, length(t));
for k = 1:14
    smsa = [];
    for a=1:length(t)
        smsa = [smsa; y(k)*sin(k*omega*t(a))];
    end
    sms(k, :) = smsa(:,1);
end
smm = sms;
end
