proc iml;
A = {1 2, 3 5};
B = {1 3, 2 4, 9 30};
print A, B;

/* transpose */
A_1 = t(A);
A_2 = A`;
print A, A_1, A_2;

BA = B*A;
print BA;

C = B*t(B);
print C;

det_C = det(C);
print det_C;

run;
