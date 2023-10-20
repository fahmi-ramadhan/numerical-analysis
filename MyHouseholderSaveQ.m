function [Qt, R] = MyHouseholderSaveQ(A)
    [m, n] = size(A);
    Qt = eye(m);
    for j=1:n
        v = A(j:m,j)+sign(A(j,j))*norm(A(j:m,j))*[1;zeros(m-j,1)];
        a = 2/(v'*v);
        H = eye(m-j+1)-a*v*v';
        Qt = [eye(j-1) zeros(j-1,m-j+1); zeros(m-j+1,j-1) H]*Qt;
        for i=j:n
            A(j:m,i) = A(j:m,i)-a*v'*A(j:m,i)*v;
        endfor
    endfor
    R = A;
endfunction