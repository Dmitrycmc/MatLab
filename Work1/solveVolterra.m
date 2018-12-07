function [X, Y, loops] = solveVolterra(K, f, lambda, a, b, y0, N, eps)
    X = linspace(a, b, N);
    oldY = y0(X);

    loops = 0;
    while true
        newY = rightSide(X, oldY, K, f, lambda);
        diff = norm(newY - oldY, inf);

        loops = loops + 1;
        if diff < eps 
            break;
        end

        oldY = newY;
    end

    Y = newY;
end

