function [L,U] = FaktorisasiLU(A)
  [n,n] = size(A);
  L = eye(n);
  for i=1:n-1
    for j=i+1:n
      L(j,i)=A(j,i)/A(i,i);
      A(j,:)=A(j,:)-L(j,i)*A(i,:);
    endfor
  endfor
  U=A;
end