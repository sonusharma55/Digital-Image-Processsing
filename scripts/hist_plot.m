% Sonu Sharma, EXTC-BE-B, B2B, 729
clear;
A = imread('E:\Sonu Sharma\Documents\MATLAB\IMAGE PROCESSING\meluha (2).jpg');

A = rgb2gray(A);
subplot(1, 3, 1);
imshow(A);
title('Original Gray Scale Image');

subplot(1, 3, 2);
imhist(A);
axis([0, 255, 0, 15000]);
title('Histogram using "imhist"');

[r, c] = size(A);
nk = zeros(1, 256);

for i = 1:r
    for j = 1:c
        for k = 1:256
            if A(i, j) == k - 1
                nk(k) = nk(k) + 1;
            end
        end
    end
end

subplot(1, 3, 3);
stem(nk, 'Marker', 'none');
axis([0, 255, 0, 15000]);
title('Hsitogram without "imhist"');
% xlabel('Gray level intensity (rk)')
% ylabel('# of pixels (nk)');
