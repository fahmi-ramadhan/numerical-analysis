function [L,d] = LDLt(A)
  [n,n] = size(A);
  L = eye(n);
  d(1) = A(1,1);
  for i=1:n-1
    L(i+1:n,i)=A(i,i+1:n)'/d(i);
    for j=i+1:n
      A(j,i:n)=A(j,i:n)-L(j,i)*A(i,i:n);
    endfor
    d(i+1)=A(i+1,i+1)
  endfor
end