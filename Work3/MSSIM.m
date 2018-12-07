function res = MSSIM(img1, img2, L)
    [Y1, X1, Z1] = size(img1);
    [Y2, X2, Z2] = size(img2);
    
    if (Y1 ~= Y2 || X1 ~= X2)
        res = "Images' sizes don't match!";
    elseif (mod(X1, 8) ~= 0 || mod(Y1, 8) ~= 0)
        res = "Images' sizes not devided by 8!";
    else
        if (Z1 == 3)
            img1 = rgb2gray(img1);
        end
        if (Z2 == 3)
            img2 = rgb2gray(img2);
        end
        
        M = X1 / 8;
        N = Y1 / 8;
        
        sum = 0;
        for i = 1 : N
            for j = 1 : M
                sum = sum + SSIM(img1(8 * i - 7: 8 * i, 8 * j - 7: 8 * j), img2(8 * i - 7: 8 * i, 8 * j - 7: 8 * j), L);
            end
        end
        
        res = sum / (N * M);
    end
end

