% Sonu Sharma, EXTC-BE-B, B2B, 729
clear;

A = imread('coins.png');
A = im2double(A);
figure;
imshow(A);
title('Original image');

S = abs(fft2(A));
figure;
imshow(S, []);
title('Original DFT Spectrum');

[r,c] = size(A);
for x = 1:r
    for y = 2:c
        A(x,y) = A(x,y)*(-1)^(x+y);
    end
end

S = abs(fft2(A));
figure;
imshow(S, []);
title('DFT Spectrum after shift');

S = log(1+S);
figure;
imshow(S, []);
title('DFT Spectrum after shift & log compression');