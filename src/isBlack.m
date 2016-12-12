function t=isBlack(v)
	% Verifica daca un vector contine doar 0
	
	N=length(v);
	if nnz(v)>0
		t=0;
	else
		t=1;
end