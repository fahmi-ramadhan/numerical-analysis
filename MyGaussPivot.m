function [ U,bt ] = MyGaussPivot( A,b )
  A=[A b];
  n=length(b);
  for i=1:n-1
    [x,k]=max(abs(A(i:n,i)));
    k=k+i-1;
    A([i k],:)=A([k i],:);
    for j=i+1:n
      m=A(j,i)/A(i,i);
      A(j,:)=A(j,:)-m*A(i,:);
    endfor
  endfor
  U=A(:,1:n); bt=A(:,n+1)
end