function value = bilerp(img, row, col)
    % Folositi interpolare biliniara pentru a estima intensitatea imaginii
    % in pozitia row, col

    [N M]=size(img);
    if ((1<=row && row<N) && (1<=col && col<M))
    	y1=floor(row);
    	y2=y1+1;
    	R1=lerp(img(y1,:),col);
    	R2=lerp(img(y2,:),col);
    	v=[R1 R2];
    	x=row-y1;
    	x=x+1;
    	value=double(lerp(v,x));

    else
    	value=0;
    end
end
