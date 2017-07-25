
%{

Problem: Sum the elements in either diagonal of a square matrix

Description:
Sum the elements of a square matrix that lie on either the major diagonal or anti-diagonal. 
(Include all elements that are part of either of the diagonals).

%}

clear all
close all

A = [1 2 3 4 5 6 7
     1 2 3 4 5 6 7
     1 2 3 4 5 6 7
     1 2 3 9 5 6 7
     1 2 3 4 5 6 7
     1 2 3 4 5 6 7
     1 2 3 4 5 6 7];
     
p = sum(diag(A));
q = sum(diag(flipud(A)));
  
l = length(A);

if (rem(l,2) == 0)
    del = 0;
else
    j = (l/2) + 0.5;
    del = A(j,j);
end

y = (p+q)-del;
