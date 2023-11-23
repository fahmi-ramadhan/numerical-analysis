function a = LineSearch (f, x0, tol)
  al = 0; ar = 1;
  while (ar-al) > tol
    p = -Grad(f, x0);
    x1 = x0+al*p; x2 = x0+ar*p;
    f1 = f(x1); f2 = f(x2);
    if f1 < f2
      ar = (al+ar) / 2;
    else
      al = (al+ar) / 2;
    endif
  endwhile
  a = (al+ar) / 2;
end
