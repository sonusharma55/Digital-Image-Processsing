% To study video processing and to perform thresholding operation a given video in MATLAB.

v = VideoReader('E:\Sonu Sharma\Desktop\vid2.mp4');
t = read(v,1);
I = rgb2gray(t);
[m, n]=size(I);
 
vid = zeros(m, n, v.numberofframes);
 
n = v.numberofframes;
t = 120;
for i=1:n
    temp = rgb2gray(read(v,i));
    temp(temp <= t) = 0;
    temp(temp ~= 0) = 255;
    vid(:,:,i) = temp;
end
implay(vid);
