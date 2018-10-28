% Sonu Sharma, EXTC-BE-B, B2B, 729
clear;
A = imread('E:\Sonu Sharma\Documents\MATLAB\IMAGE PROCESSING\meluha (2).jpg');

A = rgb2gray(A);
subplot(1, 2, 1);
imshow(A);
title('Original Gray Scale Image');

A = double(A); %gives wrong o/p on doing mathematical operation in uint8

a = input('Enter how much of original image to retain (>1), a = ');
x = 9*a - 1;
w = [-1,-1,-1;-1,x,-1;-1,-1,-1]/9;
[r, c] = size(A);
for i = 2:r-1
    for j = 2:c-1
        S(i, j) = A(i-1,j-1)*w(1,1) + A(i-1,j)*w(1,2) + A(i-1,j+1)*w(1,3) + A(i,j-1)*w(2,1) + A(i,j)*w(2,2) + A(i,j+1)*w(2,3) + A(i+1,j-1)*w(3,1) + A(i+1,j)*w(3,2) + A(i+1,j+1)*w(3,3);
    end
end
S = uint8(4*S);
subplot(1, 2, 2);
imshow(S);
title(sprintf('High Boost filtering to given image for a = %f', a));