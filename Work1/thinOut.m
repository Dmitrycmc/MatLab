function res = thinOut(A)
    if ~isEven(length(A))
        A = [A, 0];
    end
    M = reshape(A, 2, length(A) / 2);
    res = M(1, :);
end

