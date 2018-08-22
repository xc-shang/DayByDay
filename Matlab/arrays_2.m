format compact
a = [7 9 5; 6 1 9; 4 3 2]
a(:, :, 2) = [1 2 3; 4 5 6; 7 8 9]
b = rand(4, 3, 2)
length(a)
iscolumn(a)
ismatrix(a)
rot90(a)