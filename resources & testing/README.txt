// Octavian Guzu  //

-Testarea pentru toate cele 3 functii de mai jos se va face
	pentru poza "flapping_bird.png";
-Daca se doreste testarea pe "flapping_duck.png", pentru oricare
	dintre functii, se poate comenta linia 3 si decomenta linia 2;

Testare inverse_mapping:
	-se face apeland functia demo_inverse, fara niciun parametru;
	-pentru rotire fara de orizontala am folosit T=[-1 0;0 -1];
	-pentru scalare cu 0.4 am folosit T=[0.4 0;0 0.4];
	-pentru rotire cu 45 de grade: T=[cos(pi/4) -sin(pi/4) ; sin(pi/4) cos(pi/4)];

Testare forward_mapping:
	-se face apeland functia demo_forward, fara niciun paramentru;

Testare anti-aliasing:
	-se face apeland functia demo_stack cu parametrul k(downsample);
	-exemplu: demo_stack(2.45);
