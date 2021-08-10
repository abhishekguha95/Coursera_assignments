function output = echo_gen(input, fs, delay, amp)
y = input;
Fs = fs;
y2 = zeros((size(y,1) + round(delay*Fs)),1);
for i = 1:length(y)
    y2(i + round(delay*Fs)) = amp*y(i);
end
% length(y2)
% length(y)
L = length(y2) - length(y);
A = [y; zeros(L,1)];
%size(A)
output = y2+A;
if max(abs(output)) > 1
        output = output./max(abs(output));
end
