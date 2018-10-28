A = imread('E:\Sonu Sharma\Pictures\meluha (2).jpg');
A = rgb2gray(A);
[row, column] = size(A);

subplot(1, 2, 1)
imshow(A)
title('Original Gray Scale Image');

for i = 1:row 
    for j = 1:column
        if A(i, j) > 128
            A(i, j) = 255;
        else
            A(i, j) = 0;
        end
    end
end

subplot(1, 2, 2)
imshow(A)
title('Image Thresholding');
