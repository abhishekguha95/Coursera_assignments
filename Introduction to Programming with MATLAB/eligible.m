function ad = eligible(v,q)
avg = (v + q)/2 ;
if(v > 88 && q > 88 && avg >= 92)
    ad = true;
else
    ad = false;
end
   
