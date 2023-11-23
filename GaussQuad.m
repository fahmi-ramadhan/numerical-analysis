function g = GaussQuad(f, a, b)
  x0 = (a-b) / (2 * sqrt(3)) + (a+b) / 2;
  x1 = (b-a) / (2 * sqrt(3)) + (a+b) / 2;
  w1 = (x0*(b-a)-(b^2-a^2)/2)/(x0-x1);
  w0 = (b-a-w1);

  g = w0*f(x0) + w1*f(x1);
end
