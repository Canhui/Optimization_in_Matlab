function [A] = LinearEquationsSolver(A)
[s,t]=size(A);
leftlabel=1:s;
toplabel=1:t;

for i = 1:t-1
    [AA, return_b, return_c] = GaussianElimination(A,leftlabel,toplabel,i,i);
    A = AA;
end
A = A(:,t);