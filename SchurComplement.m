function [L, U] = SchurComplement(A)
  % Recursion version of LU Decomposition
  [n n] = size(A);
  L = eye(n);
  U = A;
  if n < 2
    return
  endif

  a_11 = A(1,1);
  bt   = A(1,2:n);
  c    = A(2:n,1);
  D    = A(2:n,2:n);

  L(2:n,1) = c / a_11;
  U(2:n,1) = zeros(n - 1, 1);
  D = D - (c * bt) / a_11;

  [L(2:n,2:n), U(2:n,2:n)] = SchurComplement(D);
endfunction