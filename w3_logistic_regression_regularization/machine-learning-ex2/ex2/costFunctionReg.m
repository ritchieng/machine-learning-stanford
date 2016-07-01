function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
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

% Fill in sigmoid(z) where z = X*theta
h0 = sigmoid(X*theta);

% Since regularization should only start from theta 2 in Matlab/Octave (or theta 0 in theory) we have to equate theta(1) = 0
theta(1) = 0;

% J(theta) formula has two parts where y = 0 (part_y0)and y = 1 (part_y1)
% For regularized logistic regression, we have a third part with lamda (part_reg)
% You have to transpose y because y is 100 x 1 and h0 is 100 x 1
part_y0 = -y' * log(h0);
part_y1 = -(1-y') * log(1 - h0);
part_reg = (lambda / (2*m)) * sum(theta .^ 2);
J = (1 / m) * (part_y0 + part_y1) + part_reg;

% The gradient of J(theta) takes the following formula
% You have to swap position of X and transpose X because it is 118 x 28 while (h0 - y) is 118 x 1
% This would result in ((h0 - y) * X) being 28 x 1
% Hence, at this stage, you're able to add to the vector theta
grad = (1 / m) * (X' * (h0 - y)) + (lambda / m) * theta;

% =============================================================

end
