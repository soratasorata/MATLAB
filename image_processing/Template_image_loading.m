clc; clearvars; close all;

%% Load image
source_path = 'Image/source/';
result_path = 'Image/result/symetrie/';
image       = 'img_08';

% [p, n, e] =  fileparts('Image/source/img_01')
% img1 = imread([source_path image ext]);
img = my_imread('Image/source/img_08');

%% Treatement
imshow(img);