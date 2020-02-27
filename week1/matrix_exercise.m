A = [1,2,0;0,5,6;7,0,9]

AT=A'

A_inv = inv(A)

% What is A^(-1)*A? 
A_invA1 = inv(A)*A
A_invA2 = A*inv(A)