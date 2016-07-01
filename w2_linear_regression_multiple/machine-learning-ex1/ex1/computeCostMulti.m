% Pass X, y, theta from computeCost function to J
function J = computeCostMulti(X, y, theta)

% Number of training examples
m = length(y);

% You need to return the following variables correctly 
J = 0;

predictions = X*theta;
square_errors = (predictions - y).^2;
J = (1/(2*m))*sum(square_errors);

end
