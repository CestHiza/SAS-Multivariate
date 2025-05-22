/* Final exam part 2 */


/*
data MPG;
    infile '\\apporto.com\dfs\CLT\Users\hmvuendy_clt\Desktop\MPG.txt' dlm=',' dsd firstobs=2;
    input y x1 x2 x3 x4 x5 x6 x7 x8;
run;


data MPG_dummy;
    set MPG;
    x8_4 = (x8 = 4);
    x8_5 = (x8 = 5);
run;

proc reg data=MPG_dummy;
    model y = x1 x2 x3 x4 x5 x6 x7 x8_4 x8_5 / vif;
run;
quit;


proc reg data=MPG_dummy;
    model y = x1 x2 x3 x4 x5 x6 x7 x8_4 x8_5 / selection=stepwise;
run;
quit;


proc reg data=MPG_dummy;
    model y = x1 x2 x3 x4 x5 x6 x7 x8_4 x8_5;
run;
quit;


/*
PROC REG DATA=MPG;
    MODEL y = x1 x2 x3 x5 x6 x7 x8 / CLB;
RUN;
QUIT;
*/

/*
PROC REG DATA=MPG;
    MODEL y = x1 x2 x3 x4 x7 x8 / CLB;
RUN;
QUIT;
*/


/*
data mpg_with_interaction;
   set mpg;
   x9 = x7*x8;
run;

proc reg data=mpg_with_interaction;
   model y = x1 x2 x3 x4 x5 x6 x7 x8 x9;
run;
*/







