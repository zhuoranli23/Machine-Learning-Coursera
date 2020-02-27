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

hypothesis = X*theta;
diff = hypothesis - y;
square_error = sum(diff.^2);

theta_regu = theta;
theta_regu(1) = 0;
square_theta = sum(theta_regu.^2);

J = (1/(2*m))*square_error + (lambda/(2*m))*square_theta;

grad = (1/m)*X'*(X*theta-y);
grad = grad + (lambda/m)*theta_regu;











% =========================================================================

grad = grad(:);

end
