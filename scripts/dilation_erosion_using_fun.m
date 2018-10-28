% Sonu Sharma, EXTC-BE-B, B2B, 729
A = imread('blobs.png');

subplot(1,3,1)
imshow(A)
title('Original image');

subplot(1,3,2)
imshow(logical(dilation_fun(A)))
title('Dilated image');

subplot(1,3,3)
imshow(erosion_fun(A))
title('Eroted image');
