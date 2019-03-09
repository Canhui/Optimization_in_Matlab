function [A,left,top] = exchange(A,left,top,p,q)
[s,t]=size(A);

% step 1: compute the pivot element
A(p,q)=1/A(p,q);

% step 2: compute the pivot row
A(p, [1:q-1, q+1:t]) = -A(p,[1:q-1, q+1:t])*A(p,q);

% step 3: compute the field
A([1:p-1, p+1:s],[1:q-1, q+1:t]) = A([1:p-1, p+1:s],[1:q-1, q+1:t])+A([1:p-1,
p+1:s],q)*A(p,[1:q-1, q+1:t]);

% step 4: compute the pivot column
A([1:p-1, p+1:s], q) = A([1:p-1, p+1:s], q)*A(p, q);% exchange labels
h=left(p); left(p)=top(q); top(q)=h;