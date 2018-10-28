% Sonu Sharma, EXTC-BE-B, B2B, 729
clear;
A = imread('E:\Sonu Sharma\Documents\MATLAB\IMAGE PROCESSING\img2.jpg');

A = rgb2gray(A);
A = double(A);
a = input('Enter the value of a : ');
b = input('Enter the value of b : ');
s1 = input('Enter the value of s1 : ');
s2 = input('Enter the value of s2 : ');

L = 256;
alpha = s1/a;
beta = (s2-s1)/(b-a);
gamma = (L-1-s2)/(L-1-b);
 
[r,c] = size(A);
for i = 1:r
    for j = 1:c
        if (A(i,j) <= a)
            s(i,j) = alpha*A(i,j);
        elseif (A(i,j) > a && A(i,j) <= b)
            s(i,j) = s1 + beta*(A(i,j)-a);
        elseif (A(i,j) > b && A(i,j) <= 255)
            s(i,j) = s2 + gamma*(A(i,j)-b);
        end
    end
end

subplot(2,2,1);
A = uint8(A);
imshow(A);
title('Original image');
subplot(2,2,2);
imhist(A);
title('Histogram of original image');
 
 
subplot(2,2,3);
s = uint8(s);
imshow(s);
title('Contrast streched image');
subplot(2,2,4);
imhist(s);
title('Histogram of contrast streched image');
