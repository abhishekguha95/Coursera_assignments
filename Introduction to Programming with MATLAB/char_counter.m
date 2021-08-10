function A = char_counter(fname, character)

%converting the input fname to string type
P = string(fname);

%opening the text file with read permission
fid = fopen(P,'rt');

%file opening condition, if file opened, fid is greater than 0
if fid > 0
    
    %using 'scanf and %c' for detecting spaces
     S = fscanf(fid,'%c');
     
     %only for valid inputs,ie. string/char type character 
     if ischar(character)
         A = count(S,character);   %counting no.of occurances
     else
         A = -1;
     end
     fclose(fid);           %closing the text file
else
     A = -1;     
end



