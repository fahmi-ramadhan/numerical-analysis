function y = ThetaCorrector(f, x0, y0, xf, teta, n)
  h = (xf - x0) / n;
  for i = 1:n
    yp = y0 + h * f(x0, y0);
    while abs(y(i)-yp) > 10^-5
      y(i)
    endwhile
  endfor
endfunction
