/* Test 2 */
/*
data alcohol_data;
	infile '\\apporto.com\dfs\CLT\Users\hmvuendy_clt\Desktop\alcohol.txt' delimiter='09'x firstobs=2;
	input alcohol strength;
run;
*/

/* Run the linear regression to predict strength using the REG procedure to find the estimated regression equation. */
/*
proc reg data=alcohol_data;
	model strength = alcohol;
	output out=reg_output p=predicted_strength;
run;
quit;
*/

/*
data t_value;
    alpha = 0.05;
    df = 48;
    t_critical = tinv(1 - alpha / 2, df);
run;

proc print data=t_value;
run;
*/

/* Construct a 95% confidence interval for the mean strength when the alcohol is 22.6 */
/*
proc reg data=alcohol_data;
    model strength = alcohol;
    output out=ci_output p=predicted_strength lclm=lower_ci uclm=upper_ci;
run;
quit;

data ci_for_22_6;
    set ci_output;
    if alcohol = 22.6;
run;
*/

/* Construct a 95% prediction interval for the strength when the alcohol is 25.6. */
/*
proc reg data=alcohol_data;
    model strength = alcohol;
    output out=pi_output p=predicted_strength lcl=lower_pred ucl=upper_pred;
run;
quit;

data pi_for_25_6;
    set pi_output;
    if alcohol = 25.6;
run;
*/

/* Step 1: Define the dataset with the observed alcohol and strength values */
data alcohol_data;
    infile "\\apporto.com\dfs\CLT\Users\hmvuendy_clt\Desktop\alcohol.txt' delimiter='09'x firstobs=2";
    input alcohol strength;
run;

/* Step 2: Define a new dataset with the specific alcohol values for which you want the intervals */
data specific_alcohol_levels;
    input alcohol;
    datalines;
22.6
25.6
;
run;

/* Step 3: Run the regression with confidence and prediction intervals, scoring on specific_alcohol_levels */
proc reg data=alcohol_data;
    model strength = alcohol / clm cli;
    score data=specific_alcohol_levels out=specific_intervals;
run;

/* Step 4: Display the intervals for the specified values */
proc print data=specific_intervals;
run;

