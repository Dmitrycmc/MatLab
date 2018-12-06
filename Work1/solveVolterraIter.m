function res = solveVolterraIter(X, oldY, K, f, lambda)
    len = length(X);
    newY = zeros(1, len);
    h = X(2) - X(1);
    
    for i = 1 : len
        x = X(i);
        T = X(1 : i);
        
        integrand = K(x, T) .* oldY(1 : i);
        integralVal = quadByRect(integrand, h);
        
        newYVal = lambda * integralVal + f(x);
        newY(i) = newYVal;
    end
    
    res = newY;
end

