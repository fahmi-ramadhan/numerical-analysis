function [R, T, S] = Repeated(f, a, b, n)
  h = (b-a) / (n-1);
  R = f(a + h/2);
  T = (f(a) + f(b)) / 2;
  S = (f(a) - f(b));
  for i = 2:n-1
    R = R + f(a + (2*i-1)*h/2);
    T = T + f(a + (i-1)*h);
  endfor
  for i=1:(n-1)/2
    S = S + 4*f(a + (2*i-1)*h) + 2*f(a + 2*i*h);
  endfor
  R = R*h;
  T = T*h;
  S = S*(h/3);
end
