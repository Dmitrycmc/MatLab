function x = Task4(A, y)
    [L, U, P] = lu(A);
    
    x = inv(U) * inv(L) * P * y;
end

