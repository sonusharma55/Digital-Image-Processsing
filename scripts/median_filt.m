% Sonu Sharma, EXTC-BE-B, B2B, 729
clear;
A = imread('E:\Sonu Sharma\Documents\MATLAB\IMAGE PROCESSING\img2.jpg');

A = rgb2gray(A);
subplot(1, 3, 1);
imshow(A);
title('Original Gray Scale Image');

A = imnoise(A, 'salt & pepper');
subplot(1, 3, 2);
imshow(A);
title('Image with Salt & Pepper noise');

A = double(A);

[r, c] = size(A);
for i = 2:r-1
    for j = 2:c-1
        temp = [A(i-1,j-1), A(i-1,j), A(i-1,j+1), A(i,j-1), A(i,j), A(i,j+1), A(i+1,j-1), A(i+1,j), A(i+1,j+1)];
        temp = sort(temp);
        S(i, j) = temp(5);
    end
end
subplot(1, 3, 3);
S = uint8(S);
imshow(S);
title('Median filtering to remove Salt & Pepper noise');