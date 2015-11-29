%% This function converts all the uint8 images to doubles in order to form 
%  the data matrix. Resize image to 0.25 the original size.

function imDouble = convert2double(image_array)
	for i = 1:length(image_array)
% 	    image = im2double(rgb2gray(image_array{i})); % convert to grayscale
        image = im2double(image_array{i});
        imDouble{i}= imresize(image,0.25);
	end
end