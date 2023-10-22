function [ x0,n ] = Newton( f,x0,tol,itmax )
  n=0;
  h=0.1e-4;
  f0=f(x0)
  while abs(f0) > tol && n < itmax
    df0=(f(x0+h)-f(x0-h))/(2*h)
    x0=x0-f0/df0
    f0=f(x0)
    n=n+1;
  endwhile
end