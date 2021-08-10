function dist = get_distance(a,b)

%read the excel file
[~,~,temp1] = xlsread('Distances.xlsx');

%obtain the cities
a = string(a);
b = string(b);

%getting size for loop limits
[m n] = size(temp1);

%initialize r and c variable
%if in the loop given city is not in excel, then
%r or c (depending on which city is non existant) doesnt get any value 
%so initialization is needed here
 r = 1;
 c = 1;

%finding the distance element of the cell array corresponding to the cities asked
for i = 1:m
    if string(temp1{i,1}) == a
        r = i;
    end
end
for j = 1:n
    if string(temp1{1,j}) == b
        c = j;
    end
end

%temp variable of cell array element for catering of non existant city condition
dist2 = temp1{r,c};

%if city non existant, r or c value remains 1, giving some cityname as
%cell array element instead of distance, so using the datatype of dist2 
%condition created to return distance as '-1' for nonexistang cities 
%instead of some cityname, where loop stopped
class(dist2);

if ischar(dist2)
    dist = -1;
else
    dist = dist2;
end


