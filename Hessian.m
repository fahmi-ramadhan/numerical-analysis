function H = Hessian(f, x)
  n = length(x);
  h = 10^-5;
  for j=1:n
    x1 = x;
    x1(j) = x1(j) + h;
    x2 = x;
    x2(j) = x2(j) - h;
    for i=j:n
      x3 = x1;
      x3(i) = x3(i) + h;
      x4 = x1;
      x4(i) = x4(i) - h;
      x5 = x2;
      x5(i) = x5(i) + h;
      x6 = x2;
      x6(i) = x6(i) - h;
      df = (f(x3) - f(x4) - f(x5) + f(x6));
      H(i, j) = df / (4*h^2);
      H(j, i) = H(i, j);
    endfor
  endfor
end