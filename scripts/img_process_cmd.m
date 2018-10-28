A=imread('toysnoflash.png');
subplot(4,4,1);
imshow(A);
title('original image');
 
B=imcomplement(A);
subplot(4,4,2);
imshow(B);
title('negative image');
 
subplot(4,4,3);
E=(rgb2gray(A));
imshow(E);
title('gray scaled image');
 
subplot(4,4,4);
imshow(imadjust(E));
title('adjusted gray scale image');
 
C=(imresize(A,5.0));
subplot(4,4,5);
imshow(C);
title('resized image');
 
subplot(4,4,5);
imshow(im2bw(A));
title('BW image')
 
D=imrotate(A,60);
subplot(4,4,6)
imshow(D);
title('rotated image');
 
subplot(4,4,7);
imhist(E);
title('histogram of image');
 
subplot(4,4,8);
F=(im2single(A));
imshow(F);
title('single precesion image');
 
subplot(4,4,9)
imshow(im2double(A));
title('double precesion image');
 
subplot(4,4,10);
D=imnoise(A,'gaussian');
imshow(D);
title('Gaussian noise image');
 
subplot(4,4,11);
D=imnoise(A,'poisson');
imshow(D);
title('Poisson noise image');
 
subplot(4,4,12);
imshow(imcrop(A,[60 90 100 40]));
title('Crop')
 
subplot(4,4,13);
imshow(imadd(A,22))
title('Add')
 
subplot(4,4,14);
imshow(imsubtract(A,50))
title('Subtract')
 
subplot(4,4,15);
imshow(immultiply(A,1.5));
title('Multiply')
 
subplot(4,4,16);
imshow(imdivide(A,2))
title('Divide')
