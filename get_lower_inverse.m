function [P] = get_lower_inverse(L)
  n = size(L,1);
  P = zeros(n,n);
  for i = 1:n
    P(i, i) = 1 / L(i,i);
    for j = i+1:n
      s = 0;
      for k = i:j-1
        s = s + L(j,k) * P(k,i);
      endfor
      P(j,i) = -s / L(j,j);
    endfor
  endfor
endfunction

