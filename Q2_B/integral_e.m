function [I_n] = integral_e(e)
    n = length(e);
    I_n = 0;
    if (n > 1)
        for i=1:n
            I_n = I_n + e(i);
        end
    else
        I_n = e(1);
    end
end