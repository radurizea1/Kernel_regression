function [X_train, y_train, X_pred, y_pred] = split_dataset(X, y, percentage)
  nr_linii_X = size(X, 1);    % Get the number of rows in the input matrix X
  linii_train = round(percentage * nr_linii_X);  % Calculate the number of rows for training set
  linii_pred = round((1 - percentage) * nr_linii_X);  % Calculate the number of rows for prediction set

  % Splitting the dataset
  X_train = X(1:linii_train, :);   % Select the first 'linii_train' rows of X for training set
  X_pred = X((linii_train + 1):end, :);  % Select the remaining rows of X for prediction set

  y_train = y(1:linii_train);   % Select the corresponding labels for training set
  y_pred = y((linii_train + 1):end);  % Select the corresponding labels for prediction set
endfunction

