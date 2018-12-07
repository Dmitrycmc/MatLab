function res = MSE(img1, img2, L)
    [Y1, X1, Z1] = size(img1);
    [Y2, X2, Z2] = size(img2);

    if (Z1 == 1 && Z2 == 3)
         img2 = rgb2gray(img2);
    elseif (Z1 == 3 && Z2 == 1)
        img1 = rgb2gray(img1);
    end

    if (Y1 ~= Y2 || X1 ~= X2 || Z1 ~= Z2)
        res = "Images' sizes don't match!";
    else
        img1 = im2double(img1) * L;
        img2 = im2double(img2) * L;
        E = img1 - img2;
        SE = sum(sum(sum(E.^2)));
        res = SE /(X1 * Y1 * min([Z1, Z2]));
    end
end

