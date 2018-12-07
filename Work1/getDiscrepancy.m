function res = getDiscrepancy(X, Y, K, f, lambda)
    right = rightSide(X, Y, K, f, lambda);
    res = norm(Y - right, inf);
end

