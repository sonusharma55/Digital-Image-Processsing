% Sonu Sharma, EXTC-BE-B, B2B, 729
A = imread('blobs.png');

subplot(1,3,1)
imshow(A)
title('Original image');

subplot(1,3,2)
B = erosion_fun(A);
B = dilation_fun(B);
imshow(B)
title('Opening of original image');

subplot(1,3,3)
B = dilation_fun(A);
B = erosion_fun(B);
imshow(B)
title('Closing of original image');
