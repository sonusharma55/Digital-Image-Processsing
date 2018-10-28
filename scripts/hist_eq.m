% Sonu Sharma, EXTC-BE-B, B2B, 729
clear;
A = imread('E:\Sonu Sharma\Documents\MATLAB\IMAGE PROCESSING\meluha (2).jpg');

A = rgb2gray(A);
subplot(2, 3, 2);
imshow(A);
title('Original Gray Scale Image');

subplot(2, 3, 4);
imhist(A);
axis([0, 255, 0, 10000]);
title('Original histogram');

B = histeq(A, 256);
subplot(2, 3, 5);
imhist(B);
axis([0, 255, 0, 10000]);
title('Equalised histogram using "histeq"');

A = double(A);
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

N = sum(nk);
pdf = nk./N;

k = 0;
for i = 1:256 %CDF calculation
    k = k + pdf(i);
    cdf(i) = k;
end

S = cdf * 255;
S = round(S);

%Mapping i/p GL to o/p to get equalised histogram
eq = zeros(1,256);
for i = 1:256 
    for j = 1:256 
        if S(i) == j-1
            eq(j) = eq(j) + nk(i);
            break;
        end
    end
end

subplot(2, 3, 6);
stem(eq, 'Marker', 'none');
axis([0, 255, 0, 10000]);
title('Equalised histogram without "histeq"');
xlabel('Gray level intensity (rk)')
ylabel('# of pixels (nk)');

