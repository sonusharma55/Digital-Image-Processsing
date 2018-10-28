% To study video processing and to extract certain number of frames from a given video in MATLAB.
readerobj = VideoReader('E:\Sonu Sharma\Desktop\vid1.mp4');
numFrames = get(readerobj,'numberOFFrames');
for k = 1:numFrames
    if(mod(k,100) == 0)
        figure
        videoframe = read(readerobj,k);
        imwrite(videoframe, strcat('E:\Sonu Sharma\Desktop\frames\', num2str(k), '.jpg'));
        imshow(videoframe);
        title(strcat('Retriving frame #', num2str(k), ' of ', num2str(numFrames)))
        drawnow()
    end
end
