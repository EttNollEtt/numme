function add = add(vek)
vek(1) = vek(1)/2;
vek(end) = vek(end)/2;
var = 0;
for x=1:length(vek)
    var = var + vek(x);
end
add = (vek(1)+vek(end)+var)*0.00005;
end