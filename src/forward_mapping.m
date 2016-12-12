function img_out = forward_mapping(img_in, T)
    % Creati o noua imagine prin aplicarea transformarii T pe imaginea
    % img_in (grayscale image), folosind forward mapping.
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
    if T(1,1)<=1
        Nfinal=round(N*sqrt(2));
        Mfinal=round(M*sqrt(2));
        img_out=zeros(Nfinal,Mfinal);
        % Rotirea pozei folosind algoritmul enuntat
        for i=1:N
            for j=1:M
                v=[i;j];
                r=T*v;
                x1=round(r(1)+N*sqrt(2));
                x2=round(r(2)+M*sqrt(2));
                img_out(x1,x2)=img_in(i,j);
            end
        end
        % Eliminarea liniilor si coloanelor negre
        img_out=myresize1(img_out);
        img_out=myresize2(img_out);
    else 
        % Daca se incearca rotirea pozei cu indici >1 (marire)
        Nfinal=round(N*T(1,1));
        Mfinal=round(M*T(1,1));
        img_out=zeros(Nfinal,Mfinal);
        for i=1:N
            for j=1:M
                v=[i;j];
                r=T*v;
                x1=round(r(1));
                x2=round(r(2));
                img_out(x1,x2)=img_in(i,j);
            end
        end
    end
end
