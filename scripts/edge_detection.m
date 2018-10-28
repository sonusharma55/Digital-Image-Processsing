% Sonu Sharma, EXTC-BE-B, B2B, 729
clear;
A = imread('coins.png');

subplot(1,3,1)
imshow(A);
title('Original Image');

A = double(A);

[r, c] = size(A);
P = [-2 -1 0; -1 0 1; 0 1 2];
for i = 2:r-2
    for j = 2:c-2
        Sp(i,j) = A(i-1,j-1)*P(1,1) + A(i-1,j)*P(1,2) + A(i-1,j+1)*P(1,3) + A(i,j-1)*P(2,1) + A(i,j)*P(2,2) + A( i,j+1)*P(2,3) + A(i+1,j-1)*P(3,1) + A(i+1,j)*P(3,2) + A(i+1,j+1)*P(3,3); 
    end
end
subplot(1,3,2)
imshow(uint8(Sp));
title('Prewitt edge detection');

S = [-2 -2 0; -2 0 2; 0 2 2];
for i = 2:r-2
    for j = 2:c-2
        Ss(i,j) = A(i-1,j-1)*S(1,1) + A(i-1,j)*S(1,2) + A(i-1,j+1)*S(1,3) + A(i,j-1)*S(2,1) + A(i,j)*S(2,2) + A(i,j+1)*S(2,3) + A(i+1,j-1)*S(3,1) + A(i+1,j)*S(3,2) + A(i+1,j+1)*S(3,3);
    end
end
subplot(1,3,3)
imshow(uint8(Ss));
title('Sobel edge detection');