% Sonu Sharma, EXTC-BE-B, B2B, 729
clear;
A = imread('E:\Sonu Sharma\Documents\MATLAB\IMAGE PROCESSING\Morphological Segmentation\shape.jpg');

subplot(2,5,1)
imshow(A);
title('Original Image');

A = rgb2gray(A);
A = double(A);

[r, c] = size(A);
t = [-2 -1 0 1 2 1 0 -1];
for k = 0:7
    P = [t(mod(k,8)+1),t(mod(k+1,8)+1),t(mod(k+2,8)+1); t(mod(k+7,8)+1),0,t(mod(k+3,8)+1); t(mod(k+6,8)+1),t(mod(k+5,8)+1),t(mod(k+4,8)+1)];
    for i = 2:r-2
        for j = 2:c-2
            Sp(i,j) = A(i-1,j-1)*P(1) + A(i-1,j)*P(2) + A(i-1,j+1)*P(3) + A(i,j-1)*P(4) + A(i,j)*P(5) + A(i,j+1)*P(6) + A(i+1,j-1)*P(7) + A(i+1,j)*P(8) + A(i+1,j+1)*P(9); 
        end
    end
    subplot(2,5,3+k)
    imshow(uint8(Sp));
    title(sprintf('Output for mask = \n%s\n%s\n%s', num2str(P(1,:)), num2str(P(2,:)), num2str(P(3,:))));
end
