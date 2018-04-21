clc; clearvars; close all;

%% Load image
path = 'source/';
image = 'img_03.jpg';
img1 = imread([path image]);
img1 = imresize(img1,0.25);


%% Treatement
[sx, sy, sz] = size(img1);
N = 6;
data = uint8(zeros(sx*N, sy*N, sz));
for i = 1:N
    ix = 1 + (i-1)*sx : i*sx;
    for j = 1:N
        iy = 1 + (j-1)*sy : j*sy;
        h = ones(i,j)/(i+j);
        data(ix, iy, : ) = imfilter(img1,h);
    end
end

%% Display
imshow(data);