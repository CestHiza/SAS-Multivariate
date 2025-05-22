proc iml;
A = {4 3, 2 10};
C=A*t(A);
print C;
call eigen(l, v, C);

/*
print l, v;
run;
*/

l1 = 119.31;
l2 = 9.69;
e1 = {.3737, .9275};
e2 = (-.9275, .3737);

B = l1 * e1 * t(e1) + l2 * e2 * t(e2);
print B, C;
run;

