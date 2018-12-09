function res = nextRoot(x)
    bessel0 = @(x) besselj(0, x);
    eps = 0.1;
    
    while (true)
        root = fzero(bessel0, x);
        if (root > x) 
            res = root; 
            break; 
        end
        x = x + eps;
    end
end

