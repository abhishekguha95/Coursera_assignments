function dist = get_distance2(a,b)
[~,~,temp1] = xlsread('distance sheet.xlsx')
a = string(a)
b = string(b)
[m n] = size(temp1);
temp1{1,1} = -1;
r = 1;
c = 1;
i = 1;
j = 1;
while (string(temp1{i,1}) ~= a)
    r = i
    i = i+1
end
r = r+1;
while (string(temp1{1,j}) ~= b)
    c = j
    j = j+1
end

dist = temp1{r,c};