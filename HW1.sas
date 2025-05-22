data gradebook;
input name $ homework midterm final;
datalines;
Frank 97 95 92
Emily 93 92 96
William 95 90 88
Janet 88 83 75
Betty 86 79 84
Joe 85 82 86
Bob 72 63 72
;
proc print data=gradebook (obs=3);   /*print first 3 lines*/
run;

DATA gradebook_new;
    SET gradebook;
    Total = (homework * 0.30) + (midterm * 0.25) + (final * 0.45);
RUN;

PROC PRINT DATA=gradebook_new;
    VAR name homework midterm final Total;  /* Includes Total variable in the output */
RUN;

PROC MEANS DATA=gradebook_new MEAN STDDEV;
    VAR homework midterm final Total;
RUN;

PROC SGPLOT DATA=gradebook_new;
    SCATTER X=Total Y=Final / MARKERATTRS=(SYMBOL=CircleFilled COLOR=Green);
    XAXIS LABEL="Total Grade";
    YAXIS LABEL="Final Score";
    TITLE "Final Score against Total Grade";
RUN;

/***** Question 2 *****/
