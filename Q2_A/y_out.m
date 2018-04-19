function [y_out] = y_out(u,y,m_paper)
    k = length(y);
    if (k > 1)
        if (m_paper == 80)
            y_out = 0.8187*y(k) + 0.2719*u(k-1);
        elseif (m_paper == 100)
            y_out = 0.7787*y(k) + 0.4484*u(k-1);
        elseif (m_paper == 120)
            y_out = 0.7165*y(k) + 0.7087*u(k-1);
        end
    else
        y_out = 0;     
    end
end