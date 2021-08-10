function summa = halfsum(m)
[row clm] = size(m);
t = 0;
for r = 1:row
    for c = 1:clm
        if(r <= c)            
            t = t+ m(r,c);
        end
    end
end
summa = t;