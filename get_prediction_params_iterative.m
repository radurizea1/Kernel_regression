function [a] = get_prediction_params_iterative(K, y, lambda)
  m = size(K,1);
  Im = eye(m);
  A = K + lambda * Im;
  x0 = zeros(m, 1);
  tol = 1e-5;
  max_iter = m;
  a = conjugate_gradient(A, y, x0, tol, max_iter);
endfunction

