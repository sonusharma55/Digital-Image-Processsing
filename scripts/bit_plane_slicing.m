% Sonu Sharma, EXTC-BE-B, B2B, 729

A = imread('E:\Sonu Sharma\Documents\MATLAB\IMAGE PROCESSING\img3-rs10.jpg');
A = rgb2gray(A);

subplot(3, 3, 1);
imshow(A);
title('Original Gray Scale Image');

for i = 1:8
    x = bitget(A, i);
    x = logical(x);
    subplot(3, 3, i+1);
    imshow(x);
    title(sprintf('Bit Plane : %d', i))
end