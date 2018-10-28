% Sonu Sharma, EXTC-BE-B, B2B, 729
I = im2double(imread('cameraman.tif'));
subplot(2,3,1), imshow(I);
title('Original Image');

LEN = 21;
THETA = 11;
PSF = fspecial('motion', LEN, THETA);
blurred = imfilter(I, PSF, 'conv', 'circular');
subplot(2,3,2), imshow(blurred)
title('Simulated Blur')

noise_mean = 0;
noise_var = 0.0001;
blurred_noisy = imnoise(blurred, 'gaussian', noise_mean, noise_var);
subplot(2,3,3), imshow(blurred_noisy)
title('Simulated Blur and Noise')

estimated_nsr = 0;
wnr2 = deconvwnr(blurred_noisy, PSF, estimated_nsr);
subplot(2,3,4), imshow(wnr2)
title('Restoration of Blurred, Noisy Image Using NSR = 0')

estimated_nsr = noise_var / var(I(:));
wnr3 = deconvwnr(blurred_noisy, PSF, estimated_nsr);
subplot(2,3,6), imshow(wnr3)
title('Restoration of Blurred, Noisy Image Using Estimated NSR');