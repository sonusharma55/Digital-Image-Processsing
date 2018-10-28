% Sonu Sharma, EXTC-BE-B, B2B, 729
clear;
A = imread('E:\Sonu Sharma\Documents\MATLAB\IMAGE PROCESSING\img1.jpg');

A = rgb2gray(A);
subplot(1, 3, 1);
imshow(A);
title('Original Gray Scale Image');

A = imnoise(A, 'gaussian',0.1 ,0.02);
subplot(1, 3, 2);
imshow(A);
title('Image with Gaussian noise');

A = double(A);

w = ones(3, 3)/9;
[r, c] = size(A);
for i = 2:r-1
    for j = 2:c-1
        S(i, j) = A(i-1,j-1)*w(1,1) + A(i-1,j)*w(1,2) + A(i-1,j+1)*w(1,3) + A(i,j-1)*w(2,1) + A(i,j)*w(2,2) + A(i,j+1)*w(2,3) + A(i+1,j-1)*w(3,1) + A(i+1,j)*w(3,2) + A(i+1,j+1)*w(3,3);
    end
end
subplot(1, 3, 3);
S = uint8(S);
imshow(S);
title('Low Pass filtering to remove Gaussian noise');