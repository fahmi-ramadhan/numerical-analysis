function [g] = Grad(f, x)
  n = length(x);
  h = 10^-5;
  for i=1:n
    x1 = x;
    x1(i) = x1(i) + h;
    x2 = x;
    x2(i) = x2(i) - h;
    df1 = f(x1) - f(x2);
    g(i) = df1 / (2*h);
  endfor
  g = g';
end