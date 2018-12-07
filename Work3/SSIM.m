function res = SSIM(img1, img2, L)
    [Y1, X1, Z1] = size(img1);
    [Y2, X2, Z2] = size(img2);
    
    if (Y1 ~= Y2 || X1 ~= X2)
        res = "Images' sizes don't match!";
    else

        if (Z1 == 3)
            img1 = rgb2gray(img1);
        end
        if (Z2 == 3)
            img2 = rgb2gray(img2);
        end

        k1 = 0.01;  
        k2 = 0.03;
        c1 = L * k1 * (L * k1);
        c2 = L * k2 * (L * k2);
    
        img1 = im2double(img1) * L;
        img2 = im2double(img2) * L;
        
        N = X1 * Y1;
        img1 = reshape(img1, [1, N]);
        img2 = reshape(img2, [1, N]);
        
        avg1 = mean(img1);
        avg2 = mean(img2);
        var1 = var(img1);
        var2 = var(img2);
        cov12 = cov(img1, img2);
        cov12 = cov12(1, 2);
        res = (2 * avg1 * avg2 + c1) * (2 * cov12 + c2) / ((avg1 * avg1 + avg2 * avg2 + c1) * (var1 + var2 + c2));
    end
end

