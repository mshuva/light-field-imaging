%% This function converts all the uint8 images to doubles in order to form 
%  the data matrix 

function data = convert2double(image_array)
	num_image = length(image_array);
	for i = 1:num_image
	    imDouble = im2double(image_array{i});
	end
end