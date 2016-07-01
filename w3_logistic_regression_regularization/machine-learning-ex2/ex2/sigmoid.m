% pass z from sigmoid(z) into function g
function g = sigmoid(z)

% Setting up vector or matrix
g = zeros(size(z));

% Element-wise reciprocal
g = 1 ./ (1 + exp(-z));

end
