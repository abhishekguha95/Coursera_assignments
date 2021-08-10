function valid = valid_date(year, month, day)
valid = false;
%checking for scalar inputs for day,month, year
if isscalar(year) == 1 && isscalar(month) == 1 && isscalar(day) == 1
%checking for 31 day months
if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12
    if day > 0 && day < 32
        valid = true;
    end
%checking for 30 day months
elseif month == 4 || month == 6 || month == 9 || month == 11 
        if day > 0 && day < 31
            valid = true;
        end
%checking for february : leap year conditions
elseif month == 2
            if mod(year,4) ~= 0         %if year not divisible by 4
                if day < 29             %common year
                    valid = true;
                end
            elseif mod(year,100) ~= 0   %elseif year not divisible by 100
                 if day <= 29           %leap year  
                     valid = true;
                 end
            elseif mod(year,400) ~= 0   %elseif year not divisible by 400
                if day < 29             %common year
                    valid = true;
                end
            else
                if day <= 29            %else
                    valid = true;       %leap year
                end
            end
else
    valid = false;
end
else
    valid = false;
end      