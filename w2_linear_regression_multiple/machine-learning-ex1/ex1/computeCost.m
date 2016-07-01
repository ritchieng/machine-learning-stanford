% Pass X, y, theta from computeCost function to J
function J = computeCost(X, y, theta)

% Number of training examples
m = length(y);

% Set J to zero
J = 0;

predictions = X*theta;
square_errors = (predictions - y).^2;
J = (1/(2*m))*sum(square_errors);

end
