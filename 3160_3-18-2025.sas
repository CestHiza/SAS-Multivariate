/* We have two groups:
True (n1 = 100)
Fake (n2 = 200)

Lets focus on one variable: x1
True mu1
Fake mu2

Ho: mu1 = mu2 vs Ha: mu1 does not = mu2

Two sample T tests.
sigma1^2 = sigma2^2
sigma1^2 does not = signma2^2

Step 1: Ho: sigma1^2 = sigma2^2 vs Ha: sigma1^2 does not = sigma2^2
Fobs

Step 2: We will use pooled method.
Tobs =
*/

data banknote;
	infile '\\apporto.com\dfs\CLT\Users\hmvuendy_clt\Desktop\swiss3.txt';
	input section $ x1 x2 x3 x4 x5 x6;

proc print data = banknote;
run;

proc ttest sides=2 alpha=.05 data=banknote;
class section;
var x1;
run;

data blood;
input before after;
datalines;
150 140
165 140
185 155
180 135
175 140
170 150
;
proc ttest sides=U data=blood;
paired before*after;
run;
