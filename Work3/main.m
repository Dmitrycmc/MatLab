clear;
close all;
clc;
  
L = 255;
fileName = 'at.bmp';

% Origin & gray
fig1 = figure('name', 'Origin & gray');   

originImage = imread(fileName);
subplot(1, 2, 1), imshow(originImage), title('a. Origin');

grayImage = rgb2gray(originImage);
subplot(1, 2, 2), imshow(grayImage), title('b. Gray shades');


% Mirror
fig2 = figure('name', 'Mirror');   

flipedVerImage = flip(originImage, 1);
subplot(1, 2, 1), imshow(flipedVerImage), title('a. Vertical');

flipedHorImage = flip(originImage, 2);
subplot(1, 2, 2), imshow(flipedHorImage), title('b. Horizontal');

% Rotate
fig3 = figure('name', 'Rotate');   

rotated90Image = imrotate(originImage, 90);
subplot(2, 2, 1), imshow(rotated90Image), title('a. 90deg');

rotated180Image = imrotate(originImage, 180);
subplot(2, 2, 2), imshow(rotated180Image), title('b. 180deg');

rotated270Image = imrotate(originImage, 270);
subplot(2, 2, 3), imshow(rotated270Image), title('c. 270deg');

rotated30Image = imrotate(originImage, 30, 'bilinear','loose');
subplot(2, 2, 4), imshow(rotated30Image), title('d. 30deg');

% Median filter
fig4 = figure('name', 'Median filter');
medianFilteredImage = medfilt2(grayImage, [7 7]);
imshow(medianFilteredImage), title('Median filter');

% Gaussian blur
fig5 = figure('name', 'Gaussian blur');   
sigma = 5;    
gaussianBluredImage = imgaussfilt(originImage, sigma);
imshow(gaussianBluredImage), title('Gaussian blur');

% Gradient
fig6 = figure('name', 'Gmag');
[Gmag, Gdir] = imgradient(grayImage);
subplot(1, 2, 1), imshow(Gmag), title('a. Gmag');
subplot(1, 2, 2), imshow(Gdir), title('b. Gdir');

% Edges
fig7 = figure('name', 'Edges');
edgesImage = edge(grayImage, 'Sobel');
imshow(edgesImage), title('Edges');

% Metricks
MSE(grayImage, medianFilteredImage, L)

PSNR(grayImage, medianFilteredImage, L)

SSIM(grayImage, medianFilteredImage, L)

MSSIM(grayImage, medianFilteredImage, L)

