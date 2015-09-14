function filhos = crossover(populacao, indSort, taxaCross, tamCrom);
	pais = [populacao(indSort(1),:),populacao(indSort(1),:); populacao(indSort(2),:),populacao(indSort(2),:)];
	
	//Aplicar o crossover?
    randCross = rand()*100;
    if (randCross > taxaCross) then
    	filhos = pais;
    else
    	//Ponto de corte do cromossomo
        corte = [ceil(rand()*6)+1; ceil(rand()*6)+1];

        //Geracao dos filhos
        filhos = [pais(1,1:corte(1)), pais(2,corte(1)+1:tamCrom), pais(1,tamCrom+1:tamCrom+corte(2)), pais(2,tamCrom+corte(2)+1:tamCrom*2);pais(2,1:corte(1)), pais(1,corte(1)+1:tamCrom), pais(2,tamCrom+1:tamCrom+corte(2)), pais(1,tamCrom+corte(2)+1:tamCrom*2)];
	end
    teste
endfunction


