function [a] = get_prediction_params (K, y, lambda)
  m = size(K,1);
  Im = eye(m);
  L = cholesky(lambda * Im + K);
  a = L' \(L \ y);
endfunction

