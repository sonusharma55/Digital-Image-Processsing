A = imread('E:\Sonu Sharma\Desktop\tri1.png');
A = rgb2gray(A);
subplot(3,3,1)
imshow(A);
title('Image: A');

B = imread('E:\Sonu Sharma\Desktop\rect1.png');
B = rgb2gray(B);
subplot(3,3,2)
imshow(B);
title('Image: B');

%Arithmetic operations
S = imadd(A,B);
subplot(3,3,3)
imshow(S);
title('Image: A + B');

S = imsubtract(A,B);
subplot(3,3,4)
imshow(S);
title('Image: A - B');

c = 2;
S = immultiply(A,c);
subplot(3,3,5)
imshow(S);
title('Image: A * 2');

S = imdivide(A,c);
subplot(3,3,6)
imshow(S);
title('Image: A / 2');

%Logical operations
S = bitor(A,B);
subplot(3,3,7)
imshow(S);
title('Image: A OR B');

S = bitand(A,B);
subplot(3,3,8)
imshow(S);
title('Image: A AND B');

S = bitcmp(A);
subplot(3,3,9)
imshow(S);
title('Image: NOT A');
