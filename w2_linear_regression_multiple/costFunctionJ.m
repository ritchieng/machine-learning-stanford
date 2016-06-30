function J = costFunctionJ(X, y, theta);

(*X is the 'design matrix' containing our training examples;
Y is the class labels;*)

(*number of training examples; get first dimension; number of rows*)
m = size(X, 1);

(*predictions of hypothesis on all m;*)
predictions = X * theta;

(*squared errors*)
sqrErrors = (predictions - y).^2;

J = 1 / (2 * m) * sum(sqrErrors);
