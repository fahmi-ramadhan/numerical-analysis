function p = PolyNewton (x, y, t)
  n = length(x);
  C = eye(n);
  C(:, 1) = ones(n, 1);
  for i = 2:n
    for j = i:n
      C(j, i)=NewtonBasis(x(j), i, x);
    endfor
  endfor
  c = Forward(C, y);
  p = 0;
  for k = 1:n
    p = p + c(k) * NewtonBasis(k, x, t);
  endfor
end
