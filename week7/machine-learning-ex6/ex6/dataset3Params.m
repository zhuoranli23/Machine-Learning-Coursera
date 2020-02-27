function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

testC = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
testSig = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
test_res = []
for i = 1:size(testC,2),
    for j = 1:size(testSig,2),
        Cval = testC(i);
        Sigval = testSig(j);
        model= svmTrain(X, y, Cval, @(x1, x2) gaussianKernel(x1, x2, Sigval));
        
        predictions = svmPredict(model, Xval);
        error = sum(abs(predictions - yval))/size(yval,1);
        fprintf("When C = %f, Sigma = %f, error is %f",Cval,Sigval,error);
        test_res = [test_res;Cval, Sigval, error];
    end
end
[leasterror,index] = min(test_res(:,3));
C = test_res(index,1);
sigma = test_res(index,2);
fprintf("The best combination: C = %f, Sigma = %f, least error = %f",C,sigma,leasterror);
% =========================================================================

end
