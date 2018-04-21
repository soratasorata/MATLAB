clc; clearvars; close all;

%% Load image
N = 6;
source_path = 'source/';
result_path = 'result/';
number = 8;
ext = '.png';
% ext = '.jpg';

%% Treatement
for i = number
    image = ['img_0' num2str(i)];
    img1 = imread([source_path image ext]);
    for Ni =2:8
        img2 = imresize(img1,1/Ni);
        data = my_imgfilterN(img2,Ni);
        
        % Display & save
        figure(1)
        I = imshow(data);
        res_path = [result_path 'res_' image '_' num2str(Ni)];
        saveas(figure(1),res_path, ext(2:end));
    end
end