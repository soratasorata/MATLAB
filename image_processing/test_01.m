clc; clearvars; close all;

%% Load image
path = 'source/';
image = 'img_03.jpg';

figure(1)
img1 = imread([path image]);
img1 = imresize(img1,1);
img2 = img1;
img3 = img1;
img4 = img1;
img5 = img1;
img6 = img1;
%% Treatement
f1 = [0 0 0
      0 1 0
      0 0 0];
f2 = [0 1  0
      1 -4 1
      0 1  0];
% f2 = f2/norm(f2);
f3 = [1 1 1
      1 1 1
      1 1 1];
f4 = [1 0  1
      0 1 0
      1 0 1];
f5 = [1 1 1
      1 1 1
      1 1 1];
f6 = [1 0  1
      0 1 0
      1 0 1];
data = [img1 img2 img3 img4 img5 img6];
f    = [f1 f2 f3 f4 f5 f6];
imshow(data);

img2 = imfilter(img2,f2);
img3 = imfilter(img3,f3);
img4 = imfilter(img4,f4);
img3 = imfilter(img3,f3);
img4 = imfilter(img4,f4);


%% Display
tmp0 = cat(2,img1,img2);
tmp1 = cat(2,img3,img4);
img0 = cat(1,tmp0,tmp1);
imshow(img0);