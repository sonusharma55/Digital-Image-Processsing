% Sonu Sharma, EXTC-BE-B, B2B, 729
clear;
A = imread('E:\Sonu Sharma\Desktop\lena.png');
B = imread('E:\Sonu Sharma\Desktop\rect1.png');

%A = rgb2gray(A);
subplot(3,3,1)
imshow(A)
B = rgb2gray(B);
subplot(3,3,2)
imhist(A);
%imshow(B)

A = logical(double(A));
B = logical(B);


%C = A & B;

subplot(3,3,3)
imshow(uint8(A));