function img_out = inverse_mapping(img_in, T)
    % Creati o noua imagine prin aplicarea transformarii T pe imaginea
    % img_in (grayscale image), folosind inverse mapping si interpolare
    % biliniara
    %
    % Inputs
    % ------
    % img_in: imaginea care trebuie sa fie transformata.
    %      T: transformarea care trebuie aplicata asupra imaginii.
    %         matrice de 2x2.
    %
    % Outputs
    % -------
    % img_out: imaginea transformata (grayscale).
    [N M]=size(img_in);
    Nfinal=round(N*1.41);
    Mfinal=round(M*1.41);
    img_out=zeros(Nfinal,Mfinal);
    a=T(1,1);
    b=T(1,2);
    c=T(2,1);
    d=T(2,2);
    Tinv=(1/(a*d-b*c))*[d -b;-c a];
    % Calculul noilor dimensiuni
    rez=T*[M;N];
    M2=abs(rez(2));
    M2=round(M2+1.41*M);
    rez=T*[1;N];
    N2=abs(rez(2));
    N2=round(N2+1.41*N);
    % Interpolarea valorilor
    for i=1:N2
    	for j=1:M2
    			v=[i-N*1.41;j-M*1.41];
    			r=Tinv*v;
    			val=bilerp(img_in,r(1),r(2));
    			img_out(i,j)=double(val);
    	end
   	end
    % Eliminarea liniilor si coloanelor negre
   	img_out=myresize1(img_out);
    img_out=myresize2(img_out);
end
