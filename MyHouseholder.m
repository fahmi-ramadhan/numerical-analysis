function [ R,bt ] = MyHouseholder( A,b )
  [m,n]=size(A);
  A=[A b];
  for k=1:n
    v = A(k:m,k)+sign(A(k,k))*norm(A(k:m,k))*[1;zeros(m-k,1)];
    alf=(2/(v'*v));
    for j=k:n+1
      A(k:m,j)=A(k:m,j)-(alf*v'*A(k:m,j))*v;
    endfor
  endfor
  R=A(:,1:n); bt=A(:,n+1);
end