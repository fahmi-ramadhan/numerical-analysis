function H = Hessian2(f, x)
  n = length(x);
  h = 1e-5;
  for j=1:n
    w = x; w(j) = w(j) + h;
    z = x; z(j) = z(j) - h;
    H(:,j) = (Grad(f,w) - Grad(f,z)) / (2 * h);
  endfor
end
