% Clear command and workspace
clc;
clear;
rng('default');  % For reproducibility

% Loading 'diagonal.png'
diagonalImage = imread('data/diagonal.png');

% Filter for detecting 45 degree lines
Filter = [ 1 -1  0; -1  0  1; 0  1 -1];

% Applying filter of diagonalImage
grey_diagonalImage = rgb2gray(diagonalImage);
filterResult = conv2(grey_diagonalImage, Filter);

% Display Main image and filtered 
subplot(1,2,1); 
imshow(grey_diagonalImage); 
title('Main');

subplot(1,2,2); 
imshow(filterResult); 
title('Filtered');
