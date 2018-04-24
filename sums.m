function sums = f(t, y, k)

sums = 0;
sumsa = [];
for x = 1:14
    for a=1:length(t)
        sumsa = [sumsa; y(x)*sin(omega*t(a))];
    end
    for b=1:length(sumsa)
        sums = sums + sumsa(b);
    end
end
