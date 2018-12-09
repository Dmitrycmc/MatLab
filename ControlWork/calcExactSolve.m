function [res, loops] = calcExactSolve(R, T, a, A, r0)
    bessel0 = @(x) besselj(0, x);
    bessel1 = @(x) besselj(1, x);
    eps = 0.01;
    
    
    k = 1;
    sum = 0;
    nu = 0;
    while (true) 
        nu = nextRoot(nu);
        some = (r0/(a * nu))^2;
        val = (bessel0(nu/r0 * R) / (nu^3 * bessel1(nu))) .* (T + some * (exp(-T/some) - 1));
        
        sum = sum + val;
        if (normC(val) < eps)
           break;
        end
        k = k + 1; 
    end

    loops = k;
    res = 2 * A * r0^2 * sum / a^2;
end

