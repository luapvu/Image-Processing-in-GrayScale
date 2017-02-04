addpath(genpath('functions'));
addpath(genpath('Images'));

%Read in both images
image1 = readImg('mugshot1.JPG'); 
image2 = readImg('mugshot2.JPG');
%Calls Calculation function which converts images to gray scale and also
%outputs the difference between the two images
[subtractedImage, grayMugshot1, grayMugshot2] = imgDifference(image1, image2);

%Write the images to 3 output files
writeImg(grayMugshot1, 'grayMugshot1.JPG');
writeImg(grayMugshot2, 'grayMugshot2.JPG');
writeImg(subtractedImage, 'subtractedImgOutput.JPG');

%Display these 3 output files for user to view
figure; imshow('mugshot1.JPG');
title('Colored Mugshot 1');
figure; imshow('mugshot2.JPG');
title('Colored Mugshot 2');

figure; imshow('grayMugshot1.JPG');
title('Gray Scale Mugshot 1');

figure; imshow('grayMugshot2.JPG');
title('Gray Scale Mugshot 2');

figure; imshow('subtractedImgOutput.JPG');
title('Pixel difference between imgs 1 and 2');
