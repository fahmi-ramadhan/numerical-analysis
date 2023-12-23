function [R,n] = Romberg(f, a, b, tol)
  Err = 1;
  n = 1;
  R(1,1) = (f(a)+f(b))*(b-a)/2;
  while Err > tol
    n = n + 1;
    m = 2^(n-1)+1;
    R(n,1) = Repeated(f, a, b, m)
  endwhile
endfunction
