function demo_stack(k)
	%A='flapping_duck.png';
	A='flapping_bird.png';
	printf("\n Se fac modificari asupra imaginii %s\n",A);
	img_in=imread(A);
	printf("\n// Se face downsample cu %f //\n",k);
	printf("Working...\n");
	tic
	downsample=transform_image(img_in,k);
	file=strcat("downsample_",A);
	imwrite(mat2gray(downsample),file);
	time=toc;
	printf("Imagine salvata in: %s\n",file);
	printf("Timp de executie: %f secunde\n",time);
end