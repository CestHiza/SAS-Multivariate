/* data wait_times;
    input WaitTime @@;
    datalines;
109 67 58 76 65 80 96 86 71 72
;
run;

proc means data=wait_times mean std;
    var WaitTime;
run;

proc means data=wait_times mean stddev clm alpha=0.01;
    var WaitTime;
run;

proc ttest data=wait_times h0=85 sides=L alpha=0.05;
    var WaitTime;
run;
*/

data grades;
    input Name $ Homework Midterm Final;
    datalines;
Frank 97 95 92
Emily 93 92 96
William 95 90 88
Janet 88 83 75
Betty 86 79 84
Joe 85 82 86
Bob 72 63 72
;
run;

proc means data=grades mean std;
    var Final;
run;

proc means data=grades mean stddev clm alpha=0.05;
    var Homework;
run;

proc ttest data=grades h0=85 sides=U alpha=0.05;
    var Midterm;
run;
