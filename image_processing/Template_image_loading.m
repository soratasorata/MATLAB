clc; clearvars; close all;

%% Load image
source_path = 'Image/source/';
result_path = 'Image/result/symetrie/';
image       = 'img_01';
% ext = '.png';
ext = '.jpg';

img1 = imread([source_path image ext]);

%% Treatement
imshow(img1)