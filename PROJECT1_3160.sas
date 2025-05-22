data swiss_notes;
	INFILE '\\apporto.com\dfs\CLT\Users\hmvuendy_clt\Desktop\swiss1.txt';
    INPUT Length LeftWidth RightWidth BottomMargin TopMargin DiagonalLength;
run;

PROC IML;
    use swiss_notes;
    read ALL var _NUM_ INTO X;
    close swiss_notes;

cov_matrix = COV(X);       /* Compute covariance matrix */
gen_var = DET(cov_matrix); /* Calculate determinant */

print "Generalized Sample Variance:", gen_var[format=best12.4];
QUIT;




