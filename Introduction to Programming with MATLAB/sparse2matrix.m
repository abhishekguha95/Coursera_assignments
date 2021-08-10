function matrix = sparse2matrix(cellvec)
%s = size(cellvec,2)
% a = cellvec{1}
% b = cellvec{1}(1,1)
% c = cellvec{1}(1,2)

%making the matrix structure using a ones matrix and setting each element 
%equal to the  default value 
m = cellvec{2}*ones(cellvec{1}(1,1),cellvec{1}(1,2));

%taking given values to be put in the natrix from cell elements 3 and above
%by accessing the array elements 
for i = 3:size(cellvec,2)
    m(cellvec{i}(1,1),cellvec{i}(1,2)) = cellvec{i}(1,3);
end
matrix = m;