function [x0, iter] = NewtonOpt (f, x0, tol, max_it)
  g0 = Grad(f, x0);
  iter = 0;
  while norm(g0) > tol && iter < max_it
    H = Hessian2(f, x0);
    [U, bt] = MyGaussPivot(H, -g0);
    d = Backward(U, bt);
    x0 = x0 + d;
    iter = iter + 1;
    g0 = Grad(f, x0);
  endwhile
end
