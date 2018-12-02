function result = Task2(A)
     firstAdd = max(diag(A' * A));
     secondAdd = min(min(A))^3;
     
     result = firstAdd - secondAdd;
end

