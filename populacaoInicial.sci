function populacao = popInicial(nInd, tamCrom);
	for i=1:nInd
		for j=1:tamCrom*2
			if rand() < .5
				populacao(i,j) = 0;
			else
				populacao(i,j) = 1;
			end
		end
	end
endfunction