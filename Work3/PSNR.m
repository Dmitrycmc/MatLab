function res = PSNR(img1, img2, L)
    mse = MSE(img1, img2, L);
    if (isa(mse,'string'))
        res = mse;
    else
        res = 10 * log10(L * L / mse); 
    end
end

