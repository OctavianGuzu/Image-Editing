function demo_forward()
	%A='flapping_duck.png';
	A='flapping_bird.png';
	printf("\n Se fac modificari asupra imaginii %s\n",A);
	img_in=imread(A);
	printf("\n// Rotire fata de orizontala //\n");
	T=[-1 0;0 -1];
	printf("Working...\n");
	tic
	img_out=forward_mapping(img_in,T);
	timp=toc;
	file=strcat("rotire_orizontala_",A);
	imwrite(mat2gray(img_out),file);
	printf("Imagine salvata in: %s\n",file);
	printf("Timp de executie: %f secunde\n",timp);
	printf("\n// Scalare cu 0.4 //\n");
	T=[0.4 0;0 0.4];
	printf("Working...\n");
	tic
	img_out=forward_mapping(img_in,T);
	timp=toc;
	file=strcat("scalare_0.4_",A);
	imwrite(mat2gray(img_out),file);
	printf("Imagine salvata in: %s\n",file);
	printf("Timp de executie: %f secunde\n",timp);
	printf("\n// Rotire cu 45 de grade //\n");
	T=[cos(pi/4) -sin(pi/4);sin(pi/4) cos(pi/4)];
	printf("Working...\n");
	tic
	img_out=forward_mapping(img_in,T);
	timp=toc;
	file=strcat("rotire_45grade_",A);
	imwrite(mat2gray(img_out),file);
	printf("Imagine salvata in: %s\n",file);
	printf("Timp de executie: %f secunde\n\n",timp);
	printf("Toate transformarile au fost executate cu succes!\n\n");

end