% Sonu Sharma, EXTC-BE-B, B2B, 729
clear;
A = imread('blobs.png');

subplot(2,3,1)
imshow(A);
title('Original image');

A = double(A);

[r,c] = size(A);
H = [-1 -1 -1; 2 2 2; -1 -1 -1];
for i = 2:r-2
    for j = 2:c-2
        Sh(i,j) = A(i-1,j-1)*H(1,1) + A(i-1,j)*H(1,2) + A(i-1,j+1)*H(1,3) + A(i,j-1)*H(2,1) + A(i,j)*H(2,2) + A(i,j+1)*H(2,3) + A(i+1,j-1)*H(3,1) + A(i+1,j)*H(3,2) + A(i+1,j+1)*H(3,3);
    end
end
subplot(2,3,2)
imshow(logical(uint8(Sh)));
title('Horizontal line detection');

V = [-1 2 -1; -1 2 -1; -1 2 -1];
for i = 2:r-2
    for j = 2:c-2
        Sv(i,j) = A(i-1,j-1)*V(1,1) + A(i-1,j)*V(1,2) + A(i-1,j+1)*V(1,3) + A(i,j-1)*V(2,1) + A(i,j)*V(2,2) + A(i,j+1)*V(2,3) + A(i+1,j-1)*V(3,1) + A(i+1,j)*V(3,2) + A(i+1,j+1)*V(3,3);
    end
end
subplot(2,3,3)
imshow(logical(uint8(Sv)));
title('Vertical line detection');

J = [-1 -1 2; -1 2 -1; 2 -1 -1];
for i = 2:r-2
    for j = 2:c-2
        S1(i,j) = A(i-1,j-1)*J(1,1) + A(i-1,j)*J(1,2) + A(i-1,j+1)*J(1,3) + A(i,j-1)*J(2,1) + A(i,j)*J(2,2) + A(i,j+1)*J(2,3) + A(i+1,j-1)*J(3,1) + A(i+1,j)*J(3,2) + A(i+1,j+1)*J(3,3);
    end
end
subplot(2,3,5)
imshow(logical(uint8(S1)))
title(' + 45 deg. line detection');

K=[2 -1 -1; -1 2 -1; -1 -1 2];
for i = 2:r-2
    for j = 2:c-2
        S2(i,j) = A(i-1,j-1)*K(1,1) + A(i-1,j)*K(1,2) + A(i-1,j+1)*K(1,3) + A(i,j-1)*K(2,1) + A(i,j)*K(2,2) + A(i,j+1)*K(2,3) + A(i+1,j-1)*K(3,1) + A(i+1,j)*K(3,2) + A(i+1,j+1)*K(3,3);
    end
end
subplot(2,3,6)
imshow(logical(uint8(S2)));
title(' - 45 deg. line detection');
