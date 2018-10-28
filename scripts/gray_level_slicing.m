A = imread('E:\Sonu Sharma\Pictures\meluha (2).jpg');
A = rgb2gray(A);
temp = A;
[row, column] = size(A);

subplot(1, 3, 1)
imshow(A)
title('Original Gray Scale Image');

for i = 1:row 
    for j = 1:column
        if (A(i, j) > 100) && (A(i, j) < 200)
            A(i, j) = 255;
        end
    end
end

subplot(1, 3, 2)
imshow(A)
title('Gray level slicing with background');

A = temp;
for i = 1:row 
    for j = 1:column
        if (A(i, j) > 100) && (A(i, j) < 200)
            A(i, j) = 255;
        else
            A(i, j) = 0;
        end
    end
end

subplot(1, 3, 3)
imshow(A)
title('Gray level slicing without background');