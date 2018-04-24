t = 0;
yv = [0; 240];
y = yv;
ytabell = [];
for k=1:10
    [t, y] = RKsteg('dydt', t, y, 10^-5);
    ytabell = [ytabell; y];
end
vari = 0:0.1:1.9;

plot(vari, ytabell(:,1));