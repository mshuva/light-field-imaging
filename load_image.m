%% imgPath should be in the format '/insert_path_here/'
%  imArr = load_image('LF_Images_9-12-15/','*.JPG');
function imArr = load_image(imgPath,imgType)
	images  = dir([imgPath imgType]);
	for idx = 1:length(images)
	   imArr{idx} = imread([imgPath images(idx).name]);
	end
end