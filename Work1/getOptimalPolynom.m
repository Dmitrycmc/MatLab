function [res, degree] = getOptimalPolynom(X, Y, K, f, lambda, grid)
    polynoms = {10};
    discrepancies = zeros(1, 10);

    minDiscrepancy = inf;
    for i = 1 : 10
        p = polyfit(X, Y, i - 1);
        polynoms{i} = polyval(p, grid);
        discrepancy = getDiscrepancy(grid, polynoms{i}, K, f, lambda);
        discrepancies(i) = discrepancy;
        if (discrepancy < minDiscrepancy)
            minDiscrepancy = discrepancy;
        end
    end

    for i = 1 : 10
        if (discrepancies(i) == minDiscrepancy)
            res = polynoms{i};
            degree = i - 1;
            break;
        end
    end
end

