function res = normC(A)
    [X, Y] = size(A);
    N = X * Y;
    vec = reshape(A, [1, N]);
    res = norm(vec, inf);
end

