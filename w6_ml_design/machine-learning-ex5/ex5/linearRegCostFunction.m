function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%


% REGULARIZED LINEAR REGRESSION: Jtheta
% variables given X, y, theta, lambda
% variables to output J, grad

% Your hypothesis
h0 = X * theta;

% There are two terms in the regularized linear regression equation

% First term
term_1 = (1 / (2 * m)) * (sum((h0 - y) .^ 2));

% Second term (regularization)
% Because you should not regularize theta0 which is indexed as 1 in Matlab/Octave, you should use theta(2:end) which is theta without bias
term_2 = (lambda / (2 * m)) * (sum(theta(2:end) .^ 2));

J = term_1 + term_2;

% GRADIENT OF REGULARIZED LINEAR REGRESSION: Partial Derivative of Jtheta

% j = 0
% size(X) = 12 x 2
% size(h0 - y) = 12 x 1
% we need a vector of 2 x 1 so we transpose X
grad = (1 / m) * X' * (h0 - y);

% j >= 0
% from 2 onwards, since octave starts with 1 which is equivalent to 0
grad(2: end) += (lambda / m) * theta(2:end);


% =========================================================================

grad = grad(:);

end
