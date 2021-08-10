function [summa, index] = max_sum(m,n)
if(n <= size(m,2))
v = zeros(1,n);
for i = 1:size(m,2)- n+1  
    tmp = m(i:i+n-1);
    tmp2 = cumsum(tmp);
    v(1,i) = tmp2(end)  
end
summa = max(v);
index2 = find(v == max(v))
index = index2(1,1);
else
    summa  = 0;
    index = -1;
end