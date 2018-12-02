function [count, maxVal, minVal] = Task3(n, a, b, eps)
    M = rand(n) * (b - a) + a;
    
    avg = mean(mean(M));
    maxVal = max(max(M));
    minVal = min(min(M));
    
    D = abs(M - avg);
    count = sum(sum(D < eps));
end

