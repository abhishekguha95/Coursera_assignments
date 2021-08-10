function indices = saddle(M)
s = size(M)
%ind2 = zeros(1,1)
ind2 = [];
for i = 1:s(1,2)
    for j = 1:s(1,1)
        if M(j,i) == max(M(j,:)) && M(j,i) == min(M(:,i))
            ind2 = [ind2;j,i]
        end
    end
   
end
indices = ind2;