function L = cholesky(A)
    [m,n] = size(A);
    L = zeros(m,n);
    for j = 1:n
        for i = 1:j
            if i == j
                L(j,j) = sqrt(A(j,j) - sum(L(j,1:j-1).^2));
            else
                L(j,i) = (A(j,i) - sum(L(j,1:i-1).*L(i,1:i-1))) / L(i,i);
            endif
        endfor
    endfor
endfunction

