function [f_nonl] = f_nonl(e,a,d)

    if (abs(e) > d)
        f_nonl = sign(e)*(abs(e))^a;
    elseif (abs(e) <= d)
        f_nonl = e*d^(a-1);
    else
        f_nonl = 0;
    end
    
end