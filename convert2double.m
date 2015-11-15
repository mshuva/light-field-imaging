%% This function converts all the uint8 images to doubles in order to form 
%  the data matrix. Resize image to 0.25 the original size.

function imDouble = convert2double(image_array)
	for i = 1:length(image_array)
	    image2D = im2double(rgb2gray(image_array{i}));
        imDouble{i}= imresize(image2D,0.25);
	end
end