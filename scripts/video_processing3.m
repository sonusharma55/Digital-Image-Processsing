%To study video processing and to distinguish between background and foreground of a given video
xyloObj = VideoReader('E:\Sonu Sharma\Desktop\vid2.mp4');

nFrames = (xyloObj.NumberOfFrames);
vidHeight = xyloObj.Height;
vidWidth = xyloObj.Width;
 
e = zeros(240,320);
colorFrame = read(xyloObj,[1 141]);
 
  for f = 1:141
      b = rgb2gray(colorFrame(:,:,:,f));
      b1= rgb2gray(colorFrame(:,:,:,142-f));
      for i=1:240
          for j=1:320
              if i>60 && j>80
                  e(i,j)=b1(i,j);
              else
                  e(i,j)=b(i,j);
              end
          end
      end
      imshow(uint8(e));
  end
