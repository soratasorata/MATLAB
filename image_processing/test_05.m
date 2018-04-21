clc; clearvars; close all;

%% Load image
source_path = 'source/';
result_path = 'result/symetrie/';
number = [1:7 9:11];
% ext = '.png';
ext = '.jpg';
HV = [0 0; 0 1; 1 0; 1 1];

%% Treatement
for i = number
    image = ['img_0' num2str(i)];
    img1 = imread([source_path image ext]);
    
    for j = 1:length(HV)
        % Sym
        data = my_img_inverse(img1,HV(j,1),HV(j,2));
        
        % Concatenate + sym
        data_symH = [data       my_img_inverse(data,0,1)];
        data_symV = [data_symH; my_img_inverse(data_symH,1,0)];
        
        % Display & save
        figure(1)
        imshow(data_symV);
        res_path = [result_path 'sym_' image '_H' num2str(HV(j,1)) '_V' num2str(HV(j,2))];
        saveas(figure(1),res_path, ext(2:end));
    end
end

