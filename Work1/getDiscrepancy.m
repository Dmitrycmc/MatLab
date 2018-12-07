function res = getDiscrepancy(X, Y, K, f, lambda)
    right = rightSide(X, Y, K, f, lambda);
    res = normC(Y, right);
end

