function y = Theta(k, x0, y0, xf, teta, n)
  h = (xf - x0) / n;
  for i = 1:n
    y(i) = ((1-teta*k*h) / (1+(1-teta)*k*h))^i;
  endfor
endfunction
