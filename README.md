# light-field-imaging
Code for Light Field Imaging project with Prof. Balzano.

Steps to run code:

imArr = load_image('LF_Images_9-12-15/','*.JPG');
imArr{1} = imrotate(imArr{1},-90);
imDouble = convert2double(imArr);
data = dataPrep(imDouble);
[projection, components, variance] = pca2(data);