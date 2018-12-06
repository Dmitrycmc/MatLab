function res = quadByRect(p, h)
    if length(p) < 2
        res = 0;
    else
        sumVal = sum(p(2 : end - 1)) + (p(1) + p(end)) / 2;
        res = h * sumVal;
    end
end

