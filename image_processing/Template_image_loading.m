clc; clearvars; close all;

%% Constant
source_path = 'Image/source/';
result_path = 'Image/result/symetrie/';
% imnumber    = 1:
% img = my_imread('Image/source/img_08');
% 
% %% Treatement
% imshow(img);

a=dir([source_path '/*.jpg'])
out=size(a,1)