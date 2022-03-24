function output = highpass(f,A)

shifted_f = fftshift(f);
output = zeros(1,length(f));
for n = 1:length(f)
    if (A > abs(shifted_f(n)))
        output(n) = 1;
    else
        output(n) = 0;
    end
end

