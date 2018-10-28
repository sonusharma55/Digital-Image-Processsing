% Sonu Sharma, EXTC-BE-B, B2B, 729
clear;
A = imread('E:\Sonu Sharma\Documents\MATLAB\IMAGE PROCESSING\Unequalized.jpg');

subplot(1, 3, 1);
imshow(A);
title('Original Gray Scale Image');

[r, c] = size(A);
nr = zeros(1, 256);

for i = 1:r
    for j = 1:c
        for k = 1:256
            if A(i, j) == k - 1
                nr(k) = nr(k) + 1;
            end
        end
    end
end

L = length(nr);
Gl = 0:L - 1;

subplot(1, 3, 2);
stem(Gl, nr, 'marker', 'o');
axis([0, L - 1, 0, 10]);
title('Original Histogram');

for i = 1:L
    if (nr(i) > 0)
        rmin = i - 1;
        break;
    end
end

for i = 1:L
    if (nr(L + 1 - i) > 0)
        rmax = L - i;
        break;
    end
end

Smax = L - 1;
Smin = 0;
m = (Smax - Smin)/(rmax - rmin);

S = [];
for i = 1:L
    temp = round(m * (i - 1 - rmin) + Smin);
    if temp < 0
        temp = 0;
    elseif temp > L - 1
        temp = L - 1;
    end
    S(i) = temp;
end

ns = zeros(1,L);
for i = 1:L
    for j = 1:L
        if i - 1 == S(j)
            ns(i) = ns(i) + nr(j);
        end
    end
end

subplot(1, 3, 3);
stem(Gl, ns, 'marker', 'o')
axis([0, L - 1, 0, 10]);
title('Stretched Histogram')

