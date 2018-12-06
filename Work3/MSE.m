function res = MSE(img1, img2)
   [Y, X, Z] = size(img1);
   [Y1, X1, Z1] = size(img2);
   if Y ~= Y1 || X ~= X1 || Z ~= Z1
       res = "Images' sizes don't match!";
   else
       E = img1 - img2;
       SE = sum(sum(sum(E.^2)));
       res = SE /(X * Y * Z);
   end
end

