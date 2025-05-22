/*
data drug_potency;
	input Sample1 Sample2;
	datalines;
10.6 9.9
10.2 9.8
10.5 9.6
10.3 10.1
10.8 10.2
9.8 10.1
10.6 9.7
10.7 9.5
10.2 9.6
10.0 9.8
;
run;

proc ttest data=drug_potency;
    paired Sample1*Sample2;
run;
*/

data fertilizer;
	infile '\\apporto.com\dfs\CLT\Users\hmvuendy_clt\Desktop\fertilizer.txt' dlm=' ';
	input Fertilizer $ Yield;
run;

/* two-sample t-test */
proc ttest data=fertilizer;
    class Fertilizer;
    var Yield;
run;
