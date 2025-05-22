/*
data regression_data;
   input X1 X2 Y;
   datalines;
2 -2 -2
2  2  5
1  0  4
0  2 10
0 -2  8
;
run;

proc reg data=regression_data;
   model Y = X1 X2;
run;
*/


data patsat;
   infile '\\apporto.com\dfs\CLT\Users\hmvuendy_clt\Desktop\/patsat.txt' firstobs=2;
   input y x1 x2 x3;
run;

/*
proc sgscatter data=patsat;
   matrix y x1 x2 x3;
run;



proc reg data=patsat;
   model y = x1 x2 x3;
run;
quit;
*/

/*
data new_data;
   input x1 x2 x3;
   datalines;
   35 45 2.2
   ;
run;

proc reg data=patsat;
   model y = x1 x2 x3 / cli;
   score data = new_data out=prediction_results;
run;
*/


proc reg data=patsat;
   model y = x1 x3;
run;
quit;

