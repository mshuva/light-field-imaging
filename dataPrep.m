%% Format the data matrix for PCA

function data = dataPrep(image_array)
    n = length(image_array);
    num_elements = numel(image_array);
    
    for i = 1:n
        image = image_array{i};
        image = image(:);
        data(:,i) = image;
    end
end