function [D_n] = derivative_e(e)
    n = length(e);
    if (n>1)
        D_n = e(n) - e(n-1);
    else
        D_n = e(1);
    end
end