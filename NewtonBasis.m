function N = NewtonBasis(t, i, x)
  N = 1;
  for j = 1:i-1
    N = N * (t - x(j));
  endfor
end
