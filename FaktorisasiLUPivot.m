function [ L,U,p ] = FaktorisasiLUPivot(A)
  [n,n] = size(A);
  L=eye(n);
  p=1:n;
  for i=1:n-1
    [x,k]=max(abs(A(i:n,i)));
    k=k+i-1;
    A([i k],:)=A([k i],:);
    L([i k],1:i-1)=L([k i],1:i-1);
    p([i k])=p([k i]);
    for j=i+1:n
      L(j,i)=A(j,i)/A(i,i);
      A(j,:)=A(j,:)-L(j,i)*A(i,:);
    endfor
  endfor
  U=A;
end