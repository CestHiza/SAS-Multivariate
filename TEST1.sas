/*
data tires;
	input Car Production Experimental;
	Diff = Production - Experimental;
	datalines;
1 5.1 5.0
2 6.5 6.5
3 3.6 3.1
4 3.5 3.7
5 5.7 4.5
6 5.0 5.1
7 6.4 5.4
8 4.7 2.6
9 3.2 3.0
10 3.5 3.5
11 6.4 5.1
;
run;

proc ttest data=tires sides=L h0=0;
    paired Production*Experimental;
run;
*/

data plastic;
	infile '\\apporto.com\dfs\CLT\Users\hmvuendy_clt\Desktop\plastic.txt' dlm=' ';
	input Hardness ElapseTime;
run;

proc means data=plastic mean std;
    var Hardness;
run;

proc means data=plastic mean std clm alpha=0.03;
    var ElapseTime;
run;

