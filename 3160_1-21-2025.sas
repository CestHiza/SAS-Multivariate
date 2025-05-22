data nutrient;
infile '\\apporto.com\dfs\CLT\Users\hmvuendy_clt\Desktop\nutrient.txt';
input id cal iron prot va vc;

data nutrient_1;
	set nutrient;
	cal_1=cal**0.25;
	cal_2=log(cal);

proc univariate data = nutrient_1;
histogram cal_1 cal_2/normal;
run;

proc sgplot data = nutrient;
scatter x=cal y=iron;
run;

proc sgscatter data = nutrient;
matrix cal iron prot va vc;
run;

proc means data=nutrient;
var cal iron prot va vc;

proc corr cov data = nutrient;
run;
