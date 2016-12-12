function value = lerp(v, x)
    % Interpolare liniara unidimensionala
    %
    % Inputs
    % ------
    % v: un vector cu valorile functie
    % x: o noua pozitie in care sa se calculeze valoarea functiei

    n=length(v);
    x1=floor(x);
    x2=floor(x)+1;
    if (x>=1 && x<=n)
        value=v(x1)+(x-x1)*(v(x2)-v(x1))/(x2-x1);
    else
    	value=0;
    end
end
