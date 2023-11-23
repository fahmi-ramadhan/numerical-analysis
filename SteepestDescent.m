function [x0, iter] = SteepestDescent(f, x0, tol, max_it)
  p0 = -Grad(f, x0);
  iter = 0;
  while norm(p0) > tol && iter < max_it
    a = LineSearch(f, x0, 1e-4);
    x0 = x0 + a*p0;
    p0 = -Grad(f, x0);
    iter = iter + 1;
  endwhile
end
