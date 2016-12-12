function stack = image_stack(img, num_levels)
    % Creati un image stack pentru o imagine prin manjirea repetata a imaginii
    %
    % Inputs
    % ------
    % num_levels: numarul de imagin care trebuie intors in stack.
    %        img: imaginea de la care se porneste.
    %
    % Outputs
    % -------
    % stack: stack-ul de num_levels imagini

    [N M]=size(img);
    stack=zeros(N,M,num_levels);
    K=1/9*ones(3,3);
    i=2;
    stack(:,:,1)=img;
    while num_levels>1
        stack(:,:,i)=conv2(stack(:,:,i-1),K,'same');
        num_levels=num_levels-1;
        i=i+1;
    end
end
