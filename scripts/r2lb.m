A = imread('E:\Sonu Sharma\Desktop\aa5-croped.jpg');
[r,c,d] = size(A);
R = A(1,1,1);
G = A(1,1,2);
B = A(1,1,3);
% A = double(A);
for i = 1:r
    for j = 1:c
        if (((A(i,j,1) <= (R + 50)) && (A(i,j,1) >= (R - 50)) ) && ((A(i,j,2) <= (G + 50)) && (A(i,j,2) >= (G - 50))) && ((A(i,j,3) <= (B + 50)) && (A(i,j,3) >= (B - 50))))
            A(i,j,1) = 0;
            A(i,j,2) = 127;
            A(i,j,3) = 255;
        end
    end
end
imshow(uint8(A));