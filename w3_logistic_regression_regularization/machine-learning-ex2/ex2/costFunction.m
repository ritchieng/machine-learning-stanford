function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% number of training examples
m = length(y);

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

% Fill in sigmoid(z) where z = X*theta
h0 = sigmoid(X*theta);

% J(theta) formula has two parts where y = 0 and y = 1
% You have to transpose y because y is 100 x 1 and h0 is 100 x 1
part_y0 = -y' * log(h0);
part_y1 = -(1-y') * log(1 - h0);
J = (1 / m) * (part_y0 + part_y1);

% The gradient of J(theta) takes the following formula
% You have to transpose (h0 - y) because it is 100 x 1 while X is 100 x 3
grad = (1 / m) * ((h0 - y)' * X);

% =============================================================

end
