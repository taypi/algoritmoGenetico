function [xm, ym, maxApt, aptRel, desv] = aptidao(populacao, tamCrom);
	for i=1:size(populacao,1)
		for k=1:tamCrom
			x(i) = 0;
			y(i) = 0;
		end
		for j=1:tamCrom
			x(i) = x(i)+populacao(i,j)*(2^(tamCrom-j));
			y(i) = y(i)+populacao(i,j+tamCrom)*(2^(tamCrom-j));
		end
	end
	for i=1:size(populacao,1)
		x(i) = -500+(500-(-500))*(x(i)/(2^(tamCrom)-1));
		y(i) = -500+(500-(-500))*(y(i)/(2^(tamCrom)-1));
	end

	aptTotal = 0;
	for i=1:size(populacao,1)
		z = -x(i)*sin(sqrt(abs(x(i))))-y(i).*sin(sqrt(abs(y(i))));
	    x(i) = x(i)/250;
	    y(i) = y(i)/250;
	    apt(i) = x(i)*z;
	    w(i) = -(x(i)*z);
	end
	for i=1:size(populacao,1)
		w(i) = w(i) - min(w) + 1;
		aptTotal = aptTotal + w(i);
	end
	for i=1:size(populacao,1)
		aptRel(i) = w(i)/aptTotal*100;
	end

	[maxApt indice] = min(apt);
    xm = x(indice)*250;
    ym = y(indice)*250;
    desv = stdev(apt);
endfunction
