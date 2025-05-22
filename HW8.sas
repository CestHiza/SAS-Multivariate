/* Import data */
/*
DATA TET;
    INFILE '\\apporto.com\dfs\CLT\Users\hmvuendy_clt\Desktop\TET.txt' DELIMITER='09'x FIRSTOBS=2;
    INPUT ID LOGACT21 Dosage $ Sex $;
RUN;
*/

/* Perform ANOVA
PROC GLM DATA=TET;
    CLASS Dosage;
    MODEL LOGACT21 = Dosage;
    MEANS Dosage / TUKEY;
RUN;
QUIT;
*/

/*
PROC GLM DATA=TET;
    CLASS Dosage Sex;
    MODEL LOGACT21 = Dosage Sex Dosage*Sex;
    MEANS Dosage*Sex / TUKEY;
RUN;
QUIT;
*/

/*
PROC GLM DATA=TET;
    CLASS Dosage Sex;
    MODEL LOGACT21 = Dosage Sex;
    MEANS Dosage / TUKEY;
RUN;
QUIT;
*/

data bloodpressure;
    infile '\\apporto.com\dfs\CLT\Users\hmvuendy_clt\Desktop\bloodpressure1.txt' firstobs=2 dlm='09'x;
    input SBP QUET SMK;
run;

/*
proc print data=bloodpressure;
run;
*/

proc reg data=bloodpressure;
    model SBP = QUET;
run;


