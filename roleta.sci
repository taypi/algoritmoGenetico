function indSort = roleta(aptRel);
	//construção de um vetor de aptidões proporcional
	vetorApt(1) = aptRel(1);
	for (i=2:size(aptRel,1))
		vetorApt(i) = vetorApt(i-1) + aptRel(i);
	end

	//sorteio
	for (i=1:2)
		sorteado = rand()*100;
		if (sorteado <= vetorApt(1))
			indSort(i) = 1;
		else
			for(j=2:size(vetorApt,1))
				if (sorteado > vetorApt(j-1)) and (sorteado <= vetorApt(j));
					indSort(i) = j;
				end
			end
		end
	end
endfunction