function y = ImplicitPC(f,t0,y0,theta,tf,n)
  h = (tf-t0)/n;
  t = t0:h:tf;
  y(1) = y0;
  for i = 2:n+1
    tmp = y(i-1) + h*f(t(i-1),y(i-1)); er = 1;
    while er > 1e-5
      y(i) = y(i-1) + h*(theta*f(t(i-1),y(i-1))+(1-theta)*f(t(i),tmp));
      er = abs(y(i)-tmp);
      tmp = y(i);
    endwhile
  endfor
end
