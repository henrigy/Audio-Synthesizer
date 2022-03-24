function output = BSF(f,A,B)

shifted_f = fftshift(f);
output = zeros(1,length(f));
for n = 1:length(f)
    if (A > abs(shifted_f(n))) && (abs(shifted_f(n)) > B)
        output(n) = 1;
    else
        output(n) = 0;
    end
end