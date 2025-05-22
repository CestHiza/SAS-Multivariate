/*
data pizza;
	input Topping $ Observed ExpectedPerc;
	datalines;
	Cheese 78 0.41
	Pepperoni 52 0.25
	Sausage 30 0.15
	Mushrooms 25 0.10
	Onions 15 0.09
	;
run;

data pizza;
	set pizza;
	Expected = ExpectedPerc * 200;
run;


proc freq data = pizza;
	tables Topping / chisq testp=(41 25 15 10 9);
	weight Observed;
run;
*/

data pulse;
	infile '\\apporto.com\dfs\CLT\Users\hmvuendy_clt\Desktop\pulse (1).txt' dlm=' ';
	input ID PULSE1 PULSE1_RAN SMOKES SEX HEIGHT WEIGHT ACTIVITY;
run;

proc freq data=pulse;
    tables SEX*SMOKES / chisq;
run;
