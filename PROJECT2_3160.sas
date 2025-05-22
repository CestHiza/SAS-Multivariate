data turtle;
	infile '\\apporto.com\dfs\CLT\Users\hmvuendy_clt\Desktop\turtle.txt';
	input Length Width Height Sex $;
run;

proc glm data=turtle;
  class Sex;
  model Length Width Height = Sex;
  manova H=Sex;
run;


/*
proc glm data=turtle;
   class sex;
   model length width height = sex;
   manova h=sex / hottelling=hot; 
   title "Hotelling's T² Test via PROC GLM";
run;
*/

/*
proc ttest data = turtle;
	class Sex;
	VAR Length Width Height;
run;
*/
