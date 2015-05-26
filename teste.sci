function [cont1,cont2, cont3]= teste()
    cont1 = 0;
    cont2 = 0;
    cont3 = 0;
    for i=1:100
        minimo(i,1:3) = genetico();
        if minimo(i,1) < -1423 then
            cont1 = cont1 + 1;
        end
        if minimo(i,1) < -1409.76 then
            cont2 = cont2 + 1;
        end
        if minimo(i,1) < -1352.8 then
            cont3 = cont3 + 1;
        end
    end
endfunction
