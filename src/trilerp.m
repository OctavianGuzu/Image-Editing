function value = trilerp(stack, row, col, level)
    % Folositi interpolarea triliniara pentru a estima intensitatea unei
    % imagini in pozitia row, col, level.

    if (level-floor(level)==0)
    	value=stack(:,:,level);
    else
    	value=zeros(row,col);
    	y1=floor(level);
    	y2=y1+1;
    	for i=1:row
    		for j=1:col
    			v=[stack(i,j,y1) stack(i,j,y2)];
    			x=level-y1+1;
    			value(i,j)=lerp(v,x);
    		end
    	end
    end
end
