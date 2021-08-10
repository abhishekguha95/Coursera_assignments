function coded = caesar(s,n)

%making char into double
d = double(s)

%giving the shift
d1 = d + n

%formula for determinig how many times to run the loop
%if n is btn 0 and 95, i=1, if n is btn 96 and 190, i=2 and so on
%absolute value of n is taken to also account for negative shift and so
%that we can use the same loop for lower limit of 32
k = double(int8(abs(n)/95) + 1)
for i = 1:k
    fprintf('iteration: %d',i)
    %checking and replacing upper limit overflow over 126 and wrapping
    %around the value to the start of the array, ie value 32
     d1(d1>126) = d1(d1>126) - 95
     %checking and replacing lower limit overflow below 32 and wrapping
     %around the value to the end of array, ie value 126
     d1(d1<32) = d1(d1<32) + 95
end    

coded = char(d1)