data beetle;
	infile '\\apporto.com\dfs\CLT\Users\hmvuendy_clt\Desktop\beetle.txt';
	input species $ THORAX ELYTRA AJ2 AJ3;
run;

proc discrim data = beetle pool = test crossvalidate;
	class species;
	var THORAX ELYTRA AJ2 AJ3;
	PRIORS EQUAL;
run;
