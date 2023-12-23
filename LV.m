function f = LV(t,y)
  n = length(y);
  f = zeros(n,1);
  f(1) = 1.1 * y(1) - 0.4 * y(1) * y(2);
  f(2) = 0.01 * y(1) * y(2) - 0.4 * y(2);
endfunction
