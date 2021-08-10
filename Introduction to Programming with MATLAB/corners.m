function [tl,tr,bl,br] = corners (inp)
s = size(inp);
out = [inp(1,1), inp(1,s(1,2)), inp(s(1,1),1), inp(s(1,1),s(1,2))];
tl = out(1,1);
tr = out(1,2);
bl = out(1,3);
br = out(1,4);
end
