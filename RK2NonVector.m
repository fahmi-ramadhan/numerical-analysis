function y = RK2NonVector(f,t0,y0,t,n)
  h=(t-t0)/n;
  t=t0:h:t;
  k1=f(t0,y0);
  k2=f(t(2),y0+h*k1);
  y(1)=y0+h*(k1+k2)/2;
  for i=2:n
    k1=f(t(i),y(i-1))
    k2=f(t(i+1),y(i-1)+h*k1);
  y(i)=y(i-1)+h*(k1+k2)/2;
  endfor
endfunction
