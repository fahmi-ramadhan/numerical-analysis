function y = RK2(f,t0,y0,tf,n)
  h = (tf-t0)/n;
  t = t0:h:tf;
  y(:,1) = y0;
  for i = 2:n+1
    k1 = f(t(i-1),y(:,i-1));
    k2 = f(t(i),y(:,i-1)+h*k1);
    y(:,i) = y(:,i-1) + h*(k1+k2)/2;
  endfor
endfunction
