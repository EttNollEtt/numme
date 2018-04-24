function [fval] = f(y, k, t)

omega = 9.914296342689682e+02;
sval = [];
for x=1:length(t)
    sval = [sval; sin(k*omega*t(x))];
end
fvek = [];
for x=1:length(y)
    fvek = [fvek;
        sval(x,1).*y(x,1)];
end

fval = fvek;
end