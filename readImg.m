
%Function which reads in an image and converts it to a double and
%standardizes for gray scale
function [ output_img ] = readImg( img )
inputImg = imread(img); % read and store the image
imgDouble = double(inputImg); % cast image to a double
output_img = mat2gray(imgDouble); 

end



