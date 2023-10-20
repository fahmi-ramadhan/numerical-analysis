function [ J ] = Jacobian( F,x )
  h = 0.1e-4;
  n = length(x);
  for j=1:n
    dxl = x;
    dxl(j) = dxl(j)+h;
    dxr = x;
    dxr(j) = dxr(j)-h;
    dFl = F(dxl);
    dFr = F(dxr);
    for i=1:n
      J(i,j) = (dFl(i)-dFr(i))/(2*h);
    endfor
  endfor
endfunction