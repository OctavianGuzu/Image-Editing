function img_out = transform_image(img_in, k)
    % Scalati imaginea cu un factor k prin aplicarea interpolarii
    % triliniare
    %
    % Inputs
    % ------
    % img_in: imaginea care trebuie transformata.
    %      k: factorul cu care trebuie scalata imaginea.
    %
    % Outputs
    % -------
    % img_out: imaginea transformata 

    num_levels=floor(k)+1;
    stack=image_stack(img_in,num_levels);
    [N M]=size(img_in);
    img_out=trilerp(stack,N,M,k);
end
