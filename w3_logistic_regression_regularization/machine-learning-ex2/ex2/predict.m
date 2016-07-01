function p = predict(theta, X)
%PREDICT Predict whether the label is 0 or 1 using learned logistic 
%regression parameters theta
%   p = PREDICT(theta, X) computes the predictions for X using a 
%   threshold at 0.5 (i.e., if sigmoid(theta'*x) >= 0.5, predict 1)

m = size(X, 1); % Number of training examples

% You need to return the following variables correctly
p = zeros(m, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned logistic regression parameters. 
%               You should set p to a vector of 0's and 1's
%

s = sigmoid(X * theta);

% Create function f(n)
% This rounds s >= 0.5 to 1
% This rounds s < 0.5 to 0

function rounding = f(n)
  rounding = round(n);
endfunction

% You can also use short-hand to create a function
% @(n) is a short-hand that creates function with argument n that calls round(n)
% f = @(n) round(n);

p = f(s);


% =========================================================================


end
