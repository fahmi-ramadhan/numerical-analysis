function [ R,bt ] = MyGivens ( A,b )
  [m,n]=size(A);
  A=[A b];
  for k=1:n
    for j=k+1:n
      r=sqrt(A(k,k)^2+A(k,j)^2);
      c=A(k,k)/r;
      s=A(k,j)/r;
      temp = c*A(k,k:n+1) + s*A(j,k:n+1);
      A(j,k:n+1) = -s*A(k,k:n+1) + c*A(j,k:n+1);
      A(k,k:n+1) = temp;
    endfor
  endfor
  R=A(:,1:n); bt=A(:,n+1);
end