function R=myresize1(A)
	% Elimina dintr-o matrice liniile ce contin doar 0
	
	[N M]=size(A);
	linie=1;
	for i=1:N
		if isBlack(A(i,:))==0
			R(linie,:)=A(i,:);
			linie=linie+1;
		end
	end
end