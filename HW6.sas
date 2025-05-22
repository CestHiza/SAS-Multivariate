data plastic;
	infile '\\apporto.com\dfs\CLT\Users\hmvuendy_clt\Desktop\plastic.txt' dlm=' ';
	input Hardness Time;
run;

/* proc reg data=plastic;
    model Hardness = Time;
run;
*/

/*
proc reg data=plastic;
    model Hardness = Time / clm;
    output out=pred p=predicted lclm=lclm uclm=uclm;
run;

data confidence_interval;
    set pred;
    if Time = 20;
run;

proc print data=confidence_interval;
    var predicted lclm uclm;
run;
*/

proc reg data=plastic;
    model Hardness = Time / cli;
    output out=pred p=predicted lcli=lcli ucli=ucli;
run;

data prediction_interval;
    set pred;
    if Time = 20;
run;

proc print data=prediction_interval;
    var predicted lcli ucli;
run;

