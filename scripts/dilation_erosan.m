% Sonu Sharma, EXTC-BE-B, B2B, 729
A = imread('blobs.png');

subplot(1,3,1)
imshow(A)
title('Original image');

[r, c] = size(A);
SE = [1;1;1];
[rm, cm] = size(SE);

for i = 2:r-2
    for j = 2:c
        temp = A(i:(i+rm-1),j:(j+cm-1));
        temp2 = false;
        for k = 1:length(SE)
            temp3 = temp(k) == SE(k);
            temp2 = temp2 | temp3;
        end
        S(i,j) = temp2;
    end
end

subplot(1,3,2)
imshow(S)
title('Dilated image');

for i = 2:r-2
    for j = 2:c
        temp = A(i:(i+rm-1),j:(j+cm-1));
        temp2 = true;
        for k = 1:length(SE)
            temp3 = temp(k) == SE(k);
            temp2 = temp2 & temp3;
        end
        S(i,j) = temp2;
    end
end

subplot(1,3,3)
imshow(S)
title('Eroted image');
