function pred = eval_value(x, X, f, f_param, a)
  n = size(X, 1);     % Determine the number of rows (data points) in X
  pred = 0;           % Initialize the predicted value pred

  % Loop through each data point in X
  for i = 1:n
    % Evaluate the function f at the i-th data point X(i,:) with input x and parameters f_param
    % Multiply the result by the corresponding coefficient a(i) and add it to pred
    pred = pred + a(i) * f(X(i,:), x, f_param);
  endfor
endfunction

