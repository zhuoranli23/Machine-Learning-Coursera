
%A = [1,2,0;0,5,6;7,0,9]

%AT=A'

%A_inv = inv(A)

% What is A^(-1)*A? 
%A_invA1 = inv(A)*A
%A_invA2 = A*inv(A)
%{
for i=1:10,
    disp(i);
end;
v=zeros(10,1);
indices=1:10;

for i=indices,
    v(i)=2^i;
end;

i = 1;
while i<= 5,
    v(i) = 100;
    i = i+1;
end;
i=1;
while true,
    v(i) = 999;
    i = i+1;
    if i == 6,
        break;
    end;
end;
v
%}
%{
a = eye(3);
a = a(:)

for i = 1:9,
    if a(i) == 1,
        a(i) = 2;
    elseif a(i) == 0,
        a(i) = 3;
    else,
        disp('wrong!!!!');
    end;
end;

a
  %}
%{
v = zeros(10,1);
i=1;
while true,
    v(i) = 999;
    i = i+1;
    if i == 6,
        break;
    else,
        fprintf("need time man");
    end;
end;
%}
%{
z = square(5);
[a,b] = squareAndcube(2,3);
function f = square(n)
    f = n^2;
end

function [y1, y2] = squareAndcube(x,y)
    y1 = x^2;
    y2 = y^3;
end
%}





A = [1 2; 3 4; 5 6];
B = [1 2 3; 4 5 6];














