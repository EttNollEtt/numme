function [sura] = summera(vek)
smmera = zeros(length(vek), 1);
for x=1:length(vek)
    for a=1:14
        smmera(x, 1) = smmera(x,1) + sum(vek(x,a));
    end
end
sura = smmera;