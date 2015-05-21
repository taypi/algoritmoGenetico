function filhos = mutacao(indiv, tamCrom, taxaMutacao);
    for (i=1:2)
        for (j=1:tamCrom*2)
            randMut = rand()*100;
            if (randMut <= taxaMutacao)
                if (indiv(i,j) == 0) then
                    filhos(i,j) = 1;
                else
                    filhos(i,j) = 0;
                end
            else
                filhos(i,j) = indiv(i,j);
            end
        end
    end
endfunction
