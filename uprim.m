function uprim = uprim(t,y)  %#ok<INUSL>
uprim = [(y(2))
    ((2*y(1)*y(2).^2)/(1+y(1).^2) - (y(1)+y(1).^3)*10.^6)];