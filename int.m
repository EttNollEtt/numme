function trapets = f(funk, h)
funk(1) = (funk(1)/2)
funk(end) = (funk(1)/2)

ny = 0;
for k=1:length(funk)
    ny = ny + funk(k);
end

trapets = ny*h;
end