function [Y_interp, loops, optimalDegree] = getSolution(K, f, lambda, a, b, y0, N, eps, grid)
    % get grid sulution
    [X, Y, loops] = solveVolterra(K, f, lambda, a, b, y0, N, eps);

    % select 10 points
    X = thinOut(X);
    Y = thinOut(Y);

    % get optimal interp polynom
    [Y_interp, optimalDegree] = getOptimalPolynom(X, Y, K, f, lambda, grid);
end

