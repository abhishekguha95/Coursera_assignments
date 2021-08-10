function numfreeze = freezing(m)
a = m(m < 32);
b = size(a);
numfreeze = b(1,2);