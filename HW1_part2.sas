data pulse;
infile '\\apporto.com\dfs\CLT\Users\hmvuendy_clt\Desktop\pulse.txt' DLM='' FIRSTOBS=2;
input ID PULSE1 PULSE2 RAN SMOKES SEX HEIGHT WEIGHT ACTIVITY;
run;
proc print data=pulse;    /*print all data*/
run;
proc gplot data=pulse;     /*the relationship between pulse1 and weight for the pulse dataset*/
plot pulse1*weight;
run;
proc gplot data=pulse;    /*the relationship between weight and Height for male and female*/
plot weight*height=sex;
run;
proc means data=pulse;  /*mean, SD, minimum and maximum for pulse1*/
var pulse1;
run;
proc univariate data=pulse; /*mean, SD, minimum and maximum for pulse1*/
var pulse1;
run;
proc univariate plot data=pulse;   /*a box plot, a stem and leaf plot and a normal quantile (qq) plot*/
var pulse1;
run;
proc gchart data=pulse;
vbar pulse1;
run;


PROC SGPLOT DATA=pulse;
    HISTOGRAM Pulse2 / NBINS=20;
    DENSITY Pulse2 / TYPE=NORMAL LEGENDLABEL="Normal Distribution" LINEATTRS=(THICKNESS=2 COLOR=Red);
    TITLE "Histogram of Pulse2";
RUN;

PROC SGPLOT DATA=pulse;
    HISTOGRAM Weight / NBINS=20;
    DENSITY Weight / TYPE=NORMAL LEGENDLABEL="Normal Distribution" LINEATTRS=(THICKNESS=2 COLOR=Red);
    TITLE "Histogram of Weight";
RUN;

PROC SGPLOT DATA=pulse;
    HISTOGRAM Height / NBINS=20;
    DENSITY Height / TYPE=NORMAL LEGENDLABEL="Normal Distribution" LINEATTRS=(THICKNESS=2 COLOR=Red);
    TITLE "Histogram of Height";
RUN;
