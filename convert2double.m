%% This function converts all the uint8 images to doubles in order to form 
%  the data matrix.

function imDouble = convert2double(image_array)
	for i = 1:length(image_array)
	    imDouble{i} = im2double(rgb2gray(image_array{i}));
	end
end