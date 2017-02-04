function [ output_img, grayImage1, grayImage2 ] = imgDifference( input_img1, input_img2 )
rotatedImage1 = imrotate(input_img1, 270); % Selfies imported in are initially horizontal
rotatedImage2 = imrotate(input_img2, 270); % so I chose to rotate the images, tho this is unnecessary

% S = sum(A,dim) returns the sum along dimension dim. For example, if A is a matrix, 
%then sum(A,2) is a column vector containing the sum of each row.
grayImage1 = sum(rotatedImage1,3)./3; % used to sum the RGB values for each sample and averages it by dividing by 3
grayImage2 = sum(rotatedImage2,3)./3;

output_img = grayImage1 - grayImage2; % outputs the difference in the two images



end

