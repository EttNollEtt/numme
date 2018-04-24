function sura = sura(vek)
siz = size(vek);
smmera = zeros(siz(1), 1);
for x=1:siz(2)
    for a=1:siz(1)
        smmera(a, 1) = smmera(a, 1) + sum(vek(a, x));
    end
end

sura = smmera;