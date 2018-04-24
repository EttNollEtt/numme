%
%
%

function points = askpoints();
    disp('Ange punkter (retur avslutar inmatningen)')
    i = 1;
    while i > 0
        vek(i) = input('Vilken punkt');
        vek(i+1) = input('Vilken punkt');
        %disp(vek)
        i = i + 1;
    end
