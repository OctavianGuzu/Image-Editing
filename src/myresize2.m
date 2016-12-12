function R=myresize2(A)
	% Elimina dintr-o matrice coloanele ce contin doar 0
	
	[N M]=size(A);
	col=1;
	for i=1:M
		if isBlack(A(:,i)')==0
			R(:,col)=A(:,i);
			col=col+1;
		end
	end