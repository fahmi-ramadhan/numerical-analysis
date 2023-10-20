function [ x,n ] = Bisection ( f,a,b,tol )
  fa = f(a);
  n=0;
  while (b-a)>tol
    m=(a+b)/2;
    fm=f(m);
    if fa*fm<0
      b=m;
    else
      a=m;
      fa=fm;
    endif
    n=n+1;
  endwhile
x=n;
end