function [ x0,n ] = VectorNewton( F,x0,tol,itmax )
  n = 0;
  h = 0.1e-4;
  F0 = F(x0);
  while norm(F0) > tol && n < itmax
    J = Jacobian(F,x0);
    [U,bt] = MyGaussPivot(J,F0);
    d = Backward(U,bt);
    x0 = x0 - d;
    F0 = F(x0);
    n = n+1;
  endwhile
end