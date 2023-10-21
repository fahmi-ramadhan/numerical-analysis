function [ x ] = Forward( L,b )
  n = length(b);
  x = zeros(n,1);
  x(1) = b(1)/L(1,1);
  for i=2:n
    sum = L(i,1:i-1) * x(1:i-1);
    x(i) = (b(i)-sum) / L(i,i);
  endfor
endfunction