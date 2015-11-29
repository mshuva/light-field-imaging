%% Format the data matrix for PCA. data is a 3D array. The first index
% refers to the channel (R,G,B). The second index contains all the pixels
% for that image. The third index refers to the image.

function data = dataPrep(image_array)
    n = length(image_array);
    num_elements = numel(image_array);
    
    A = image_array{1}; % get first image
    image = reshape(permute(A,[3 1 2]),3,size(A,1)*size(A,2)); % reshape first image
    data = image;
    
    for i = 2:n
        A = image_array{i};
%         image = image(:);
        image = reshape(permute(A,[3 1 2]),3,size(A,1)*size(A,2));
%         data(:,:,i) = image;
        data = horzcat(data,image);
    end
end