function [ R,bt ] = MyGivens ( A,b )
  [m,n] = size(A);
  A = [A b];
  for i = 1:n
    for j = i+1:m
      r = sqrt(A(i,i)^2 + A(j,i)^2);
      c = A(i,i)/r;
      s = A(j,i)/r;
      temp = c*A(i,i:n+1) + s*A(j,i:n+1);
      A(j,i:n+1) = -s*A(i,i:n+1) + c*A(j,i:n+1);
      A(i,i:n+1) = temp;
    endfor
  endfor
  R=A(:,1:n); bt=A(:,n+1);
endfunction