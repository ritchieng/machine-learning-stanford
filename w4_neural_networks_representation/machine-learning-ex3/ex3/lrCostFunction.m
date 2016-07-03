function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Hint: The computation of the cost function and gradients can be
%       efficiently vectorized. For example, consider the computation
%
%           sigmoid(X * theta)
%
%       Each row of the resulting matrix will contain the value of the
%       prediction for that example. You can make use of this to vectorize
%       the cost function and gradient computations. 
%
% Hint: When computing the gradient of the regularized cost function, 
%       there're many possible vectorized solutions, but one solution
%       looks like:
%           grad = (unregularized gradient for logistic regression)
%           temp = theta; 
%           temp(1) = 0;   % because we don't add anything for j = 0  
%           grad = grad + YOUR_CODE_HERE (using the temp variable)
%


% Fill in sigmoid(z) where z = X*theta
% size of X is 5000 x 400
h0 = sigmoid(X*theta);

% Since regularization should only start from theta 2 in Matlab/Octave 
% (or theta 0 in theory) we have to equate theta(1) = 0
theta(1) = 0;

% J(theta) formula has two parts where y = 0 (part_y0)and y = 1 (part_y1)
% For regularized logistic regression, we have a third part with lamda (part_reg)
part_y0 = -y' * log(h0);
part_y1 = -(1-y') * log(1 - h0);
part_reg = (lambda / (2*m)) * sum(theta .^ 2);
J = (1 / m) * (part_y0 + part_y1) + part_reg;

% The gradient of J(theta) takes the following formula
grad = (1 / m) * (X' * (h0 - y)) + (lambda / m) * theta;


% =============================================================

grad = grad(:);

end
