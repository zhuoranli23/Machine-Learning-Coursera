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
sum = 0;
for i = 1:m, 

    J = J + [-y(i)*log(sigmoid(X(i,:)*theta))-(1-y(i))*log(1-sigmoid(X(i,:)*theta))];  
end
%theta_1 = theta;
%theta_1(1) = 0;
for i = 2:size(theta),
    sum = sum + theta(i)^2
end
J = (1/m)*J + (lambda/(2*m))*sum; %(lambda/(2*m))*sum(theta_1.^2);
% grad for theta 0
sum = 0;
for i = 1:m,
        sum = sum + (sigmoid(X(i,:)*theta)-y(i))*X(i,1);
end
grad(1) = (1/m)*sum;

for j = 2:size(theta),
    sum = 0;
    for i = 1:m,
        sum = sum + (sigmoid(X(i,:)*theta)-y(i))*X(i,j);
    end
    grad(j) = (1/m)*sum+(lambda/m)*theta(j);
end



% =============================================================

end
