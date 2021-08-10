function r = under_age(age, limit)
 r = true;
if(nargin == 2)
    r = true;
    if(age < limit)
        r = true;
    else
        r = false;
    end
else 
    if(age < 21)
        r = true;
    else
        r = false;
    end
end