data pulse;
infile '\\apporto.com\dfs\CLT\Users\hmvuendy_clt\Desktop\pulse.txt' DLM=' ' FIRSTOBS=1;
    INPUT ROW PULSE1 PULSE2 RAN SMOKES SEX HEIGHT WEIGHT ACTIVITY;
RUN;

PROC UNIVARIATE DATA=pulse;
    VAR PULSE2 WEIGHT HEIGHT;
    HISTOGRAM / NORMAL;
RUN;


PROC MEANS DATA=pulse MEAN STD;
    VAR PULSE1;
RUN;


PROC SGPLOT DATA=pulse;
    SCATTER X=HEIGHT Y=WEIGHT / GROUP=SEX;
    XAXIS LABEL="Height (inches)";
    YAXIS LABEL="Weight (pounds)";
    TITLE "Scatter Plot of Weight vs. Height by Gender";
RUN;


/*
data scores;
	input Name $ Homework Midterm Final;
	datalines;
Frank   97   95   92
Emily   93   92   96
William 95   90   88
Janet   88   83   75
Betty   86   79   84
Joe     85   82   86
Bob     72   63   72
;
run;

proc print data=scores;
run;


proc means data=scores mean std;
    var Homework Midterm Final;
run;


proc sgplot data=scores;
    scatter x=Midterm y=Final;
    xaxis label="Midterm Scores";
    yaxis label="Final Scores";
run;


proc corr data=scores cov;
    var Homework Midterm Final;
run;


proc corr data=scores;
    var Homework Midterm Final;
run;
*/

