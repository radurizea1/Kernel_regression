function [x] = conjugate_gradient (A, b, x0, tol, max_iter)
  r(:,1) = b - A * x0;  % Initialize residual vector r_0 = b - A * x0
  v(:,1) = r(:,1);      % Initialize search direction v_0 = r_0
  tol_patrat = tol^2;   % Square of the tolerance for comparison
  k = 1;                % Initialize iteration counter
  x = x0;               % Initialize solution vector x with initial guess x0

  % Main loop: continue until maximum iterations or tolerance is met
  while (k <= max_iter && r(:,k)' * r(:,k) > tol_patrat)
    A_v = A * v(:,k);                  % Compute A * v_k
    tk = (r(:,k)' * r(:,k)) / (v(:,k)' * A_v);  % Compute step size tk
    x = x + tk * v(:,k);               % Update solution x_k+1 = x_k + tk * v_k
    r(:,k+1) = r(:,k) - tk * A_v;      % Update residual r_k+1 = r_k - tk * A * v_k
    sk = (r(:,k+1)' * r(:,k+1)) / (r(:,k)' * r(:,k));  % Compute sk for next direction
    v(:,k+1) = r(:,k+1) + sk * v(:,k); % Update search direction v_k+1
    k = k + 1;                          % Increment iteration counter
  endwhile

endfunction

